Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f2Ra0-0006X7-NF
 for barebox@lists.infradead.org; Sun, 01 Apr 2018 01:14:47 +0000
Received: by mail-pf0-x241.google.com with SMTP id c78so7645391pfj.6
 for <barebox@lists.infradead.org>; Sat, 31 Mar 2018 18:14:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 31 Mar 2018 18:13:57 -0700
Message-Id: <20180401011358.11621-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180401011358.11621-1-andrew.smirnov@gmail.com>
References: <20180401011358.11621-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] dma: apbh: Enable clock as a part of probing
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Enable clock as a part of probing in order to avoid problems on SoCs
that do not have this block ungated out of reset (e.g. i.MX7).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/dma/apbh_dma.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index b84c0f798..79f25109f 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -17,6 +17,7 @@
 
 #include <dma/apbh-dma.h>
 #include <stmp-device.h>
+#include <linux/clk.h>
 #include <linux/list.h>
 #include <linux/err.h>
 #include <common.h>
@@ -55,6 +56,7 @@ enum mxs_dma_id {
 
 struct apbh_dma {
 	void __iomem *regs;
+	struct clk *clk;
 	enum mxs_dma_id id;
 };
 
@@ -606,6 +608,17 @@ static int apbh_dma_probe(struct device_d *dev)
 
 	apbh->id = id;
 
+	apbh->clk = clk_get(dev, NULL);
+	if (IS_ERR(apbh->clk))
+		return PTR_ERR(apbh->clk);
+
+	ret = clk_enable(apbh->clk);
+	if (ret) {
+		dev_err(dev, "Failed to enable clock: %s\n",
+			strerror(ret));
+		return ret;
+	}
+
 	ret = stmp_reset_block(apbh->regs, 0);
 	if (ret)
 		return ret;
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
