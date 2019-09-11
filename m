Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83zx-00009j-KJ
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 14:53:35 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Sep 2019 16:53:28 +0200
Message-Id: <20190911145328.3246-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: i.MX: phytec-som-imx6: phycore: fix updating pmic
 regulators
To: barebox@lists.infradead.org
Cc: s.christ@phytec.de, j.remmet@phytec.de, s.riedmueller@phytec.de

The PMIC is connected to i2c3 and not i2c1.

Fixes: b6bebb7aca ("ARM: i.MX: phytec-som-imx6: phycore: Set BUCK mode to SYNC")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx6/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 730115702b..38e5ede91a 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -117,7 +117,7 @@ static int phycore_da9062_setup_buck_mode(void)
 	struct i2c_adapter *adapter = NULL;
 	struct i2c_client client;
 	unsigned char value;
-	int bus = 0;
+	int bus = 2;
 	int ret;
 
 	adapter = i2c_get_adapter(bus);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
