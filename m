Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4A3l-000643-KA
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 17:19:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2016 18:19:04 +0100
Message-Id: <20161108171907.20726-5-s.hauer@pengutronix.de>
In-Reply-To: <20161108171907.20726-1-s.hauer@pengutronix.de>
References: <20161108171907.20726-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] pinmux: imx-iomux-v3: Add i.MX6ul support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/imx-iomux-v3.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 92fac18..4b3f033 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -207,6 +207,8 @@ static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6sx-iomuxc",
 	}, {
+		.compatible = "fsl,imx6ul-iomuxc",
+	}, {
 		/* sentinel */
 	}
 };
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
