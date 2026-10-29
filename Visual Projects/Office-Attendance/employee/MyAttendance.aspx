<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - My Attendance Log</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-calendar-check-fill text-navy"></i> My Attendance Record
            </h1>
            <p class="page-subtitle">Personal attendance punch history, working hours, and monthly compliance.</p>
        </div>
        <div class="d-flex align-items-center gap-2">
            <button type="button" class="btn btn-outline-navy btn-sm" data-demo-action="Monthly attendance PDF statement downloaded!">
                <i class="bi bi-download me-1"></i> Download PDF
            </button>
        </div>
    </div>

    <!-- MONTH SELECTOR & SUMMARY METRIC STRIP -->
    <div class="card-theme p-3 mb-3">
        <div class="row g-3 align-items-center">
            <div class="col-12 col-md-3">
                <label class="form-label-custom small mb-1">Select Month</label>
                <div class="input-group">
                    <span class="input-group-text bg-light"><i class="bi bi-calendar3"></i></span>
                    <select class="form-select form-select-custom" onchange="showToast('Displaying attendance for ' + this.value, 'info')">
                        <option selected>October 2026 (Current)</option>
                        <option>September 2026</option>
                        <option>August 2026</option>
                    </select>
                </div>
            </div>

            <div class="col-6 col-md-2">
                <div class="text-muted small">Present Days</div>
                <div class="fw-bold fs-5 text-success">21 Days</div>
                <div class="text-muted" style="font-size: 0.72rem;">Out of 22 working</div>
            </div>

            <div class="col-6 col-md-2">
                <div class="text-muted small">Late Arrivals</div>
                <div class="fw-bold fs-5 text-warning">2 Days</div>
                <div class="text-muted" style="font-size: 0.72rem;">Total 34 mins</div>
            </div>

            <div class="col-6 col-md-2">
                <div class="text-muted small">Unpaid Absences</div>
                <div class="fw-bold fs-5 text-navy">0 Days</div>
                <div class="text-muted" style="font-size: 0.72rem;">Full CTC Eligible</div>
            </div>

            <div class="col-6 col-md-3">
                <div class="text-muted small">Total Logged Hours</div>
                <div class="fw-bold fs-5 text-navy">172h 45m</div>
                <div class="text-success small" style="font-size: 0.72rem;"><i class="bi bi-check-circle"></i> 8h 14m Daily Avg</div>
            </div>
        </div>
    </div>

    <!-- VIEW TABS: DATE-WISE LIST & MONTHLY CALENDAR -->
    <ul class="nav nav-pills mb-3" id="attTabs" role="tablist">
        <li class="nav-item">
            <button class="nav-link active btn-sm" id="tab-list" data-bs-toggle="pill" data-bs-target="#content-list" type="button" role="tab">
                <i class="bi bi-list-ul me-1"></i> Detailed Daily List
            </button>
        </li>
        <li class="nav-item">
            <button class="nav-link btn-sm text-navy" id="tab-calendar" data-bs-toggle="pill" data-bs-target="#content-calendar" type="button" role="tab">
                <i class="bi bi-calendar3 me-1"></i> Monthly Calendar Grid
            </button>
        </li>
    </ul>

    <div class="tab-content" id="attTabContents">
        <!-- TAB 1: DATE-WISE LIST -->
        <div class="tab-pane fade show active" id="content-list" role="tabpanel">
            <div class="table-responsive-theme shadow-sm mb-4">
                <table class="table-theme">
                    <thead>
                        <tr>
                            <th>Date & Day</th>
                            <th>Check In</th>
                            <th>Check Out</th>
                            <th>Total Hours</th>
                            <th>Late Arrival</th>
                            <th>Status Badge</th>
                            <th class="text-end">Details</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="fw-bold text-navy">Today (29 Oct)</td>
                            <td class="font-monospace text-success fw-bold">09:54 AM</td>
                            <td class="font-monospace text-muted">-- In Shift --</td>
                            <td class="font-monospace text-muted">--</td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="badge-status badge-present">Present (On Time)</span></td>
                            <td class="text-end">
                                <button type="button" class="btn btn-sm btn-outline-navy py-0 px-2" data-bs-toggle="modal" data-bs-target="#attDetailModal">
                                    <i class="bi bi-info-circle"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td class="fw-semibold">Wed, 28 Oct</td>
                            <td class="font-monospace">09:58 AM</td>
                            <td class="font-monospace">06:12 PM</td>
                            <td class="font-monospace">8h 14m</td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="badge-status badge-present">Present</span></td>
                            <td class="text-end">
                                <button type="button" class="btn btn-sm btn-outline-navy py-0 px-2" data-bs-toggle="modal" data-bs-target="#attDetailModal">
                                    <i class="bi bi-info-circle"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td class="fw-semibold">Tue, 27 Oct</td>
                            <td class="font-monospace text-warning fw-bold">10:19 AM</td>
                            <td class="font-monospace">06:30 PM</td>
                            <td class="font-monospace">8h 11m</td>
                            <td><span class="badge-status badge-late">+19 mins</span></td>
                            <td><span class="badge-status badge-late">Late Arrival</span></td>
                            <td class="text-end">
                                <button type="button" class="btn btn-sm btn-outline-navy py-0 px-2" data-bs-toggle="modal" data-bs-target="#attDetailModal">
                                    <i class="bi bi-info-circle"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td class="fw-semibold">Mon, 26 Oct</td>
                            <td class="font-monospace">10:02 AM</td>
                            <td class="font-monospace">06:05 PM</td>
                            <td class="font-monospace">8h 03m</td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="badge-status badge-present">Present</span></td>
                            <td class="text-end">
                                <button type="button" class="btn btn-sm btn-outline-navy py-0 px-2" data-bs-toggle="modal" data-bs-target="#attDetailModal">
                                    <i class="bi bi-info-circle"></i>
                                </button>
                            </td>
                        </tr>
                        <tr class="table-light">
                            <td class="fw-semibold text-muted">Sun, 25 Oct</td>
                            <td colspan="4" class="text-center text-muted fst-italic">Sunday - Weekly Off</td>
                            <td><span class="badge bg-light text-muted border">Off Day</span></td>
                            <td class="text-end">-</td>
                        </tr>
                        <tr class="table-light">
                            <td class="fw-semibold text-muted">Sat, 24 Oct</td>
                            <td colspan="4" class="text-center text-muted fst-italic">Saturday - 4th Saturday Off</td>
                            <td><span class="badge bg-light text-muted border">Off Day</span></td>
                            <td class="text-end">-</td>
                        </tr>
                        <tr>
                            <td class="fw-semibold">Fri, 23 Oct</td>
                            <td class="font-monospace">09:50 AM</td>
                            <td class="font-monospace">06:15 PM</td>
                            <td class="font-monospace">8h 25m</td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="badge-status badge-present">Present</span></td>
                            <td class="text-end">
                                <button type="button" class="btn btn-sm btn-outline-navy py-0 px-2" data-bs-toggle="modal" data-bs-target="#attDetailModal">
                                    <i class="bi bi-info-circle"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td class="fw-semibold">Wed, 14 Oct</td>
                            <td class="font-monospace text-muted">--</td>
                            <td class="font-monospace text-muted">--</td>
                            <td class="font-monospace text-muted">--</td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="badge-status badge-leave">Casual Leave</span></td>
                            <td class="text-end">
                                <button type="button" class="btn btn-sm btn-outline-navy py-0 px-2" data-bs-toggle="modal" data-bs-target="#attDetailModal">
                                    <i class="bi bi-info-circle"></i>
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- TAB 2: MONTHLY CALENDAR GRID -->
        <div class="tab-pane fade" id="content-calendar" role="tabpanel">
            <div class="card-theme p-3">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2 class="card-title-theme">
                        <i class="bi bi-calendar3 text-navy"></i> October 2026 Attendance Heatmap
                    </h2>
                    <span class="badge bg-light text-dark border">Shift: 10am - 6pm</span>
                </div>

                <div class="table-responsive">
                    <table class="table table-bordered text-center align-middle small mb-0">
                        <thead class="table-light">
                            <tr>
                                <th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th class="table-secondary">Sat</th><th class="table-secondary">Sun</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-muted">28</td><td class="text-muted">29</td><td class="text-muted">30</td>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">1</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-info bg-opacity-10"><div class="fw-bold">2</div><span class="badge bg-info" style="font-size:0.6rem;">Holiday</span></td>
                                <td class="p-2 bg-light text-muted"><div class="fw-bold">3</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-light text-muted"><div class="fw-bold">4</div><span class="badge bg-secondary" style="font-size:0.6rem;">Sun</span></td>
                            </tr>
                            <tr>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">5</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">6</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">7</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">8</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">9</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-light text-muted"><div class="fw-bold">10</div><span class="badge bg-secondary" style="font-size:0.6rem;">2nd Sat</span></td>
                                <td class="p-2 bg-light text-muted"><div class="fw-bold">11</div><span class="badge bg-secondary" style="font-size:0.6rem;">Sun</span></td>
                            </tr>
                            <tr>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">12</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">13</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-primary bg-opacity-10"><div class="fw-bold">14</div><span class="badge bg-primary" style="font-size:0.6rem;">Leave</span></td>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">15</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">16</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-light text-muted"><div class="fw-bold">17</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-light text-muted"><div class="fw-bold">18</div><span class="badge bg-secondary" style="font-size:0.6rem;">Sun</span></td>
                            </tr>
                            <tr>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">19</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-info bg-opacity-10"><div class="fw-bold">20</div><span class="badge bg-info" style="font-size:0.6rem;">Holiday</span></td>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">21</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">22</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">23</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-light text-muted"><div class="fw-bold">24</div><span class="badge bg-secondary" style="font-size:0.6rem;">4th Sat</span></td>
                                <td class="p-2 bg-light text-muted"><div class="fw-bold">25</div><span class="badge bg-secondary" style="font-size:0.6rem;">Sun</span></td>
                            </tr>
                            <tr>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">26</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-warning bg-opacity-10"><div class="fw-bold">27</div><span class="badge bg-warning text-dark" style="font-size:0.6rem;">Late</span></td>
                                <td class="p-2 bg-success bg-opacity-10"><div class="fw-bold">28</div><span class="badge bg-success" style="font-size:0.6rem;">P</span></td>
                                <td class="p-2 bg-primary bg-opacity-10 border border-primary"><div class="fw-bold text-primary">29</div><span class="badge bg-success" style="font-size:0.6rem;">Today</span></td>
                                <td class="p-2 text-muted"><div class="fw-bold">30</div>-</td>
                                <td class="p-2 bg-light text-muted"><div class="fw-bold">31</div><span class="badge bg-secondary" style="font-size:0.6rem;">Sat Off</span></td>
                                <td class="text-muted">1</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: ATTENDANCE DETAILS -->
    <div class="modal fade" id="attDetailModal" tabindex="-1" aria-labelledby="attDetailLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="attDetailLabel">
                        <i class="bi bi-info-circle-fill text-primary me-2"></i> Punch Verification Details
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <table class="table table-sm table-borderless small mb-0">
                        <tbody>
                            <tr><td class="text-muted">Employee:</td><td class="fw-semibold">Vikram Malhotra (OT-1008)</td></tr>
                            <tr><td class="text-muted">Verification Mode:</td><td><span class="badge bg-light text-dark border">Office Terminal QR</span></td></tr>
                            <tr><td class="text-muted">In Timestamp:</td><td class="font-monospace">29 Oct 2026, 09:54:12 AM</td></tr>
                            <tr><td class="text-muted">Terminal Name:</td><td>Reception Main Screen (#LOBBY-01)</td></tr>
                            <tr><td class="text-muted">Bound Device:</td><td>Apple iPhone 14 Pro</td></tr>
                            <tr><td class="text-muted">Network Verification:</td><td><span class="text-success"><i class="bi bi-check-circle-fill"></i> Passed (Office Wi-Fi BKC)</span></td></tr>
                            <tr><td class="text-muted">Grace Compliance:</td><td>Arrived before 10:15 AM (On Time)</td></tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-navy" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

