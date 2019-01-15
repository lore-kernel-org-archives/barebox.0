Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjHWR-0007KH-Dk
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 05:44:25 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 15 Jan 2019 06:44:01 +0100
Message-Id: <4d94b3c0208fedf9c9c2eed0053e9dffb9d52506.1547530950.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.cea99e013da63859278229c6e1566362a1800ff4.1547530950.git-series.r.czerwinski@pengutronix.de>
References: <cover.cea99e013da63859278229c6e1566362a1800ff4.1547530950.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v6 1/9] ARM: rpi: fix typo in rpi-common.c
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index b7ce0ad..9f0531f 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -73,7 +73,7 @@ static int rpi_get_arm_mem(u32 *size)
 	return 0;
 }
 
-static struct clk *rpi_register_firmare_clock(u32 clock_id, const char *name)
+static struct clk *rpi_register_firmware_clock(u32 clock_id, const char *name)
 {
 	BCM2835_MBOX_STACK_ALIGN(struct msg_get_clock_rate, msg);
 	int ret;
@@ -285,7 +285,7 @@ static int rpi_clock_init(void)
 {
 	struct clk *clk;
 
-	clk = rpi_register_firmare_clock(BCM2835_MBOX_CLOCK_ID_EMMC,
+	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_EMMC,
 					 "bcm2835_mci0");
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
