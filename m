Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgwMQ-0002iO-5v
 for barebox@lists.infradead.org; Thu, 23 Feb 2017 16:35:24 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Thu, 23 Feb 2017 17:34:49 +0100
Message-Id: <20170223163450.6611-1-bst@pengutronix.de>
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
Subject: [PATCH 1/2] i2c: mv64xxx: add software delays
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

As stated in Marvell's Functional Specifications in MV-S107021-U0 Rev. A
on page 420 ff. software delays are needed. "SW delay represent a delay
of at least 2 internal clock cycles". These delays are hereby
implemented.

The original kernel driver compensates the needed software delays with
the time the interrupts take.

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 drivers/i2c/busses/i2c-mv64xxx.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
index 9b9e6c953f..45d5a2b6dc 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -270,6 +270,7 @@ mv64xxx_i2c_fsm(struct mv64xxx_i2c_data *drv_data, u32 status)
 		}
 		/* FALLTHRU */
 	case STATUS_MAST_RD_DATA_ACK: /* 0x50 */
+		udelay(2);
 		if (status != STATUS_MAST_RD_DATA_ACK)
 			drv_data->action = ACTION_CONTINUE;
 		else {
@@ -280,6 +281,7 @@ mv64xxx_i2c_fsm(struct mv64xxx_i2c_data *drv_data, u32 status)
 
 		if (drv_data->bytes_left == 1)
 			drv_data->cntl_bits &= ~REG_CONTROL_ACK;
+			udelay(2);
 		break;
 
 	case STATUS_MAST_RD_DATA_NO_ACK: /* 0x58 */
@@ -318,6 +320,8 @@ static void mv64xxx_i2c_send_start(struct mv64xxx_i2c_data *drv_data)
 	mv64xxx_i2c_prepare_for_io(drv_data, drv_data->msgs);
 	mv64xxx_write(drv_data, drv_data->cntl_bits | REG_CONTROL_START,
 		drv_data->reg_offsets.control);
+
+	udelay(2);
 }
 
 static void
@@ -333,7 +337,7 @@ mv64xxx_i2c_do_action(struct mv64xxx_i2c_data *drv_data)
 		mv64xxx_i2c_send_start(drv_data);
 
 		if (drv_data->errata_delay)
-			udelay(5);
+			udelay(3);
 
 		/*
 		 * We're never at the start of the message here, and by this
@@ -349,6 +353,7 @@ mv64xxx_i2c_do_action(struct mv64xxx_i2c_data *drv_data)
 		break;
 
 	case ACTION_SEND_ADDR_1:
+		udelay(2);
 		mv64xxx_write(drv_data, drv_data->addr1,
 			drv_data->reg_offsets.data);
 		mv64xxx_write(drv_data, drv_data->cntl_bits,
@@ -360,9 +365,11 @@ mv64xxx_i2c_do_action(struct mv64xxx_i2c_data *drv_data)
 			drv_data->reg_offsets.data);
 		mv64xxx_write(drv_data, drv_data->cntl_bits,
 			drv_data->reg_offsets.control);
+		udelay(2);
 		break;
 
 	case ACTION_SEND_DATA:
+		udelay(2);
 		mv64xxx_write(drv_data, drv_data->msg->buf[drv_data->byte_posn++],
 			drv_data->reg_offsets.data);
 		mv64xxx_write(drv_data, drv_data->cntl_bits,
@@ -383,8 +390,9 @@ mv64xxx_i2c_do_action(struct mv64xxx_i2c_data *drv_data)
 		mv64xxx_write(drv_data, drv_data->cntl_bits | REG_CONTROL_STOP,
 			drv_data->reg_offsets.control);
 		drv_data->block = false;
+		udelay(2);
 		if (drv_data->errata_delay)
-			udelay(5);
+			udelay(3);
 
 		break;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
