Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oftg1-0007o3-Lt
	for barebox@lists.infradead.org; Mon, 02 Aug 2010 11:59:30 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Mon,  2 Aug 2010 14:58:52 +0300
Message-Id: <13eb05d187d78209699157a4638dfc87414617a5.1280749932.git.baruch@tkos.co.il>
In-Reply-To: <cover.1280749932.git.baruch@tkos.co.il>
References: <cover.1280749932.git.baruch@tkos.co.il>
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
Subject: [PATCH 2/3] imx25: add support for UID read from eFuse
To: barebox@lists.infradead.org

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/mach-imx/imx25.c                   |   12 ++++++++++++
 arch/arm/mach-imx/include/mach/generic.h    |    1 +
 arch/arm/mach-imx/include/mach/imx25-regs.h |    3 +++
 3 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 00a1e4e..de70247 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -16,6 +16,8 @@
  */
 
 #include <common.h>
+#include <mach/imx-regs.h>
+#include <asm/io.h>
 
 #include "gpio.h"
 
@@ -28,3 +30,13 @@ void *imx_gpio_base[] = {
 
 int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
 
+u64 imx_uid(void)
+{
+	u64 uid = 0;
+	int i;
+
+	for (i = 0; i < 8; i++)
+		uid = (uid << 8) | readb(IMX_IIM_BASE + IIM_UID + i*4);
+
+	return uid;
+}
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 48ed336..4b89838 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -6,6 +6,7 @@ int imx_silicon_revision(void);
 #define IMX35_CHIP_REVISION_1_0   0x10
 #define IMX35_CHIP_REVISION_2_0   0x20
 
+u64 imx_uid(void);
 
 
 #ifdef CONFIG_ARCH_IMX1
diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index e91e7b6..7c2b5f9 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -140,5 +140,8 @@
 /* important definition of some bits of WCR */
 #define WCR_WDE 0x04
 
+/* IIM fuse definitions */
+#define IIM_UID		0x820
+
 #endif /* __ASM_ARCH_MX25_REGS_H */
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
