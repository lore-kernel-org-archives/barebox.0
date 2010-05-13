Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pw0-f49.google.com ([209.85.160.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OCNvw-0003rT-NF
	for barebox@lists.infradead.org; Thu, 13 May 2010 02:13:57 +0000
Received: by mail-pw0-f49.google.com with SMTP id 6so409800pwj.36
	for <barebox@lists.infradead.org>; Wed, 12 May 2010 19:13:56 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Thu, 13 May 2010 12:46:59 +1000
Message-Id: <1273718822-16800-4-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1273718822-16800-3-git-send-email-marc@cpdesign.com.au>
References: <1273718822-16800-1-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-2-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-3-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 3/6] imx35: add detection of silicon revision
To: barebox@lists.infradead.org

Implemented imx_silicon_revision() for imx35.
---
 arch/arm/mach-imx/imx35.c                   |   11 +++++++++++
 arch/arm/mach-imx/include/mach/generic.h    |    5 +++++
 arch/arm/mach-imx/include/mach/imx35-regs.h |   18 ++++++++++++++++++
 3 files changed, 34 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index f2fea4c..0d21311 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -16,6 +16,9 @@
  */
 
 #include <common.h>
+#include <asm/io.h>
+#include <mach/imx-regs.h>
+#include <mach/generic.h>
 
 #include "gpio.h"
 
@@ -27,3 +30,11 @@ void *imx_gpio_base[] = {
 
 int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
 
+int imx_silicon_revision()
+{
+	uint32_t reg;
+	reg = readl(IMX_IIM_BASE + IIM_SREV);
+	reg += IMX35_CHIP_REVISION_1_0;
+	
+	return (reg & 0xFF);
+}
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 99a53a4..48ed336 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -3,6 +3,11 @@ int imx_silicon_revision(void);
 #define IMX27_CHIP_REVISION_1_0   0
 #define IMX27_CHIP_REVISION_2_0   1
 
+#define IMX35_CHIP_REVISION_1_0   0x10
+#define IMX35_CHIP_REVISION_2_0   0x20
+
+
+
 #ifdef CONFIG_ARCH_IMX1
 #define cpu_is_mx1()	(1)
 #else
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index c394a2a..899e57b 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -76,6 +76,24 @@
 #define PDR0_AUTO_CON		(1 << 0)
 #define PDR0_PER_SEL		(1 << 26)
 
+
+#define IIM_STAT	0x0000
+#define IIM_STATM	0x0004
+#define IIM_ERR		0x0008
+#define IIM_EMASK	0x000C
+#define IIM_FCTL	0x0010
+#define IIM_UA		0x0014
+#define IIM_LA		0x0018
+#define IIM_SDAT	0x001C
+#define IIM_PREV	0x0020
+#define IIM_SREV	0x0024
+#define IIM_PREG_P	0x0028
+#define IIM_SCS0	0x002C
+#define IIM_SCS1	0x0030
+#define IIM_SCS2	0x0034
+#define IIM_SCS3	0x0038
+
+
 /*
  * Adresses and ranges of the external chip select lines
  */
-- 
1.6.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
