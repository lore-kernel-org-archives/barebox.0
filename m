Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OkdRJ-0000Ko-6s
	for barebox@lists.infradead.org; Sun, 15 Aug 2010 13:39:54 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Sun, 15 Aug 2010 16:39:27 +0300
Message-Id: <db0a37dfa4bb09aa2bbd18aa2817c10248d00ed8.1281877781.git.baruch@tkos.co.il>
In-Reply-To: <cover.1281877781.git.baruch@tkos.co.il>
References: <cover.1281877781.git.baruch@tkos.co.il>
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
Subject: [PATCH 4/5] imx25 3ds: add support for the iim fusebox driver
To: barebox@lists.infradead.org

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/boards/freescale-mx25-3-stack/3stack.c |   31 +++++++++++++++++++++++
 1 files changed, 31 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index cd228cc..7b96dc8 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -37,6 +37,7 @@
 #include <mach/imx-flash-header.h>
 #include <mach/iomux-mx25.h>
 #include <mach/generic.h>
+#include <mach/iim.h>
 #include <linux/err.h>
 #include <i2c/i2c.h>
 #include <i2c/mc34704.h>
@@ -244,6 +245,32 @@ static int imx25_3ds_fec_init(void)
 }
 late_initcall(imx25_3ds_fec_init);
 
+static struct device_d imx_iim_dev = {
+	.name		= "imx_iim",
+	.map_base	= IMX_IIM_BASE,
+};
+
+static struct device_d imx_iim_bank0_dev = {
+	.name		= "imx_iim_bank",
+	.id		= 0,
+	.map_base	= IIM_BANK0_BASE,
+	.size		= IIM_BANK_SIZE,
+};
+
+static struct device_d imx_iim_bank1_dev = {
+	.name		= "imx_iim_bank",
+	.id		= 1,
+	.map_base	= IIM_BANK1_BASE,
+	.size		= IIM_BANK_SIZE,
+};
+
+static struct device_d imx_iim_bank2_dev = {
+	.name		= "imx_iim_bank",
+	.id		= 2,
+	.map_base	= IIM_BANK2_BASE,
+	.size		= IIM_BANK_SIZE,
+};
+
 static int imx25_devices_init(void)
 {
 #ifdef CONFIG_USB
@@ -259,6 +286,10 @@ static int imx25_devices_init(void)
 	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 14))
 		nand_info.width = 2;
 
+	register_device(&imx_iim_dev);
+	register_device(&imx_iim_bank0_dev);
+	register_device(&imx_iim_bank1_dev);
+	register_device(&imx_iim_bank2_dev);
 	register_device(&nand_dev);
 
 	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
