#!/usr/bin/env python
# -*- coding: utf-8 -*- #

AUTHOR = u"Mark Betnel"
SITENAME = u"Quantitative Analysis"
SITEURL = 'http://markbetnel.com/qa1'

TIMEZONE = 'America/New_York'

DEFAULT_LANG='en'

# Blogroll
LINKS =  (
    ('Wolfram Alpha', 'http://www.wolframalpha.com/'),
    ('Khan Academy', 'http://www.khanacademy.org'),
    ('Math Fun Facts', 'http://www.math.hmc.edu/funfacts/'),
    ('Google Finance', 'http://google.com/finance'),
    ('R - Statistics', 'http://cran.r-project.org')
        )

# Social widget
SOCIAL = (
         ('HomeworkFeed', SITEURL + '/feeds/homework.atom.xml'),
         ('LessonsFeed', SITEURL + '/feeds/lessons.atom.xml'),
	 ('QuizzesFeed', SITEURL + '/feeds/quizzes.atom.xml')
	 )

DEFAULT_PAGINATION = 7
DISPLAY_PAGES_ON_MENU = False

    
