Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNkVj-0008Ba-BO
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 13:15:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Oct 2012 15:15:08 +0200
Message-Id: <1350306908-25206-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350306908-25206-1-git-send-email-s.hauer@pengutronix.de>
References: <1350306908-25206-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] ARM i.MX53 tx53: register MMC and NAND update handler
To: barebox@lists.infradead.org

We support two different board revisions, both of which only differ
in the dcd table, so we can support both in a single binary with the
cost of storing both dcd tables in the binary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx53/board.c         |   18 +++
 arch/arm/boards/karo-tx53/dcd-data-1011.h |   94 +++++++++++
 arch/arm/boards/karo-tx53/dcd-data-xx30.h |  145 +++++++++++++++++
 arch/arm/boards/karo-tx53/flash_header.c  |  248 ++---------------------------
 4 files changed, 269 insertions(+), 236 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx53/dcd-data-1011.h
 create mode 100644 arch/arm/boards/karo-tx53/dcd-data-xx30.h

diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 99ddcec..8f87c9c 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -33,6 +33,8 @@
 #include <mach/imx-nand.h>
 #include <mach/iim.h>
 #include <mach/imx5.h>
+#include <mach/imx-flash-header.h>
+#include <mach/bbu.h>
 
 #include <asm/armlinux.h>
 #include <io.h>
@@ -206,6 +208,14 @@ static inline void tx53_fec_init(void)
 			ARRAY_SIZE(tx53_fec_pads));
 }
 
+#define DCD_NAME_1011 static struct imx_dcd_v2_entry dcd_entry_1011
+
+#include "dcd-data-1011.h"
+
+#define DCD_NAME_XX30 static u32 dcd_entry_xx30
+
+#include "dcd-data-xx30.h"
+
 static int tx53_devices_init(void)
 {
 	imx53_iim_register_fec_ethaddr();
@@ -217,6 +227,14 @@ static int tx53_devices_init(void)
 	armlinux_set_bootparams((void *)0x70000100);
 	armlinux_set_architecture(MACH_TYPE_TX53);
 
+	/* rev xx30 can boot from nand or USB */
+	imx53_bbu_internal_nand_register_handler("nand-xx30",
+		BBU_HANDLER_FLAG_DEFAULT, (void *)dcd_entry_xx30, sizeof(dcd_entry_xx30), SZ_512K);
+
+	/* rev 1011 can boot from MMC/SD, other bootsource currently unknown */
+	imx53_bbu_internal_mmc_register_handler("mmc-1011", "/dev/disk0",
+		0, (void *)dcd_entry_1011, sizeof(dcd_entry_1011));
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/karo-tx53/dcd-data-1011.h b/arch/arm/boards/karo-tx53/dcd-data-1011.h
new file mode 100644
index 0000000..7034ff8
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/dcd-data-1011.h
@@ -0,0 +1,94 @@
+DCD_NAME_1011[] = {
+	{ .addr = cpu_to_be32(0x53fd406c), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fd4070), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fd4074), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fd4078), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fd407c), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fd4080), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fd4088), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fa8174), .val = cpu_to_be32(0x00000011), },
+	{ .addr = cpu_to_be32(0x63fd800c), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00200040), },
+	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00200040), },
+	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00200040), },
+	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00200040), },
+	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00200040), },
+	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00200040), },
+	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00280000), },
+	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00280000), },
+	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00280000), },
+	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00280000), },
+	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000200), },
+	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x06000000), },
+	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x36353b38), },
+	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x49434942), },
+	{ .addr = cpu_to_be32(0x63fd90f8), .val = cpu_to_be32(0x00000800), },
+	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01350138), },
+	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x01380139), },
+	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00001710), },
+	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0x84110000), },
+	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x4d5122d2), },
+	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb6f18a22), },
+	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x00c700db), },
+	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
+	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f000e), },
+	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12272000), },
+	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x00030012), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008010), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008020), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008020), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0a528030), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x03868031), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00068031), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
+	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
+	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00033332), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00448031), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008018), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
+	{ .addr = cpu_to_be32(0x53fa8004), .val = cpu_to_be32(0x00194005), },
+	{ .addr = cpu_to_be32(0x53fa819c), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81a0), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81a4), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81a8), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81ac), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81b0), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81b4), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81b8), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81dc), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81e0), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8228), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa822c), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8230), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8234), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8238), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa84ec), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa84f0), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa84f4), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa84f8), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa84fc), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa8500), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa8504), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa8508), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa852c), .val = cpu_to_be32(0x00000004), },
+	{ .addr = cpu_to_be32(0x53fa8530), .val = cpu_to_be32(0x00000004), },
+	{ .addr = cpu_to_be32(0x53fa85a0), .val = cpu_to_be32(0x00000004), },
+	{ .addr = cpu_to_be32(0x53fa85a4), .val = cpu_to_be32(0x00000004), },
+	{ .addr = cpu_to_be32(0x53fa85a8), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa85ac), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa85b0), .val = cpu_to_be32(0x00000004), },
+};
diff --git a/arch/arm/boards/karo-tx53/dcd-data-xx30.h b/arch/arm/boards/karo-tx53/dcd-data-xx30.h
new file mode 100644
index 0000000..aa569c2
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/dcd-data-xx30.h
@@ -0,0 +1,145 @@
+
+#define DCD_ITEM(adr, val)	cpu_to_be32(adr), cpu_to_be32(val)
+#define DCD_WR_CMD(len)		cpu_to_be32(0xcc << 24 | (len) << 8 | 0x04)
+#define DCD_CHECK_CMD(a, b, c)	cpu_to_be32(a), cpu_to_be32(b), cpu_to_be32(c)
+
+/*
+ * This board uses advanced features of the DCD which do not corporate
+ * well with our flash header defines. The DCD consists of commands which
+ * have the length econded into them. Normally the DCDs only have a single
+ * command (DCD_COMMAND_WRITE_TAG) which is already part of struct
+ * imx_flash_header_v2. Now this board uses multiple commands, so we cannot
+ * calculate the command length using sizeof(dcd_entry).
+ */
+
+DCD_NAME_XX30[] = {
+	DCD_WR_CMD(0x21c),
+	DCD_ITEM(0x53fd4068, 0xffcc0fff),
+	DCD_ITEM(0x53fd406c, 0x000fffc3),
+	DCD_ITEM(0x53fd4070, 0x033c0000),
+	DCD_ITEM(0x53fd4074, 0x00000000),
+	DCD_ITEM(0x53fd4078, 0x00000000),
+	DCD_ITEM(0x53fd407c, 0x00fff033),
+	DCD_ITEM(0x53fd4080, 0x0f00030f),
+	DCD_ITEM(0x53fd4084, 0xfff00000),
+	DCD_ITEM(0x53fd4088, 0x00000000),
+	DCD_ITEM(0x53fa8174, 0x00000011),
+	DCD_ITEM(0x53fa8318, 0x00000011),
+	DCD_ITEM(0x63fd800c, 0x00000000),
+	DCD_ITEM(0x53fd4014, 0x00888944),
+	DCD_ITEM(0x53fd4018, 0x00016154),
+	DCD_ITEM(0x53fa8724, 0x04000000),
+	DCD_ITEM(0x53fa86f4, 0x00000000),
+	DCD_ITEM(0x53fa8714, 0x00000000),
+	DCD_ITEM(0x53fa86fc, 0x00000080),
+	DCD_ITEM(0x53fa8710, 0x00000000),
+	DCD_ITEM(0x53fa8708, 0x00000040),
+	DCD_ITEM(0x53fa8584, 0x00280000),
+	DCD_ITEM(0x53fa8594, 0x00280000),
+	DCD_ITEM(0x53fa8560, 0x00280000),
+	DCD_ITEM(0x53fa8554, 0x00280000),
+	DCD_ITEM(0x53fa857c, 0x00a80040),
+	DCD_ITEM(0x53fa8590, 0x00a80040),
+	DCD_ITEM(0x53fa8568, 0x00a80040),
+	DCD_ITEM(0x53fa8558, 0x00a80040),
+	DCD_ITEM(0x53fa8580, 0x00280040),
+	DCD_ITEM(0x53fa8578, 0x00280000),
+	DCD_ITEM(0x53fa8564, 0x00280040),
+	DCD_ITEM(0x53fa8570, 0x00280000),
+	DCD_ITEM(0x53fa858c, 0x000000c0),
+	DCD_ITEM(0x53fa855c, 0x000000c0),
+	DCD_ITEM(0x53fa8574, 0x00280000),
+	DCD_ITEM(0x53fa8588, 0x00280000),
+	DCD_ITEM(0x53fa86f0, 0x00280000),
+	DCD_ITEM(0x53fa8720, 0x00280000),
+	DCD_ITEM(0x53fa8718, 0x00280000),
+	DCD_ITEM(0x53fa871c, 0x00280000),
+	DCD_ITEM(0x53fa8728, 0x00280000),
+	DCD_ITEM(0x53fa872c, 0x00280000),
+	DCD_ITEM(0x63fd904c, 0x001f001f),
+	DCD_ITEM(0x63fd9050, 0x001f001f),
+	DCD_ITEM(0x63fd907c, 0x011e011e),
+	DCD_ITEM(0x63fd9080, 0x011f0120),
+	DCD_ITEM(0x63fd9088, 0x3a393d3b),
+	DCD_ITEM(0x63fd9090, 0x3f3f3f3f),
+	DCD_ITEM(0x63fd9018, 0x00011740),
+	DCD_ITEM(0x63fd9000, 0x83190000),
+	DCD_ITEM(0x63fd900c, 0x3f435316),
+	DCD_ITEM(0x63fd9010, 0xb66e0a63),
+	DCD_ITEM(0x63fd9014, 0x01ff00db),
+	DCD_ITEM(0x63fd902c, 0x000026d2),
+	DCD_ITEM(0x63fd9030, 0x00430f24),
+	DCD_ITEM(0x63fd9008, 0x1b221010),
+	DCD_ITEM(0x63fd9004, 0x00030012),
+	DCD_ITEM(0x63fd901c, 0x00008032),
+	DCD_ITEM(0x63fd901c, 0x00008033),
+	DCD_ITEM(0x63fd901c, 0x00408031),
+	DCD_ITEM(0x63fd901c, 0x055080b0),
+	DCD_ITEM(0x63fd9020, 0x00005800),
+	DCD_ITEM(0x63fd9058, 0x00011112),
+	DCD_ITEM(0x63fd90d0, 0x00000003),
+	DCD_ITEM(0x63fd901c, 0x04008010),
+	DCD_ITEM(0x63fd901c, 0x00008040),
+	DCD_ITEM(0x63fd9040, 0x0539002b),
+	DCD_CHECK_CMD(0xcf000c04, 0x63fd9040, 0x00010000),
+	DCD_WR_CMD(0x24),
+	DCD_ITEM(0x63fd901c, 0x00048033),
+	DCD_ITEM(0x63fd901c, 0x00848231),
+	DCD_ITEM(0x63fd901c, 0x00000000),
+	DCD_ITEM(0x63fd9048, 0x00000001),
+	DCD_CHECK_CMD(0xcf000c04, 0x63fd9048, 0x00000001),
+	DCD_WR_CMD(0x2c),
+	DCD_ITEM(0x63fd901c, 0x00048031),
+	DCD_ITEM(0x63fd901c, 0x00008033),
+	DCD_ITEM(0x63fd901c, 0x04008010),
+	DCD_ITEM(0x63fd901c, 0x00048033),
+	DCD_ITEM(0x63fd907c, 0x90000000),
+	DCD_CHECK_CMD(0xcf000c04, 0x63fd907c, 0x90000000),
+	DCD_WR_CMD(0x2c),
+	DCD_ITEM(0x63fd901c, 0x00008033),
+	DCD_ITEM(0x63fd901c, 0x00000000),
+	DCD_ITEM(0x63fd901c, 0x04008010),
+	DCD_ITEM(0x63fd901c, 0x00048033),
+	DCD_ITEM(0x63fd90a4, 0x00000010),
+	DCD_CHECK_CMD(0xcf000c04, 0x63fd90a4, 0x00000010),
+	DCD_WR_CMD(0x24),
+	DCD_ITEM(0x63fd901c, 0x00008033),
+	DCD_ITEM(0x63fd901c, 0x04008010),
+	DCD_ITEM(0x63fd901c, 0x00048033),
+	DCD_ITEM(0x63fd90a0, 0x00000010),
+	DCD_CHECK_CMD(0xcf000c04, 0x63fd90a0, 0x00000010),
+	DCD_WR_CMD(0x010c),
+	DCD_ITEM(0x63fd901c, 0x00008033),
+	DCD_ITEM(0x63fd901c, 0x00000000),
+	DCD_ITEM(0x53fa8004, 0x00194005),
+	DCD_ITEM(0x53fa819c, 0x00000000),
+	DCD_ITEM(0x53fa81a0, 0x00000000),
+	DCD_ITEM(0x53fa81a4, 0x00000000),
+	DCD_ITEM(0x53fa81a8, 0x00000000),
+	DCD_ITEM(0x53fa81ac, 0x00000000),
+	DCD_ITEM(0x53fa81b0, 0x00000000),
+	DCD_ITEM(0x53fa81b4, 0x00000000),
+	DCD_ITEM(0x53fa81b8, 0x00000000),
+	DCD_ITEM(0x53fa81dc, 0x00000000),
+	DCD_ITEM(0x53fa81e0, 0x00000000),
+	DCD_ITEM(0x53fa8228, 0x00000000),
+	DCD_ITEM(0x53fa822c, 0x00000000),
+	DCD_ITEM(0x53fa8230, 0x00000000),
+	DCD_ITEM(0x53fa8234, 0x00000000),
+	DCD_ITEM(0x53fa8238, 0x00000000),
+	DCD_ITEM(0x53fa84ec, 0x000000e4),
+	DCD_ITEM(0x53fa84f0, 0x000000e4),
+	DCD_ITEM(0x53fa84f4, 0x000000e4),
+	DCD_ITEM(0x53fa84f8, 0x000000e4),
+	DCD_ITEM(0x53fa84fc, 0x000000e4),
+	DCD_ITEM(0x53fa8500, 0x000000e4),
+	DCD_ITEM(0x53fa8504, 0x000000e4),
+	DCD_ITEM(0x53fa8508, 0x000000e4),
+	DCD_ITEM(0x53fa852c, 0x00000004),
+	DCD_ITEM(0x53fa8530, 0x00000004),
+	DCD_ITEM(0x53fa85a0, 0x00000004),
+	DCD_ITEM(0x53fa85a4, 0x00000004),
+	DCD_ITEM(0x53fa85a8, 0x000000e4),
+	DCD_ITEM(0x53fa85ac, 0x000000e4),
+	DCD_ITEM(0x53fa85b0, 0x00000004),
+};
diff --git a/arch/arm/boards/karo-tx53/flash_header.c b/arch/arm/boards/karo-tx53/flash_header.c
index 1e4a167..5c6aa53 100644
--- a/arch/arm/boards/karo-tx53/flash_header.c
+++ b/arch/arm/boards/karo-tx53/flash_header.c
@@ -28,247 +28,23 @@ void __naked __flash_header_start go(void)
  *        is not in production. It has 1GB DDR2 memory.
  */
 #ifdef CONFIG_TX53_REV_1011
-struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
-	{ .addr = cpu_to_be32(0x53fd406c), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fd4070), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fd4074), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fd4078), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fd407c), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fd4080), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fd4088), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fa8174), .val = cpu_to_be32(0x00000011), },
-	{ .addr = cpu_to_be32(0x63fd800c), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00200040), },
-	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00200040), },
-	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00200040), },
-	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00200040), },
-	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00200040), },
-	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00200040), },
-	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00280000), },
-	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00280000), },
-	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00280000), },
-	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00280000), },
-	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000200), },
-	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x06000000), },
-	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x36353b38), },
-	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x49434942), },
-	{ .addr = cpu_to_be32(0x63fd90f8), .val = cpu_to_be32(0x00000800), },
-	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01350138), },
-	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x01380139), },
-	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00001710), },
-	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0x84110000), },
-	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x4d5122d2), },
-	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb6f18a22), },
-	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x00c700db), },
-	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
-	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f000e), },
-	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12272000), },
-	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x00030012), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008010), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008020), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008020), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0a528030), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x03868031), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00068031), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
-	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
-	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00033332), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00448031), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008018), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
-	{ .addr = cpu_to_be32(0x53fa8004), .val = cpu_to_be32(0x00194005), },
-	{ .addr = cpu_to_be32(0x53fa819c), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81a0), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81a4), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81a8), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81ac), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81b0), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81b4), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81b8), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81dc), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81e0), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8228), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa822c), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8230), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8234), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8238), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa84ec), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa84f0), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa84f4), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa84f8), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa84fc), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa8500), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa8504), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa8508), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa852c), .val = cpu_to_be32(0x00000004), },
-	{ .addr = cpu_to_be32(0x53fa8530), .val = cpu_to_be32(0x00000004), },
-	{ .addr = cpu_to_be32(0x53fa85a0), .val = cpu_to_be32(0x00000004), },
-	{ .addr = cpu_to_be32(0x53fa85a4), .val = cpu_to_be32(0x00000004), },
-	{ .addr = cpu_to_be32(0x53fa85a8), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa85ac), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa85b0), .val = cpu_to_be32(0x00000004), },
-};
+
+#define DCD_NAME_1011 struct imx_dcd_v2_entry __dcd_entry_section dcd_entry
+
+#include "dcd-data-1011.h"
+
 #elif defined(CONFIG_TX53_REV_XX30)
 
-#define DCD_ITEM(adr, val)	cpu_to_be32(adr), cpu_to_be32(val)
-#define DCD_WR_CMD(len)		cpu_to_be32(0xcc << 24 | (len) << 8 | 0x04)
-#define DCD_CHECK_CMD(a, b, c)	cpu_to_be32(a), cpu_to_be32(b), cpu_to_be32(c)
+#define DCD_NAME_XX30 u32 __dcd_entry_section dcd_entry
+
+#include "dcd-data-xx30.h"
 
-/*
- * This board uses advanced features of the DCD which do not corporate
- * well with our flash header defines. The DCD consists of commands which
- * have the length econded into them. Normally the DCDs only have a single
- * command (DCD_COMMAND_WRITE_TAG) which is already part of struct
- * imx_flash_header_v2. Now this board uses multiple commands, so we cannot
- * calculate the command length using sizeof(dcd_entry).
- */
-u32 __dcd_entry_section dcd_entry[] = {
-	DCD_ITEM(0x53fd4068, 0xffcc0fff),
-	DCD_ITEM(0x53fd406c, 0x000fffc3),
-	DCD_ITEM(0x53fd4070, 0x033c0000),
-	DCD_ITEM(0x53fd4074, 0x00000000),
-	DCD_ITEM(0x53fd4078, 0x00000000),
-	DCD_ITEM(0x53fd407c, 0x00fff033),
-	DCD_ITEM(0x53fd4080, 0x0f00030f),
-	DCD_ITEM(0x53fd4084, 0xfff00000),
-	DCD_ITEM(0x53fd4088, 0x00000000),
-	DCD_ITEM(0x53fa8174, 0x00000011),
-	DCD_ITEM(0x53fa8318, 0x00000011),
-	DCD_ITEM(0x63fd800c, 0x00000000),
-	DCD_ITEM(0x53fd4014, 0x00888944),
-	DCD_ITEM(0x53fd4018, 0x00016154),
-	DCD_ITEM(0x53fa8724, 0x04000000),
-	DCD_ITEM(0x53fa86f4, 0x00000000),
-	DCD_ITEM(0x53fa8714, 0x00000000),
-	DCD_ITEM(0x53fa86fc, 0x00000080),
-	DCD_ITEM(0x53fa8710, 0x00000000),
-	DCD_ITEM(0x53fa8708, 0x00000040),
-	DCD_ITEM(0x53fa8584, 0x00280000),
-	DCD_ITEM(0x53fa8594, 0x00280000),
-	DCD_ITEM(0x53fa8560, 0x00280000),
-	DCD_ITEM(0x53fa8554, 0x00280000),
-	DCD_ITEM(0x53fa857c, 0x00a80040),
-	DCD_ITEM(0x53fa8590, 0x00a80040),
-	DCD_ITEM(0x53fa8568, 0x00a80040),
-	DCD_ITEM(0x53fa8558, 0x00a80040),
-	DCD_ITEM(0x53fa8580, 0x00280040),
-	DCD_ITEM(0x53fa8578, 0x00280000),
-	DCD_ITEM(0x53fa8564, 0x00280040),
-	DCD_ITEM(0x53fa8570, 0x00280000),
-	DCD_ITEM(0x53fa858c, 0x000000c0),
-	DCD_ITEM(0x53fa855c, 0x000000c0),
-	DCD_ITEM(0x53fa8574, 0x00280000),
-	DCD_ITEM(0x53fa8588, 0x00280000),
-	DCD_ITEM(0x53fa86f0, 0x00280000),
-	DCD_ITEM(0x53fa8720, 0x00280000),
-	DCD_ITEM(0x53fa8718, 0x00280000),
-	DCD_ITEM(0x53fa871c, 0x00280000),
-	DCD_ITEM(0x53fa8728, 0x00280000),
-	DCD_ITEM(0x53fa872c, 0x00280000),
-	DCD_ITEM(0x63fd904c, 0x001f001f),
-	DCD_ITEM(0x63fd9050, 0x001f001f),
-	DCD_ITEM(0x63fd907c, 0x011e011e),
-	DCD_ITEM(0x63fd9080, 0x011f0120),
-	DCD_ITEM(0x63fd9088, 0x3a393d3b),
-	DCD_ITEM(0x63fd9090, 0x3f3f3f3f),
-	DCD_ITEM(0x63fd9018, 0x00011740),
-	DCD_ITEM(0x63fd9000, 0x83190000),
-	DCD_ITEM(0x63fd900c, 0x3f435316),
-	DCD_ITEM(0x63fd9010, 0xb66e0a63),
-	DCD_ITEM(0x63fd9014, 0x01ff00db),
-	DCD_ITEM(0x63fd902c, 0x000026d2),
-	DCD_ITEM(0x63fd9030, 0x00430f24),
-	DCD_ITEM(0x63fd9008, 0x1b221010),
-	DCD_ITEM(0x63fd9004, 0x00030012),
-	DCD_ITEM(0x63fd901c, 0x00008032),
-	DCD_ITEM(0x63fd901c, 0x00008033),
-	DCD_ITEM(0x63fd901c, 0x00408031),
-	DCD_ITEM(0x63fd901c, 0x055080b0),
-	DCD_ITEM(0x63fd9020, 0x00005800),
-	DCD_ITEM(0x63fd9058, 0x00011112),
-	DCD_ITEM(0x63fd90d0, 0x00000003),
-	DCD_ITEM(0x63fd901c, 0x04008010),
-	DCD_ITEM(0x63fd901c, 0x00008040),
-	DCD_ITEM(0x63fd9040, 0x0539002b),
-	DCD_CHECK_CMD(0xcf000c04, 0x63fd9040, 0x00010000),
-	DCD_WR_CMD(0x24),
-	DCD_ITEM(0x63fd901c, 0x00048033),
-	DCD_ITEM(0x63fd901c, 0x00848231),
-	DCD_ITEM(0x63fd901c, 0x00000000),
-	DCD_ITEM(0x63fd9048, 0x00000001),
-	DCD_CHECK_CMD(0xcf000c04, 0x63fd9048, 0x00000001),
-	DCD_WR_CMD(0x2c),
-	DCD_ITEM(0x63fd901c, 0x00048031),
-	DCD_ITEM(0x63fd901c, 0x00008033),
-	DCD_ITEM(0x63fd901c, 0x04008010),
-	DCD_ITEM(0x63fd901c, 0x00048033),
-	DCD_ITEM(0x63fd907c, 0x90000000),
-	DCD_CHECK_CMD(0xcf000c04, 0x63fd907c, 0x90000000),
-	DCD_WR_CMD(0x2c),
-	DCD_ITEM(0x63fd901c, 0x00008033),
-	DCD_ITEM(0x63fd901c, 0x00000000),
-	DCD_ITEM(0x63fd901c, 0x04008010),
-	DCD_ITEM(0x63fd901c, 0x00048033),
-	DCD_ITEM(0x63fd90a4, 0x00000010),
-	DCD_CHECK_CMD(0xcf000c04, 0x63fd90a4, 0x00000010),
-	DCD_WR_CMD(0x24),
-	DCD_ITEM(0x63fd901c, 0x00008033),
-	DCD_ITEM(0x63fd901c, 0x04008010),
-	DCD_ITEM(0x63fd901c, 0x00048033),
-	DCD_ITEM(0x63fd90a0, 0x00000010),
-	DCD_CHECK_CMD(0xcf000c04, 0x63fd90a0, 0x00000010),
-	DCD_WR_CMD(0x010c),
-	DCD_ITEM(0x63fd901c, 0x00008033),
-	DCD_ITEM(0x63fd901c, 0x00000000),
-	DCD_ITEM(0x53fa8004, 0x00194005),
-	DCD_ITEM(0x53fa819c, 0x00000000),
-	DCD_ITEM(0x53fa81a0, 0x00000000),
-	DCD_ITEM(0x53fa81a4, 0x00000000),
-	DCD_ITEM(0x53fa81a8, 0x00000000),
-	DCD_ITEM(0x53fa81ac, 0x00000000),
-	DCD_ITEM(0x53fa81b0, 0x00000000),
-	DCD_ITEM(0x53fa81b4, 0x00000000),
-	DCD_ITEM(0x53fa81b8, 0x00000000),
-	DCD_ITEM(0x53fa81dc, 0x00000000),
-	DCD_ITEM(0x53fa81e0, 0x00000000),
-	DCD_ITEM(0x53fa8228, 0x00000000),
-	DCD_ITEM(0x53fa822c, 0x00000000),
-	DCD_ITEM(0x53fa8230, 0x00000000),
-	DCD_ITEM(0x53fa8234, 0x00000000),
-	DCD_ITEM(0x53fa8238, 0x00000000),
-	DCD_ITEM(0x53fa84ec, 0x000000e4),
-	DCD_ITEM(0x53fa84f0, 0x000000e4),
-	DCD_ITEM(0x53fa84f4, 0x000000e4),
-	DCD_ITEM(0x53fa84f8, 0x000000e4),
-	DCD_ITEM(0x53fa84fc, 0x000000e4),
-	DCD_ITEM(0x53fa8500, 0x000000e4),
-	DCD_ITEM(0x53fa8504, 0x000000e4),
-	DCD_ITEM(0x53fa8508, 0x000000e4),
-	DCD_ITEM(0x53fa852c, 0x00000004),
-	DCD_ITEM(0x53fa8530, 0x00000004),
-	DCD_ITEM(0x53fa85a0, 0x00000004),
-	DCD_ITEM(0x53fa85a4, 0x00000004),
-	DCD_ITEM(0x53fa85a8, 0x000000e4),
-	DCD_ITEM(0x53fa85ac, 0x000000e4),
-	DCD_ITEM(0x53fa85b0, 0x00000004),
-};
 #endif
 
-#define APP_DEST	0x70000000
+#define APP_DEST	0x71000000
+
+int tx53_dcdentry_size = sizeof(dcd_entry);
+void *tx53_dcd_entry = &dcd_entry;
 
 struct imx_flash_header_v2 __flash_header_section flash_header = {
 	.header.tag		= IVT_HEADER_TAG,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
