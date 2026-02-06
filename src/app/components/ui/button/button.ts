import { Component, Input } from '@angular/core';
// Se for usar routerLink no futuro, importar RouterModule aqui

@Component({
  selector: 'app-button',
  standalone: true,
  imports: [],
  templateUrl: './button.html',
  styleUrl: './button.css',
})
export class Button {
  // O '!' significa que garantimos que esse valor vai existir (ou pode inicializar com string vazia '')
  @Input() label: string = '';
  @Input() link: string = '#';
}
