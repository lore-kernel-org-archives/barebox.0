Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1d85-0002Wm-EG
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 14:32:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 15:31:39 +0100
Message-Id: <1389364300-8742-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389364300-8742-1-git-send-email-s.hauer@pengutronix.de>
References: <1389364300-8742-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX DFI FS700-M60: Add SPI NOR flash update handler
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Conflicts:
	arch/arm/boards/dfi-fs700-m60/board.c
---
 arch/arm/boards/dfi-fs700-m60/board.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/dfi-fs700-m60/board.c b/arch/arm/boards/dfi-fs700-m60/board.c
index 96f1b0e..7544ec1 100644
--- a/arch/arm/boards/dfi-fs700-m60/board.c
+++ b/arch/arm/boards/dfi-fs700-m60/board.c
@@ -19,6 +19,9 @@
 #define pr_fmt(fmt)  "dfi-fs700-m60: " fmt
 
 #include <generated/mach-types.h>
+#include <environment.h>
+#include <bootsource.h>
+#include <globalvar.h>
 #include <common.h>
 #include <sizes.h>
 #include <envfs.h>
@@ -64,13 +67,22 @@ static int ar8031_phy_fixup(struct phy_device *dev)
 
 static int dfi_fs700_m60_init(void)
 {
+	unsigned flag_spi = 0, flag_mmc = 0;
+
 	if (!of_machine_is_compatible("dfi,fs700-m60"))
 		return 0;
 
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK, ar8031_phy_fixup);
 
+	if (bootsource_get() == BOOTSOURCE_SPI)
+		flag_spi |= BBU_HANDLER_FLAG_DEFAULT;
+	else
+		flag_mmc |= BBU_HANDLER_FLAG_DEFAULT;
+
 	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc3.boot0",
-		BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0);
+		flag_mmc, NULL, 0, 0);
+	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0",
+		flag_spi, NULL, 0, 0);
 
 	armlinux_set_architecture(MACH_TYPE_MX6Q_SABRESD);
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
