Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta5F1-0001vO-Cn
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 13:48:55 +0000
Received: from cpebcc8100fb8db-cmbcc8100fb8d8.cpe.net.cable.rogers.com
 ([174.116.196.46]:55761 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1Ta5F0-0004Dj-12
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 08:48:54 -0500
Date: Sun, 18 Nov 2012 08:48:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1211180844430.18098@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: is there a standard for putting the name of a source file in the file?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  as i'm working my way thru the lib/ routines in barebox, i notice
that some source files there, like getopt.c, conveniently have the
filename right at the top:

/*
 * getopt.c - a simple getopt(3) implementation. See getopt.h for explanation.
...

i really like this habit as it makes it easy to send a file to the
printer and not forget what the file was.

  however, most of the files in lib/ don't have that.  as i work my
way through the files, i'd be happy to add something like that to each
file, and submit the changes all as one patch.  is there a standard?
from what i can see, there's quite the variety in how people add that
to a source file.

  i'm open to guidance and i can take it from there.

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
