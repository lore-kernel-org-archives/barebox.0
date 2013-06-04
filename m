Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by merlin.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjqyU-0004bi-DF
 for barebox@lists.infradead.org; Tue, 04 Jun 2013 13:08:31 +0000
From: "S. Fricke" <sfricke@data-modul.com>
Date: Tue,  4 Jun 2013 15:07:57 +0200
Message-Id: <1370351277-23582-1-git-send-email-sfricke@data-modul.com>
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
Subject: [PATCH V2] ARM i.MX6: set imx6 silicon revision
To: barebox@lists.infradead.org
Cc: "S. Fricke" <sfricke@data-modul.com>

From: "S. Fricke" <sfricke@data-modul.com>

This is mainly a backport of the imx6_revision function of
arch/arm/mach-imx/mach-imx6q.c in the linux kernel sources.

Signed-off-by: S. Fricke <sfricke@data-modul.com>
---
 arch/arm/mach-imx/imx6.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 5c20aa1..1d69ec8 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -16,8 +16,11 @@
 #include <io.h>
 #include <sizes.h>
 #include <mach/generic.h>
+#include <mach/revision.h>
 #include <mach/imx6-regs.h>
 
+#define SI_REV 0x260
+
 void imx6_init_lowlevel(void)
 {
 	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
@@ -55,8 +58,31 @@ void imx6_init_lowlevel(void)
 
 static int imx6_init(void)
 {
+	u32 rev;
+	u32 mx6_silicon_revision;
+
 	imx6_boot_save_loc((void *)MX6_SRC_BASE_ADDR);
 
+	rev = readl(MX6_ANATOP_BASE_ADDR + SI_REV);
+	switch (rev & 0xff) {
+	case 0x00:
+		mx6_silicon_revision = IMX_CHIP_REV_1_0;
+		break;
+
+	case 0x01:
+		mx6_silicon_revision = IMX_CHIP_REV_1_1;
+		break;
+
+	case 0x02:
+		mx6_silicon_revision = IMX_CHIP_REV_1_2;
+		break;
+
+	default:
+		mx6_silicon_revision = IMX_CHIP_REV_UNKNOWN;
+	}
+
+	imx_set_silicon_revision("i.MX6", mx6_silicon_revision);
+
 	if (of_get_root_node())
 		return 0;
 
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
