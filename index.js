const express = require('express');
const handlebars = require('express-handlebars');
const mysql = require('mysql');
const slash = require('express-slash');

const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "123456",
    database: "mop"
});

const app = express();
app.enable('strict routing');

// Create the router using the same routing options as the app.
var router = express.Router({
    caseSensitive: app.get('case sensitive routing'),
    strict: app.get('strict routing')
});
app.use(express.urlencoded({
    extended: true
}));
// Add the `slash()` middleware after your app's `router`, optionally specify
// an HTTP status code to use when redirecting (defaults to 301).
app.use(router);
app.use(slash());

const port = 3000;
//Loads the handlebars module
//Sets our app to use the handlebars engine
app.set('view engine', 'hbs');
//Sets handlebars configurations (we will go through them later on)

// static folders
app.use(express.static('styles'));
app.use(express.static('assets'));
app.use(express.static('files'));

app.engine('hbs', handlebars({
    layoutsDir: __dirname + '/views/layouts',
    extname: 'hbs',
    //new configuration parameter 
    defaultLayout: 'index',
    partialsDir: __dirname + '/views/partials/'
}));

// root
app.get('/', (req, res) => {
    console.log(req.url);
    res.render('main', { title: 'الصفحة الرئيسية' });
});
// about
app.get('/about', (req, res) => {
    console.log(req.url);
    res.render('about', { title: 'نبذة عن الوزارة', page: 'عن الوزارة', parent: 'الرئيسية' });
});
// news
app.get('/news', (req, res) => {
    console.log('where ever you are!');
    con.query('SELECT * from sa_news order by news_id desc', (err, rows, fields) => {
        if (err) {
            console.log(err.message)
        } else {
            var resultArray = JSON.parse(JSON.stringify(rows));
            //  console.log(resultArray);
            res.render('news', { title: ' الأخبار ', page: 'الإعلام ', parent: 'الرئيسية', news: resultArray, listExists: true });

        }
    })
});
// faq
app.get('/faq', (req, res) => {
    console.log(req.url);
    con.query(`SELECT mop.faq_questions.question_tit,mop.faq_answers.answer_txt,mop.faq_answers.answer_bs
    FROM mop.faq_questions
    INNER JOIN mop.faq_answers ON mop.faq_answers.question_id=mop.faq_questions.question_id;`, (err, rows) => {
        if (err) {
            console.log(err.message);
            res.render('faq', { title: ' الاسئلة الشائعة ', page: 'عن الوزارة ', parent: 'الرئيسية' });

        } else {
            var resultArray = JSON.parse(JSON.stringify(rows));
            console.log(resultArray);
            res.render('faq', { title: ' الاسئلة الشائعة ', page: 'عن الوزارة ', parent: 'الرئيسية', faq: resultArray, listExists: true });
        }
    })
});
// organizationalchart
app.get('/organizationalchart', (req, res) => {
    console.log(req.url);
    res.render('organizationalchart', { title: 'الهيكل التنظيمي', page: 'عن الوزارة ', parent: 'الرئيسية' });
});
// plansandprograms
app.get('/plansandprograms', (req, res) => {
    console.log(req.url);
    con.query(`
    SELECT files.file_name,files.file_date,files.file_url,files.file_ext
    FROM files
     where files.file_id !=1 AND file_cat=1;`,
        (err, rows) => {
            if (err)
                res.render('plansandprograms', { title: 'البرامج و الخطط', page: 'عن الوزارة ', parent: 'الرئيسية' });
            else {
                var resultArray = JSON.parse(JSON.stringify(rows));
                console.log(resultArray);
                res.render('plansandprograms', { title: 'البرامج و الخطط', page: 'عن الوزارة ', parent: 'الرئيسية', programs: resultArray, listExists: true });
            }
        });
});
// tasksandduties
app.get('/tasksandduties', (req, res) => {
    console.log(req.url);
    res.render('tasksandduties', { title: 'المهام و الواجبات', page: 'عن الوزارة ', parent: 'الرئيسية' });
});
// ministers
app.get('/ministers', (req, res) => {
    console.log(req.url);
    con.query(`
    SELECT hr_min_pictures.picture_url,hr_ministers.min_s_date,hr_ministers.min_e_date,hr_ministers.min_name 
FROM hr_ministers
INNER JOIN hr_min_pictures ON hr_ministers.minister_id=hr_min_pictures.minister_id;`,
        (err, rows) => {
            if (err)
                res.render('ministers', { title: ' الوزراء السابقين ', page: 'عن الوزارة ', parent: 'الرئيسية' });
            else {
                var resultArray = JSON.parse(JSON.stringify(rows));
                console.log(resultArray);
                res.render('ministers', { title: ' الوزراء السابقين ', page: 'عن الوزارة ', parent: 'الرئيسية', ministers: resultArray, listExists: true });
            }
        });
});
// general sercataries
app.get('/generalsecretaries', (req, res) => {
    console.log(req.url);
    con.query(`
    SELECT hr_gen_pictures.picture_url,hr_gen_sec.gen_s_date,hr_gen_sec.gen_e_date,hr_gen_sec.gen_name 
FROM hr_gen_sec
INNER JOIN hr_gen_pictures ON hr_gen_sec.general_id=hr_gen_pictures.general_id;`,
        (err, rows) => {
            if (err)
                res.render('generalsecretaries', { title: '  الأمناء العامون ', page: 'عن الوزارة ', parent: 'الرئيسية' });
            else {
                var resultArray = JSON.parse(JSON.stringify(rows));
                console.log(resultArray);
                res.render('generalsecretaries', { title: '  الأمناء العامون ', page: 'عن الوزارة ', parent: 'الرئيسية', generals: resultArray, listExists: true });
            }
        });
});
// strategicalplan
app.get('/strategicalplan', (req, res) => {
    console.log(req.url);
    res.render('strategicalplan', { title: ' الخطة الاستراتيجية', page: 'التخطيط و المتابعة', parent: 'الرئيسية' });
});
// performancedevelopment
app.get('/performancedevelopment', (req, res) => {
    console.log(req.url);
    res.render('performancedevelopment', { title: '  تطوير الأداء المؤسسي', page: 'التخطيط و المتابعة', parent: 'الرئيسية' });

});
// servicesguide
app.get('/servicesguide', (req, res) => {
    console.log(req.query);
    con.query(`
    SELECT files.file_name,files.file_url,files.file_ext
    FROM files
    INNER JOIN file_categories ON files.file_cat=file_categories.file_cat_id where files.file_id =1
    `, (err, rows) => {
        if (err)
            res.render('servicesguide', { title: ' دليل الخدمات ', page: 'التخطيط و المتابعة', parent: 'الرئيسية' });
        else {
            var resultArray = JSON.parse(JSON.stringify(rows));
            console.log(resultArray);
            res.render('servicesguide', { title: '  دليل الخدمات  ', page: 'التخطيط و المتابعة', parent: 'الرئيسية', serGui: resultArray, listExists: true });

        }
    });
});
// nationalgoals
app.get('/nationalgoals', (req, res) => {
    console.log(req.url);
    con.query(`
    SELECT * from sa_national_goals;
    `, (err, rows) => {
        if (err)
            res.render('nationalgoals', { title: 'الأهداف الوطنية ', page: 'التخطيط و المتابعة', parent: 'الرئيسية' });
        else {
            var resultArray = JSON.parse(JSON.stringify(rows));
            console.log(resultArray);
            res.render('nationalgoals', { title: 'الأهداف الوطنية', page: 'التخطيط و المتابعة', parent: 'الرئيسية', goals: resultArray, listExists: true });
        }
    });
});
// annualreports under construciton at the moement
app.get('/annualreports', (req, res) => {
    console.log(req.url);
    con.query(`
    SELECT * from files where file_id!=1 AND file_cat=2;
    `, (err, rows) => {
        if (err)
            res.render('annualreports', { title: 'التقارير السنوية ', page: 'التخطيط و المتابعة', parent: 'الرئيسية' });
        else {
            var resultArray = JSON.parse(JSON.stringify(rows));
            console.log(resultArray);
            res.render('annualreports', { title: 'التقارير السنوية', page: 'التخطيط و المتابعة', parent: 'الرئيسية', goals: resultArray, listExists: true });
        }
    });
});
// projectsandinitiaves
app.get('/projectsandinitiaves', (req, res) => {
    console.log(req.url);
    con.query(`
    SELECT * from sa_projects;
    `, (err, rows) => {
        if (err)
            res.render('projectsandinitiaves', { title: ' المشاريع و المبادرات ', page: ' المبادرات ', parent: 'الرئيسية' });
        else {
            var resultArray = JSON.parse(JSON.stringify(rows));
            console.log(resultArray);
            res.render('projectsandinitiaves', { title: ' المشاريع و المبادرات', page: '  المبادرات', parent: 'الرئيسية', projects: resultArray, listExists: true });
        }
    });

});
// gallery
app.get('/gallery', (req, res) => {
    console.log(req.url);
    con.query(`
        SELECT * from sa_media;
        `, (err, rows) => {
        if (err)
            res.render('gallery', { title: '  المعرض  ', page: ' الإعلام ', parent: 'الرئيسية' });
        else {
            var resultArray = JSON.parse(JSON.stringify(rows));
            console.log(resultArray);
            res.render('gallery', { title: '  المعرض ', page: '  الإعلام', parent: 'الرئيسية', media: resultArray, listExists: true });
        }
    });

});
// usefullinks
app.get('/usefullinks', (req, res) => {
    console.log(req.url);
    con.query(`
        SELECT * from sa_useful_links;
        `, (err, rows) => {
        if (err)
            res.render('usefullinks', { title: '  روابط مفيدة  ', parent: 'الرئيسية' });
        else {
            var resultArray = JSON.parse(JSON.stringify(rows));
            console.log(resultArray);
            res.render('usefullinks', { title: '  روابط مفيدة ', parent: 'الرئيسية', links: resultArray, listExists: true });
        }
    });

});
// contactus
app.get('/contactus', (req, res) => {
    console.log(req.url);
    con.query(`SELECT * from lu_cities;`, (err, rows) => {
        if (err) {
            res.render('contactus', { title: ' تواصل معنا', parent: 'الرئيسية' });
        } else {
            var resultArray = JSON.parse(JSON.stringify(rows));
            console.log(resultArray);
            res.render('contactus', { title: ' تواصل معنا', parent: 'الرئيسية', cities: resultArray, listExists: true });
        }
    });
});
// handling contacus request
app.post('/contactus', (req, res) => {
    console.log(req.body);

    // destructaring data from submitted form
    const { fname, lname, email, phone, address, city, village, postal, topic, message } = req.body;
    // insert into database
    con.query(`INSERT into contact_us (fname,lname,email,phone,address,city,village,postal,topic,message) VALUES 
        ('${fname}','${lname}','${email}','${phone}','${address}','${city}','${village}','${postal}','${topic}','${message}');
        `, (err, result) => {
        if (err) {
            console.log(err.message);
            res.status(304).send(err.message)
        } else {
            console.log(result);
            res.status(200).redirect('back');
        }
    });
});
// trainstudents queription
app.get('/trainstudents', (req, res) => {
    console.log(req.url);
    con.query(`SELECT * from lu_cities`, (err, rows) => {
        if (err) {
            res.render('trainstudents', { title: '  تدريب الطلاب', page: 'خدمات الكترونية', parent: 'الرئيسية' });
        } else {
            var resultArrayCity = JSON.parse(JSON.stringify(rows));
            console.log(resultArrayCity);
            con.query('SELECT * from lu_university', (err, rows) => {
                if (err)
                    res.render('trainstudents', { title: '  تدريب الطلاب', page: 'خدمات الكترونية', parent: 'الرئيسية' });
                else {
                    var resultArrayUni = JSON.parse(JSON.stringify(rows));
                    console.log(resultArrayUni);
                    con.query('SELECT * from lu_nationality', (err, rows) => {
                        if (err)
                            res.render('trainstudents', { title: '  تدريب الطلاب', page: 'خدمات الكترونية', parent: 'الرئيسية' });
                        else {
                            var resultArrayNat = JSON.parse(JSON.stringify(rows));
                            console.log(resultArrayNat);
                            res.render('trainstudents', { title: '  تدريب الطلاب', page: 'خدمات الكترونية', parent: 'الرئيسية', cities: resultArrayCity, nats: resultArrayNat, unis: resultArrayUni, listExists: true });
                        }
                    }); //end of third query
                }
            }); //end of 2nd query                      
        }
    }); // end of first query
});
// handling train post request
app.post('/train', (req, res) => {
    console.log(req.body);
    // destructaring data from submitted form
    const { nationality, nationalno, birth_day, fname, lname, city, university, year, major, email, phone } = req.body;
    // insert into database
    con.query(
        `INSERT into es_train_students (nationality,nationalno,birth_day,fname,lname,city,university,year,major,email,phone)
     VALUES 
     ('${nationality}','${nationalno}','${birth_day}','${fname}','${lname}','${city}','${university}','${year}','${major}','${email}','${phone}');`, (err, result) => {
            if (err) {
                console.log(err.message);
                res.status(304).send(err.message)
            } else {
                console.log(result);
                res.status(200).redirect('back');
            }
        });
});
// scholarships
app.get('/scholarships', (req, res) => {
    console.log(req.url);
    con.query(`SELECT * from lu_scholarships`, (err, rows) => {
        if (err) {
            res.render('scholarships', { title: '   المنح الدراسية', page: 'خدمات الكترونية', parent: 'الرئيسية' });
        } else {
            var resultArraySchr = JSON.parse(JSON.stringify(rows));
            console.log(resultArraySchr);
            con.query('SELECT * from lu_degree', (err, rows) => {
                if (err)
                    res.render('scholarships', { title: '   المنح الدراسية', page: 'خدمات الكترونية', parent: 'الرئيسية' });
                else {
                    var resultArrayDeg = JSON.parse(JSON.stringify(rows));
                    console.log(resultArrayDeg);
                    con.query('SELECT * from lu_nationality', (err, rows) => {
                        if (err)
                            res.render('scholarships', { title: '   المنح الدراسية', page: 'خدمات الكترونية', parent: 'الرئيسية' });
                        else {
                            var resultArrayNat = JSON.parse(JSON.stringify(rows));
                            console.log(resultArrayNat);
                            res.render('scholarships', { title: '   المنح الدراسية', page: 'خدمات الكترونية', parent: 'الرئيسية', schr: resultArraySchr, nats: resultArrayNat, deg: resultArrayDeg, listExists: true });
                        }
                    }); //end of third query
                }
            }); //end of 2nd query                      
        }
    }); // end of first query
});
// handling post request scholarships
app.post('/scholarship', (req, res) => {
    console.log(req.body);
    // destructaring data from submitted form
    const { fname, sname, lname, nationality, nationalno, birth_day, scholarship, degree, major, email, phone } = req.body;
    // insert into database
    con.query(`
    INSERT into es_students_scholarships (fname,sname,lname,nationality,nationalno,birth_day,scholarship,degree,major,email,phone)
    VALUES ('${fname}','${sname}','${lname}','${nationality}','${nationalno}','${birth_day}','${scholarship}','${degree}','${major}','${email}','${phone}');
    `, (err, result) => {
        if (err) {
            console.log(err.message);
            res.status(400).send(err.message);
        } else {
            console.log(result);
            res.status(200).redirect('back');
        }
    });
});
// newsletter
app.get('/newsletter', (req, res) => {
    console.log(req.url);
    res.render('newsletter', { title: 'الجريدة الالكترونية', page: 'خدمات الكترونية', parent: 'الرئيسية' });
});
// handling newsletter post request
app.post('/newsletter', (req, res) => {
    console.log(req.body);
    // destructaring data from submitted form
    const { email } = req.body;
    // insert into database
    con.query(`INSERT into es_news_letter (email) VALUES ('${email}');`, (err, result) => {
        if (err) {
            console.log(err.message);
            res.status(304).send(err.message)
        } else {
            // console.log(result);
            res.status(200).send('success');
            // .redirect('back');
        }
    });
});

app.listen(port, () => console.log(`App listening to port ${port}`));