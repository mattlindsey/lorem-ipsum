import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "tab" ]

  select({ currentTarget }) {
    this.tabTargets.forEach(tab => tab.setAttribute("aria-selected", tab === currentTarget))
  }
}
