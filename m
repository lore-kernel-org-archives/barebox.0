Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4VX0-0002vC-9o
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 16:15:23 +0000
Received: by mail-pf0-x242.google.com with SMTP id 144so793401pfv.0
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 08:15:01 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Nov 2016 08:14:09 -0800
Message-Id: <1478708056-7875-22-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 21/28] i.MX: esdhc: Request "per" clock explicitly
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Calling clk_get() with NULL as the second argument will give us "ipg"
clock as a result. The actual clock feeding into the peripheral is "per"
and, depending on the SoC, "ipg" and "per" may be separated by a clock
divider, so querying "ipg"'s rate may not result in rate that does not
represent the actual peripheral clock rate.

Change the code to request "per" as our peripheral clock to avoid
aforementioned problem.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 764a106..d72e3f8 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -627,7 +627,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	if (!host->socdata)
 		return -EINVAL;
 
-	host->clk = clk_get(dev, NULL);
+	host->clk = clk_get(dev, "per");
 	if (IS_ERR(host->clk))
 		return PTR_ERR(host->clk);
 
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
