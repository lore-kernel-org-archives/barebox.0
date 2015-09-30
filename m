Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22d.google.com ([2607:f8b0:4002:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhObm-0002EW-SU
 for barebox@lists.infradead.org; Wed, 30 Sep 2015 21:08:15 +0000
Received: by ykdt18 with SMTP id t18so58465493ykd.3
 for <barebox@lists.infradead.org>; Wed, 30 Sep 2015 14:07:53 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 30 Sep 2015 18:07:42 -0300
Message-Id: <1443647262-21526-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH] video: imx-hdmi: Remove unused 'regmap' structure
To: s.hauer@pengutronix.de
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

From: Fabio Estevam <fabio.estevam@freescale.com>

As regmap is not used in Barebox we can remove this field
from the imx_hdmi struct.

Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
---
 drivers/video/imx-ipu-v3/imx-hdmi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
index f5a2e3c..b87aaef 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.c
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -133,7 +133,6 @@ struct imx_hdmi {
 
 	bool phy_enabled;
 
-	struct regmap *regmap;
 	struct device_node *ddc_node;;
 	void __iomem *regs;
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
