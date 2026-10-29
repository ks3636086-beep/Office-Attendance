<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Holidays & Weekly Off</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-calendar-heart-fill text-navy"></i> Holidays & Weekly Off
            </h1>
            <p class="page-subtitle">Official company non-working days, gazetted festival holidays, and weekly off rules for 2026.</p>
        </div>
    </div>

    <!-- UPCOMING HOLIDAY HIGHLIGHT BANNER -->
    <div class="card-theme p-3 p-md-4 mb-3 border-0 shadow-sm" style="background: linear-gradient(135deg, #0B1B32, #142B49); color: #ffffff;">
        <div class="d-flex flex-column flex-sm-row justify-content-between align-items-sm-center gap-3">
            <div class="d-flex align-items-center gap-3">
                <div class="p-3 rounded-3 text-center bg-warning bg-opacity-25 text-warning border border-warning border-opacity-50" style="min-width: 68px;">
                    <span class="d-block fw-bold fs-4 lh-1">08</span>
                    <span class="small fw-bold">NOV</span>
                </div>
                <div>
                    <span class="badge bg-warning text-dark mb-1"><i class="bi bi-stars"></i> Next Upcoming Holiday</span>
                    <h2 class="h5 fw-bold text-white mb-0">Diwali (Deepavali)</h2>
                    <span class="small text-white-50">Sunday • Festival Holiday • Office Closed</span>
                </div>
            </div>
            <div class="text-sm-end">
                <span class="badge bg-light text-dark px-3 py-2 font-monospace">In 10 Days</span>
            </div>
        </div>
    </div>

    <div class="row g-3">
        <!-- LEFT: 2026 OFFICIAL HOLIDAYS TABLE -->
        <div class="col-12 col-lg-8">
            <div class="card-theme h-100">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-calendar2-check text-navy"></i> Official 2026 Holiday Schedule
                    </h2>
                    <span class="badge bg-light text-dark border">14 Declared Days</span>
                </div>
                <div class="table-responsive-theme border-0">
                    <table class="table-theme">
                        <thead>
                            <tr>
                                <th>Holiday Name</th>
                                <th>Date</th>
                                <th>Day</th>
                                <th>Classification</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-warning bg-opacity-25">
                                <td class="fw-bold text-navy"><i class="bi bi-stars text-warning me-1"></i> Diwali (Deepavali)</td>
                                <td class="font-monospace fw-bold">08 Nov 2026</td>
                                <td>Sunday</td>
                                <td><span class="badge bg-light text-dark border">Festival Holiday</span></td>
                                <td><span class="badge bg-warning text-dark"><i class="bi bi-bell-fill"></i> Upcoming</span></td>
                            </tr>
                            <tr>
                                <td class="fw-bold text-navy"><i class="bi bi-gift text-danger me-1"></i> Christmas Day</td>
                                <td class="font-monospace fw-bold">25 Dec 2026</td>
                                <td>Friday</td>
                                <td><span class="badge bg-light text-dark border">Gazetted Holiday</span></td>
                                <td><span class="badge bg-warning text-dark">Upcoming</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold text-muted"><i class="bi bi-flower1 text-success me-1"></i> Gandhi Jayanti</td>
                                <td class="font-monospace text-muted">02 Oct 2026</td>
                                <td class="text-muted">Friday</td>
                                <td><span class="badge bg-light text-muted border">National Holiday</span></td>
                                <td><span class="badge bg-secondary opacity-50">Passed</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold text-muted"><i class="bi bi-fire text-warning me-1"></i> Dussehra (Vijayadashami)</td>
                                <td class="font-monospace text-muted">20 Oct 2026</td>
                                <td class="text-muted">Tuesday</td>
                                <td><span class="badge bg-light text-muted border">Gazetted</span></td>
                                <td><span class="badge bg-secondary opacity-50">Passed</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold text-muted"><i class="bi bi-sun text-warning me-1"></i> Independence Day</td>
                                <td class="font-monospace text-muted">15 Aug 2026</td>
                                <td class="text-muted">Saturday</td>
                                <td><span class="badge bg-light text-muted border">National Holiday</span></td>
                                <td><span class="badge bg-secondary opacity-50">Passed</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold text-muted"><i class="bi bi-palette text-warning me-1"></i> Holi Festival</td>
                                <td class="font-monospace text-muted">04 Mar 2026</td>
                                <td class="text-muted">Wednesday</td>
                                <td><span class="badge bg-light text-muted border">Festival Holiday</span></td>
                                <td><span class="badge bg-secondary opacity-50">Passed</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold text-muted"><i class="bi bi-flag text-danger me-1"></i> Republic Day</td>
                                <td class="font-monospace text-muted">26 Jan 2026</td>
                                <td class="text-muted">Monday</td>
                                <td><span class="badge bg-light text-muted border">National Holiday</span></td>
                                <td><span class="badge bg-secondary opacity-50">Passed</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- RIGHT: WEEKLY OFF POLICY CARD -->
        <div class="col-12 col-lg-4">
            <div class="card-theme p-3 mb-3">
                <h3 class="card-title-theme mb-2">
                    <i class="bi bi-clock-history text-navy"></i> Weekly Off Information
                </h3>
                <p class="text-muted small mb-3">
                    Standard weekly non-working days for engineering & office staff:
                </p>

                <div class="list-group list-group-flush small mb-3">
                    <div class="list-group-item px-0 py-2 d-flex justify-content-between align-items-center">
                        <span class="fw-semibold text-navy">All Sundays</span>
                        <span class="badge bg-success bg-opacity-10 text-success border border-success border-opacity-25">Mandatory Off</span>
                    </div>
                    <div class="list-group-item px-0 py-2 d-flex justify-content-between align-items-center">
                        <span class="fw-semibold text-navy">2nd & 4th Saturday</span>
                        <span class="badge bg-primary bg-opacity-10 text-primary border border-primary border-opacity-25">Declared Off</span>
                    </div>
                    <div class="list-group-item px-0 py-2 d-flex justify-content-between align-items-center">
                        <span class="fw-semibold text-navy">1st, 3rd & 5th Saturday</span>
                        <span class="badge bg-light text-dark border">Regular Working Day</span>
                    </div>
                </div>

                <div class="alert alert-light border small text-muted py-2 mb-0">
                    <i class="bi bi-info-circle me-1"></i> Attendance punch terminal is locked during official holidays and weekly offs.
                </div>
            </div>

            <!-- COMP-OFF NOTICE -->
            <div class="card-theme p-3">
                <h4 class="h6 fw-bold text-navy mb-1"><i class="bi bi-award me-1"></i> Compensatory Off Policy</h4>
                <p class="small text-muted mb-0">
                    If required by your department manager to work on an official holiday or weekly off, you will automatically accrue a <strong>Compensatory Off (Comp-Off)</strong> credit in your leave balance.
                </p>
            </div>
        </div>
    </div>
</asp:Content>

