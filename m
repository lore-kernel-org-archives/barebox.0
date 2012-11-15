Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZ0Yd-0003Cy-Fp
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 14:36:44 +0000
Received: from cpebcc8100fb8db-cmbcc8100fb8d8.cpe.net.cable.rogers.com
 ([174.116.196.46]:37052 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1TZ0Ya-0005mG-4d
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 09:36:40 -0500
Date: Thu, 15 Nov 2012 09:36:37 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1211150924030.1247@oneiric>
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
Subject: how easy to add extra config for NAND-less beagle?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  returning to playing with barebox after lengthy hiatus and i asked
an equivalent question on the u-boot list, let's see if it's relevant
here.

  i did a regular configure and build for my beagle xM (rev C) which,
unlike the beagle classic, has no NAND flash:

$ make omap3530_beagle_xload_defconfig ; make
$ make omap3530_beagle_defconfig ; make

then copied MLO and barebox.bin to an appropriate card and, lo, it
booted nicely and i'm currently sitting in barebox:

  barebox@Texas Instrument's Beagle:/ version

  barebox 2012.10.0-00283-gd65d9df #2 Thu Nov 15 06:45:21 EST 2012

thing is, this build has a good deal of NAND-related functionality
that is of no use whatsoever on the current beagle xMs, so i'm
interested in how little work it would take to add an extra config
that would deselect everything related to NAND.  (obviously, having
that functionality there doesn't *hurt*, but i'm planning to use
barebox in my new embedded linux courses and it would be nice to be
able to build for an xM and have it *totally* correspond to the actual
hardware.)  it shouldn't be hard -- simply deselecting anything
related to NAND, MTD or JFFS2 should do the trick.

rday

p.s.  when i run "devinfo", i see a couple NAND-related entries:

devices:
... snip ...
`---- gpmc_nand0
... snip ...

drivers:
... snip ...
 gpmc_nand
... snip ...

  somewhat embarrassed to admit that i don't know what "gpmc_nand"
represents, but i'll google shortly.  however, no matter what it is,
would it be relevant on a board with no NAND flash?  thanks muchly for
any advice.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
