Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLfr-0005Qb-Ci
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:44:50 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 13 Dec 2018 08:44:23 +0100
Message-Id: <20181213074430.25614-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
References: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 1/8] ARM: rpi: fix typo in rpi-common.c
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 650b26ce7..840f525bb 100644
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
@@ -286,7 +286,7 @@ static int rpi_clock_init(void)
 {
 	struct clk *clk;
 
-	clk = rpi_register_firmare_clock(BCM2835_MBOX_CLOCK_ID_EMMC,
+	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_EMMC,
 					 "bcm2835_mci0");
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
