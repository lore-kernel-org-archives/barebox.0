Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWPsY-0005Hb-PA
 for barebox@lists.infradead.org; Mon, 21 May 2012 10:30:19 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id q4LAUGTP013621
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 05:30:17 -0500
Received: from DBDE70.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q4LAUFP8022718
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 16:00:15 +0530 (IST)
From: Anand Gadiyar <gadiyar@ti.com>
Date: Mon, 21 May 2012 16:00:10 +0530
Message-ID: <1337596213-15239-2-git-send-email-gadiyar@ti.com>
In-Reply-To: <1337596213-15239-1-git-send-email-gadiyar@ti.com>
References: <1337596213-15239-1-git-send-email-gadiyar@ti.com>
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
Subject: [PATCH 1/4] panda: fix crash when not using barebox as second stage
To: barebox@lists.infradead.org
Cc: Anand Gadiyar <gadiyar@ti.com>

If barebox is not used as the MLO, then it crashes during boot
with the below error message:

Board: Texas Instrument's Panda
PandaBoard Revision: 003
omap-hsmmc@mci0: registered as mci0
unable to handle paging request at address 0x4a064010
pc : [<8f01e820>]    lr : [<8f0049a0>]
sp : 8cffff80  ip : 00000016  fp : 00100103
r10: 00000000  r9 : 00000ae7  r8 : 4030b76c
r7 : 40300200  r6 : e28f8028  r5 : 0000003e  r4 : 00000000
r3 : 4a064000  r2 : 00000014  r1 : 00000001  r0 : 00000001
Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
[<8f01e820>] (panda_devices_init+0x17c/0x1e0) from [<8f006300>] (start_barebox+0x18/0x10c)
[<8f006300>] (start_barebox+0x18/0x10c) from [<8200006c>] (0x8200006c)

[<8f021248>] (unwind_backtrace+0x0/0x98) from [<8f011a00>] (panic+0x28/0x3c)
[<8f011a00>] (panic+0x28/0x3c) from [<8f02171c>] (do_exception+0x10/0x14)
[<8f02171c>] (do_exception+0x10/0x14) from [<8f021784>] (do_data_abort+0x2c/0x38)
[<8f021784>] (do_data_abort+0x2c/0x38) from [<8f021470>] (data_abort+0x50/0x60)

This is because the USBHOST module is not enabled. The module enable
is is normally done in mach-omap/xload.c which never gets called.

Since we're configuring the USBHOST CLKCTRL register in the board file
anyway, we might as well explicitly enable the module in the same place.

Signed-off-by: Anand Gadiyar <gadiyar@ti.com>
---
Steps to reproduce:
Download and build usbboot from here:
git://git.omapzoom.org/repo/omapboot.git

Check out and build the p-master branch.
  make ARCH=omap4 BOARD=panda

Then you can do a USB boot using
usbboot barebox.bin

 arch/arm/boards/panda/board.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 628d3f1..26d365c 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -78,6 +78,7 @@ static void panda_ehci_init(void)
 	gpio_set_value(hub_nreset, 1);
 	val = readl(0x4a009358);
 	val |= (1 << 24);
+	val |= 0x2;
 	writel(val, 0x4a009358);
 	writel(0x7, 0x4a008180);
 	mdelay(10);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
