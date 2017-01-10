Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy3o-0001G5-Sc
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:20 +0000
Received: by mail-pf0-x243.google.com with SMTP id y143so8292414pfb.1
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:09:01 -0800
Message-Id: <20170110150913.31416-9-andrew.smirnov@gmail.com>
In-Reply-To: <20170110150913.31416-1-andrew.smirnov@gmail.com>
References: <20170110150913.31416-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 08/20] i.MX: Add fusemap for VF610
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add fusemap header for VF610 and move out fuse definitions that are
shared with i.MX6 familiy into a sperate file (ocotp-fusemap.h).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/imx6-fusemap.h  | 42 +---------------------
 arch/arm/mach-imx/include/mach/ocotp-fusemap.h | 49 ++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/vf610-fusemap.h | 15 ++++++++
 3 files changed, 65 insertions(+), 41 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/ocotp-fusemap.h
 create mode 100644 arch/arm/mach-imx/include/mach/vf610-fusemap.h

diff --git a/arch/arm/mach-imx/include/mach/imx6-fusemap.h b/arch/arm/mach-imx/include/mach/imx6-fusemap.h
index efa16fd..e14044e 100644
--- a/arch/arm/mach-imx/include/mach/imx6-fusemap.h
+++ b/arch/arm/mach-imx/include/mach/imx6-fusemap.h
@@ -1,62 +1,22 @@
 #ifndef __MACH_IMX_IMX6_OCOTP_H
 #define __MACH_IMX_IMX6_OCOTP_H
 
-#include <mach/ocotp.h>
+#include <mach/ocotp-fusemap.h>
 
-#define IMX6_OCOTP_TESTER_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(0) | OCOTP_WIDTH(2))
-#define IMX6_OCOTP_BOOT_CFG_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(2) | OCOTP_WIDTH(2))
-#define IMX6_OCOTP_MEM_TRIM_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(4) | OCOTP_WIDTH(2))
-#define IMX6_OCOTP_SJC_RESP_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(6) | OCOTP_WIDTH(1))
-#define IMX6_OCOTP_MAC_ADDR_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(8) | OCOTP_WIDTH(2))
-#define IMX6_OCOTP_GP1_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(10) | OCOTP_WIDTH(2))
-#define IMX6_OCOTP_GP2_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(12) | OCOTP_WIDTH(2))
-#define IMX6_OCOTP_SRK_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(14) | OCOTP_WIDTH(1))
-#define IMX6_OCOTP_ANALOG_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(18) | OCOTP_WIDTH(2))
-#define IMX6_OCOTP_MISC_CONF_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(22) | OCOTP_WIDTH(1))
-
-/* 0 <= n <= 1 */
-#define IMX6_OCOTP_UNIQUE_ID(n)		(OCOTP_WORD(0x410 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
 #define IMX6_OCOTP_SI_REV		(OCOTP_WORD(0x430) | OCOTP_BIT(16) | OCOTP_WIDTH(4))
-#define IMX6_OCOTP_NUM_CORES		(OCOTP_WORD(0x430) | OCOTP_BIT(20) | OCOTP_WIDTH(2))
 #define IMX6_OCOTP_SATA_RST_SRC		(OCOTP_WORD(0x430) | OCOTP_BIT(24) | OCOTP_WIDTH(1))
-#define IMX6_OCOTP_MLB_DISABLE		(OCOTP_WORD(0x430) | OCOTP_BIT(26) | OCOTP_WIDTH(1))
 #define IMX6_OCOTP_VPU_DISABLE		(OCOTP_WORD(0x440) | OCOTP_BIT(15) | OCOTP_WIDTH(1))
 #define IMX6_OCOTP_SPEED_GRADING	(OCOTP_WORD(0x440) | OCOTP_BIT(16) | OCOTP_WIDTH(2))
-#define IMX6_OCOTP_BOOT_CFG1		(OCOTP_WORD(0x450) | OCOTP_BIT(0) | OCOTP_WIDTH(8))
-#define IMX6_OCOTP_BOOT_CFG2		(OCOTP_WORD(0x450) | OCOTP_BIT(8) | OCOTP_WIDTH(8))
-#define IMX6_OCOTP_BOOT_CFG3		(OCOTP_WORD(0x450) | OCOTP_BIT(16) | OCOTP_WIDTH(8))
-#define IMX6_OCOTP_BOOT_CFG4		(OCOTP_WORD(0x450) | OCOTP_BIT(24) | OCOTP_WIDTH(8))
-#define IMX6_OCOTP_SEC_CONFIG		(OCOTP_WORD(0x460) | OCOTP_BIT(1) | OCOTP_WIDTH(1))
-#define IMX6_OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x460) | OCOTP_BIT(3) | OCOTP_WIDTH(1))
-#define IMX6_OCOTP_BT_FUSE_SEL		(OCOTP_WORD(0x460) | OCOTP_BIT(4) | OCOTP_WIDTH(1))
 #define IMX6_OCOTP_DDR3_CONFIG		(OCOTP_WORD(0x460) | OCOTP_BIT(8) | OCOTP_WIDTH(8))
 #define IMX6_OCOTP_HDCP			(OCOTP_WORD(0x460) | OCOTP_BIT(16) | OCOTP_WIDTH(1))
-#define IMX6_OCOTP_SJC_DISABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(20) | OCOTP_WIDTH(1))
-#define IMX6_OCOTP_WDOG_ENABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(21) | OCOTP_WIDTH(1))
-#define IMX6_OCOTP_JTAG_SMODE		(OCOTP_WORD(0x460) | OCOTP_BIT(22) | OCOTP_WIDTH(2))
-#define IMX6_OCOTP_KTE			(OCOTP_WORD(0x460) | OCOTP_BIT(26) | OCOTP_WIDTH(1))
-#define IMX6_OCOTP_JTAG_HEO		(OCOTP_WORD(0x460) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
 #define IMX6_OCOTP_TZASC_ENABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(28) | OCOTP_WIDTH(1))
 #define IMX6_OCOTP_SDMMC_HYS_EN		(OCOTP_WORD(0x460) | OCOTP_BIT(29) | OCOTP_WIDTH(1))
 #define IMX6_OCOTP_eMMC_RESET_EN	(OCOTP_WORD(0x460) | OCOTP_BIT(30) | OCOTP_WIDTH(1))
-#define IMX6_OCOTP_NAND_READ_CMD_CODE1	(OCOTP_WORD(0x470) | OCOTP_BIT(0) | OCOTP_WIDTH(8))
-#define IMX6_OCOTP_NAND_READ_CMD_CODE2	(OCOTP_WORD(0x470) | OCOTP_BIT(8) | OCOTP_WIDTH(8))
 #define IMX6_OCOTP_BT_LPB_POLARITY	(OCOTP_WORD(0x470) | OCOTP_BIT(20) | OCOTP_WIDTH(1))
 #define IMX6_OCOTP_LPB_BOOT		(OCOTP_WORD(0x470) | OCOTP_BIT(21) | OCOTP_WIDTH(2))
 #define IMX6_OCOTP_MMC_DLL_DLY		(OCOTP_WORD(0x470) | OCOTP_BIT(24) | OCOTP_WIDTH(7))
 #define IMX6_OCOTP_TEMPERATURE_GRADE	(OCOTP_WORD(0x480) | OCOTP_BIT(6) | OCOTP_WIDTH(2))
 #define IMX6_OCOTP_POWER_GATE_CORES	(OCOTP_WORD(0x4d0) | OCOTP_BIT(31) | OCOTP_WIDTH(1))
-#define IMX6_OCOTP_USB_VID		(OCOTP_WORD(0x4f0) | OCOTP_BIT(0) | OCOTP_WIDTH(16))
-#define IMX6_OCOTP_USB_PID		(OCOTP_WORD(0x4f0) | OCOTP_BIT(16) | OCOTP_WIDTH(16))
-/* 0 <= n <= 7 */
-#define IMX6_OCOTP_SRK_HASH(n)		(OCOTP_WORD(0x580 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
-#define IMX6_OCOTP_SJC_RESP_31_0	(OCOTP_WORD(0x600) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
-#define IMX6_OCOTP_SJC_RESP_55_32	(OCOTP_WORD(0x610) | OCOTP_BIT(0) | OCOTP_WIDTH(24))
-#define IMX6_OCOTP_MAC_ADDR_31_0	(OCOTP_WORD(0x620) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
-#define IMX6_OCOTP_MAC_ADDR_47_32	(OCOTP_WORD(0x630) | OCOTP_BIT(0) | OCOTP_WIDTH(16))
-#define IMX6_OCOTP_GP1			(OCOTP_WORD(0x660) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
-#define IMX6_OCOTP_GP2			(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
-#define IMX6_OCOTP_PAD_SETTINGS		(OCOTP_WORD(0x6d0) | OCOTP_BIT(0) | OCOTP_WIDTH(6))
 #define IMX6DQ_OCOTP_TEST_PORT_DISABLE	(OCOTP_WORD(0x6e0) | OCOTP_BIT(1) | OCOTP_WIDTH(1))
 #define IMX6SDL_OCOTP_FIELD_RETURN	(OCOTP_WORD(0x6e0) | OCOTP_BIT(0) | OCOTP_WIDTH(1))
 
diff --git a/arch/arm/mach-imx/include/mach/ocotp-fusemap.h b/arch/arm/mach-imx/include/mach/ocotp-fusemap.h
new file mode 100644
index 0000000..44b58ca
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/ocotp-fusemap.h
@@ -0,0 +1,49 @@
+#ifndef __MACH_IMX_OCOTP_FUSEMAP_H
+#define __MACH_IMX_OCOTP_FUSEMAP_H
+
+#include <mach/ocotp.h>
+
+#define OCOTP_TESTER_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(0) | OCOTP_WIDTH(2))
+#define OCOTP_BOOT_CFG_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(2) | OCOTP_WIDTH(2))
+#define OCOTP_MEM_TRIM_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(4) | OCOTP_WIDTH(2))
+#define OCOTP_SJC_RESP_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(6) | OCOTP_WIDTH(1))
+#define OCOTP_MAC_ADDR_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(8) | OCOTP_WIDTH(2))
+#define OCOTP_GP1_LOCK			(OCOTP_WORD(0x400) | OCOTP_BIT(10) | OCOTP_WIDTH(2))
+#define OCOTP_GP2_LOCK			(OCOTP_WORD(0x400) | OCOTP_BIT(12) | OCOTP_WIDTH(2))
+#define OCOTP_SRK_LOCK			(OCOTP_WORD(0x400) | OCOTP_BIT(14) | OCOTP_WIDTH(1))
+#define OCOTP_ANALOG_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(18) | OCOTP_WIDTH(2))
+#define OCOTP_MISC_CONF_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(22) | OCOTP_WIDTH(1))
+
+/* 0 <= n <= 1 */
+#define OCOTP_UNIQUE_ID(n)		(OCOTP_WORD(0x410 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define OCOTP_NUM_CORES			(OCOTP_WORD(0x430) | OCOTP_BIT(20) | OCOTP_WIDTH(2))
+#define OCOTP_MLB_DISABLE		(OCOTP_WORD(0x430) | OCOTP_BIT(26) | OCOTP_WIDTH(1))
+
+#define OCOTP_BOOT_CFG1			(OCOTP_WORD(0x450) | OCOTP_BIT(0) | OCOTP_WIDTH(8))
+#define OCOTP_BOOT_CFG2			(OCOTP_WORD(0x450) | OCOTP_BIT(8) | OCOTP_WIDTH(8))
+#define OCOTP_BOOT_CFG3			(OCOTP_WORD(0x450) | OCOTP_BIT(16) | OCOTP_WIDTH(8))
+#define OCOTP_BOOT_CFG4			(OCOTP_WORD(0x450) | OCOTP_BIT(24) | OCOTP_WIDTH(8))
+#define OCOTP_SEC_CONFIG_1		(OCOTP_WORD(0x460) | OCOTP_BIT(1) | OCOTP_WIDTH(1))
+#define OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x460) | OCOTP_BIT(3) | OCOTP_WIDTH(1))
+#define OCOTP_BT_FUSE_SEL		(OCOTP_WORD(0x460) | OCOTP_BIT(4) | OCOTP_WIDTH(1))
+#define OCOTP_SJC_DISABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(20) | OCOTP_WIDTH(1))
+#define OCOTP_WDOG_ENABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(21) | OCOTP_WIDTH(1))
+#define OCOTP_JTAG_SMODE		(OCOTP_WORD(0x460) | OCOTP_BIT(22) | OCOTP_WIDTH(2))
+#define OCOTP_KTE			(OCOTP_WORD(0x460) | OCOTP_BIT(26) | OCOTP_WIDTH(1))
+#define OCOTP_JTAG_HEO			(OCOTP_WORD(0x460) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
+#define OCOTP_NAND_READ_CMD_CODE1	(OCOTP_WORD(0x470) | OCOTP_BIT(0) | OCOTP_WIDTH(8))
+#define OCOTP_NAND_READ_CMD_CODE2	(OCOTP_WORD(0x470) | OCOTP_BIT(8) | OCOTP_WIDTH(8))
+#define OCOTP_TEMP_SENSE		(OCOTP_WORD(0x4e0) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define OCOTP_USB_VID			(OCOTP_WORD(0x4f0) | OCOTP_BIT(0) | OCOTP_WIDTH(16))
+#define OCOTP_USB_PID			(OCOTP_WORD(0x4f0) | OCOTP_BIT(16) | OCOTP_WIDTH(16))
+/* 0 <= n <= 7 */
+#define OCOTP_SRK_HASH(n)		(OCOTP_WORD(0x580 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define OCOTP_SJC_RESP_31_0		(OCOTP_WORD(0x600) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define OCOTP_SJC_RESP_55_32		(OCOTP_WORD(0x610) | OCOTP_BIT(0) | OCOTP_WIDTH(24))
+#define OCOTP_MAC_ADDR_31_0		(OCOTP_WORD(0x620) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define OCOTP_MAC_ADDR_47_32		(OCOTP_WORD(0x630) | OCOTP_BIT(0) | OCOTP_WIDTH(16))
+#define OCOTP_GP1			(OCOTP_WORD(0x660) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define OCOTP_GP2			(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define OCOTP_PAD_SETTINGS		(OCOTP_WORD(0x6d0) | OCOTP_BIT(0) | OCOTP_WIDTH(6))
+
+#endif /* __MACH_IMX_OCOTP_FUSEMAP_H */
diff --git a/arch/arm/mach-imx/include/mach/vf610-fusemap.h b/arch/arm/mach-imx/include/mach/vf610-fusemap.h
new file mode 100644
index 0000000..a56faf1
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/vf610-fusemap.h
@@ -0,0 +1,15 @@
+#ifndef __MACH_VF610_OCOTP_H
+#define __MACH_VF610_OCOTP_H
+
+#include <mach/ocotp-fusemap.h>
+
+#define VF610_OCOTP_CPU_BUS_FRQ		OCOTP_WORD(0x430) | OCOTP_BIT(22) | OCOTP_WIDTH(1)
+#define VF610_OCOTP_OVG_DISABLE		OCOTP_WORD(0x430) | OCOTP_BIT(30) | OCOTP_WIDTH(1)
+#define	VF610_OCOTP_SEC_CONFIG_0	OCOTP_WORD(0x440) | OCOTP_BIT(1) | OCOTP_WIDTH(1)
+#define	VF610_OCOTP_SPEED_GRADING	OCOTP_WORD(0x440) | OCOTP_BIT(18) | OCOTP_WIDTH(4)
+#define VF610_OCOTP_MAC_ADDR0_31_0	OCOTP_MAC_ADDR_31_0
+#define VF610_OCOTP_MAC_ADDR0_47_32	OCOTP_MAC_ADDR_47_32
+#define VF610_OCOTP_MAC_ADDR1_31_0	(OCOTP_WORD(0x640) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define VF610_OCOTP_MAC_ADDR1_47_32	(OCOTP_WORD(0x650) | OCOTP_BIT(0) | OCOTP_WIDTH(16))
+
+#endif
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
