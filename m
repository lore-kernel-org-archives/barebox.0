Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from coyote.quickmin.net ([217.14.112.24])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QEhP3-0000sS-K3
	for barebox@lists.infradead.org; Tue, 26 Apr 2011 12:30:07 +0000
Received: from rfietze.mit.telemotive.de (rfietze.mit.telemotive.de
	[10.96.97.33])
	by alderan.mit.telemotive.de (Postfix) with ESMTP id 9D3B6F381B
	for <barebox@lists.infradead.org>;
	Tue, 26 Apr 2011 14:30:01 +0200 (CEST)
From: Roman Fietze <roman.fietze@telemotive.de>
MIME-Version: 1.0
Message-ID: <201104261430.01267.roman.fietze@telemotive.de>
Date: Tue, 26 Apr 2011 14:30:01 +0200
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
Subject: Freescale i.MX35 using CSD1 and 256 MiB DDR2
To: barebox@lists.infradead.org

Hello Barebox Mailing List Members,

I found this advice to patch RedBoot to support more than 128 MiB DDR2
on a Freescale i.MX35 3-stack eval board by enabling CSD1 and properly
configuring the ESDRAMC.

  http://www.spinics.net/lists/u-boot-v2/msg03422.html

They simply seem to modify the boot code by omitting some checks and
adding MMU mapping entries.

My changes are not successful yet. It seems I'm simply not yet
familiar enough with the i.MX35, barebox, or even both. The changes
that I added to barebox are at the end of this mail.

It seems that barebox uses the DCD table to boot the chip in my case,
so I added new entries there, and I can see them when dumping e.g. the
ESDRAMC registers using barebox itself (yes, it still starts. I can
still dump the RAM starting at 0x80000000, but when I try to dump
0x90000000 barebox simply hangs.

I checked the IOMUX GPRA, the PAD settings for CS2 and CS3, the
ESDRAMC registers and all locations of Freescale's document containing
CS2, CS3, CSD0, CSD1, etc. with no success.

I'm stuck. What am I missing? A pointer to the appropriate section of
the documentation or any helpful link would already very helpful.


Thank's a lot in advance

Roman


The not yet working patches:

Subject: [PATCH] imx35: support 2 banks of SDRAM using 256 MiB DDR2

Change the DCD table and the low level init code.

CAUTION: This code does not work as expected and is just used to have
a starting point for discussions on the Barebox mailing list.

Signed-off-by: Roman Fietze <roman.fietze@telemotive.de>
---
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   25 ++++++++++++++++----
 .../boards/freescale-mx35-3-stack/flash_header.c   |   11 ++++++++-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   17 ++++++++-----
 3 files changed, 40 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 7b61a24..2a12aaa 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -71,17 +71,30 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 0x1F,
 };
 
-static struct memory_platform_data sdram_pdata = {
+static struct memory_platform_data sdram0_pdata = {
 	.name	= "ram0",
 	.flags	= DEVFS_RDWR,
 };
 
-static struct device_d sdram_dev = {
+static struct device_d sdram0_dev = {
 	.id		= -1,
 	.name		= "mem",
 	.map_base	= IMX_SDRAM_CS0,
 	.size		= 128 * 1024 * 1024,
-	.platform_data	= &sdram_pdata,
+	.platform_data	= &sdram0_pdata,
+};
+
+static struct memory_platform_data sdram1_pdata = {
+	.name	= "ram1",
+	.flags	= DEVFS_RDWR,
+};
+
+static struct device_d sdram1_dev = {
+	.id		= -1,
+	.name		= "mem",
+	.map_base	= IMX_SDRAM_CS1,
+	.size		= 128 * 1024 * 1024,
+	.platform_data	= &sdram1_pdata,
 };
 
 struct imx_nand_platform_data nand_info = {
@@ -209,10 +222,12 @@ static int f3s_devices_init(void)
 
 	imx35_add_mmc0(NULL);
 
-	register_device(&sdram_dev);
+	register_device(&sdram0_dev);
+	register_device(&sdram1_dev);
 	imx35_add_fb(&ipu_fb_data);
 
-	armlinux_add_dram(&sdram_dev);
+	armlinux_add_dram(&sdram0_dev);
+	armlinux_add_dram(&sdram1_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_MX35_3DS);
 
diff --git a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
index 4bee797..34edceb 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
@@ -17,19 +17,28 @@ struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
 	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x0000030C, },
 	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc3f, },
 	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x92220000, },
+	{ .ptr_type = 4, .addr = 0xB800100C, .val = 0x007ffc3f, },
+	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0x92220000, },
 	{ .ptr_type = 4, .addr = 0x80000400, .val = 0x12345678, },
+	{ .ptr_type = 4, .addr = 0x90000400, .val = 0x12345678, },
 	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0xA2220000, },
 	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
+	{ .ptr_type = 4, .addr = 0x90000000, .val = 0x87654321, },
 	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
+	{ .ptr_type = 4, .addr = 0x90000000, .val = 0x87654321, },
 	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0xB2220000, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0xB2220000, },
 	{ .ptr_type = 1, .addr = 0x80000233, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x90000233, .val = 0xda, },
 	{ .ptr_type = 1, .addr = 0x82000780, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x92000780, .val = 0xda, },
 	{ .ptr_type = 1, .addr = 0x82000400, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x92000400, .val = 0xda, },
 	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x82226080, },
 	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc3f, },
+	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0x82226080, },
 	{ .ptr_type = 4, .addr = 0xB800100C, .val = 0x007ffc3f, },
 	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x00000304, },
-	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0x00002000, },
 };
 
 
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index 1680579..413e04a 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -28,8 +28,8 @@
 #include "board-mx35_3stack.h"
 
 #define CSD0_BASE_ADDR		0x80000000
-#define ESDCTL_BASE_ADDR	0xB8001000
 #define CSD1_BASE_ADDR		0x90000000
+#define ESDCTL_BASE_ADDR	0xB8001000
 
 #define writel(val, reg) \
 	ldr		r0,	=reg;	\
@@ -122,9 +122,9 @@ board_init_lowlevel:
 	str	r1, [r0, #CCM_CGR1]
 
 	/* Skip SDRAM initialization if we run from RAM */
-	cmp	pc, #0x80000000
+	cmp	pc, #CSD0_BASE_ADDR
 	bls	1f
-	cmp	pc, #0x90000000
+	cmp	pc, #CSD1_BASE_ADDR
 	bhi	1f
 
 	mov	pc, r10
@@ -138,14 +138,17 @@ board_init_lowlevel:
 	/* ip(r12) has used to save lr register in upper calling */
 	mov	fp, lr
 
+	/* setup bank 0 */
 	mov	r5, #0x00
 	mov	r2, #0x00
 	mov	r1, #CSD0_BASE_ADDR
 	bl	setup_sdram_bank
-	cmp	r3, #0x0
-	orreq	r5, r5, #1
-	eorne	r2, r2, #0x1
-	blne	setup_sdram_bank
+
+	/* setup bank 1 */
+	mov	r5, #0x00
+	mov	r2, #0x00
+	mov	r1, #CSD1_BASE_ADDR
+	bl	setup_sdram_bank
 
 	mov	lr, fp
 
-- 
1.7.4.2


-- 
Roman Fietze              Telemotive AG Buero Muehlhausen
Breitwiesen                             73347 Muehlhausen
Tel.: +49(0)7335/18493-45        http://www.telemotive.de

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
