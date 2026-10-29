<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - My Leaves & Quotas</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-calendar-week-fill text-navy"></i> Leave Management
            </h1>
            <p class="page-subtitle">Track your annual leave allowances, submit time-off requests, and review manager decisions.</p>
        </div>
        <div>
            <button type="button" class="btn btn-navy btn-sm" data-bs-toggle="modal" data-bs-target="#applyLeaveModal">
                <i class="bi bi-plus-circle me-1"></i> Apply for Leave
            </button>
        </div>
    </div>

    <!-- LEAVE BALANCE SUMMARY (3 TILES) -->
    <div class="row g-2 g-md-3 mb-3">
        <div class="col-12 col-md-4">
            <div class="p-3 border rounded-3 bg-white shadow-sm">
                <div class="d-flex justify-content-between align-items-center mb-1">
                    <span class="small fw-bold text-navy">Casual Leave (CL)</span>
                    <span class="badge bg-primary bg-opacity-10 text-primary border border-primary border-opacity-25">7 Left</span>
                </div>
                <div class="progress mb-2" style="height: 6px;">
                    <div class="progress-bar bg-primary" style="width: 70%;"></div>
                </div>
                <span class="text-muted small" style="font-size: 0.74rem;">3 used of 10 total annual quota</span>
            </div>
        </div>

        <div class="col-12 col-md-4">
            <div class="p-3 border rounded-3 bg-white shadow-sm">
                <div class="d-flex justify-content-between align-items-center mb-1">
                    <span class="small fw-bold text-navy">Sick Leave (SL)</span>
                    <span class="badge bg-success bg-opacity-10 text-success border border-success border-opacity-25">6 Left</span>
                </div>
                <div class="progress mb-2" style="height: 6px;">
                    <div class="progress-bar bg-success" style="width: 75%;"></div>
                </div>
                <span class="text-muted small" style="font-size: 0.74rem;">2 used of 8 total annual quota</span>
            </div>
        </div>

        <div class="col-12 col-md-4">
            <div class="p-3 border rounded-3 bg-white shadow-sm">
                <div class="d-flex justify-content-between align-items-center mb-1">
                    <span class="small fw-bold text-navy">Earned / Annual (EL)</span>
                    <span class="badge bg-info bg-opacity-10 text-info border border-info border-opacity-25">12 Left</span>
                </div>
                <div class="progress mb-2" style="height: 6px;">
                    <div class="progress-bar bg-info" style="width: 80%;"></div>
                </div>
                <span class="text-muted small" style="font-size: 0.74rem;">3 used of 15 total annual quota</span>
            </div>
        </div>
    </div>

    <!-- TABS: PENDING, APPROVED, REJECTED, ALL -->
    <ul class="nav nav-pills mb-3" id="leaveTabs" role="tablist">
        <li class="nav-item">
            <button class="nav-link active btn-sm" id="tab-all" data-bs-toggle="pill" data-bs-target="#content-all" type="button" role="tab">
                All My Applications
            </button>
        </li>
        <li class="nav-item">
            <button class="nav-link btn-sm text-navy" id="tab-pending" data-bs-toggle="pill" data-bs-target="#content-pending" type="button" role="tab">
                Pending <span class="badge bg-warning text-dark ms-1">1</span>
            </button>
        </li>
        <li class="nav-item">
            <button class="nav-link btn-sm text-navy" id="tab-approved" data-bs-toggle="pill" data-bs-target="#content-approved" type="button" role="tab">
                Approved (3)
            </button>
        </li>
        <li class="nav-item">
            <button class="nav-link btn-sm text-navy" id="tab-rejected" data-bs-toggle="pill" data-bs-target="#content-rejected" type="button" role="tab">
                Rejected (0)
            </button>
        </li>
    </ul>

    <div class="tab-content" id="leaveTabContents">
        <!-- ALL LEAVES TABLE -->
        <div class="tab-pane fade show active" id="content-all" role="tabpanel">
            <div class="table-responsive-theme shadow-sm mb-4">
                <table class="table-theme">
                    <thead>
                        <tr>
                            <th>Leave Category</th>
                            <th>Dates</th>
                            <th>Days</th>
                            <th>Stated Reason</th>
                            <th>Submitted On</th>
                            <th>Review Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Pending 1 -->
                        <tr>
                            <td class="fw-semibold text-navy">Casual Leave</td>
                            <td class="font-monospace">10 Nov - 11 Nov 2026</td>
                            <td><span class="fw-bold">2 Days</span></td>
                            <td class="small" style="max-width: 250px; white-space: normal;">Personal family function and travel to home town.</td>
                            <td class="text-muted small">28 Oct 2026</td>
                            <td><span class="badge-status badge-pending"><i class="bi bi-clock-history"></i> Pending Manager Approval</span></td>
                        </tr>

                        <!-- Approved 1 -->
                        <tr>
                            <td class="fw-semibold text-navy">Casual Leave</td>
                            <td class="font-monospace">14 Oct - 14 Oct 2026</td>
                            <td><span class="fw-bold">1 Day</span></td>
                            <td class="small" style="max-width: 250px; white-space: normal;">Family personal document registration.</td>
                            <td class="text-muted small">10 Oct 2026</td>
                            <td><span class="badge-status badge-approved"><i class="bi bi-check-circle"></i> Approved by Rajesh Sharma</span></td>
                        </tr>

                        <!-- Approved 2 -->
                        <tr>
                            <td class="fw-semibold text-navy">Sick Leave</td>
                            <td class="font-monospace">02 Aug - 03 Aug 2026</td>
                            <td><span class="fw-bold">2 Days</span></td>
                            <td class="small" style="max-width: 250px; white-space: normal;">Doctor advised diagnostic checks and complete rest.</td>
                            <td class="text-muted small">02 Aug 2026</td>
                            <td><span class="badge-status badge-approved"><i class="bi bi-check-circle"></i> Approved</span></td>
                        </tr>

                        <!-- Approved 3 -->
                        <tr>
                            <td class="fw-semibold text-navy">Earned Leave</td>
                            <td class="font-monospace">10 May - 14 May 2026</td>
                            <td><span class="fw-bold">5 Days</span></td>
                            <td class="small" style="max-width: 250px; white-space: normal;">Annual family vacation out of station.</td>
                            <td class="text-muted small">20 Apr 2026</td>
                            <td><span class="badge-status badge-approved"><i class="bi bi-check-circle"></i> Approved</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- PENDING ONLY -->
        <div class="tab-pane fade" id="content-pending" role="tabpanel">
            <div class="card-theme p-3">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="badge bg-warning text-dark"><i class="bi bi-hourglass-split"></i> Under Review</span>
                    <span class="text-muted small">Applied 28 Oct 2026</span>
                </div>
                <h6 class="fw-bold text-navy mb-1">Casual Leave (2 Days)</h6>
                <div class="small font-monospace text-muted mb-2">From: 10 Nov 2026 • To: 11 Nov 2026</div>
                <p class="small text-muted mb-2">Reason: Personal family function and travel to home town.</p>
                <div class="alert alert-light border small text-muted py-2 mb-0">
                    <i class="bi bi-info-circle me-1"></i> Assigned to Supervisor: <strong>Rajesh Sharma (CTO)</strong>. Decision usually within 24 hours.
                </div>
            </div>
        </div>

        <!-- APPROVED ONLY -->
        <div class="tab-pane fade" id="content-approved" role="tabpanel">
            <div class="alert alert-success small mb-3">
                <i class="bi bi-check-circle-fill me-1"></i> You have 3 approved leave requests in year 2026.
            </div>
        </div>

        <!-- REJECTED ONLY -->
        <div class="tab-pane fade" id="content-rejected" role="tabpanel">
            <div class="p-4 bg-white border rounded text-center text-muted">
                <i class="bi bi-emoji-smile fs-3 d-block mb-1 text-success"></i>
                <div class="fw-semibold">No Rejected Leaves</div>
                <span class="small">All your submitted requests have met the organizational leave policy.</span>
            </div>
        </div>
    </div>

    <!-- MODAL: APPLY FOR LEAVE -->
    <div class="modal fade" id="applyLeaveModal" tabindex="-1" aria-labelledby="applyLeaveLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="applyLeaveLabel">
                        <i class="bi bi-calendar-plus text-primary me-2"></i> Submit Leave Application
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="row g-3">
                        <div class="col-12">
                            <label class="form-label-custom">Select Leave Type *</label>
                            <select class="form-select form-select-custom">
                                <option selected>Casual Leave (7 Remaining)</option>
                                <option>Sick Leave (6 Remaining)</option>
                                <option>Earned / Annual Leave (12 Remaining)</option>
                                <option>Maternity / Paternity Leave</option>
                                <option>Bereavement Leave</option>
                            </select>
                        </div>
                        <div class="col-6">
                            <label class="form-label-custom">From Date *</label>
                            <input type="date" class="form-control form-control-custom" value="2026-11-10" />
                        </div>
                        <div class="col-6">
                            <label class="form-label-custom">To Date *</label>
                            <input type="date" class="form-control form-control-custom" value="2026-11-11" />
                        </div>
                        <div class="col-12">
                            <label class="form-label-custom">Reason for Time-off *</label>
                            <textarea class="form-control form-control-custom" rows="3" placeholder="Explain the reason for leave so your manager can review..." required></textarea>
                        </div>
                        <div class="col-12">
                            <div class="alert alert-light border small text-muted py-2 mb-0">
                                <i class="bi bi-shield-check text-success me-1"></i>
                                Notice period: Please apply at least 48 hours prior for planned leaves.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="Leave request submitted to your reporting manager for approval!">
                        <i class="bi bi-send me-1"></i> Submit Application
                    </button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

