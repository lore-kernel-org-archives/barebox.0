Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgwMQ-0002iP-5h
 for barebox@lists.infradead.org; Thu, 23 Feb 2017 16:35:20 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Thu, 23 Feb 2017 17:34:50 +0100
Message-Id: <20170223163450.6611-2-bst@pengutronix.de>
In-Reply-To: <20170223163450.6611-1-bst@pengutronix.de>
References: <20170223163450.6611-1-bst@pengutronix.de>
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
Subject: [PATCH 2/2] i2c: mv64xxx: simplify mv64xxx_i2c_wait_for_completion
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

Two nested while loops are not necessary here, so integrate the read,
i2c_fsm and i2c_do_action calls into mv64xxx_i2c_wait_for_completion()
and remove the obsolete interrupt remains.

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 drivers/i2c/busses/i2c-mv64xxx.c | 29 ++++++++---------------------
 1 file changed, 8 insertions(+), 21 deletions(-)

diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
index 45d5a2b6dc..caece3b78e 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -414,26 +414,6 @@ mv64xxx_i2c_do_action(struct mv64xxx_i2c_data *drv_data)
 	}
 }
 
-static void mv64xxx_i2c_intr(struct mv64xxx_i2c_data *drv_data)
-{
-	u32 status;
-	uint64_t start;
-
-	start = get_time_ns();
-
-	while (mv64xxx_read(drv_data, drv_data->reg_offsets.control) &
-						REG_CONTROL_IFLG) {
-		status = mv64xxx_read(drv_data, drv_data->reg_offsets.status);
-		mv64xxx_i2c_fsm(drv_data, status);
-		mv64xxx_i2c_do_action(drv_data);
-
-		if (is_timeout_non_interruptible(start, 3 * SECOND)) {
-			drv_data->rc = -EIO;
-			break;
-		}
-	}
-}
-
 /*
  *****************************************************************************
  *
@@ -444,8 +424,15 @@ static void mv64xxx_i2c_intr(struct mv64xxx_i2c_data *drv_data)
 static void
 mv64xxx_i2c_wait_for_completion(struct mv64xxx_i2c_data *drv_data)
 {
+	u32 status;
 	do {
-		mv64xxx_i2c_intr(drv_data);
+		if (mv64xxx_read(drv_data, drv_data->reg_offsets.control) &
+							REG_CONTROL_IFLG) {
+			status = mv64xxx_read(drv_data,
+					      drv_data->reg_offsets.status);
+			mv64xxx_i2c_fsm(drv_data, status);
+			mv64xxx_i2c_do_action(drv_data);
+		}
 		if (drv_data->rc) {
 			drv_data->state = STATE_IDLE;
 			dev_err(&drv_data->adapter.dev, "I2C bus error\n");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
