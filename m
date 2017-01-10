Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy3j-0001Bm-1W
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:08 +0000
Received: by mail-pf0-x242.google.com with SMTP id 127so29396550pfg.0
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:38 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:08:54 -0800
Message-Id: <20170110150913.31416-2-andrew.smirnov@gmail.com>
In-Reply-To: <20170110150913.31416-1-andrew.smirnov@gmail.com>
References: <20170110150913.31416-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 01/20] i.MX: esdhc: Enable host->clk during initialization
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index d72e3f8..40a086b 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -631,6 +631,13 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	if (IS_ERR(host->clk))
 		return PTR_ERR(host->clk);
 
+	ret = clk_enable(host->clk);
+	if (ret) {
+		dev_err(dev, "Failed to enable clock: %s\n",
+			strerror(ret));
+		return ret;
+	}
+
 	host->dev = dev;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
