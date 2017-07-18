Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXSOx-00075T-23
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 13:19:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dXSOb-0006LK-Jk
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 15:18:37 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 18 Jul 2017 15:18:35 +0200
Message-Id: <20170718131837.26877-2-l.stach@pengutronix.de>
In-Reply-To: <20170718131837.26877-1-l.stach@pengutronix.de>
References: <20170718131837.26877-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: rdu2: remove USB VBUS GPIO init
To: barebox@lists.infradead.org

This is handled by a fixed regulator in the upstream DT.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index ee04517d2985..4176ca79353d 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -122,11 +122,6 @@ static const struct gpio rdu2_front_panel_usb_gpios[] = {
 		.label = "usb-mode1",
 	},
 	{
-		.gpio = IMX_GPIO_NR(3, 22),
-		.flags = GPIOF_OUT_INIT_LOW,
-		.label = "usb-pwr-ctrl-enn",
-	},
-	{
 		.gpio = IMX_GPIO_NR(3, 23),
 		.flags = GPIOF_OUT_INIT_HIGH,
 		.label = "usb-mode2",
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
