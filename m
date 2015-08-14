Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22f.google.com ([2607:f8b0:400e:c02::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQLeq-0000j1-PP
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 20:32:57 +0000
Received: by pdco4 with SMTP id o4so34842644pdc.3
 for <barebox@lists.infradead.org>; Fri, 14 Aug 2015 13:32:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 14 Aug 2015 13:31:59 -0700
Message-Id: <1439584319-4068-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1439584319-4068-1-git-send-email-andrew.smirnov@gmail.com>
References: <1439584319-4068-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] i2c-imx: Fix memory leak in i2c_fsl_probe()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All points of failure in the code of i2c_fsl_probe() happen after the
allocation of i2c_fsl, so all of them have to perform necessary
cleanup setups in case of failure.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/i2c/busses/i2c-imx.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 714e83c..4cd03e1 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -539,8 +539,10 @@ static int __init i2c_fsl_probe(struct device_d *pdev)

 #ifdef CONFIG_COMMON_CLK
 	i2c_fsl->clk = clk_get(pdev, NULL);
-	if (IS_ERR(i2c_fsl->clk))
-		return PTR_ERR(i2c_fsl->clk);
+	if (IS_ERR(i2c_fsl->clk)) {
+		ret = PTR_ERR(i2c_fsl->clk);
+		goto fail;
+	}
 #endif
 	/* Setup i2c_fsl driver structure */
 	i2c_fsl->adapter.master_xfer = i2c_fsl_xfer;
@@ -548,8 +550,10 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 	i2c_fsl->adapter.dev.parent = pdev;
 	i2c_fsl->adapter.dev.device_node = pdev->device_node;
 	i2c_fsl->base = dev_request_mem_region(pdev, 0);
-	if (IS_ERR(i2c_fsl->base))
-		return PTR_ERR(i2c_fsl->base);
+	if (IS_ERR(i2c_fsl->base)) {
+		ret = PTR_ERR(i2c_fsl->base);
+		goto fail;
+	}

 	i2c_fsl->dfsrr = -1;

--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
