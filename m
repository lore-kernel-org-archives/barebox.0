Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tz3tq-0004lv-TA
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 11:26:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 26 Jan 2013 12:26:16 +0100
Message-Id: <1359199576-27947-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM AT91 pm9263: Fix phy address
To: barebox@lists.infradead.org

The ethernet phy address is wrong so no phy is found. Autodetect it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pm9263/init.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index f7ef148..0be5cf5 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -90,7 +90,7 @@ static void pm_add_device_nand(void)
 
 static struct at91_ether_platform_data macb_pdata = {
 	.is_rmii = 1,
-	.phy_addr = 0,
+	.phy_addr = -1,
 };
 
 static void pm9263_phy_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
