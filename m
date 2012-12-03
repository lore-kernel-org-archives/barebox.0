Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfbaZ-0005Sj-7f
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 19:21:59 +0000
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
 ([99.253.156.71]:58020 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1TfbaX-0002Np-W8
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 14:21:58 -0500
Date: Mon, 3 Dec 2012 14:21:54 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1212031418350.1932@oneiric>
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
Subject: barebox initcalls for a beagle xM
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  for possible teaching purposes, i posted the initcalls invoked both
for MLO and barebox.bin on my beagle xM:

http://www.crashcourse.ca/wiki/index.php/Barebox_initcalls_for_the_xM

to perhaps walk folks through the steps of barebox booting.  given
time, i might expand on that page later to dig into the initcalls
themselves, but just seeing the list has some value for people trying
to follow along what it takes to get to a prompt.

rday

p.s.  i'm still not sure what the value is of the "early_initcalls"
variable here:

$ grep -r early_initcall *
common/startup.c:extern initcall_t __barebox_initcalls_start[],
__barebox_early_initcalls_end[],
$

it's declared as external but it doesn't seem to be used anywhere.  is
it a leftover from earlier?

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
