Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVqVb-0005sr-3B
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 21:48:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Apr 2013 23:48:36 +0200
Message-Id: <1367012916-22780-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1367012916-22780-1-git-send-email-s.hauer@pengutronix.de>
References: <1366977055.331524144@f355.mail.ru>
 <1367012916-22780-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] ARM: i.MX: ccxmx51: detect SDRAM size by board id
To: barebox@lists.infradead.org

This partly reverts:

commit 697e02b74fddd80527e8ababba10239c83dba029
Author: Alexander Shiyan <shc_work@mail.ru>
Date:   Tue Jan 22 15:08:31 2013 +0400

    ARM: ccmx51: Remove SDRAM size settings

    This patch removes SDRAM memory size setting from board due
    to auto detect last one by ESDCTL.

    Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

The board originally configured the SDRAM controller for the
maximum size and detected the usable SDRAM size by reading the
board id. This became broken after switching to automatic SDRAM
size detection by reading back ESDCTL values.

This patch brings back the old behaviour.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ccxmx51/ccxmx51.c  | 55 ++++++++++++++++++++++++--------------
 arch/arm/boards/ccxmx51/ccxmx51.h  |  1 +
 arch/arm/boards/ccxmx51/lowlevel.c |  4 ++-
 3 files changed, 39 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index a14c9bc..d20cb3b 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -46,30 +46,31 @@
 #include <mach/clock-imx51_53.h>
 #include <mach/imx5.h>
 #include <mach/revision.h>
+#include <mach/esdctl.h>
 
 #include "ccxmx51.h"
 
 static struct ccxmx51_ident ccxmx51_ids[] = {
-/* 0x00 */	{ "Unknown",						0, 0, 0, 0 },
-/* 0x01 */	{ "Not supported",					0, 0, 0, 0 },
-/* 0x02 */	{ "i.MX515@800MHz, Wireless, PHY, Ext. Eth, Accel",	0, 1, 1, 1 },
-/* 0x03 */	{ "i.MX515@800MHz, PHY, Ext. Eth, Accel",		0, 1, 1, 0 },
-/* 0x04 */	{ "i.MX515@600MHz, Wireless, PHY, Ext. Eth, Accel",	1, 1, 1, 1 },
-/* 0x05 */	{ "i.MX515@600MHz, PHY, Ext. Eth, Accel",		1, 1, 1, 0 },
-/* 0x06 */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		0, 1, 0, 1 },
-/* 0x07 */	{ "i.MX515@800MHz, PHY, Accel",				0, 1, 0, 0 },
-/* 0x08 */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		0, 1, 0, 1 },
-/* 0x09 */	{ "i.MX515@800MHz, PHY, Accel",				0, 1, 0, 0 },
-/* 0x0a */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		1, 1, 0, 1 },
-/* 0x0b */	{ "i.MX515@600MHz, PHY, Accel",				1, 1, 0, 0 },
-/* 0x0c */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		0, 1, 0, 1 },
-/* 0x0d */	{ "i.MX512@800MHz",					0, 0, 0, 0 },
-/* 0x0e */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		0, 1, 0, 1 },
-/* 0x0f */	{ "i.MX515@600MHz, PHY, Accel",				1, 1, 0, 0 },
-/* 0x10 */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		1, 1, 0, 1 },
-/* 0x11 */	{ "i.MX515@800MHz, PHY, Accel",				0, 1, 0, 0 },
-/* 0x12 */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		1, 1, 0, 1 },
-/* 0x13 */	{ "i.MX515@800MHz, PHY, Accel",				0, 1, 0, 0 },
+/* 0x00 */	{ "Unknown",						0,       0, 0, 0, 0 },
+/* 0x01 */	{ "Not supported",					0,       0, 0, 0, 0 },
+/* 0x02 */	{ "i.MX515@800MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M, 0, 1, 1, 1 },
+/* 0x03 */	{ "i.MX515@800MHz, PHY, Ext. Eth, Accel",		SZ_512M, 0, 1, 1, 0 },
+/* 0x04 */	{ "i.MX515@600MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M, 1, 1, 1, 1 },
+/* 0x05 */	{ "i.MX515@600MHz, PHY, Ext. Eth, Accel",		SZ_512M, 1, 1, 1, 0 },
+/* 0x06 */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_512M, 0, 1, 0, 1 },
+/* 0x07 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_512M, 0, 1, 0, 0 },
+/* 0x08 */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_256M, 0, 1, 0, 1 },
+/* 0x09 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_256M, 0, 1, 0, 0 },
+/* 0x0a */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_256M, 1, 1, 0, 1 },
+/* 0x0b */	{ "i.MX515@600MHz, PHY, Accel",				SZ_256M, 1, 1, 0, 0 },
+/* 0x0c */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_128M, 0, 1, 0, 1 },
+/* 0x0d */	{ "i.MX512@800MHz",					SZ_128M, 0, 0, 0, 0 },
+/* 0x0e */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_512M, 0, 1, 0, 1 },
+/* 0x0f */	{ "i.MX515@600MHz, PHY, Accel",				SZ_128M, 1, 1, 0, 0 },
+/* 0x10 */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_128M, 1, 1, 0, 1 },
+/* 0x11 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_128M, 0, 1, 0, 0 },
+/* 0x12 */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_512M, 1, 1, 0, 1 },
+/* 0x13 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_512M, 0, 1, 0, 0 },
 };
 
 struct ccxmx51_ident *ccxmx51_id;
@@ -338,6 +339,18 @@ static int ccxmx51_power_init(void)
 	return 0;
 }
 
+/*
+ * On this board the SDRAM is always configured for 512Mib. The real
+ * size is determined by the board id read from the IIM module.
+ */
+static int ccxm51_sdram_fixup(void)
+{
+	imx_esdctl_disable();
+
+	return 0;
+}
+postcore_initcall(ccxm51_sdram_fixup);
+
 static int ccxmx51_devices_init(void)
 {
 	u8 hwid[6];
@@ -367,6 +380,8 @@ static int ccxmx51_devices_init(void)
 			break;
 		}
 		printf("Module Serial : %c%d\n", manloc, ((hwid[2] & 0x3f) << 24) | (hwid[3] << 16) | (hwid[4] << 8) | hwid[5]);
+		if ((ccxmx51_id->mem_sz - SZ_128M) > 0)
+			arm_add_mem_device("ram1", MX51_CSD0_BASE_ADDR + SZ_128M, ccxmx51_id->mem_sz - SZ_128M);
 	}
 
 	imx51_add_uart1();
diff --git a/arch/arm/boards/ccxmx51/ccxmx51.h b/arch/arm/boards/ccxmx51/ccxmx51.h
index ef40b7f..3feacac 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.h
+++ b/arch/arm/boards/ccxmx51/ccxmx51.h
@@ -23,6 +23,7 @@ struct ccxmx51_hwid {
 
 struct ccxmx51_ident {
 	const char	*id_string;
+	const int	mem_sz;
 	const char	industrial;
 	const char	eth0;
 	const char	eth1;
diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51/lowlevel.c
index 3e6a0ee..9519b77 100644
--- a/arch/arm/boards/ccxmx51/lowlevel.c
+++ b/arch/arm/boards/ccxmx51/lowlevel.c
@@ -1,9 +1,11 @@
 #include <common.h>
 #include <mach/esdctl.h>
+#include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
+#include <mach/imx51-regs.h>
 
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	imx51_barebox_entry(0);
+	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, 0);
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
