Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x232.google.com ([2607:f8b0:400e:c02::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQRUL-00012G-KG
 for barebox@lists.infradead.org; Sat, 15 Aug 2015 02:46:30 +0000
Received: by pdrg1 with SMTP id g1so36823914pdr.2
 for <barebox@lists.infradead.org>; Fri, 14 Aug 2015 19:46:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 14 Aug 2015 19:45:51 -0700
Message-Id: <1439606751-15327-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] i2c-imx: Add missing preporcessor directives
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On non-PowerPC platforms call to i2c_fsl_set_clk() will try to obtain
I2C clock freqency from i2c_fsl->clk, however that field would not be
initialized if CONFIG_COMMON_CLK is not set. This patch add
conditional compilation directives to make sure that i2c_fsl_set_clk()
is not called if CONFIG_COMMON_CLK is not set.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/i2c/busses/i2c-imx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 4cd03e1..4abb710 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -557,11 +557,13 @@ static int __init i2c_fsl_probe(struct device_d *pdev)

 	i2c_fsl->dfsrr = -1;

+#if defined(CONFIG_COMMON_CLK) || defined(CONFIG_PPC)
 	/* Set up clock divider */
 	if (pdata && pdata->bitrate)
 		i2c_fsl_set_clk(i2c_fsl, pdata->bitrate);
 	else
 		i2c_fsl_set_clk(i2c_fsl, FSL_I2C_BIT_RATE);
+#endif

 	/* Set up chip registers to defaults */
 	writeb(0, i2c_fsl->base + FSL_I2C_I2CR);
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
