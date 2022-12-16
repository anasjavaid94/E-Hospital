const express = require('express');
const conn = require('./dbConnection/dbConnection')
const body_parse = require('body-parser');
const app = express();
const port = 5000;
var sql = ''
var crypto = require('crypto')

app.use(body_parse.json());
app.set('view engine', 'ejs')
app.use(express.static(__dirname + '/public'))
app.use(express.urlencoded({ extended: true }));
//app.use(express.static("public"));

app.get('/', (req, res) => {
    res.render("pages/index");
})
app.get('/services', (req, res) => {
    res.render("pages/services");
})
app.get('/index', (req, res) => {
    res.render("pages/index");
})
app.get('/Login', (req, res) => {
    res.render("pages/logina8b9");
})
app.get('/register', (req, res) => {
    res.render("pages/register");
})
app.get('/about', (req, res) => {
    res.render("pages/a/about-e-hospital-new");
})
app.get('/vp', (req, res) => {
    res.render("pages/a/Vandana-Page");
})

app.get('/Contact', (req, res) => {
    res.render("pages/contact-us");
})
app.get('/post', (req, res) => {
    res.render("pages/post");
})
app.get('/create-account.html', (req, res) => {
    res.render("pages/create-account");
})
app.get('/patientRegister', (req, res) => {
    res.render("pages/patient");
})
app.get('/DoctorRegister', (req, res) => {
    res.render("pages/doctorRegister");
})
app.get('/b', (req, res) => {
    res.render("pages/b");
})
app.get('/hospital', (req, res) => {
    res.render("pages/hospital");
})
app.get('/patientsDashboard', (req, res) => {
    res.render("pages/Dashboard/patientsDashboard");
})
app.get('/Hospital_DashBoard', (req, res) => {
    res.render("pages/Dashboard/HospitalDashBoard");
})
app.get('/HealthCare_DashBoard', (req, res) => {
    res.render("pages/Dashboard/HealthCare_DashBoard");
})

app.get('/DoctorsDashBoard', (req, res) => {
    res.render("pages/Dashboard/DoctorDashBoard");
})

app.post('/get_patientInfo', (req, res) => {

    const getDetails = req.body

    sql = "INSERT INTO `patients_registration`(`FName`, `MName`, `LName`, `Age`, `BloodGroup`, `MobileNumber`, `EmailId`, `Address`, `Location`, `PostalCode`, `City`, `Province`, `HCardNumber`, `PassportNumber`, `PRNumber`, `DLNumber`, `Gender`) VALUES ?";
    var VALUES = [[getDetails.Fname, getDetails.Mname,
    getDetails.LName, getDetails.Age, getDetails.bloodGroup, getDetails.number,
    getDetails.EmailId, getDetails.Address, getDetails.Location, getDetails.PostalCode, getDetails.City, getDetails.province, getDetails.H_CardNo,
    getDetails.PassportNo, getDetails.PRNo, getDetails.DLNo, getDetails.gender]]

    conn.query(sql, [VALUES], (error, result) => {
        if (error) throw error
        res.send("Patients Registration From Filled with" + result.insertId + " " + "ID")
    })
})
app.post('/get_doctorInfo', (req, res) => {
    const get_doctorInfo = req.body

    sql = "INSERT INTO `doctors _registration`(`Fname`, `Mname`, `Lname`, `Age`, `bloodGroup`, `MobileNumber`, `EmailId`, `ConfirmEmail`, `Location1`, `Location2`, `PostalCode`, `City`, `Country`, `Province`, `Medical_LICENSE_Number`, `DLNumber`, `Specialization`, `PractincingHospital`, `Gender`) VALUES ?";
    var getDoctorsInfo = [[get_doctorInfo.Fname, get_doctorInfo.Mname,
    get_doctorInfo.LName, get_doctorInfo.age, get_doctorInfo.bloodGroup, get_doctorInfo.MobileNo,
    get_doctorInfo.EmailId, get_doctorInfo.ConfirmEmail, get_doctorInfo.Location1, get_doctorInfo.Location1, get_doctorInfo.PostalCode, get_doctorInfo.city, get_doctorInfo.Country, get_doctorInfo.province, get_doctorInfo.MLno,
    get_doctorInfo.DLNo, get_doctorInfo.Specialization, get_doctorInfo.PractincingHospital, get_doctorInfo.gender]]

    conn.query(sql, [getDoctorsInfo], (error, result) => {
        if (error) throw error
        res.send("Doctors Registration From Filled with" + result.insertId + " " + "ID")
    })
})
app.post('/Hospital', (req, res) => {
    const get_HospitalInfo = req.body

    sql = "INSERT INTO `hospital_admin`(`Hospital_Name`, `Email_Id`, `Confirm_Email`, `Location1`, `Location2`, `PostalCode`, `City`, `Province`, `Country`, `Facilities_departments​`, `Number_Doctors`, `Number_Nurse`, `No_Admins`, `Patients_per_year`, `​Tax_registration_number​`) VALUES ?";

    var getDoctorsInfo = [[get_HospitalInfo.Hospital_Name,
    get_HospitalInfo.EmailId, get_HospitalInfo.ConfirmEmail, get_HospitalInfo.Location1, get_HospitalInfo.Location1, get_HospitalInfo.PostalCode, get_HospitalInfo.city, get_HospitalInfo.Country, get_HospitalInfo.province,
    get_HospitalInfo.Facilities_departments, get_HospitalInfo.DoctorNo, get_HospitalInfo.N_Nureses, get_HospitalInfo.No_Admin, get_HospitalInfo.PatientsPerYear, get_HospitalInfo.TaxRegNo
    ]]

    conn.query(sql, [getDoctorsInfo], (error, result) => {
        if (error) throw error
        res.send("Hospital Registration From Filled with" + result.insertId + " " + "ID")
    })
})

app.post('/masterDashboard', (req, res) => {
    const email = req.body.email
    const password = req.body.password

    sql = "SELECT * FROM `master_admin` WHERE 1";
    conn.query(sql, (error, result) => {
        if (error) throw error
        if (result[1].userName === email && result[1].password === password) {
            res.render('pages/Dashboard/MasterDashboard')
        } else {
            res.render('pages/Logina8b9')
        }
    })
})

app.get('/hospitalData', (req, res) => {
    sql = "SELECT * FROM `hospital_admin` Order by id DESC";
    conn.query(sql, (error, result) => {
        res.send(result)
        if (!error) {
            res.render(result)
        }
    })
})

// user: "uottawabiomedicalsystems@gmail.com", //
// pass: "@uOttawa5902",

app.get('/sendEmail', (req, res) => {

    "use strict";
    const nodemailer = require("nodemailer");

        async function main() {
            let transporter = nodemailer.createTransport({
                host: "smtp.office365.com",
                port: 587,
                secure: false, // true for 465, false for other ports
                auth: {
                    user: "",//add your smtp server
                    pass: ""//with password
                },
            });

            var uniqueID = crypto.randomBytes(16).toString("hex");
            var password = crypto.randomBytes(16).toString("hex")

            // send mail with defined transport object
            let info = await transporter.sendMail({
                from: '"Account Confirmation 👻" <kasotiyavishal221@gmail.com>', // sender address
                to: "kkumar95973@gmail.com", // list of receivers
                subject: "Your Account has been confirmated Please Collect unique id and Password ", // Subject line
                html: ` 
            <h1>Your Account has been confirmated Please Collect unique id and Password and Loging In DashBoard</h1> <br/>
            <div>
            <strong> Unique-Id : ${uniqueID}</strong> </br>
            <strong> Password : ${password}</password>
            </div> `, // html body
            });

            if (info.messageId) {
                res.send("email sent")
            }
        }
        main().catch(console.error);
    })

app.listen(port, () => console.log(`Server running on the port : ${port}`))
