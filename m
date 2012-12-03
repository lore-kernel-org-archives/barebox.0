Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfYDJ-000883-9R
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 15:45:46 +0000
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
 ([99.253.156.71]:53847 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1TfYDI-0000Xw-39
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:45:44 -0500
Date: Mon, 3 Dec 2012 10:45:41 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1212031041250.19977@oneiric>
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
Subject: how does one enable barebox's low-level debugging?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  looking through common/startup.c and decided i wanted to see
confirmation of all the initcalls running here:

        for (initcall = __barebox_initcalls_start;
                        initcall < __barebox_initcalls_end; initcall++) {
                debug("initcall-> %pS\n", *initcall);
                result = (*initcall)();
                if (result)
                        pr_err("initcall %pS failed: %s\n", *initcall,
                                        strerror(-result));
        }


so i started from scratch, ran "make menuconfig" for both the x-loader
and barebox to enable "low level debug messages", but i don't see any
difference in the boot output.

  i've perused the barebox wiki and don't see anything regarding that
setting.  am i doing something wrong?

rday

p.s.  this is on a beagle xM, for which i am now happily building both
the x-loader and barebox, which boots successfully.

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
