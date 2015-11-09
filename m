Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22c.google.com ([2607:f8b0:400e:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZvaB2-0000p0-3f
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 00:19:16 +0000
Received: by pacdm15 with SMTP id dm15so155343613pac.3
 for <barebox@lists.infradead.org>; Sun, 08 Nov 2015 16:18:55 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  8 Nov 2015 16:18:47 -0800
Message-Id: <1447028327-20277-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1447028327-20277-1-git-send-email-andrew.smirnov@gmail.com>
References: <1447028327-20277-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] i2c-imx: Use xzalloc instead of kzalloc
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Driver's private data structure is allocated with kzalloc without any
code to check for kzalloc's possible failure. Fix that by replaceing
kzalloc with xzalloc.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/i2c/busses/i2c-imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 7df4a26..47a50db 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -590,7 +590,7 @@ static int __init i2c_fsl_probe(struct device_d *pdev)

 	pdata = pdev->platform_data;

-	i2c_fsl = kzalloc(sizeof(struct fsl_i2c_struct), GFP_KERNEL);
+	i2c_fsl = xzalloc(sizeof(struct fsl_i2c_struct), GFP_KERNEL);

 #ifdef CONFIG_COMMON_CLK
 	i2c_fsl->clk = clk_get(pdev, NULL);
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
