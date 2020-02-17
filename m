Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fn9-0007qZ-9k
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:42 +0100
Message-Id: <20200217124623.14520-2-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/42] ARM: i.MX8: Move iomux header to make space for i.MX8MM
To: Barebox List <barebox@lists.infradead.org>

Parts of iomux-mx8.h are for i.MX8M and others for i.MX8MQ only, but
never for i.MX8 in general. Split this up into different file and
avoid the imx8_ prefix.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c     |  2 +-
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c  |  2 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c     |  2 +-
 arch/arm/mach-imx/include/mach/iomux-mx8m.h   | 27 +++++++++++++++++++
 .../mach/{iomux-mx8.h => iomux-mx8mq.h}       | 22 +--------------
 5 files changed, 31 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx8m.h
 rename arch/arm/mach-imx/include/mach/{iomux-mx8.h => iomux-mx8mq.h} (98%)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 101ce607a5..4443c7d3b8 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -6,7 +6,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx8-ccm-regs.h>
-#include <mach/iomux-mx8.h>
+#include <mach/iomux-mx8mq.h>
 #include <mach/imx8-ddrc.h>
 #include <mach/xload.h>
 #include <io.h>
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index 4cacabb1fb..e327b8cdfb 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -9,7 +9,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx8-ccm-regs.h>
-#include <mach/iomux-mx8.h>
+#include <mach/iomux-mx8mq.h>
 #include <mach/imx8-ddrc.h>
 #include <mach/xload.h>
 #include <io.h>
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index f12d79ee6e..a328699142 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx8-ccm-regs.h>
-#include <mach/iomux-mx8.h>
+#include <mach/iomux-mx8mq.h>
 #include <mach/imx8-ddrc.h>
 #include <mach/xload.h>
 #include <io.h>
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx8m.h b/arch/arm/mach-imx/include/mach/iomux-mx8m.h
new file mode 100644
index 0000000000..de6675064a
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/iomux-mx8m.h
@@ -0,0 +1,27 @@
+#ifndef __MACH_IOMUX_IMX8M_H__
+#define __MACH_IOMUX_IMX8M_H__
+
+#include <mach/iomux-v3.h>
+
+#define PAD_CTL_DSE_3P3V_45_OHM	0b110
+
+static inline void imx8m_setup_pad(void __iomem *iomux, iomux_v3_cfg_t pad)
+{
+	unsigned int flags = 0;
+	uint32_t mode = IOMUX_MODE(pad);
+
+	if (mode & IOMUX_CONFIG_LPSR) {
+		mode &= ~IOMUX_CONFIG_LPSR;
+		flags = ZERO_OFFSET_VALID | IMX7_PINMUX_LPSR;
+	}
+
+	iomux_v3_setup_pad(iomux, flags,
+			   IOMUX_CTRL_OFS(pad),
+			   IOMUX_PAD_CTRL_OFS(pad),
+			   IOMUX_SEL_INPUT_OFS(pad),
+			   mode,
+			   IOMUX_PAD_CTRL(pad),
+			   IOMUX_SEL_INPUT(pad));
+}
+
+#endif /* __MACH_IOMUX_IMX8MQ_H__ */
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx8.h b/arch/arm/mach-imx/include/mach/iomux-mx8mq.h
similarity index 98%
rename from arch/arm/mach-imx/include/mach/iomux-mx8.h
rename to arch/arm/mach-imx/include/mach/iomux-mx8mq.h
index 9660697d96..5c94731ea7 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx8.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx8mq.h
@@ -8,8 +8,7 @@
 #define __MACH_IOMUX_IMX8MQ_H__
 
 #include <mach/iomux-v3.h>
-
-#define PAD_CTL_DSE_3P3V_45_OHM	0b110
+#include <mach/iomux-mx8m.h>
 
 enum {
 	IMX8MQ_PAD_GPIO1_IO00__GPIO1_IO0			= IOMUX_PAD(0x0290, 0x0028, 0, 0x0000, 0, 0),
@@ -623,23 +622,4 @@ enum {
 	IMX8MQ_PAD_UART4_TXD__GPIO5_IO29			= IOMUX_PAD(0x04B8, 0x0250, 5, 0x0000, 0, 0),
 };
 
-static inline void mx8_setup_pad(void __iomem *iomux, iomux_v3_cfg_t pad)
-{
-	unsigned int flags = 0;
-	uint32_t mode = IOMUX_MODE(pad);
-
-	if (mode & IOMUX_CONFIG_LPSR) {
-		mode &= ~IOMUX_CONFIG_LPSR;
-		flags = ZERO_OFFSET_VALID | IMX7_PINMUX_LPSR;
-	}
-
-	iomux_v3_setup_pad(iomux, flags,
-			   IOMUX_CTRL_OFS(pad),
-			   IOMUX_PAD_CTRL_OFS(pad),
-			   IOMUX_SEL_INPUT_OFS(pad),
-			   mode,
-			   IOMUX_PAD_CTRL(pad),
-			   IOMUX_SEL_INPUT(pad));
-}
-
 #endif
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
