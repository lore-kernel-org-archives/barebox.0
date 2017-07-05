Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x235.google.com ([2a00:1450:4010:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSnv3-0008Jx-07
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 17:16:56 +0000
Received: by mail-lf0-x235.google.com with SMTP id b207so138232214lfg.2
 for <barebox@lists.infradead.org>; Wed, 05 Jul 2017 10:16:37 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Wed,  5 Jul 2017 20:18:10 +0300
Message-Id: <20170705171813.17527-8-andrey.gusakov@cogentembedded.com>
In-Reply-To: <20170705171813.17527-1-andrey.gusakov@cogentembedded.com>
References: <20170705171813.17527-1-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH v1 07/10] video: tc358767: optimize aux i2c bus checks
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com

Move common check to tc_aux_i2c_xfer
Remove duplicated check from tc_aux_i2c_write

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/video/tc358767.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index c2222d916..cd56bb4f4 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -418,9 +418,6 @@ static int tc_aux_i2c_read(struct tc_data *tc, struct i2c_msg *msg)
 	int ret;
 	u32 tmp;
 
-	if (msg->flags & I2C_M_DATA_ONLY)
-		return -EINVAL;
-
 	ret = tc_aux_wait_busy(tc, 100);
 	if (ret)
 		goto err;
@@ -459,14 +456,6 @@ static int tc_aux_i2c_write(struct tc_data *tc, struct i2c_msg *msg)
 	int ret;
 	u32 tmp = 0;
 
-	if (msg->flags & I2C_M_DATA_ONLY)
-		return -EINVAL;
-
-	if (msg->len > 16) {
-		dev_err(tc->dev, "this bus support max 16 bytes per transfer\n");
-		return -EINVAL;
-	}
-
 	ret = tc_aux_wait_busy(tc, 100);
 	if (ret)
 		goto err;
@@ -512,6 +501,8 @@ static int tc_aux_i2c_xfer(struct i2c_adapter *adapter,
 			dev_err(tc->dev, "this bus support max 16 bytes per transfer\n");
 			return -EINVAL;
 		}
+		if (msgs[i].flags & I2C_M_DATA_ONLY)
+			return -EINVAL;
 	}
 
 	/* read/write data */
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
