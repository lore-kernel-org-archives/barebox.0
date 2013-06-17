Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoVZo-0001Qc-Ln
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 09:18:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jun 2013 11:17:51 +0200
Message-Id: <1371460673-14284-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: i.MX51: Use IIM for detecting silicon revision
To: barebox@lists.infradead.org

The IROM is located at physical address 0x0, so reading the
silicon revision from it leads to a NULL pointer dereference
if done too late when the MMU is already enabled. Use the IIM
instead which is also done in the Kernel. This limits the silicon
revisions to 2.0 and 3.0, but I assume the earlier versions are
not seen in the wild anyway.

This also moves the call to imx_set_silicon_revision() out of
imx51_silicon_revision() so that imx51_silicon_revision() can be called
in early init context.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx51.c | 28 ++++++++--------------------
 1 file changed, 8 insertions(+), 20 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index fdf2374..c9f88f5 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -22,40 +22,28 @@
 #include <mach/clock-imx51_53.h>
 #include <mach/generic.h>
 
-#define SI_REV 0x48
+#define IIM_SREV 0x24
 
 static int imx51_silicon_revision(void)
 {
-	void __iomem *rom = MX51_IROM_BASE_ADDR;
-	u32 mx51_silicon_revision;
-	u32 rev;
+	void __iomem *iim_base = IOMEM(MX51_IIM_BASE_ADDR);
+	u32 rev = readl(iim_base + IIM_SREV) & 0xff;
 
-	rev = readl(rom + SI_REV);
 	switch (rev) {
-	case 0x1:
-		mx51_silicon_revision = IMX_CHIP_REV_1_0;
-		break;
-	case 0x2:
-		mx51_silicon_revision = IMX_CHIP_REV_1_1;
-		break;
+	case 0x0:
+		return IMX_CHIP_REV_2_0;
 	case 0x10:
-		mx51_silicon_revision = IMX_CHIP_REV_2_0;
-		break;
-	case 0x20:
-		mx51_silicon_revision = IMX_CHIP_REV_3_0;
-		break;
+		return IMX_CHIP_REV_3_0;
 	default:
-		mx51_silicon_revision = 0;
+		return IMX_CHIP_REV_UNKNOWN;
 	}
 
-	imx_set_silicon_revision("i.MX51", mx51_silicon_revision);
-
 	return 0;
 }
 
 static int imx51_init(void)
 {
-	imx51_silicon_revision();
+	imx_set_silicon_revision("i.MX51", imx51_silicon_revision());
 	imx51_boot_save_loc((void *)MX51_SRC_BASE_ADDR);
 
 	if (of_get_root_node())
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
