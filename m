Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqq8-0000pC-I5
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 09:12:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Mar 2018 10:11:45 +0100
Message-Id: <20180319091146.4112-14-s.hauer@pengutronix.de>
In-Reply-To: <20180319091146.4112-1-s.hauer@pengutronix.de>
References: <20180319091146.4112-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/14] gpio: i.MX: Add i.MX8mq support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpio-imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index d8bcea2234..d618e60119 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -190,6 +190,9 @@ static __maybe_unused struct of_device_id imx_gpio_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6q-gpio",
 		.data = &regs_imx31,
+	},  {
+		.compatible = "fsl,imx8mq-gpio",
+		.data = &regs_imx31,
 	}, {
 		/* sentinel */
 	}
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
