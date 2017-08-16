Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhvNu-0003et-JQ
 for barebox@lists.infradead.org; Wed, 16 Aug 2017 10:17:12 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Wed, 16 Aug 2017 12:16:44 +0200
Message-Id: <20170816101644.20022-1-bst@pengutronix.de>
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
Subject: [PATCH] i2c: mv64xxx: add timeout waiting for bus ready
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

This prevents barebox hanging e.g. in case the i2c clock is accidentally
connected to GND.

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 drivers/i2c/busses/i2c-mv64xxx.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
index fd1665bebb..f54d81608f 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -37,6 +37,8 @@
 #define	REG_CONTROL_TWSIEN			0x00000040
 #define	REG_CONTROL_INTEN			0x00000080
 
+#define MV46XXX_I2C_TIMEOUT			(100 * MSECOND) /* transfer timeout */
+
 /* Ctlr status values */
 #define	STATUS_MAST_START			0x08
 #define	STATUS_MAST_REPEAT_START		0x10
@@ -421,10 +423,11 @@ mv64xxx_i2c_do_action(struct mv64xxx_i2c_data *drv_data)
  *
  *****************************************************************************
  */
-static void
+static int
 mv64xxx_i2c_wait_for_completion(struct mv64xxx_i2c_data *drv_data)
 {
 	u32 status;
+	uint64_t start = get_time_ns();
 	do {
 		if (mv64xxx_read(drv_data, drv_data->reg_offsets.control) &
 							REG_CONTROL_IFLG) {
@@ -432,6 +435,11 @@ mv64xxx_i2c_wait_for_completion(struct mv64xxx_i2c_data *drv_data)
 					      drv_data->reg_offsets.status);
 			mv64xxx_i2c_fsm(drv_data, status);
 			mv64xxx_i2c_do_action(drv_data);
+		} else {
+			if (is_timeout(start, MV46XXX_I2C_TIMEOUT)) {
+				dev_warn(&drv_data->adapter.dev, "timeout waiting for bus ready\n");
+				return -ETIMEDOUT;
+			}
 		}
 		if (drv_data->rc) {
 			drv_data->state = STATE_IDLE;
@@ -440,6 +448,8 @@ mv64xxx_i2c_wait_for_completion(struct mv64xxx_i2c_data *drv_data)
 			drv_data->block = false;
 		}
 	} while (drv_data->block);
+
+	return 0;
 }
 
 /*
@@ -453,7 +463,7 @@ static int
 mv64xxx_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
 {
 	struct mv64xxx_i2c_data *drv_data = container_of(adap, struct mv64xxx_i2c_data, adapter);
-	int ret = num;
+	int ret;
 
 	BUG_ON(drv_data->msgs != NULL);
 
@@ -463,15 +473,15 @@ mv64xxx_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
 	drv_data->send_stop = (num == 1);
 	drv_data->block = true;
 	mv64xxx_i2c_send_start(drv_data);
-	mv64xxx_i2c_wait_for_completion(drv_data);
+	ret = mv64xxx_i2c_wait_for_completion(drv_data);
 
-	if (drv_data->rc < 0)
+	if (!ret && drv_data->rc < 0)
 		ret = drv_data->rc;
 
 	drv_data->num_msgs = 0;
 	drv_data->msgs = NULL;
 
-	return ret;
+	return (ret < 0) ? ret : num;
 }
 
 /*
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
