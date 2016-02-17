Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x236.google.com ([2607:f8b0:400e:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwR-0003nH-2O
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:08 +0000
Received: by mail-pa0-x236.google.com with SMTP id yy13so1443864pab.3
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:10 -0800
Message-Id: <1455672559-25061-10-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/18] fec_imx: Deallocate I/O resources if probe fails
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add a proper check for I/O memory resource allocation failure and
replace dev_request_mem_region with dev_request_mem_resource so it would
be possible to correctly deallocate device's I/O resources when probe
fails.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index f413acd..c059882 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -686,6 +686,7 @@ static int fec_probe(struct device_d *dev)
 	enum fec_type type;
 	int phy_reset;
 	u32 msec = 1;
+	struct resource *res;
 
 	ret = dev_get_drvdata(dev, (const void **)&type);
 	if (ret)
@@ -714,7 +715,12 @@ static int fec_probe(struct device_d *dev)
 	if (ret < 0)
 		goto put_clk;
 
-	fec->regs = dev_request_mem_region(dev, 0);
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res)) {
+		ret = PTR_ERR(res);
+		goto disable_clk;
+	}
+	fec->regs = IOMEM(res->start);
 
 	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
 	if (gpio_is_valid(phy_reset)) {
@@ -722,11 +728,11 @@ static int fec_probe(struct device_d *dev)
 
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
@@ -766,7 +772,7 @@ static int fec_probe(struct device_d *dev)
 	}
 
 	if (ret)
-		goto disable_clk;
+		goto release_res;
 
 	fec_init(edev);
 
@@ -786,6 +792,8 @@ static int fec_probe(struct device_d *dev)
 
 	return 0;
 
+release_res:
+	release_region(res);
 disable_clk:
 	clk_disable(fec->clk);
 put_clk:
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
