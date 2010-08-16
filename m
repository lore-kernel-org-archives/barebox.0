Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ol0P4-0000aj-Uv
	for barebox@lists.infradead.org; Mon, 16 Aug 2010 14:11:13 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Mon, 16 Aug 2010 17:10:37 +0300
Message-Id: <cc0071de23d39f9981c5008239038e6552a05568.1281966840.git.baruch@tkos.co.il>
In-Reply-To: <cover.1281966840.git.baruch@tkos.co.il>
References: <cover.1281966840.git.baruch@tkos.co.il>
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
Subject: [PATCH v2 5/6] imx25: add iim platform code
To: barebox@lists.infradead.org

---
 arch/arm/mach-imx/imx25.c |   44 ++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 44 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 70494aa..760f740 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -16,7 +16,9 @@
  */
 
 #include <common.h>
+#include <init.h>
 #include <mach/imx-regs.h>
+#include <mach/iim.h>
 #include <asm/io.h>
 
 #include "gpio.h"
@@ -46,3 +48,45 @@ u64 imx_uid(void)
 
 	return uid;
 }
+
+static struct imx_iim_platform_data imx25_iim_pdata = {
+	.mac_addr_base	= IMX_IIM_BASE + IIM_MAC_ADDR,
+};
+
+static struct device_d imx25_iim_dev = {
+	.name		= "imx_iim",
+	.map_base	= IMX_IIM_BASE,
+	.platform_data	= &imx25_iim_pdata,
+};
+
+static struct device_d imx25_iim_bank0_dev = {
+	.name		= "imx_iim_bank",
+	.id		= 0,
+	.map_base	= IIM_BANK0_BASE,
+	.size		= IIM_BANK_SIZE,
+};
+
+static struct device_d imx25_iim_bank1_dev = {
+	.name		= "imx_iim_bank",
+	.id		= 1,
+	.map_base	= IIM_BANK1_BASE,
+	.size		= IIM_BANK_SIZE,
+};
+
+static struct device_d imx25_iim_bank2_dev = {
+	.name		= "imx_iim_bank",
+	.id		= 2,
+	.map_base	= IIM_BANK2_BASE,
+	.size		= IIM_BANK_SIZE,
+};
+
+static int imx25_iim_init(void)
+{
+	register_device(&imx25_iim_dev);
+	register_device(&imx25_iim_bank0_dev);
+	register_device(&imx25_iim_bank1_dev);
+	register_device(&imx25_iim_bank2_dev);
+
+	return 0;
+}
+coredevice_initcall(imx25_iim_init);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
