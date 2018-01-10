Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZJKw-0001pQ-Dd
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 16:34:47 +0000
Received: by mail-pg0-x242.google.com with SMTP id f14so8642655pga.10
 for <barebox@lists.infradead.org>; Wed, 10 Jan 2018 08:34:36 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 10 Jan 2018 08:34:30 -0800
Message-Id: <20180110163430.17695-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] Revert "mci: imx-esdhc: Enable clock"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This reverts commit 61c6c24958934b6b226aa37b3b3a2c089189f52b which is
pretty much a duplicate of:

a97345102 "i.MX: esdhc: Enable host->clk during initialization"

Since we don't need to enable that clock twice reverse the former and
keep the latter.
---
 drivers/mci/imx-esdhc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 55e8371dd..b91f94b99 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -630,7 +630,6 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host->clk = clk_get(dev, "per");
 	if (IS_ERR(host->clk))
 		return PTR_ERR(host->clk);
-	clk_enable(host->clk);
 
 	ret = clk_enable(host->clk);
 	if (ret) {
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
