<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Scan QR Attendance</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-qr-code-scan text-navy"></i> Scan QR Attendance
            </h1>
            <p class="page-subtitle">Align your phone camera with the official OfficeTrack reception screen QR.</p>
        </div>
        <div>
            <span class="badge bg-light text-dark border">
                <i class="bi bi-clock text-primary me-1"></i> Shift: 10:00 AM - 06:00 PM
            </span>
        </div>
    </div>

    <!-- MAIN SCANNER CONTAINER (MOBILE OPTIMIZED) -->
    <div class="row g-3 mb-4">
        <div class="col-12 col-lg-7">
            <!-- CAMERA SCANNER CARD -->
            <div class="qr-scanner-card shadow-sm">
                <!-- Top Status Strip -->
                <div class="d-flex justify-content-between align-items-center mb-2 px-2">
                    <span id="scannerStatusBadge" class="badge bg-success">
                        <span class="spinner-grow spinner-grow-sm me-1" role="status"></span> Camera Active
                    </span>
                    <span class="small text-white-50 font-monospace">1080p Viewfinder</span>
                </div>

                <!-- VIEWFINDER FRAME -->
                <div class="viewfinder-box">
                    <!-- 4 Corner Focus Brackets -->
                    <div class="viewfinder-corner top-left"></div>
                    <div class="viewfinder-corner top-right"></div>
                    <div class="viewfinder-corner bottom-left"></div>
                    <div class="viewfinder-corner bottom-right"></div>

                    <!-- Animated Laser Scan Bar -->
                    <div class="scanner-laser"></div>

                    <!-- Center Target Reticle & Camera Placeholder Icon -->
                    <div class="text-center text-white-50 p-3">
                        <i class="bi bi-camera display-4 d-block mb-1 opacity-75"></i>
                        <span class="small font-monospace" style="font-size: 0.72rem; letter-spacing: 0.05em;">POINT AT TERMINAL QR</span>
                    </div>
                </div>

                <p class="text-white-50 small mb-3 px-3">
                    Hold phone steady inside the bracket lines. QR codes refresh every 15 minutes for security.
                </p>

                <!-- CAMERA CONTROLS -->
                <div class="d-flex justify-content-center gap-2 flex-wrap px-2">
                    <button type="button" class="btn btn-outline-danger btn-sm" id="btnToggleScanner">
                        <i class="bi bi-stop-circle me-1"></i> Stop Camera
                    </button>
                    <button type="button" class="btn btn-outline-light btn-sm" data-demo-action="Camera flipped to front lens (UI Demo)">
                        <i class="bi bi-arrow-repeat me-1"></i> Flip Camera
                    </button>
                    <button type="button" class="btn btn-outline-light btn-sm" data-demo-action="Device torch toggled (UI Demo)">
                        <i class="bi bi-lightning-charge me-1"></i> Torch
                    </button>
                </div>
            </div>

            <!-- SCAN INSTRUCTIONS -->
            <div class="card-theme p-3 mt-3">
                <h2 class="card-title-theme mb-2" style="font-size: 0.85rem;">
                    <i class="bi bi-info-circle-fill text-navy"></i> Quick Scan Instructions
                </h2>
                <div class="row g-2">
                    <div class="col-12 col-sm-4">
                        <div class="p-2 border rounded bg-light small h-100">
                            <strong class="d-block text-navy mb-1"><i class="bi bi-1-circle text-primary me-1"></i> Open Terminal</strong>
                            <span class="text-muted" style="font-size: 0.74rem;">Walk up to the reception wall screen or standee tablet.</span>
                        </div>
                    </div>
                    <div class="col-12 col-sm-4">
                        <div class="p-2 border rounded bg-light small h-100">
                            <strong class="d-block text-navy mb-1"><i class="bi bi-2-circle text-primary me-1"></i> Scan Code</strong>
                            <span class="text-muted" style="font-size: 0.74rem;">Align viewfinder until the frame flashes green.</span>
                        </div>
                    </div>
                    <div class="col-12 col-sm-4">
                        <div class="p-2 border rounded bg-light small h-100">
                            <strong class="d-block text-navy mb-1"><i class="bi bi-3-circle text-primary me-1"></i> Instant Mark</strong>
                            <span class="text-muted" style="font-size: 0.74rem;">Attendance is stamped with device hardware hash.</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- RIGHT SIDE: TODAY'S STATUS & DEMO STATE PREVIEWS -->
        <div class="col-12 col-lg-5">
            <!-- TODAY'S VERIFICATION SUMMARY CARD -->
            <div class="card-theme p-3 mb-3">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2 class="card-title-theme">
                        <i class="bi bi-calendar2-check text-navy"></i> Today's Timestamps
                    </h2>
                    <span class="badge-status badge-present">Checked In</span>
                </div>

                <div class="list-group list-group-flush small mb-3">
                    <div class="list-group-item px-0 py-2 d-flex justify-content-between align-items-center">
                        <span class="text-muted">Morning Check-In:</span>
                        <div class="text-end">
                            <span class="font-monospace fw-bold text-success">09:54 AM</span>
                            <span class="badge bg-success bg-opacity-10 text-success border border-success border-opacity-25 ms-1" style="font-size:0.65rem;">On Time</span>
                        </div>
                    </div>
                    <div class="list-group-item px-0 py-2 d-flex justify-content-between align-items-center">
                        <span class="text-muted">Evening Check-Out:</span>
                        <div class="text-end">
                            <span class="font-monospace text-muted">-- : --</span>
                            <span class="badge bg-secondary bg-opacity-25 text-dark ms-1" style="font-size:0.65rem;">Awaiting 06:00 PM</span>
                        </div>
                    </div>
                    <div class="list-group-item px-0 py-2 d-flex justify-content-between align-items-center">
                        <span class="text-muted">Location Check:</span>
                        <span class="text-success fw-semibold"><i class="bi bi-geo-alt-fill me-1"></i> Office Wi-Fi Verified</span>
                    </div>
                    <div class="list-group-item px-0 py-2 d-flex justify-content-between align-items-center">
                        <span class="text-muted">Registered Device:</span>
                        <span class="text-dark font-monospace">Apple iPhone 14 Pro</span>
                    </div>
                </div>
            </div>

            <!-- DEMO PREVIEW STATE SWITCHER (STATIC SIMULATION) -->
            <div class="card-theme p-3">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <h2 class="card-title-theme">
                        <i class="bi bi-toggles text-navy"></i> Scan Response Previews
                    </h2>
                    <span class="badge bg-light text-muted border">UI Demonstration</span>
                </div>
                <p class="text-muted small mb-2" style="font-size: 0.74rem;">
                    Click a response state below to test how the mobile UI reflects different terminal scan results:
                </p>

                <!-- State Switcher Pills -->
                <div class="btn-group w-100 mb-3" role="group">
                    <button type="button" class="btn btn-outline-navy btn-sm" data-qr-state="success">
                        <i class="bi bi-check-circle text-success me-1"></i> Success
                    </button>
                    <button type="button" class="btn btn-outline-navy btn-sm" data-qr-state="already">
                        <i class="bi bi-info-circle text-primary me-1"></i> Already In
                    </button>
                    <button type="button" class="btn btn-outline-navy btn-sm" data-qr-state="invalid">
                        <i class="bi bi-exclamation-triangle text-danger me-1"></i> Invalid
                    </button>
                </div>

                <!-- STATE 1: SUCCESS PREVIEW (Default Visible) -->
                <div class="qr-preview-panel border rounded-3 p-3 bg-success bg-opacity-10 border-success border-opacity-25" id="qr-panel-success">
                    <div class="d-flex align-items-center gap-2 mb-2">
                        <i class="bi bi-check-circle-fill text-success fs-4"></i>
                        <div>
                            <div class="fw-bold text-success">Check-In Successful!</div>
                            <div class="text-muted" style="font-size: 0.72rem;">Attendance stamped at 09:54:12 AM</div>
                        </div>
                    </div>
                    <div class="small text-dark">
                        <div><strong>Staff:</strong> Vikram Malhotra (OT-1008)</div>
                        <div><strong>Terminal:</strong> Reception Screen #LOBBY-01</div>
                        <div><strong>Status:</strong> <span class="badge-status badge-present">Present (On Time)</span></div>
                    </div>
                </div>

                <!-- STATE 2: ALREADY CHECKED-IN PREVIEW -->
                <div class="qr-preview-panel border rounded-3 p-3 bg-primary bg-opacity-10 border-primary border-opacity-25 d-none" id="qr-panel-already">
                    <div class="d-flex align-items-center gap-2 mb-2">
                        <i class="bi bi-info-circle-fill text-primary fs-4"></i>
                        <div>
                            <div class="fw-bold text-navy">Already Checked In Today</div>
                            <div class="text-muted" style="font-size: 0.72rem;">Morning scan registered at 09:54 AM</div>
                        </div>
                    </div>
                    <p class="small text-muted mb-0">
                        Your attendance has already been recorded for today's morning shift. Please scan again between <strong>05:30 PM and 07:00 PM</strong> to record your check-out.
                    </p>
                </div>

                <!-- STATE 3: INVALID / EXPIRED QR PREVIEW -->
                <div class="qr-preview-panel border rounded-3 p-3 bg-danger bg-opacity-10 border-danger border-opacity-25 d-none" id="qr-panel-invalid">
                    <div class="d-flex align-items-center gap-2 mb-2">
                        <i class="bi bi-x-circle-fill text-danger fs-4"></i>
                        <div>
                            <div class="fw-bold text-danger">Invalid QR Token / Out of Bounds</div>
                            <div class="text-muted" style="font-size: 0.72rem;">Scan rejected by attendance rules</div>
                        </div>
                    </div>
                    <p class="small text-muted mb-0">
                        The scanned QR code has either expired (15-min token window) or your device is outside the authorized office geofence network.
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

