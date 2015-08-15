Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x230.google.com ([2607:f8b0:400e:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQea0-0002qA-Cv
 for barebox@lists.infradead.org; Sat, 15 Aug 2015 16:45:12 +0000
Received: by pabyb7 with SMTP id yb7so78543402pab.0
 for <barebox@lists.infradead.org>; Sat, 15 Aug 2015 09:44:50 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 15 Aug 2015 09:44:31 -0700
Message-Id: <1439657071-26736-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2] i2c-imx: Add missing preporcessor directives
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On non-PowerPC platforms call to i2c_fsl_set_clk() will try to obtain
I2C clock freqency from i2c_fsl->clk, however that field would not be
initialized if CONFIG_COMMON_CLK is not set. This patch makes sure
that i2c_fls_set_clk() is a no-op on non-PPC targets when
CONFIG_COMMON_CLK is not set

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/i2c/busses/i2c-imx.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 4cd03e1..84c6e16 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -338,6 +338,7 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 	i2c_fsl->dfsrr = dfsr;
 }
 #else
+#if defined (CONFIG_COMMON_CLK)
 static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 			    unsigned int rate)
 {
@@ -374,6 +375,11 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 	dev_dbg(&i2c_fsl->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
 		__func__, i2c_clk_div[i][1], i2c_clk_div[i][0]);
 }
+#else
+static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
+			    unsigned int rate)
+{}
+#endif
 #endif

 static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
