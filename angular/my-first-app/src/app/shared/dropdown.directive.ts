import {
  Directive,
  ElementRef,
  HostBinding,
  HostListener,
  Renderer2,
} from "@angular/core";

@Directive({
  selector: "[appDropdown]",
})
export class DropdownDirective {
  @HostBinding("class.open") isOpen = false;
  @HostListener("document:click", ["$event"]) toggleOpen(event: Event) {
    this.isOpen = this.eleRef.nativeElement.contains(event.target)
      ? !this.isOpen
      : false;
  }
  clicked = false;
  constructor(private eleRef: ElementRef, private renderer: Renderer2) {}
  // @HostListener("click") mouseClick(eventData: Event) {
  //   this.clicked = !this.clicked;
  //   if (this.clicked) this.renderer.addClass(this.eleRef.nativeElement, "open");
  //   else this.renderer.removeClass(this.eleRef.nativeElement, "open");
  // }
}
