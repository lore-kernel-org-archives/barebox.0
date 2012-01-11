Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RkzcY-0002Ad-Tr
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 14:57:48 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id q0BEvjoa011926
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 08:57:45 -0600
Received: from DBDE71.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q0BEviQX020022
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 20:27:44 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Wed, 11 Jan 2012 20:27:19 +0530
Message-ID: <1326293842-3063-3-git-send-email-premi@ti.com>
In-Reply-To: <s.hauer@pengutronix.de,plagnioj@jcrosoft.com,J.Kilb@phytec.de>
References: <s.hauer@pengutronix.de,plagnioj@jcrosoft.com,J.Kilb@phytec.de>
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
Subject: [PATCH 2/5] ARM omap3beagle: Fix incorrect base addresses
To: barebox@lists.infradead.org

The base address passed for device "omap-hsmmc" was
incorrectly passed as OMAP_I2C1_BASE and the base
address for device "i2c-omap" was hardcoded to
0x4809C000 which, in fact, refers to OMAP_MMC1_BASE.

Similarly, in call to add_usb_ehci_device(), addition
is not required if right base address is used.
In fact, 0x48064700 (used as base in the addition)
falls in the OHCI Address space.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---

 Changes are straight forward address replacement.
 Still, plan to test later today.


 arch/arm/boards/omap/board-beagle.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 5f8c2df..9f0acad 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -290,13 +290,13 @@ mem_initcall(beagle_mem_init);
 static int beagle_devices_init(void)
 {
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	add_generic_device("i2c-omap", -1, NULL, 0x4809C000, SZ_4K,
+	add_generic_device("i2c-omap", -1, NULL, OMAP_I2C1_BASE, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_USB_EHCI_OMAP
 	if (ehci_omap_init(&omap_ehci_pdata) >= 0)
-		add_usb_ehci_device(-1, 0x48064700 + 0x100,
-				    0x48064700 + 0x110, &ehci_pdata);
+		add_usb_ehci_device(-1, OMAP_EHCI_BASE,
+				    OMAP_EHCI_BASE + 0x10, &ehci_pdata);
 #endif /* CONFIG_USB_EHCI_OMAP */
 #ifdef CONFIG_OMAP_GPMC
 	/* WP is made high and WAIT1 active Low */
@@ -304,7 +304,7 @@ static int beagle_devices_init(void)
 #endif
 	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_HAMMING_CODE_HW_ROMCODE);
 
-	add_generic_device("omap-hsmmc", -1, NULL, OMAP_I2C1_BASE, 0,
+	add_generic_device("omap-hsmmc", -1, NULL, OMAP_MMC1_BASE, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 
 	armlinux_set_bootparams((void *)0x80000100);
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
