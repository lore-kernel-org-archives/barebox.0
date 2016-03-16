Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22d.google.com ([2607:f8b0:400e:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag2EB-0007ce-DF
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:32 +0000
Received: by mail-pf0-x22d.google.com with SMTP id x3so56148371pfb.1
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:38 -0700
Message-Id: <1458099232-9050-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/16] fec_imx: Deallocate clocks when probe fails
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index de31ec4..18a02e0 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -680,7 +680,9 @@ static int fec_probe(struct device_d *dev)
 		goto err_free;
 	}
 
-	clk_enable(fec->clk);
+	ret = clk_enable(fec->clk);
+	if (ret < 0)
+		goto put_clk;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
@@ -693,11 +695,11 @@ static int fec_probe(struct device_d *dev)
 
 		ret = gpio_request(phy_reset, "phy-reset");
 		if (ret)
-			goto err_free;
+			goto disable_clk;
 
 		ret = gpio_direction_output(phy_reset, 0);
 		if (ret)
-			goto err_free;
+			goto disable_clk;
 
 		mdelay(msec);
 		gpio_set_value(phy_reset, 1);
@@ -737,7 +739,7 @@ static int fec_probe(struct device_d *dev)
 	}
 
 	if (ret)
-		goto err_free;
+		goto disable_clk;
 
 	fec_init(edev);
 
@@ -757,6 +759,10 @@ static int fec_probe(struct device_d *dev)
 
 	return 0;
 
+disable_clk:
+	clk_disable(fec->clk);
+put_clk:
+	clk_put(fec->clk);
 err_free:
 	free(fec);
 	return ret;
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
