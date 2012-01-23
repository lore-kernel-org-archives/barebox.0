Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpGB3-0001TG-Tq
 for barebox@lists.infradead.org; Mon, 23 Jan 2012 09:27:03 +0000
Date: Mon, 23 Jan 2012 10:26:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120123092652.GK5446@pengutronix.de>
References: <201104261430.01267.roman.fietze@telemotive.de>
 <201104271038.46439.roman.fietze@telemotive.de>
 <4DB7DE8E.6070100@pengutronix.de>
 <201104271232.12931.roman.fietze@telemotive.de>
 <4DB7F14E.1080404@pengutronix.de> <4F19827C.5080601@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4F19827C.5080601@gmx.de>
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
Subject: Re: [PATCH] freescale-mx35-3-stack: support 256 MiB RAM
To: Thomas Mayer <tm.telemotive@gmx.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 20, 2012 at 04:04:28PM +0100, Thomas Mayer wrote:
> Hi,
> 
> is there a reason why this patch was never applied?
> It works fine for us.

Yeah, the reason probably is that I forgot to apply it.

It does not apply anymore. Can you check this updated version?

8<------------------------------------------------

ARM i.MX freescale-mx35-3-stack: support 256 MiB RAM

Extend DCD table and low level init routines. Add barebox SDRAM
device. Also, fix the memory size for bank 0 to 128MB. It was
accidently changed to 124MB here:

commit f928efa818adfe56a08350569a9b0f3c2fb791d2
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Tue Jul 19 09:58:32 2011 +0200

    add a add_mem_device function

    Add a helper function for boards to register their memory
    devices. This makes the board code smaller and also helps
    getting rid of map_base and struct memory_platform_data.

    And switch all of the memory to it

Signed-off-by: Roman Fietze <roman.fietze@telemotive.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    3 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |   26 +++++++++++++++++++-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   17 +++++++-----
 3 files changed, 37 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 030a1a7..cc27af3 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -130,7 +130,8 @@ static void set_board_rev(int rev)
 
 static int f3s_mem_init(void)
 {
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 124 * 1024 * 1024);
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
+	arm_add_mem_device("ram1", IMX_SDRAM_CS1, 128 * 1024 * 1024);
 
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
index 4bee797..92f2142 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
@@ -13,23 +13,47 @@ struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
 	{ .ptr_type = 4, .addr = 0xb8002050, .val = 0x0000d843, },
 	{ .ptr_type = 4, .addr = 0xB8002054, .val = 0x22252521, },
 	{ .ptr_type = 4, .addr = 0xB8002058, .val = 0x22220a00, },
+
 	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x00000304, },
 	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x0000030C, },
+
 	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc3f, },
+	{ .ptr_type = 4, .addr = 0xB800100C, .val = 0x007ffc3f, },
+
 	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x92220000, },
+	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0x92220000, },
+
 	{ .ptr_type = 4, .addr = 0x80000400, .val = 0x12345678, },
+	{ .ptr_type = 4, .addr = 0x90000400, .val = 0x12345678, },
+
 	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0xA2220000, },
+	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0xA2220000, },
+
 	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
+	{ .ptr_type = 4, .addr = 0x90000000, .val = 0x87654321, },
+
 	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
+	{ .ptr_type = 4, .addr = 0x90000000, .val = 0x87654321, },
+
 	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0xB2220000, },
+	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0xB2220000, },
+
 	{ .ptr_type = 1, .addr = 0x80000233, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x90000233, .val = 0xda, },
+
 	{ .ptr_type = 1, .addr = 0x82000780, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x92000780, .val = 0xda, },
+
 	{ .ptr_type = 1, .addr = 0x82000400, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x92000400, .val = 0xda, },
+
 	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x82226080, },
+	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0x82226080, },
+
 	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc3f, },
 	{ .ptr_type = 4, .addr = 0xB800100C, .val = 0x007ffc3f, },
+
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
1.7.8.3


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
