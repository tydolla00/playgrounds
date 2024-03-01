import { Component, Input, OnInit } from "@angular/core";
import { Recipe } from "../recipe.model";
import { RecipeService } from "../recipe.service";
import { ActivatedRoute, Params, Router } from "@angular/router";

@Component({
  selector: "app-recipe-detail",
  templateUrl: "./recipe-detail.component.html",
  styleUrl: "./recipe-detail.component.css",
})
export class RecipeDetailComponent implements OnInit {
  recipe: Recipe;
  id: string;
  constructor(
    private recipeService: RecipeService,
    private route: ActivatedRoute,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.route.params.subscribe((params: Params) => {
      this.id = params["id"];
      this.recipe = this.recipeService.getRecipesById(this.id);
    });
  }

  onAddToShoppingList() {
    this.recipeService.addIngredientsToShoppingList(this.recipe.ingredients);
  }
  onEditRecipe() {
    this.router.navigate(["edit"], { relativeTo: this.route });
  }
}
