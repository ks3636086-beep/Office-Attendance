<%@ Page Language="C#" AutoEventWireup="true" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0" />
    <title>OfficeTrack - Admin Portal Sign In</title>

    <!-- Google Fonts & Bootstrap 5 & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
    
    <!-- Admin Custom Styles -->
    <link rel="stylesheet" href="Assets/css/admin.css" />

    <style>
        body {
            background-color: var(--bg-main);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1.5rem 1rem;
        }
        .login-card-container {
            width: 100%;
            max-width: 440px;
        }
        .login-brand-header {
            text-align: center;
            margin-bottom: 2rem;
        }
        .login-brand-icon {
            width: 52px;
            height: 52px;
            background: linear-gradient(135deg, #142B49, #0B1B32);
            color: #fff;
            border-radius: 12px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 1.75rem;
            box-shadow: var(--shadow-md);
            margin-bottom: 0.75rem;
        }
    </style>
</head>
<body>
    <div class="login-card-container">
        <!-- Brand Header -->
        <div class="login-brand-header">
            <div class="login-brand-icon">
                <i class="bi bi-fingerprint"></i>
            </div>
            <h1 class="h4 fw-bold text-navy mb-1">OfficeTrack</h1>
            <p class="text-muted small mb-0">Attendance & Payroll Management Portal</p>
        </div>

        <!-- Main Card -->
        <div class="card-theme p-4 p-sm-5 shadow-sm">
            <div class="mb-4">
                <h2 class="h5 fw-bold text-navy mb-1">Admin Sign In</h2>
                <p class="text-muted small mb-0">Enter your credentials to access the admin dashboard.</p>
            </div>

            <form id="loginForm" onsubmit="event.preventDefault(); window.location.href='index.aspx';">
                <!-- Username or Email -->
                <div class="mb-3">
                    <label for="usernameInput" class="form-label-custom">Email or Username</label>
                    <div class="input-group">
                        <span class="input-group-text bg-light border-end-0 text-muted"><i class="bi bi-envelope"></i></span>
                        <input type="text" class="form-control form-control-custom border-start-0 ps-0" id="usernameInput" placeholder="admin@officetrack.com" value="admin@officetrack.com" required />
                    </div>
                </div>

                <!-- Password with Show/Hide -->
                <div class="mb-3">
                    <div class="d-flex justify-content-between align-items-center mb-1">
                        <label for="passwordInput" class="form-label-custom mb-0">Password</label>
                        <a href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#forgotPasswordModal" class="small text-decoration-none" style="font-size: 0.78rem;">Forgot Password?</a>
                    </div>
                    <div class="input-group">
                        <span class="input-group-text bg-light border-end-0 text-muted"><i class="bi bi-lock"></i></span>
                        <input type="password" class="form-control form-control-custom border-start-0 border-end-0 ps-0" id="passwordInput" placeholder="Enter password" value="password123" required />
                        <button class="btn btn-outline-secondary btn-toggle-password bg-light border-start-0 text-muted" type="button" data-target="#passwordInput" title="Toggle password visibility">
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>
                </div>

                <!-- Remember Me -->
                <div class="mb-4 form-check">
                    <input type="checkbox" class="form-check-input" id="rememberCheck" checked />
                    <label class="form-check-label small text-muted" for="rememberCheck">Remember this browser for 30 days</label>
                </div>

                <!-- Sign In Button -->
                <div class="d-grid mb-3">
                    <button type="submit" class="btn btn-navy py-2 fw-semibold">
                        <i class="bi bi-box-arrow-in-right me-1"></i> Sign In to Dashboard
                    </button>
                </div>

                <!-- Demo Hint Box -->
                <div class="p-2 bg-light border rounded text-center small text-muted" style="font-size: 0.76rem;">
                    <i class="bi bi-info-circle-fill text-primary me-1"></i>
                    <strong>Demo Access:</strong> Click <em>Sign In</em> to enter directly.
                </div>
            </form>
        </div>

        <div class="text-center mt-4">
            <span class="text-muted small">&copy; 2026 OfficeTrack HR Systems. All rights reserved.</span>
        </div>
    </div>

    <!-- Forgot Password Modal -->
    <div class="modal fade" id="forgotPasswordModal" tabindex="-1" aria-labelledby="forgotModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="forgotModalLabel">
                        <i class="bi bi-key-fill text-warning me-2"></i> Reset Admin Password
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <p class="text-muted small">Please enter your verified admin email address. A password reset link and verification code will be sent to your inbox.</p>
                    <div class="mb-3">
                        <label class="form-label-custom">Admin Email</label>
                        <input type="email" class="form-control form-control-custom" placeholder="admin@officetrack.com" value="admin@officetrack.com" />
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="Password reset link sent to admin@officetrack.com">Send Reset Link</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap 5 Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="Assets/js/admin.js"></script>
</body>
</html>

