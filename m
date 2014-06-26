Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0ETT-0004qg-Mo
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 18:32:47 +0000
Received: from [99.240.204.5] (port=58848 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X0ET4-000673-Hh
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 14:32:18 -0400
Date: Thu, 26 Jun 2014 14:28:21 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1406261425060.31619@localhost>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: a couple consistent misspellings that could be fixed
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  being the pedant that i am, i notice the following widespread
misspellings in the barebox codebase:

* "existance" (should be existence)

  actually, not that widespread, only three, all comments so easy to
fix

* "persistant" (should be persistent)

  this one is much uglier -- a couple dozen, including its use in
runnable code itself. just run:

  $ grep -r persistant *

to see what i mean.

  what's the policy for fixing a spelling error that spills over from
the comments into compilable code itself?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
