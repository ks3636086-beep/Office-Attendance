<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - QR Attendance Terminal</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-qr-code-scan text-navy"></i> QR Attendance Terminal
            </h1>
            <p class="page-subtitle">Dynamic daily QR terminal code for employee check-in & check-out verification.</p>
        </div>
        <div class="d-flex align-items-center gap-2">
            <button type="button" class="btn btn-outline-navy btn-sm" onclick="window.print();">
                <i class="bi bi-printer me-1"></i> Print QR Standee
            </button>
            <button type="button" class="btn btn-navy btn-sm" data-demo-action="New secure token generated! Terminal refreshed.">
                <i class="bi bi-arrow-repeat me-1"></i> Refresh Token Now
            </button>
        </div>
    </div>

    <!-- MAIN TWO-COLUMN LAYOUT -->
    <div class="row g-4 mb-4">
        <!-- LEFT: THE QR TERMINAL CARD -->
        <div class="col-12 col-lg-5">
            <div class="card-theme text-center p-4 h-100">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <span class="badge-status badge-active">
                        <span class="qr-pulse-dot"></span> Live Terminal Active
                    </span>
                    <span class="small text-muted font-monospace">Token: #OT-8921X</span>
                </div>

                <h2 class="h5 fw-bold text-navy mb-1">Office Reception Terminal</h2>
                <div class="text-muted small mb-3">
                    <span class="fw-semibold text-dark">Thursday, 29 October 2026</span> • <span class="live-time-display font-monospace text-primary"></span>
                </div>

                <!-- Crisp Vector SVG QR Code Container -->
                <div class="qr-frame-card mx-auto mb-3" style="max-width: 300px;">
                    <div class="qr-code-svg-wrap">
                        <svg width="190" height="190" viewBox="0 0 120 120" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <!-- Corner 1 -->
                            <rect x="5" y="5" width="32" height="32" rx="4" fill="#0B1B32" />
                            <rect x="11" y="11" width="20" height="20" rx="2" fill="white" />
                            <rect x="15" y="15" width="12" height="12" rx="1" fill="#142B49" />

                            <!-- Corner 2 -->
                            <rect x="83" y="5" width="32" height="32" rx="4" fill="#0B1B32" />
                            <rect x="89" y="11" width="20" height="20" rx="2" fill="white" />
                            <rect x="93" y="15" width="12" height="12" rx="1" fill="#142B49" />

                            <!-- Corner 3 -->
                            <rect x="5" y="83" width="32" height="32" rx="4" fill="#0B1B32" />
                            <rect x="11" y="89" width="20" height="20" rx="2" fill="white" />
                            <rect x="15" y="93" width="12" height="12" rx="1" fill="#142B49" />

                            <!-- Dynamic Matrix Grid Simulation -->
                            <rect x="44" y="6" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="56" y="6" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="68" y="6" width="6" height="6" rx="1" fill="#142B49" />

                            <rect x="44" y="18" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="68" y="18" width="6" height="6" rx="1" fill="#142B49" />
                            
                            <rect x="44" y="30" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="56" y="30" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="68" y="30" width="6" height="6" rx="1" fill="#142B49" />

                            <!-- Body Elements -->
                            <rect x="6" y="44" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="18" y="44" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="30" y="44" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="84" y="44" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="96" y="44" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="108" y="44" width="6" height="6" rx="1" fill="#142B49" />

                            <rect x="6" y="56" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="30" y="56" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="84" y="56" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="108" y="56" width="6" height="6" rx="1" fill="#142B49" />

                            <rect x="6" y="68" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="18" y="68" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="30" y="68" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="84" y="68" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="96" y="68" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="108" y="68" width="6" height="6" rx="1" fill="#142B49" />

                            <!-- Bottom Row Dots -->
                            <rect x="44" y="84" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="56" y="84" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="68" y="84" width="6" height="6" rx="1" fill="#142B49" />

                            <rect x="44" y="96" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="68" y="96" width="6" height="6" rx="1" fill="#142B49" />

                            <rect x="44" y="108" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="56" y="108" width="6" height="6" rx="1" fill="#142B49" />
                            <rect x="68" y="108" width="6" height="6" rx="1" fill="#142B49" />

                            <!-- Center Brand Badge -->
                            <rect x="46" y="46" width="28" height="28" rx="6" fill="#0B1B32" stroke="white" stroke-width="2" />
                            <path d="M54 60C54 56.6863 56.6863 54 60 54C63.3137 54 66 56.6863 66 60V62C66 63.1046 65.1046 64 64 64H56C54.8954 64 54 63.1046 54 62V60Z" fill="#3B82F6" />
                        </svg>
                    </div>
                    <span class="small text-muted mt-2 d-block">Valid for: Headquarters Main Lobby</span>
                </div>

                <!-- Expiry Countdown Strip -->
                <div class="alert alert-light border small text-muted mb-3 py-2">
                    <i class="bi bi-shield-check text-success me-1"></i>
                    Auto-refreshes in <strong class="text-navy">07 mins 14 secs</strong> to prevent sharing
                </div>

                <!-- Control Buttons -->
                <div class="d-flex flex-wrap gap-2 justify-content-center">
                    <button type="button" class="btn btn-sm btn-outline-danger" data-demo-action="QR Terminal deactivated temporarily." data-demo-type="warning">
                        <i class="bi bi-power me-1"></i> Deactivate QR
                    </button>
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-demo-action="Fullscreen lobby kiosk mode activated. Press Esc to exit.">
                        <i class="bi bi-arrows-fullscreen me-1"></i> Kiosk Mode
                    </button>
                </div>
            </div>
        </div>

        <!-- RIGHT: LIVE SCAN STATS & SCAN INSTRUCTIONS -->
        <div class="col-12 col-lg-7">
            <!-- 3 Mini Stats -->
            <div class="row g-3 mb-4">
                <div class="col-4">
                    <div class="stat-card p-3">
                        <div>
                            <span class="stat-label">Successful Scans</span>
                            <span class="stat-value text-success">38</span>
                        </div>
                        <div class="stat-icon success"><i class="bi bi-check-circle"></i></div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="stat-card p-3">
                        <div>
                            <span class="stat-label">Late Scans</span>
                            <span class="stat-value text-warning">4</span>
                        </div>
                        <div class="stat-icon warning"><i class="bi bi-hourglass-bottom"></i></div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="stat-card p-3">
                        <div>
                            <span class="stat-label">Blocked Attempts</span>
                            <span class="stat-value text-danger">1</span>
                        </div>
                        <div class="stat-icon danger"><i class="bi bi-shield-x"></i></div>
                    </div>
                </div>
            </div>

            <!-- Scan Instructions Card -->
            <div class="card-theme p-3 mb-4">
                <h3 class="card-title-theme mb-3">
                    <i class="bi bi-info-circle-fill text-navy"></i> Employee Scanning Policy
                </h3>
                <div class="row g-2">
                    <div class="col-12 col-md-4">
                        <div class="p-2 border rounded bg-light bg-opacity-50 h-100">
                            <div class="fw-bold text-navy small mb-1"><i class="bi bi-1-circle-fill text-primary me-1"></i> Office Geofence</div>
                            <p class="text-muted small mb-0" style="font-size: 0.76rem;">Employees must be connected to office Wi-Fi or within 100m GPS bounds.</p>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="p-2 border rounded bg-light bg-opacity-50 h-100">
                            <div class="fw-bold text-navy small mb-1"><i class="bi bi-2-circle-fill text-primary me-1"></i> Single Device Binding</div>
                            <p class="text-muted small mb-0" style="font-size: 0.76rem;">Proxy scanning is blocked. Each scan requires unique hardware fingerprint.</p>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="p-2 border rounded bg-light bg-opacity-50 h-100">
                            <div class="fw-bold text-navy small mb-1"><i class="bi bi-3-circle-fill text-primary me-1"></i> 60-Min Cooldown</div>
                            <p class="text-muted small mb-0" style="font-size: 0.76rem;">Prevents duplicate accidental scans within 60 minutes of arrival.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Today's Successful Scans Live Stream -->
            <div class="card-theme">
                <div class="card-header-theme">
                    <h3 class="card-title-theme">
                        <i class="bi bi-broadcast text-success"></i> Today's Live Verification Stream
                    </h3>
                    <span class="badge bg-light text-dark border">Auto-updating</span>
                </div>
                <div class="table-responsive-theme">
                    <table class="table-theme">
                        <thead>
                            <tr>
                                <th>Staff Member</th>
                                <th>Scan Time</th>
                                <th>Device Bound</th>
                                <th>Location Verification</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="user-meta-cell">
                                        <div class="user-avatar-sm">VM</div>
                                        <div>
                                            <div class="user-name-title">Vikram Malhotra</div>
                                            <div class="user-sub-id">OT-1008</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="font-monospace">09:54:12 AM</td>
                                <td>iPhone 14 Pro</td>
                                <td><span class="text-success"><i class="bi bi-wifi me-1"></i> Office-5G</span></td>
                                <td><span class="badge-status badge-present">Verified</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="user-meta-cell">
                                        <div class="user-avatar-sm" style="background:#fce7f3; color:#9d174d;">AS</div>
                                        <div>
                                            <div class="user-name-title">Ananya Sharma</div>
                                            <div class="user-sub-id">OT-1012</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="font-monospace">09:58:30 AM</td>
                                <td>Pixel 8</td>
                                <td><span class="text-success"><i class="bi bi-geo-alt me-1"></i> 12m from Hub</span></td>
                                <td><span class="badge-status badge-present">Verified</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="user-meta-cell">
                                        <div class="user-avatar-sm" style="background:#fef3c7; color:#92400e;">RK</div>
                                        <div>
                                            <div class="user-name-title">Rohan Kulkarni</div>
                                            <div class="user-sub-id">OT-1015</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="font-monospace text-warning">10:22:05 AM</td>
                                <td>Samsung S23</td>
                                <td><span class="text-success"><i class="bi bi-wifi me-1"></i> Office-5G</span></td>
                                <td><span class="badge-status badge-late">Late Verified</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- INVALID / FLAGGED ATTEMPTS CARD -->
    <div class="card-theme">
        <div class="card-header-theme bg-danger bg-opacity-10">
            <h3 class="card-title-theme text-danger">
                <i class="bi bi-shield-slash-fill me-1"></i> Flagged & Invalid Scan History (Past 48 Hours)
            </h3>
            <span class="badge bg-danger">1 Blocked Today</span>
        </div>
        <div class="table-responsive-theme">
            <table class="table-theme">
                <thead>
                    <tr>
                        <th>Attempt Time</th>
                        <th>Claimed Employee</th>
                        <th>Device Fingerprint</th>
                        <th>Flag Reason</th>
                        <th>Admin Action Taken</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="font-monospace text-danger">Today, 09:41 AM</td>
                        <td>
                            <div class="user-name-title">Karan Sethi (OT-1039)</div>
                            <div class="user-sub-id">Marketing</div>
                        </td>
                        <td>Unknown OnePlus Device</td>
                        <td><span class="badge bg-danger">Geofence Violation (2.4 km outside office)</span></td>
                        <td><span class="text-muted small">Auto-rejected by security engine</span></td>
                    </tr>
                    <tr>
                        <td class="font-monospace text-muted">Yesterday, 10:48 AM</td>
                        <td>
                            <div class="user-name-title">Pooja Singh (OT-1024)</div>
                            <div class="user-sub-id">HR</div>
                        </td>
                        <td>Registered iPhone 13</td>
                        <td><span class="badge bg-warning text-dark">Duplicate Scan (Within 12 mins of first scan)</span></td>
                        <td><span class="text-muted small">Ignored duplicate; first scan timestamp retained</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

