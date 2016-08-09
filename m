Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bX6IE-00078s-QC
 for barebox@lists.infradead.org; Tue, 09 Aug 2016 12:38:07 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue,  9 Aug 2016 14:37:32 +0200
Message-Id: <1470746252-3146-7-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 7/7] ARM: socfpga: socrates: register bbu handlers
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/ebv-socrates/board.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boards/ebv-socrates/board.c b/arch/arm/boards/ebv-socrates/board.c
index 5d2d61991431..f3207b88efdf 100644
--- a/arch/arm/boards/ebv-socrates/board.c
+++ b/arch/arm/boards/ebv-socrates/board.c
@@ -2,6 +2,9 @@
 #include <types.h>
 #include <driver.h>
 #include <init.h>
+#include <bbu.h>
+#include <bootsource.h>
+#include <filetype.h>
 #include <asm/armlinux.h>
 #include <linux/micrel_phy.h>
 #include <linux/phy.h>
@@ -26,12 +29,45 @@ static int phy_fixup(struct phy_device *dev)
 
 static int socrates_init(void)
 {
+	enum bootsource bootsource = bootsource_get();
+	uint32_t flag_qspi = 0;
+	uint32_t flag_mmc = 0;
+
 	if (!of_machine_is_compatible("ebv,socrates"))
 		return 0;
 
 	if (IS_ENABLED(CONFIG_PHYLIB))
 		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK, phy_fixup);
 
+	switch (bootsource) {
+	case BOOTSOURCE_MMC:
+		flag_mmc |= BBU_HANDLER_FLAG_DEFAULT;
+		break;
+	case BOOTSOURCE_SPI:
+		flag_qspi |= BBU_HANDLER_FLAG_DEFAULT;
+		break;
+	default:
+		break;
+	}
+
+	bbu_register_std_file_update("qspi-xload0", flag_qspi,
+					"/dev/mtd0.prebootloader0",
+					filetype_socfpga_xload);
+	bbu_register_std_file_update("qspi-xload1", 0,
+					"/dev/mtd0.prebootloader1",
+					filetype_socfpga_xload);
+	bbu_register_std_file_update("qspi-xload2", 0,
+					"/dev/mtd0.prebootloader2",
+					filetype_socfpga_xload);
+	bbu_register_std_file_update("qspi-xload3", 0,
+					"/dev/mtd0.prebootloader3",
+					filetype_socfpga_xload);
+	bbu_register_std_file_update("qspi", 0,	"/dev/mtd0.barebox",
+					filetype_arm_barebox);
+
+	bbu_register_std_file_update("mmc-xload", flag_mmc, "/dev/mmc0.0",
+					filetype_socfpga_xload);
+
 	return 0;
 }
 postcore_initcall(socrates_init);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
