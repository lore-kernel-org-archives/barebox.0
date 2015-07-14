Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZF2tG-0007Jt-7C
 for barebox@lists.infradead.org; Tue, 14 Jul 2015 16:17:07 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 14 Jul 2015 18:16:38 +0200
Message-Id: <1436890599-31412-4-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1436890599-31412-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1436890599-31412-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: socfpga: socrates: register spi bbu handler
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/ebv-socrates/board.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/ebv-socrates/board.c b/arch/arm/boards/ebv-socrates/board.c
index 5d2d61991431..20998682a389 100644
--- a/arch/arm/boards/ebv-socrates/board.c
+++ b/arch/arm/boards/ebv-socrates/board.c
@@ -8,6 +8,7 @@
 #include <linux/sizes.h>
 #include <fcntl.h>
 #include <fs.h>
+#include <mach/bbu.h>
 #include <mach/socfpga-regs.h>
 
 static int phy_fixup(struct phy_device *dev)
@@ -32,6 +33,9 @@ static int socrates_init(void)
 	if (IS_ENABLED(CONFIG_PHYLIB))
 		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK, phy_fixup);
 
+	socfpga_bbu_spi_nor_register_handler("qspi-xload", "/dev/mtd0.prebootloader0");
+	socfpga_bbu_spi_nor_register_handler("qspi", "/dev/mtd0.barebox0");
+
 	return 0;
 }
 postcore_initcall(socrates_init);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
