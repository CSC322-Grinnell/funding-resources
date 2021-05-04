User.create(
    email: 'admin@example.com',
    password: 'password',
    password_confirmation: 'password',
    admin: true) if Rails.env.development?
    
User.create(
    email: 'hello@fundingteam.com',
    password: 'gcresources',
    password_confirmation: 'gcresources',
    admin: true)

#<Resource id: nil, title: nil, description: "FUND TEST", amount: nil, source: nil, contact_person: nil,
Resource.create(
    title: 'Service & Social Innovation Grant',
    description: 'Social Service Grants through Grinnell',
    amount: '3000',
    contact_person: 'Kiera Wilson',
    web: 'https://grinco.sharepoint.com/sites/ServiceAndSocialInnovation/SitePages/Funding.aspx ')
# resource1.tag_names << 'Does not correspond with financial aid'
# resource1.tag_names << 'Please please please work this time'
# resource1.tag_names << 'You know the problem with Skyrim these days?'
# resource1.tag_names << 'Catz rule'
# resource1.save

Resource.create(
    title: 'Summer Internship Funding Grants',
    description: 'Income supplementation for unpaid internships',
    amount: '1800',
    contact_person: 'Diego Rodriguez',
    email: 'rodrigued@grinnell.edu' ,
    web: 'https://grinco.sharepoint.com/sites/OAS/CLS/Internship/SitePages/Summer%20Funding.aspx ')
    
Resource.create(
    title: 'Professional Development Grants',
    source: 'CLS Office',
    contact_person: 'Diego Rodriguez',
    web: 'https://grinco.sharepoint.com/sites/OAS/CLS/SitePages/CLS%20Grants.aspx ')
    
Resource.create(
    title: 'Professional Attire Grants',
    source: 'CLS Office',
    contact_person: 'Laura Poole',
    web: 'https://grinco.sharepoint.com/sites/OAS/CLS/SitePages/CLS%20Grants.aspx')
    
Resource.create(
    title: 'Senior Interview Grants',
    source: 'CLS Office',
    contact_person: 'Laura Poole',
    web: 'https://grinco.sharepoint.com/sites/OAS/CLS/SitePages/CLS%20Grants.aspx ')
    
Resource.create(
    title: 'Academic Deans Office',
    source: 'Deans Office',
    contact_person: 'Elaine Marzluff',
    web: 'https://www.grinnell.edu/academics/dean/scholarship')
    
Resource.create(
    title: 'Student Affairs',
    contact_person: 'Michael Sims and Maure Smith-Benanti',
    web: 'https://www.grinnell.edu/about-grinnell/leadership-and-administration/offices-and-services/student-affairs/student-affairs')

Resource.create(
    title: 'Rosenfield Center',
    contact_person: 'Barbara Trish and Laureen VanWyk',
    web: 'https://www.grinnell.edu/academics/centers-programs/rosenfield/funding')

Resource.create(
    title: 'Wilson Center',
    description: 'The Wilson Center is open to sponsoring events, conferences, and other relevant off-campus opportunities that you believe strengthen your innovation and leadership skills, knowledge and critical thinking ability.  We offer funding for some experiences that make an impact and align with our mission',
    contact_person: 'Monty Roper and Robert Ludwig',
    web: 'https://sga.grinnell.edu/money/')
    
Resource.create(
    title: 'Rosenfield Center',
    contact_person: 'Barbara Trish and Laureen VanWyk',
    web: 'https://www.grinnell.edu/academics/centers-programs/rosenfield/funding')
    
Resource.create(
    title: 'Grinnell Outdoor Recreation Program',
    contact_person: 'David Zeiss',
    web: 'https://sga.grinnell.edu/money/')
    
Resource.create(
    title: 'Disability Resources',
    contact_person: 'Autumn Wilke',
    web: 'https://sga.grinnell.edu/money/')
    
Resource.create(
    title: 'Financial Aid',
    contact_person: 'Brad Lindberg',
    web: 'https://sga.grinnell.edu/money/')
    
Resource.create(
    title: 'Center for Religion Spirituality and Social Justice',
    contact_person: 'Deanna Shorb',
    web: 'https://sga.grinnell.edu/money/')