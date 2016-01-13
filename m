Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004JB-Q8
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:32 +0100
Message-Id: <1452699456-1025-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
References: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/15] input: imx-keypad: convert to input framework
To: Barebox List <barebox@lists.infradead.org>

To make it possible to ask for the button state.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/Kconfig      |  1 +
 drivers/input/imx_keypad.c | 55 ++++++++++------------------------------------
 2 files changed, 13 insertions(+), 43 deletions(-)

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index 24c3bd7..7cc98f2 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -29,6 +29,7 @@ config KEYBOARD_IMX_KEYPAD
 	depends on ARCH_IMX
 	select INPUT_MATRIXKMAP
 	select POLLER
+	select INPUT
 	help
 	  This driver implements support for buttons connected
 	  to the IMX keypad matrix.
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index b0282f2..bc74d7d 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -48,6 +48,7 @@
 #include <malloc.h>
 #include <input/matrix_keypad.h>
 #include <linux/err.h>
+#include <input/input.h>
 
 /*
  * Keypad Controller registers (halfword)
@@ -73,15 +74,11 @@
 #define MAX_MATRIX_KEY_NUM	(MAX_MATRIX_KEY_ROWS * MAX_MATRIX_KEY_COLS)
 
 struct imx_keypad {
+	struct input_device input;
 	struct clk *clk;
 	struct device_d *dev;
-	struct console_device cdev;
 	void __iomem *mmio_base;
 
-	/* optional */
-	int fifo_size;
-
-	struct kfifo *recv_fifo;
 	struct poller_struct poller;
 
 	/*
@@ -112,28 +109,6 @@ poller_to_imx_kp_pdata(struct poller_struct *poller)
 	return container_of(poller, struct imx_keypad, poller);
 }
 
-static inline struct imx_keypad *
-cdev_to_imx_kp_pdata(struct console_device *cdev)
-{
-	return container_of(cdev, struct imx_keypad, cdev);
-}
-
-static int imx_keypad_tstc(struct console_device *cdev)
-{
-	struct imx_keypad *kp = cdev_to_imx_kp_pdata(cdev);
-
-	return (kfifo_len(kp->recv_fifo) == 0) ? 0 : 1;
-}
-
-static int imx_keypad_getc(struct console_device *cdev)
-{
-	int code = 0;
-	struct imx_keypad *kp = cdev_to_imx_kp_pdata(cdev);
-
-	kfifo_get(kp->recv_fifo, (u_char*)&code, sizeof(int));
-	return code;
-}
-
 /* Scan the matrix and return the new state in *matrix_volatile_state. */
 static void imx_keypad_scan_matrix(struct imx_keypad *keypad,
 				  unsigned short *matrix_volatile_state)
@@ -226,7 +201,8 @@ static void imx_keypad_fire_events(struct imx_keypad *keypad,
 
 			code = MATRIX_SCAN_CODE(row, col, MATRIX_ROW_SHIFT);
 
-			kfifo_put(keypad->recv_fifo, (u_char*)(&keypad->keycodes[code]), sizeof(int));
+			input_report_key_event(&keypad->input, keypad->keycodes[code],
+					       matrix_volatile_state[col] & (1 << row));
 
 			dev_dbg(keypad->dev, "Event code: %d, val: %d",
 				keypad->keycodes[code],
@@ -390,8 +366,7 @@ static int __init imx_keypad_probe(struct device_d *dev)
 {
 	struct imx_keypad *keypad;
 	const struct matrix_keymap_data *keymap_data = dev->platform_data;
-	struct console_device *cdev;
-	int i;
+	int i, ret;
 
 	if (!keymap_data) {
 		dev_err(dev, "no keymap defined\n");
@@ -405,11 +380,6 @@ static int __init imx_keypad_probe(struct device_d *dev)
 	if (IS_ERR(keypad->mmio_base))
 		return PTR_ERR(keypad->mmio_base);
 
-	if(!keypad->fifo_size)
-		keypad->fifo_size = 50;
-
-	keypad->recv_fifo = kfifo_alloc(keypad->fifo_size);
-
 	/* Search for rows and cols enabled */
 	for (i = 0; i < keymap_data->keymap_size; i++) {
 		keypad->rows_en_mask |= 1 << KEY_ROW(keymap_data->keymap[i]);
@@ -436,16 +406,15 @@ static int __init imx_keypad_probe(struct device_d *dev)
 
 	keypad->poller.func = imx_keypad_check_for_events;
 
-	cdev = &keypad->cdev;
-	dev->type_data = cdev;
-	cdev->dev = dev;
-	cdev->tstc = imx_keypad_tstc;
-	cdev->getc = imx_keypad_getc;
-	cdev->f_active = CONSOLE_STDIN;
+	ret = poller_register(&keypad->poller);
+	if (ret)
+		return ret;
 
-	console_register(&keypad->cdev);
+	ret = input_device_register(&keypad->input);
+	if (ret)
+		return ret;
 
-	return poller_register(&keypad->poller);
+	return 0;
 }
 
 static struct driver_d imx_keypad_driver = {
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
