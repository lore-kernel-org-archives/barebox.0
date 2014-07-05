Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X3NVq-0007cI-KR
 for barebox@lists.infradead.org; Sat, 05 Jul 2014 10:48:11 +0000
Received: from [99.240.204.5] (port=38339 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X3NVL-0007LA-1v
 for barebox@lists.infradead.org; Sat, 05 Jul 2014 06:47:39 -0400
Date: Sat, 5 Jul 2014 06:47:36 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407050643590.10085@localhost>
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
Subject: does beaglebone black device tree need to specify amount of eMMC
 flash?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  (aside: i'm digging into device trees in barebox and will certainly
have a number of questions shortly so i can write some tutorials for
an upcoming class, but i'll start simple.)

  i'm particularly interested in configuring and building barebox for
my beaglebone black (henceforth "BBB"), and i can see all of the .dts*
support files under arch/arm/dts/, but a simple question -- the *new*
BBB has upgraded from 2G of eMMC to 4G eMMC, but i don't see that
mentioned anywhere in those .dts files. does that property need to be
mentioned, or is that simply autodetected by the kernel at boot time?

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
