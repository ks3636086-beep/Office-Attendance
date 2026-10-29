/**
 * OfficeTrack Employee Panel - Minimal Vanilla JavaScript
 * Pure UI interactions, mobile bottom nav highlighting, QR simulation state toggler, and toast feedback.
 */

document.addEventListener('DOMContentLoaded', function () {
  // 1. Highlight current active nav item in sidebar and mobile bottom nav
  highlightActiveNav();

  // 2. Real-time header and dashboard clock
  initHeaderClock();

  // 3. Password visibility toggles
  initPasswordToggles();

  // 4. Demo feedback handlers
  initDemoFeedbackHandlers();

  // 5. QR Scanner Viewfinder demo controls (for ScanQR.aspx)
  initScannerDemoControls();
});

/**
 * Highlights sidebar and bottom navigation links based on current URL
 */
function highlightActiveNav() {
  const currentPath = window.location.pathname.toLowerCase();
  const navLinks = document.querySelectorAll(
    '.emp-sidebar-nav .nav-link, .mobile-bottom-nav .bottom-nav-item, #mobileMoreOffcanvas .nav-link'
  );

  navLinks.forEach(link => {
    const href = link.getAttribute('href');
    if (!href) return;
    const lowerHref = href.toLowerCase();

    if (
      currentPath.endsWith(lowerHref) ||
      (currentPath.endsWith('/') && lowerHref.includes('dashboard.aspx')) ||
      (currentPath.includes('dashboard.aspx') && lowerHref.includes('dashboard.aspx'))
    ) {
      link.classList.add('active');
    } else if (lowerHref !== 'dashboard.aspx' && currentPath.indexOf(lowerHref) !== -1) {
      link.classList.add('active');
    }
  });
}

/**
 * Real-time clock
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
 * Password Visibility Toggle
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
 * Show modern Toast
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
 * Demo Action feedback
 */
function initDemoFeedbackHandlers() {
  document.querySelectorAll('[data-demo-action]').forEach(btn => {
    btn.addEventListener('click', function (e) {
      if (this.tagName === 'A' && this.getAttribute('href') === '#') {
        e.preventDefault();
      }
      const actionName = this.getAttribute('data-demo-action');
      const actionType = this.getAttribute('data-demo-type') || 'success';
      showToast(actionName, actionType);

      // Close parent modal if open
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

/**
 * QR Scanner UI Demo state switcher (for ScanQR.aspx)
 */
function initScannerDemoControls() {
  const toggleBtn = document.getElementById('btnToggleScanner');
  const laser = document.querySelector('.scanner-laser');
  const statusBadge = document.getElementById('scannerStatusBadge');

  if (toggleBtn) {
    let isScanning = true;
    toggleBtn.addEventListener('click', function () {
      isScanning = !isScanning;
      if (isScanning) {
        if (laser) laser.style.display = 'block';
        toggleBtn.innerHTML = '<i class="bi bi-stop-circle me-1"></i> Stop Camera';
        toggleBtn.className = 'btn btn-outline-danger btn-sm';
        if (statusBadge) {
          statusBadge.className = 'badge bg-success';
          statusBadge.innerHTML = '<span class="spinner-grow spinner-grow-sm me-1" role="status"></span> Camera Active';
        }
        showToast('Camera viewfinder active (UI Demo)', 'info');
      } else {
        if (laser) laser.style.display = 'none';
        toggleBtn.innerHTML = '<i class="bi bi-camera-video me-1"></i> Start Camera';
        toggleBtn.className = 'btn btn-outline-light btn-sm';
        if (statusBadge) {
          statusBadge.className = 'badge bg-secondary';
          statusBadge.innerHTML = 'Camera Paused';
        }
        showToast('Camera paused (UI Demo)', 'warning');
      }
    });
  }

  // Preview state switcher for ScanQR.aspx
  document.querySelectorAll('[data-qr-state]').forEach(btn => {
    btn.addEventListener('click', function () {
      const state = this.getAttribute('data-qr-state');
      document.querySelectorAll('.qr-preview-panel').forEach(p => p.classList.add('d-none'));
      const targetPanel = document.getElementById('qr-panel-' + state);
      if (targetPanel) {
        targetPanel.classList.remove('d-none');
        targetPanel.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
      }
    });
  });
}

