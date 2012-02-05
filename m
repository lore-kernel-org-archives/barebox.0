Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ru0eJ-00048H-Ii
 for barebox@lists.infradead.org; Sun, 05 Feb 2012 11:52:52 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1Ru0e5-0002hv-DP
 for barebox@lists.infradead.org; Sun, 05 Feb 2012 06:52:37 -0500
Date: Sun, 5 Feb 2012 06:52:28 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202050635190.30340@oneiric>
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
Subject: how do i add the defn for the beagle xM to barebox?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  just about to start reading the barebox docs to see if it's
explained there but here's what i want to do -- i want to specifically
add support for the beagleboard xM to barebox.

  i can see there is already classic beagle support:

http://wiki.barebox.org/doku.php?id=boards:omap

and as a test, i build both the MLO and loader for a *regular* beagle
using barebox and replaced those files in a basic validation image for
the xM.  happily, it booted to the barebox loader, which proves that
the current barebox beagle support represents at least a viable
starting point for the xM.

  there were, of course, some diagnostics based on the differences,
such as:

... snip ...
NAND type unknown: ff,ff
No NAND device found (-19)!
... snip ...

that's not surprising since the beagle has NAND flash while the xM
doesn't, so i'm assuming that my first mod would be something like, in
the xload file, replacing all of:

CONFIG_MTD=y
# CONFIG_MTD_WRITE is not set
# CONFIG_MTD_OOB_DEVICE is not set
CONFIG_NAND=y
# CONFIG_NAND_ECC_SOFT is not set
# CONFIG_NAND_ECC_HW_SYNDROME is not set
# CONFIG_NAND_ECC_HW_NONE is not set
# CONFIG_NAND_INFO is not set
# CONFIG_NAND_BBT is not set
CONFIG_NAND_OMAP_GPMC=y

with:

CONFIG_MTD=n
CONFIG_MAND=n

and in the loader defconfig file, replacing:

CONFIG_MTD=y
CONFIG_NAND=y
CONFIG_NAND_OMAP_GPMC=y

with the same thing, is that it?

  in any event, unless someone has already done this, i'm willing to
start with the existing beagle defconfig files, perhaps even add them
to barebox as is, then start submitting patches that handle the
differences one by one.  is this a reasonable plan?  i'm sure i won't
come up with the final correct defconfig file all in one shot, so i'll
definitely be tweaking and submitting and converging to the correct
solution.

  thoughts?  i'd actually like to make the tweaks one at a time so
that the git log shows clearly how the two boards differ one feature
at a time.

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
