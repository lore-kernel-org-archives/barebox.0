Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGUx0-0005Ez-2O
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 18:03:46 +0000
Received: by mail-pf0-x241.google.com with SMTP id y68so4710019pfb.1
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2016 10:03:25 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Dec 2016 10:02:48 -0800
Message-Id: <1481565788-9115-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
References: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 01/21] i.MX: esdhc: Enable host->clk during initialization
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
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
