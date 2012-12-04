Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tfv81-0007LR-SW
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 16:13:50 +0000
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
 ([99.253.156.71]:41755 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1Tfv80-0004LG-99
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 11:13:48 -0500
Date: Tue, 4 Dec 2012 11:13:41 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1212041048580.29673@oneiric>
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
Subject: lots of inaccurate references to "FileName: include/asm-arm ..."
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  while roaming around in the arm/omap files, i noticed that numerous
files have obsolete "FileName:" values, given that stuff that was once
in "include/asm-arm" has clearly moved, so you find header files like
arch/arm/mach-omap/include/mach/gpmc_nand.h that contain:

 * FileName: include/asm-arm/arch-omap/gpmc_nand.h
 *
 * OMAP's General Purpose Memory Controller (GPMC) has a NAND controller
 * embedded. this file provides the platform data structure required to
 * hook on to it.
 *
 */
/*
 * (C) Copyright 2008
 * Texas Instruments, <www.ti.com>
 * Nishanth Menon <x0nishan@ti.com>
 *
 * Originally from Linux kernel:
 * http://linux.omap.com/pub/kernel/3430zoom/linux-ldp-v1.3.tar.gz
 * include/asm-arm/arch-omap/nand.h

so the later comment as to the *origin* of the file is fine, but the
earlier "FileName" value is obviously incorrect.  does that matter?
is that value used for any sort of documentation processing?

rday

p.s.  you can see the number of these with a simple:

$ grep -r "include/asm-arm" *

since i'm working with a number of the ARM files, i'd be happy to
"fix" that stuff for some reasonable definition of "fix". :-)

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
