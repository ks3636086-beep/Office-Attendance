<%@ Page Language="C#" AutoEventWireup="true" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0" />
    <title>OfficeTrack - Employee Sign In</title>

    <!-- Google Fonts & Bootstrap 5 & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
    
    <!-- Employee Custom Styles -->
    <link rel="stylesheet" href="Assets/css/employee.css" />

    <style>
        body {
            background-color: var(--bg-main);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1.25rem 1rem;
        }
        .login-card-container {
            width: 100%;
            max-width: 420px;
        }
        .login-brand-header {
            text-align: center;
            margin-bottom: 1.75rem;
        }
        .login-brand-icon {
            width: 50px;
            height: 50px;
            background: linear-gradient(135deg, #142B49, #0B1B32);
            color: #fff;
            border-radius: 12px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 1.6rem;
            box-shadow: var(--shadow-md);
            margin-bottom: 0.5rem;
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
            <h1 class="h5 fw-bold text-navy mb-1">OfficeTrack</h1>
            <p class="text-muted small mb-0">Employee Attendance & Self-Service Portal</p>
        </div>

        <!-- Main Form Card -->
        <div class="card-theme p-4 shadow-sm">
            <div class="mb-3 text-center text-sm-start">
                <h2 class="h6 fw-bold text-navy mb-1">Staff Sign In</h2>
                <p class="text-muted small mb-0">Enter your employee ID or official username.</p>
            </div>

            <form id="empLoginForm" onsubmit="event.preventDefault(); window.location.href='dashboard.aspx';">
                <!-- Employee ID or Username -->
                <div class="mb-3">
                    <label for="empUsername" class="form-label-custom">Employee ID or Email</label>
                    <div class="input-group">
                        <span class="input-group-text bg-light border-end-0 text-muted"><i class="bi bi-person-badge"></i></span>
                        <input type="text" class="form-control form-control-custom border-start-0 ps-0" id="empUsername" placeholder="e.g. OT-1008 or email" value="OT-1008" required />
                    </div>
                </div>

                <!-- Password with Show/Hide Toggle -->
                <div class="mb-3">
                    <div class="d-flex justify-content-between align-items-center mb-1">
                        <label for="empPassword" class="form-label-custom mb-0">Password</label>
                        <a href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#empForgotModal" class="small text-decoration-none" style="font-size: 0.76rem;">Forgot Password?</a>
                    </div>
                    <div class="input-group">
                        <span class="input-group-text bg-light border-end-0 text-muted"><i class="bi bi-lock"></i></span>
                        <input type="password" class="form-control form-control-custom border-start-0 border-end-0 ps-0" id="empPassword" placeholder="Enter password" value="password123" required />
                        <button class="btn btn-outline-secondary btn-toggle-password bg-light border-start-0 text-muted" type="button" data-target="#empPassword" title="Toggle password visibility">
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>
                </div>

                <!-- Remember Me Checkbox -->
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="empRemember" checked />
                    <label class="form-check-label small text-muted" for="empRemember">Remember my device</label>
                </div>

                <!-- Sign In Button -->
                <div class="d-grid mb-3">
                    <button type="submit" class="btn btn-navy py-2 fw-semibold">
                        <i class="bi bi-box-arrow-in-right me-1"></i> Sign In to Portal
                    </button>
                </div>

                <!-- Demo Hint Box -->
                <div class="p-2 bg-light border rounded text-center small text-muted" style="font-size: 0.75rem;">
                    <i class="bi bi-info-circle-fill text-primary me-1"></i>
                    <strong>Demo Staff Account:</strong> Click <em>Sign In</em> to view Vikram Malhotra's portal.
                </div>
            </form>
        </div>

        <div class="text-center mt-3">
            <span class="text-muted small">&copy; 2026 OfficeTrack Systems • Employee Portal</span>
        </div>
    </div>

    <!-- Forgot Password Modal -->
    <div class="modal fade" id="empForgotModal" tabindex="-1" aria-labelledby="empForgotLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="empForgotLabel">
                        <i class="bi bi-key-fill text-warning me-2"></i> Reset Employee Password
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <p class="text-muted small">Enter your registered company email address. A password recovery link will be dispatched to your inbox.</p>
                    <div class="mb-3">
                        <label class="form-label-custom">Official Email</label>
                        <input type="email" class="form-control form-control-custom" placeholder="vikram.m@officetrack.com" value="vikram.m@officetrack.com" />
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="Password recovery link dispatched to your company email!">Send Link</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap 5 Bundle JS & Vanilla Script -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="Assets/js/employee.js"></script>
</body>
</html>

