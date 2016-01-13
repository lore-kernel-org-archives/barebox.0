Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004JD-TM
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:34 +0100
Message-Id: <1452699456-1025-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/15] input: imx-keypad: Add device tree support
To: Barebox List <barebox@lists.infradead.org>

The preparations are done in previous patches, now we only have
to add the device tree compatible and drio the check for platform_data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/imx_keypad.c | 34 ++++++++++++++++++++--------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index d3b5a85..000e176 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -366,12 +366,7 @@ static int __init imx_keypad_probe(struct device_d *dev)
 {
 	struct imx_keypad *keypad;
 	const struct matrix_keymap_data *keymap_data = dev->platform_data;
-	int i, ret;
-
-	if (!keymap_data) {
-		dev_err(dev, "no keymap defined\n");
-		return -ENODEV;
-	}
+	int i, ret, row, col;
 
 	keypad = xzalloc(sizeof(struct imx_keypad));
 
@@ -380,10 +375,20 @@ static int __init imx_keypad_probe(struct device_d *dev)
 	if (IS_ERR(keypad->mmio_base))
 		return PTR_ERR(keypad->mmio_base);
 
+	ret = matrix_keypad_build_keymap(dev, keymap_data, MATRIX_ROW_SHIFT,
+				keypad->keycodes);
+	if (ret)
+		return ret;
+
 	/* Search for rows and cols enabled */
-	for (i = 0; i < keymap_data->keymap_size; i++) {
-		keypad->rows_en_mask |= 1 << KEY_ROW(keymap_data->keymap[i]);
-		keypad->cols_en_mask |= 1 << KEY_COL(keymap_data->keymap[i]);
+	for (row = 0; row < MAX_MATRIX_KEY_ROWS; row++) {
+		for (col = 0; col < MAX_MATRIX_KEY_COLS; col++) {
+			i = MATRIX_SCAN_CODE(row, col, MATRIX_ROW_SHIFT);
+			if (keypad->keycodes[i] != KEY_RESERVED) {
+				keypad->rows_en_mask |= 1 << row;
+				keypad->cols_en_mask |= 1 << col;
+			}
+		}
 	}
 
 	if (keypad->rows_en_mask > ((1 << MAX_MATRIX_KEY_ROWS) - 1) ||
@@ -396,11 +401,6 @@ static int __init imx_keypad_probe(struct device_d *dev)
 	dev_dbg(dev, "enabled rows mask: %x\n", keypad->rows_en_mask);
 	dev_dbg(dev, "enabled cols mask: %x\n", keypad->cols_en_mask);
 
-	ret = matrix_keypad_build_keymap(dev, keymap_data, MATRIX_ROW_SHIFT,
-				keypad->keycodes);
-	if (ret)
-		return ret;
-
 	imx_keypad_config(keypad);
 
 	/* Ensure that the keypad will stay dormant until opened */
@@ -419,8 +419,14 @@ static int __init imx_keypad_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx_keypad_dt_ids[] = {
+        { .compatible = "fsl,imx21-kpp", },
+        { }
+};
+
 static struct driver_d imx_keypad_driver = {
 	.name   = "imx-kpp",
 	.probe  = imx_keypad_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_keypad_dt_ids),
 };
 device_platform_driver(imx_keypad_driver);
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
