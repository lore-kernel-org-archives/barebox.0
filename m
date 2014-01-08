Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0lwh-0003YJ-Bh
 for barebox@lists.infradead.org; Wed, 08 Jan 2014 05:44:53 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed,  8 Jan 2014 09:44:16 +0400
Message-Id: <1389159856-13909-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1389159856-13909-1-git-send-email-shc_work@mail.ru>
References: <1389159856-13909-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] ARM: freescale-mx51-pdk: Remove FEC GPIO handling
To: barebox@lists.infradead.org

Reset GPIO now handled from DTS, no need to touch this in the board.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/freescale-mx51-pdk/board.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 379313e..711172d 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -141,21 +141,14 @@ static void babbage_power_init(void)
 	/* Configure VGEN3 and VCAM regulators to use external PNP */
 	val = 0x208;
 	mc13xxx_reg_write(mc13xxx, MC13892_REG_MODE_1, val);
-	udelay(200);
-#define GPIO_LAN8700_RESET	(1 * 32 + 14)
 
-	/* Reset the ethernet controller over GPIO */
-	gpio_direction_output(GPIO_LAN8700_RESET, 0);
+	udelay(200);
 
 	/* Enable VGEN3, VCAM, VAUDIO, VVIDEO, VSD regulators */
 	val = 0x49249;
 	mc13xxx_reg_write(mc13xxx, MC13892_REG_MODE_1, val);
 
 	udelay(200);
-
-	gpio_set_value(GPIO_LAN8700_RESET, 1);
-
-	mdelay(50);
 }
 
 extern char flash_header_imx51_babbage_start[];
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
