Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0jkM-000203-S0
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 09:18:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 10:18:39 +0100
Message-Id: <20190304091843.17839-7-s.hauer@pengutronix.de>
In-Reply-To: <20190304091843.17839-1-s.hauer@pengutronix.de>
References: <20190304091843.17839-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/10] i2c: i.MX: stop after read only in last transfer of a
 message
To: Barebox List <barebox@lists.infradead.org>

Following the Linux driver the controller should be stopped in the
read transfer path only after the last transfer of a message, but
not when other transfers of the same message are following. Implement
this behaviour for the barebox driver aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index e169feb3fc..c903d8dfd1 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -469,7 +469,8 @@ static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msg)
 	return 0;
 }
 
-static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msg)
+static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msg,
+			bool is_last)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
 	int i, result;
@@ -500,7 +501,7 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msg)
 		if (result)
 			return result;
 
-		if (i == (msg->len - 1)) {
+		if (is_last && i == msg->len - 1) {
 			i2c_fsl_stop(adapter);
 		} else if (i == (msg->len - 2)) {
 			temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
@@ -547,7 +548,7 @@ static int i2c_fsl_xfer(struct i2c_adapter *adapter,
 
 		/* write/read data */
 		if (msgs[i].flags & I2C_M_RD)
-			result = i2c_fsl_read(adapter, &msgs[i]);
+			result = i2c_fsl_read(adapter, &msgs[i], i == num - 1);
 		else
 			result = i2c_fsl_write(adapter, &msgs[i]);
 		if (result)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
