Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMeC4-0003pw-HL
 for barebox@lists.infradead.org; Fri, 03 May 2019 19:50:07 +0000
Received: from antimon.fritz.box (a89-183-84-146.net-htp.de [89.183.84.146])
 by lynxeye.de (Postfix) with ESMTPA id 239ECE74217
 for <barebox@lists.infradead.org>; Fri,  3 May 2019 21:49:26 +0200 (CEST)
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  3 May 2019 21:49:19 +0200
Message-Id: <20190503194921.19364-2-l.stach@pengutronix.de>
In-Reply-To: <20190503194921.19364-1-l.stach@pengutronix.de>
References: <20190503194921.19364-1-l.stach@pengutronix.de>
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
Subject: [PATCH v2 2/4] ARM: rpi: add clock for sdhost
To: barebox@lists.infradead.org

The sdhost is driven by the core clock.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index bc877f853a..dd6bbd5bdd 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -319,6 +319,14 @@ static int rpi_clock_init(void)
 	clkdev_add_physbase(clk, 0x20300000, NULL);
 	clkdev_add_physbase(clk, 0x3f300000, NULL);
 
+	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
+					  "bcm2835_sdhost");
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	clkdev_add_physbase(clk, 0x20202000, NULL);
+	clkdev_add_physbase(clk, 0x3f202000, NULL);
+
 	return 0;
 }
 postconsole_initcall(rpi_clock_init);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
