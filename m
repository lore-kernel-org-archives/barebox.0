Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4R5-0003RG-0w
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:43 +0000
Received: by mail-pa0-x244.google.com with SMTP id hh10so1403978pac.0
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:57 -0700
Message-Id: <1475505657-898-21-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 20/20] imx-esdhc: Request "per" clock explicitly
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Calling clk_get() with NULL as the second argument will give us "ipg"
clock as a result. The actual clock feeding into the peripheral is "per"
and, depending on the SoC, "ipg" and "per" may be separated by a clock
divider, so querying "ipg"'s rate may result in rate that does not
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
