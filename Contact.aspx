<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" Title="Contact eBenchmark Plus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="contactContent" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <h2>About Us &amp; Contact Information</h2>
                <br />
                <table class="table">
                    <tr>
                        <td class="contact-name">Debbie Smith</td>
                    </tr>
                    <tr>
                        <td>Phone - (323) 353-0255</td>
                    </tr>
                    <tr>
                        <td>Email - <a href="mailto:debbie@ebenchmarkplus.com">debbie@ebenchmarkplus.com</a></td>
                    </tr>
                    <tr>
                        <td>
                            <h3>BIO</h3>
                            <ul>
                                <li>Certified Energy Manager (CEM®)</li>
                                <li>Project Management Professional (PMP®)</li>
                                <li>Electrical testing, M&amp;V, sub-metering, EV chargers, photovoltaic, battery storage, and lighting retrofit &amp; control projects (26 years)</li>
                                <li>Bachelor of Science -- California State University, Long Beach</li>
                                <li>Member of AEE, PMI, USGBC</li>
                            </ul>

                        </td>
                    </tr>
                    <tr>
                        <td class="contact-name">Erik Nelson</td>
                    </tr>
                    <tr>
                        <td>Email - <a href="mailto:erik.nelson@ebenchmarkplus.com">erik.nelson@ebenchmarkplus.com</a></td>
                    </tr>
                    <tr>
                        <td>
                            <h3>BIO</h3>
                            <ul>
                                <li>IT Professional with 25 years experience in software systems architecture, application and website development, 
                                        database design and development, business and systems analysis across multiple fields including healthcare and automotive.</li>
                                <li>Bachelor of Arts — Illinois State University, Bloomington-Normal, Illinois</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="contact-name">Wayne Bausman</td>
                    </tr>
                    <tr>
                        <td>Phone - (951) 203-3387</td>
                    </tr>
                    <tr>
                        <td>Email - <a href="mailto:wayne@ebenchmarkplus.com">wayne@ebenchmarkplus.com</a></td>
                    </tr>
                    <tr>
                        <td>
                            <h3>BIO</h3>
                            <ul>
                                <li>President and Co-owner of Energy Design, Inc. (21 years)</li>
                                <li>Southern California Edison, 37 years (retired 1994), Service Planner (1969 - 1994)</li>
                                <li>Service Leave from SCE for active service in U.S. Navy (1962 - 1964)</li>
                                <li>Bachelor of Science Degree — 1974 from California State University Los Angeles</li>
                                <li>Association of Energy Engineers (AEE) (21 years)</li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-sm-4">
                <div id="contactUs">
                    <h4 class="text-center">Contact Us.</h4>
                    <p>
                        <small>Thank you for your interest in <strong>eBenchMarkPlus</strong>. Please use this form to send us your questions and comments and we will get back to 
					you right away.</small>
                    </p>
                    <form class="contact-form">
                        <div class="form-group">
                            <label for="inputName" class="small"><strong>Your Name</strong></label>
                            <input type="text" class="form-control" id="inputName" />
                        </div>
                        <div class="form-group">
                            <label for="inputBuildingName" class="small"><strong>Building Name</strong></label>
                            <input type="text" class="form-control" id="inputBuildingName" />
                        </div>
                        <div class="form-group">
                            <label for="inputBuildingSize" class="small"><strong>Building Size (In Square Feet)</strong></label>
                            <select class="form-control" id="inputBuildingSize">
                                <option>Less Than 20,000</option>
                                <option>Greater Than 20,000 But Less Than 50,000</option>
                                <option>Greater Than 50,000 But Less Than 100,000</option>
                                <option selected>100,000 Square Feet or Greater</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="inputEmAdr" class="small"><strong>Email Address</strong></label>
                            <input type="email" class="form-control" id="inputEmAdr" />
                        </div>
                        <div class="form-group">
                            <label for="inputPhone" class="small"><strong>Phone</strong></label>
                            <input type="tel" class="form-control" id="inputPhone" />
                        </div>
                        <div class="form-group">
                            <label for="inputMyMessage" class="small"><strong>My Message</strong></label>
                            <textarea class="form-control" id="inputMyMessage" rows="3"></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary d-inline" style="margin-top: 5px;">Submit</button>
                    </form>
                </div>

                <div class="alert alert-success" id="ThankYouMessage" style="display: none;">
                    <strong>Thank you very much for your submission</strong>! A representative from
                    <strong>eBenchMarkPlus</strong> will be contacting you soon.
                </div>

            </div>
        </div>
    </div>
</asp:Content>

