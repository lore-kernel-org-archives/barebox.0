Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRZ6h-0002ak-Lu
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 08:52:46 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 27 Nov 2018 09:51:33 +0100
Message-Id: <20181127085133.5415-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20181127085133.5415-1-r.czerwinski@pengutronix.de>
References: <20181127085133.5415-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/2] rpi-common: fix sdhci clkdev for raspberry pi
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The clkdev here

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 3baed65255..b7ce0ad425 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -290,8 +290,8 @@ static int rpi_clock_init(void)
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
-	clk_register_clkdev(clk, NULL, "20300000.sdhci");
-	clk_register_clkdev(clk, NULL, "3f300000.sdhci");
+	clkdev_add_physbase(clk, 0x20300000, NULL);
+	clkdev_add_physbase(clk, 0x3f300000, NULL);
 
 	return 0;
 }
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
