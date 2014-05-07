Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whwqk-0008K9-Sp
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:05:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 10:04:40 +0200
Message-Id: <1399449884-19089-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
References: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/14] video: i.MX IPUv3: Print error as string
To: barebox@lists.infradead.org

And add a missing newline.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/ipu-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index ffd6ec1..5f3b0bb 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -774,7 +774,7 @@ static int ipu_probe(struct device_d *dev)
 	ipu->clk = clk_get(dev, "bus");
 	if (IS_ERR(ipu->clk)) {
 		ret = PTR_ERR(ipu->clk);
-		dev_err(dev, "clk_get failed with %d", ret);
+		dev_err(dev, "clk_get failed: %s\n", strerror(-ret));
 		return ret;
 	}
 
@@ -788,7 +788,7 @@ static int ipu_probe(struct device_d *dev)
 
 	ret = devtype->reset(ipu);
 	if (ret) {
-		dev_err(dev, "failed to reset: %d\n", ret);
+		dev_err(dev, "failed to reset: %s\n", strerror(-ret));
 		goto out_failed_reset;
 	}
 
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
