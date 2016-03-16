Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22f.google.com ([2607:f8b0:400e:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag2EC-0007co-4z
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:33 +0000
Received: by mail-pf0-x22f.google.com with SMTP id 124so56349658pfg.0
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:39 -0700
Message-Id: <1458099232-9050-4-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/16] fec_imx: Deallocate I/O resources if probe fails
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add a proper check for I/O memory resource allocation failure and
replace dev_request_mem_region with dev_request_mem_resource so it would
be possible to correctly deallocate device's I/O resources when probe
fails.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 18a02e0..da4eb55 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -685,8 +685,10 @@ static int fec_probe(struct device_d *dev)
 		goto put_clk;
 
 	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
+	if (IS_ERR(iores)) {
+		ret = PTR_ERR(iores);
+		goto disable_clk;
+	}
 	fec->regs = IOMEM(iores->start);
 
 	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
@@ -695,11 +697,11 @@ static int fec_probe(struct device_d *dev)
 
 		ret = gpio_request(phy_reset, "phy-reset");
 		if (ret)
-			goto disable_clk;
+			goto release_res;
 
 		ret = gpio_direction_output(phy_reset, 0);
 		if (ret)
-			goto disable_clk;
+			goto release_res;
 
 		mdelay(msec);
 		gpio_set_value(phy_reset, 1);
@@ -739,7 +741,7 @@ static int fec_probe(struct device_d *dev)
 	}
 
 	if (ret)
-		goto disable_clk;
+		goto release_res;
 
 	fec_init(edev);
 
@@ -759,6 +761,8 @@ static int fec_probe(struct device_d *dev)
 
 	return 0;
 
+release_res:
+	release_region(iores);
 disable_clk:
 	clk_disable(fec->clk);
 put_clk:
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
