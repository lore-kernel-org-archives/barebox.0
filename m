Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1xTq-0007Xj-SL
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 12:48:16 +0000
Received: from [99.240.204.5] (port=52069 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X1xTT-0004Xl-QT
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 08:47:51 -0400
Date: Tue, 1 Jul 2014 08:43:34 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407010832100.28138@localhost>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-242190817-1404218616=:28237"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: generated command references sometimes render a solid blob of text
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-242190817-1404218616=:28237
Content-Type: TEXT/PLAIN; charset="utf-8"
Content-Transfer-Encoding: 8bit


  i'm sure everyone else already knows this, but some of the HTML
files generated for the command reference list sometimes render the
synopsis or description as a single, unbroken blob of text. for
example, the reference page for "addpart" has a single line for the
entire Description field. another example: the Synopsis field for the
"let" command. and so on.

  it's easy to see that the .rst files that are created don't properly
handle paragraph breaks or lists. so is that just a known issue?

  oh, and one more oddity. if you look at the generated page for the
"let" command, it appears that the the double hyphen is replaced by a
longer "em" hyphen. here's part of the generated let.rst file:

Synopsis
^^^^^^^^
Supported operations are in order of decreasing precedence:
X++, X--
++X, --X
+X, -X
!X, ~X
...

but look what shows up in the generated HTML file:

  X++, X– ++X, –X +X, -X

notice how occurrences of "--" in the .rst file are replaced by the
longer hyphen in the HTML file. just an observation.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
--8323328-242190817-1404218616=:28237
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323328-242190817-1404218616=:28237--
