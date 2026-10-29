<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Leave Management</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-calendar-week-fill text-navy"></i> Leave Management
            </h1>
            <p class="page-subtitle">Review employee leave applications, approve or reject requests, and monitor company leave quotas.</p>
        </div>
        <div>
            <button type="button" class="btn btn-navy btn-sm" data-bs-toggle="modal" data-bs-target="#recordLeaveModal">
                <i class="bi bi-plus-circle me-1"></i> Grant Leave On Behalf
            </button>
        </div>
    </div>

    <!-- 4 LEAVE SUMMARY KPI CARDS -->
    <div class="row g-3 mb-4">
        <div class="col-6 col-lg-3">
            <div class="stat-card">
                <div>
                    <span class="stat-label">Pending Approval</span>
                    <span class="stat-value text-warning">3</span>
                    <span class="stat-subtext text-warning"><i class="bi bi-hourglass-split"></i> Requires Action</span>
                </div>
                <div class="stat-icon warning"><i class="bi bi-clock-history"></i></div>
            </div>
        </div>
        <div class="col-6 col-lg-3">
            <div class="stat-card">
                <div>
                    <span class="stat-label">Approved (Oct 2026)</span>
                    <span class="stat-value text-success">18</span>
                    <span class="stat-subtext text-success"><i class="bi bi-check-circle"></i> Granted</span>
                </div>
                <div class="stat-icon success"><i class="bi bi-check-all"></i></div>
            </div>
        </div>
        <div class="col-6 col-lg-3">
            <div class="stat-card">
                <div>
                    <span class="stat-label">On Leave Today</span>
                    <span class="stat-value text-navy">2</span>
                    <span class="stat-subtext text-muted">1 Sick • 1 Casual</span>
                </div>
                <div class="stat-icon primary"><i class="bi bi-person-dash-fill"></i></div>
            </div>
        </div>
        <div class="col-6 col-lg-3">
            <div class="stat-card">
                <div>
                    <span class="stat-label">Rejected Applications</span>
                    <span class="stat-value text-danger">2</span>
                    <span class="stat-subtext text-muted">Policy Non-compliant</span>
                </div>
                <div class="stat-icon danger"><i class="bi bi-x-circle"></i></div>
            </div>
        </div>
    </div>

    <!-- TABS: PENDING, APPROVED, REJECTED, ALL -->
    <ul class="nav nav-pills mb-3" id="leaveTabs" role="tablist">
        <li class="nav-item">
            <button class="nav-link active btn-sm" id="tab-pending" data-bs-toggle="pill" data-bs-target="#pending-content" type="button" role="tab">
                Pending Requests <span class="badge bg-danger ms-1">3</span>
            </button>
        </li>
        <li class="nav-item">
            <button class="nav-link btn-sm text-navy" id="tab-approved" data-bs-toggle="pill" data-bs-target="#approved-content" type="button" role="tab">
                Approved Leaves (18)
            </button>
        </li>
        <li class="nav-item">
            <button class="nav-link btn-sm text-navy" id="tab-rejected" data-bs-toggle="pill" data-bs-target="#rejected-content" type="button" role="tab">
                Rejected (2)
            </button>
        </li>
        <li class="nav-item">
            <button class="nav-link btn-sm text-navy" id="tab-all" data-bs-toggle="pill" data-bs-target="#all-content" type="button" role="tab">
                All History
            </button>
        </li>
    </ul>

    <div class="tab-content" id="leaveTabContents">
        <!-- TAB 1: PENDING REQUESTS -->
        <div class="tab-pane fade show active" id="pending-content" role="tabpanel">
            <div class="table-responsive-theme shadow-sm mb-4">
                <table class="table-theme">
                    <thead>
                        <tr>
                            <th>Applicant</th>
                            <th>Department</th>
                            <th>Leave Type</th>
                            <th>From - To Date</th>
                            <th>Days</th>
                            <th>Reason</th>
                            <th>Applied On</th>
                            <th class="text-end">Review Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Request 1 -->
                        <tr>
                            <td>
                                <div class="user-meta-cell">
                                    <div class="user-avatar-sm" style="background:#fce7f3; color:#9d174d;">RV</div>
                                    <div>
                                        <div class="user-name-title">Rahul Verma</div>
                                        <div class="user-sub-id">OT-1031</div>
                                    </div>
                                </div>
                            </td>
                            <td>Engineering</td>
                            <td><span class="badge bg-light text-dark border">Casual Leave</span></td>
                            <td class="font-monospace">30 Oct - 31 Oct 2026</td>
                            <td><span class="fw-bold">2 Days</span></td>
                            <td class="small" style="max-width: 220px; white-space: normal;">Attending cousin's wedding ceremony in Pune. Projects handed to teammate.</td>
                            <td class="text-muted small">28 Oct, 03:15 PM</td>
                            <td class="text-end">
                                <div class="d-inline-flex gap-1">
                                    <button type="button" class="btn btn-sm btn-success py-1 px-2" data-demo-action="Leave request for Rahul Verma approved!" title="Approve">
                                        <i class="bi bi-check-lg"></i> Approve
                                    </button>
                                    <button type="button" class="btn btn-sm btn-outline-danger py-1 px-2" data-bs-toggle="modal" data-bs-target="#rejectModal" title="Reject">
                                        <i class="bi bi-x-lg"></i> Reject
                                    </button>
                                </div>
                            </td>
                        </tr>

                        <!-- Request 2 -->
                        <tr>
                            <td>
                                <div class="user-meta-cell">
                                    <div class="user-avatar-sm" style="background:#e0f2fe; color:#0369a1;">PS</div>
                                    <div>
                                        <div class="user-name-title">Priya Sen</div>
                                        <div class="user-sub-id">OT-1019</div>
                                    </div>
                                </div>
                            </td>
                            <td>Marketing</td>
                            <td><span class="badge bg-light text-dark border text-danger">Sick Leave</span></td>
                            <td class="font-monospace">02 Nov - 03 Nov 2026</td>
                            <td><span class="fw-bold">2 Days</span></td>
                            <td class="small" style="max-width: 220px; white-space: normal;">Doctor advised diagnostic checks and complete rest for stomach infection.</td>
                            <td class="text-muted small">29 Oct, 09:20 AM</td>
                            <td class="text-end">
                                <div class="d-inline-flex gap-1">
                                    <button type="button" class="btn btn-sm btn-success py-1 px-2" data-demo-action="Leave request for Priya Sen approved!" title="Approve">
                                        <i class="bi bi-check-lg"></i> Approve
                                    </button>
                                    <button type="button" class="btn btn-sm btn-outline-danger py-1 px-2" data-bs-toggle="modal" data-bs-target="#rejectModal" title="Reject">
                                        <i class="bi bi-x-lg"></i> Reject
                                    </button>
                                </div>
                            </td>
                        </tr>

                        <!-- Request 3 -->
                        <tr>
                            <td>
                                <div class="user-meta-cell">
                                    <div class="user-avatar-sm" style="background:#fef3c7; color:#92400e;">AK</div>
                                    <div>
                                        <div class="user-name-title">Amit Kulkarni</div>
                                        <div class="user-sub-id">OT-1044</div>
                                    </div>
                                </div>
                            </td>
                            <td>Finance</td>
                            <td><span class="badge bg-light text-dark border">Earned / Annual</span></td>
                            <td class="font-monospace">05 Nov - 09 Nov 2026</td>
                            <td><span class="fw-bold">5 Days</span></td>
                            <td class="small" style="max-width: 220px; white-space: normal;">Pre-planned annual family travel out of station.</td>
                            <td class="text-muted small">27 Oct, 11:45 AM</td>
                            <td class="text-end">
                                <div class="d-inline-flex gap-1">
                                    <button type="button" class="btn btn-sm btn-success py-1 px-2" data-demo-action="Leave request for Amit Kulkarni approved!" title="Approve">
                                        <i class="bi bi-check-lg"></i> Approve
                                    </button>
                                    <button type="button" class="btn btn-sm btn-outline-danger py-1 px-2" data-bs-toggle="modal" data-bs-target="#rejectModal" title="Reject">
                                        <i class="bi bi-x-lg"></i> Reject
                                    </button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- TAB 2: APPROVED LEAVES -->
        <div class="tab-pane fade" id="approved-content" role="tabpanel">
            <div class="table-responsive-theme shadow-sm mb-4">
                <table class="table-theme">
                    <thead>
                        <tr>
                            <th>Applicant</th>
                            <th>Department</th>
                            <th>Leave Type</th>
                            <th>Period</th>
                            <th>Days</th>
                            <th>Reason</th>
                            <th>Approved By</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="user-meta-cell">
                                    <div class="user-avatar-sm" style="background:#e0e7ff; color:#3730a3;">NK</div>
                                    <div>
                                        <div class="user-name-title">Neha Kapoor</div>
                                        <div class="user-sub-id">OT-1021</div>
                                    </div>
                                </div>
                            </td>
                            <td>Finance</td>
                            <td>Casual Leave</td>
                            <td class="font-monospace">29 Oct - 29 Oct 2026</td>
                            <td class="fw-bold">1 Day</td>
                            <td class="small">Personal home documentation visit</td>
                            <td>Rajesh Sharma</td>
                            <td><span class="badge-status badge-approved">Approved (Active Today)</span></td>
                        </tr>
                        <tr>
                            <td>
                                <div class="user-meta-cell">
                                    <div class="user-avatar-sm" style="background:#e0f2fe; color:#0369a1;">VM</div>
                                    <div>
                                        <div class="user-name-title">Vikram Malhotra</div>
                                        <div class="user-sub-id">OT-1008</div>
                                    </div>
                                </div>
                            </td>
                            <td>Engineering</td>
                            <td>Casual Leave</td>
                            <td class="font-monospace">14 Oct - 14 Oct 2026</td>
                            <td class="fw-bold">1 Day</td>
                            <td class="small">Family personal function</td>
                            <td>Rajesh Sharma</td>
                            <td><span class="badge-status badge-approved">Approved</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- TAB 3: REJECTED -->
        <div class="tab-pane fade" id="rejected-content" role="tabpanel">
            <div class="table-responsive-theme shadow-sm mb-4">
                <table class="table-theme">
                    <thead>
                        <tr>
                            <th>Applicant</th>
                            <th>Leave Type</th>
                            <th>Dates</th>
                            <th>Reason</th>
                            <th>Rejection Justification</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="user-name-title">Karan Sethi (OT-1039)</div>
                                <div class="user-sub-id">Marketing</div>
                            </td>
                            <td>Earned Leave</td>
                            <td>12 Oct - 16 Oct 2026 (5 Days)</td>
                            <td class="small">Vacation</td>
                            <td class="text-danger small">Clashes with critical Product Launch Week; team quota already reached.</td>
                            <td><span class="badge-status badge-rejected">Rejected</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- TAB 4: ALL HISTORY -->
        <div class="tab-pane fade" id="all-content" role="tabpanel">
            <div class="p-4 bg-white border rounded text-center text-muted">
                <i class="bi bi-clock-history fs-2 d-block mb-2"></i>
                <p class="mb-0">Displaying all combined historical requests for year 2026 across all company divisions.</p>
            </div>
        </div>
    </div>

    <!-- MODAL: REJECT REASON -->
    <div class="modal fade" id="rejectModal" tabindex="-1" aria-labelledby="rejectModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme bg-danger bg-opacity-10">
                    <h5 class="modal-title fw-bold text-danger" id="rejectModalLabel">
                        <i class="bi bi-exclamation-triangle-fill me-2"></i> Reject Leave Request
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <p class="text-muted small">Please specify the reason for declining this request. The employee will receive an automated notification.</p>
                    <div class="mb-3">
                        <label class="form-label-custom">Decline Justification *</label>
                        <select class="form-select form-select-custom mb-2">
                            <option>Critical project delivery deadline</option>
                            <option>Department minimum staffing quota exceeded</option>
                            <option>Insufficient leave balance</option>
                            <option>Other operational constraints</option>
                        </select>
                        <textarea class="form-control form-control-custom" rows="2" placeholder="Provide extra feedback for employee..."></textarea>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-accent-red" data-demo-action="Leave request rejected and employee notified." data-demo-type="danger">
                        Confirm Rejection
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: GRANT LEAVE ON BEHALF -->
    <div class="modal fade" id="recordLeaveModal" tabindex="-1" aria-labelledby="recordLeaveLabel" aria-hidden="true">
        <div class="modal-dialog modal-md modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="recordLeaveLabel">
                        <i class="bi bi-calendar-plus text-primary me-2"></i> Grant Leave on Behalf of Staff
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="row g-3">
                        <div class="col-12">
                            <label class="form-label-custom">Select Employee *</label>
                            <select class="form-select form-select-custom">
                                <option>OT-1008 - Vikram Malhotra</option>
                                <option>OT-1012 - Ananya Sharma</option>
                                <option>OT-1015 - Rohan Kulkarni</option>
                                <option>OT-1021 - Neha Kapoor</option>
                                <option>OT-1024 - Pooja Singh</option>
                            </select>
                        </div>
                        <div class="col-12">
                            <label class="form-label-custom">Leave Type *</label>
                            <select class="form-select form-select-custom">
                                <option>Casual Leave</option>
                                <option>Sick Leave</option>
                                <option>Earned / Annual Leave</option>
                                <option>Maternity / Paternity Leave</option>
                                <option>Bereavement Leave</option>
                            </select>
                        </div>
                        <div class="col-6">
                            <label class="form-label-custom">From Date *</label>
                            <input type="date" class="form-control form-control-custom" value="2026-10-30" />
                        </div>
                        <div class="col-6">
                            <label class="form-label-custom">To Date *</label>
                            <input type="date" class="form-control form-control-custom" value="2026-10-30" />
                        </div>
                        <div class="col-12">
                            <label class="form-label-custom">Reason / Admin Note</label>
                            <textarea class="form-control form-control-custom" rows="2" placeholder="Enter reason..."></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="Leave allocated and recorded.">Grant Leave</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

