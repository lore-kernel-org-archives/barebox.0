Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYxFo-0004BN-NS
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 13:14:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Sep 2014 15:10:30 +0200
Message-Id: <1412082632-25290-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412082632-25290-1-git-send-email-s.hauer@pengutronix.de>
References: <1412082632-25290-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: am335x Phytec phyCORE: register SPI NOR and NAND
 update handlers
To: barebox@lists.infradead.org

Additionally to the MLO update handlers also register the update
handlers for the regular barebox image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-am335x/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/phytec-phycore-am335x/board.c b/arch/arm/boards/phytec-phycore-am335x/board.c
index 9482b80..035866b 100644
--- a/arch/arm/boards/phytec-phycore-am335x/board.c
+++ b/arch/arm/boards/phytec-phycore-am335x/board.c
@@ -78,8 +78,10 @@ static int pcm051_devices_init(void)
 	defaultenv_append_directory(defaultenv_phycore_am335x);
 
 	am33xx_bbu_spi_nor_mlo_register_handler("MLO.spi", "/dev/m25p0.xload");
+	am33xx_bbu_spi_nor_register_handler("spi", "/dev/m25p0.barebox");
 	am33xx_bbu_nand_xloadslots_register_handler("MLO.nand",
 		xloadslots, ARRAY_SIZE(xloadslots));
+	am33xx_bbu_nand_register_handler("nand", "/dev/nand0.barebox.bb");
 
 	return 0;
 }
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
