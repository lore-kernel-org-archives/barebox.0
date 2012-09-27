Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THHg6-0004sx-3c
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 17:15:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Sep 2012 19:15:07 +0200
Message-Id: <1348766107-19261-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM i.MX51 babbage: Add delay after phy reset
To: barebox@lists.infradead.org

Since we have phylib the phy won't be detected after poweron. It seems
the phy needs some time after reset.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 8c6bba5..3a8e5ea 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -227,9 +227,11 @@ static void babbage_power_init(void)
 	val = 0x49249;
 	mc13xxx_reg_write(mc13xxx, MC13892_REG_MODE_1, val);
 
-	udelay(500);
+	udelay(200);
 
 	gpio_set_value(GPIO_LAN8700_RESET, 1);
+
+	mdelay(50);
 }
 
 static int f3s_devices_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
