<?php

namespace App\Entity;

use App\Repository\CategoryRepository;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;

/**
 * @ORM\Entity(repositoryClass=CategoryRepository::class)
 */
class Category
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }
    
    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Program", mappedBy="category")
     */
    private $programs;

    public function __construct()
    {
        $this->programs = new ArrayCollection();
    }

    /**
     * @return Collection/Program[]
     */
    public function getProgram(): Collection
    {
        return $this->program;
    }

    /**
     * param Program $programs
     * @return Category
     */
    public function addPrgoram(Program $program): self
    {
        if (!$this->programs->contains($program)){
            $this->programs[] = $programs;
            $programs->setCategory($this);
        }
        return $this;
    }

    /**
     * @param Program $program
     * @return Category
     */
    public function removeProgram(Program $program): self
    {
        if ($this->programs->contains($program)) {
            $this->programs->removeElement($program);
            if ($program-getCategory() === $this) {
                $program->setCategory(null);
            }
        }
        return $this;
    }
}
