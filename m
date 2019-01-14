Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj5JX-0006yz-CE
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 16:42:27 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gj5JU-0007Zj-4v
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 17:42:12 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 14 Jan 2019 17:42:10 +0100
Message-Id: <20190114164211.10871-7-l.stach@pengutronix.de>
In-Reply-To: <20190114164211.10871-1-l.stach@pengutronix.de>
References: <20190114164211.10871-1-l.stach@pengutronix.de>
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
Subject: [PATCH 7/8] pinctrl: imx-v3: imx8mq does use the old binding
To: barebox@lists.infradead.org

The upstream discussion concluded on using the same binding as
on previous i.MX SoCs.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/pinctrl/imx-iomux-v3.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index b2a67fcccc5f..5fadc84151eb 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -220,9 +220,6 @@ static struct imx_iomux_v3_data imx_iomux_imx7_lpsr_data = {
 	.flags = ZERO_OFFSET_VALID | IMX7_PINMUX_LPSR,
 };
 
-static struct imx_iomux_v3_data imx_iomux_imx8_data = {
-	.flags = SHARE_CONF,
-};
 
 static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 	{
@@ -250,7 +247,6 @@ static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 		.data = &imx_iomux_imx7_lpsr_data,
 	}, {
 		.compatible = "fsl,imx8mq-iomuxc",
-		.data = &imx_iomux_imx8_data,
 	}, {
 		/* sentinel */
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
