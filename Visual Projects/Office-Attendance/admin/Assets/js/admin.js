/**
 * OfficeTrack Admin Panel - Minimal Vanilla JavaScript
 * Pure UI interactions, toast notifications, search filtering, and mobile menu handling.
 */

document.addEventListener('DOMContentLoaded', function () {
  // 1. Highlight current active sidebar link
  highlightActiveNav();

  // 2. Real-time header clock
  initHeaderClock();

  // 3. Password visibility togglers
  initPasswordToggles();

  // 4. Client-side instant table search filters
  initTableSearchFilters();

  // 5. Wire up demo action buttons to display sleek toast feedback
  initDemoFeedbackHandlers();
});

/**
 * Highlights sidebar nav link matching current page URL
 */
function highlightActiveNav() {
  const currentPath = window.location.pathname.toLowerCase();
  const navLinks = document.querySelectorAll('.sidebar-nav .nav-link, .offcanvas-body .nav-link');

  navLinks.forEach(link => {
    const href = link.getAttribute('href');
    if (!href) return;
    const lowerHref = href.toLowerCase();

    // Match exact filename or index for dashboard
    if (
      currentPath.endsWith(lowerHref) ||
      (currentPath.endsWith('/') && lowerHref.includes('index.aspx')) ||
      (currentPath.includes('index.aspx') && lowerHref.includes('index.aspx'))
    ) {
      link.classList.add('active');
    } else if (lowerHref !== 'index.aspx' && currentPath.indexOf(lowerHref) !== -1) {
      link.classList.add('active');
    }
  });
}

/**
 * Updates real-time live clocks if present on page
 */
function initHeaderClock() {
  const clockElements = document.querySelectorAll('.live-time-display');
  if (clockElements.length === 0) return;

  function update() {
    const now = new Date();
    const timeStr = now.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', second: '2-digit' });
    clockElements.forEach(el => {
      el.textContent = timeStr;
    });
  }
  update();
  setInterval(update, 1000);
}

/**
 * Toggle password view
 */
function initPasswordToggles() {
  document.querySelectorAll('.btn-toggle-password').forEach(button => {
    button.addEventListener('click', function () {
      const targetInput = document.querySelector(this.getAttribute('data-target'));
      if (!targetInput) return;

      const icon = this.querySelector('i');
      if (targetInput.type === 'password') {
        targetInput.type = 'text';
        if (icon) {
          icon.classList.remove('bi-eye');
          icon.classList.add('bi-eye-slash');
        }
      } else {
        targetInput.type = 'password';
        if (icon) {
          icon.classList.remove('bi-eye-slash');
          icon.classList.add('bi-eye');
        }
      }
    });
  });
}

/**
 * Table Search Filter Helper
 * Filters table rows as the user types into any input with data-table-target
 */
function initTableSearchFilters() {
  const searchInputs = document.querySelectorAll('[data-table-filter]');
  searchInputs.forEach(input => {
    input.addEventListener('keyup', function () {
      const targetSelector = this.getAttribute('data-table-filter');
      const table = document.querySelector(targetSelector);
      if (!table) return;

      const query = this.value.toLowerCase().trim();
      const rows = table.querySelectorAll('tbody tr');

      rows.forEach(row => {
        const text = row.textContent.toLowerCase();
        if (text.indexOf(query) !== -1 || query === '') {
          row.style.display = '';
        } else {
          row.style.display = 'none';
        }
      });
    });
  });
}

/**
 * Show a sleek Toast message
 */
function showToast(message, type = 'info') {
  let container = document.querySelector('.officetrack-toast-container');
  if (!container) {
    container = document.createElement('div');
    container.className = 'officetrack-toast-container toast-container p-3';
    document.body.appendChild(container);
  }

  const toastId = 'toast_' + Date.now();
  let bgClass = 'bg-primary text-white';
  let icon = 'bi-info-circle';

  if (type === 'success') {
    bgClass = 'bg-success text-white';
    icon = 'bi-check-circle';
  } else if (type === 'danger' || type === 'error') {
    bgClass = 'bg-danger text-white';
    icon = 'bi-exclamation-octagon';
  } else if (type === 'warning') {
    bgClass = 'bg-warning text-dark';
    icon = 'bi-exclamation-triangle';
  }

  const toastHtml = `
    <div id="${toastId}" class="toast align-items-center ${bgClass} border-0 shadow" role="alert" aria-live="assertive" aria-atomic="true">
      <div class="d-flex">
        <div class="toast-body d-flex align-items-center gap-2">
          <i class="bi ${icon} fs-5"></i>
          <span>${message}</span>
        </div>
        <button type="button" class="btn-close ${type === 'warning' ? '' : 'btn-close-white'} me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
      </div>
    </div>
  `;

  container.insertAdjacentHTML('beforeend', toastHtml);
  const toastElem = document.getElementById(toastId);
  if (window.bootstrap && window.bootstrap.Toast) {
    const bsToast = new window.bootstrap.Toast(toastElem, { delay: 3500 });
    bsToast.show();
    toastElem.addEventListener('hidden.bs.toast', () => toastElem.remove());
  } else {
    setTimeout(() => toastElem.remove(), 3500);
  }
}

/**
 * Demo buttons feedback
 */
function initDemoFeedbackHandlers() {
  document.querySelectorAll('[data-demo-action]').forEach(btn => {
    btn.addEventListener('click', function (e) {
      // Prevent form submit if it's inside form or has # href
      if (this.tagName === 'A' && this.getAttribute('href') === '#') {
        e.preventDefault();
      }
      const actionName = this.getAttribute('data-demo-action');
      const actionType = this.getAttribute('data-demo-type') || 'success';
      showToast(actionName, actionType);

      // If button has a modal to close, close it
      const modalParent = this.closest('.modal');
      if (modalParent && window.bootstrap && window.bootstrap.Modal) {
        const bsModal = window.bootstrap.Modal.getInstance(modalParent);
        if (bsModal) {
          bsModal.hide();
        }
      }
    });
  });
}

