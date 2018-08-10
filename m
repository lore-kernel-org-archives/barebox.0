Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foCXB-0006yM-Df
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 18:53:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id k21-v6so4919830pff.11
 for <barebox@lists.infradead.org>; Fri, 10 Aug 2018 11:53:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 10 Aug 2018 11:52:55 -0700
Message-Id: <20180810185255.8387-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] i.MX: i2c: Fix build error in debug output code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Looks like that particular chunk of the code have not been built in a
while and bitrotted. Change function parameters appropriately to avoid
breaking the build.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/i2c/busses/i2c-imx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 4ff4f5c2a..67937da73 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -200,13 +200,13 @@ static void i2c_fsl_dump_reg(struct i2c_adapter *adapter)
 	reg_cr = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 	reg_sr = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2SR);
 
-	dev_dbg(adapter->dev, "CONTROL:\t"
+	dev_dbg(&adapter->dev, "CONTROL:\t"
 		"IEN =%d, IIEN=%d, MSTA=%d, MTX =%d, TXAK=%d, RSTA=%d\n",
 		(reg_cr & I2CR_IEN  ? 1 : 0), (reg_cr & I2CR_IIEN ? 1 : 0),
 		(reg_cr & I2CR_MSTA ? 1 : 0), (reg_cr & I2CR_MTX  ? 1 : 0),
 		(reg_cr & I2CR_TXAK ? 1 : 0), (reg_cr & I2CR_RSTA ? 1 : 0));
 
-	dev_dbg(adapter->dev, "STATUS:\t"
+	dev_dbg(&adapter->dev, "STATUS:\t"
 		"ICF =%d, IAAS=%d, IB  =%d, IAL =%d, SRW =%d, IIF =%d, RXAK=%d\n",
 		(reg_sr & I2SR_ICF  ? 1 : 0), (reg_sr & I2SR_IAAS ? 1 : 0),
 		(reg_sr & I2SR_IBB  ? 1 : 0), (reg_sr & I2SR_IAL  ? 1 : 0),
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
