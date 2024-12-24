// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", () => {
  // Destruir dropdowns existentes
  document.querySelectorAll('[data-bs-toggle="dropdown"]').forEach(element => {
    const dropdown = bootstrap.Dropdown.getInstance(element);
    if (dropdown) {
      dropdown.dispose();
    }
  });

  // Inicializar nuevos dropdowns
  document.querySelectorAll('[data-bs-toggle="dropdown"]').forEach(element => {
    new bootstrap.Dropdown(element);
  });
});

// Asegurarse de que los dropdowns funcionen después de una navegación Turbo
document.addEventListener("turbo:render", () => {
  document.querySelectorAll('[data-bs-toggle="dropdown"]').forEach(element => {
    const dropdown = bootstrap.Dropdown.getInstance(element);
    if (!dropdown) {
      new bootstrap.Dropdown(element);
    }
  });
});
