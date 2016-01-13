Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004J9-IW
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:30 +0100
Message-Id: <1452699456-1025-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/15] input: imx-keypad: Use dev_* functions
To: Barebox List <barebox@lists.infradead.org>

driver should use dev_* rather than pr_*

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/imx_keypad.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index 331eadd..272b836 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -228,7 +228,7 @@ static void imx_keypad_fire_events(struct imx_keypad *keypad,
 
 			kfifo_put(keypad->recv_fifo, (u_char*)(&keypad->keycodes[code]), sizeof(int));
 
-			pr_debug("Event code: %d, val: %d",
+			dev_dbg(keypad->dev, "Event code: %d, val: %d",
 				keypad->keycodes[code],
 				matrix_volatile_state[col] & (1 << row));
 		}
@@ -394,7 +394,7 @@ static int __init imx_keypad_probe(struct device_d *dev)
 	int i;
 
 	if (!keymap_data) {
-		pr_err("no keymap defined\n");
+		dev_err(dev, "no keymap defined\n");
 		return -ENODEV;
 	}
 
@@ -418,12 +418,13 @@ static int __init imx_keypad_probe(struct device_d *dev)
 
 	if (keypad->rows_en_mask > ((1 << MAX_MATRIX_KEY_ROWS) - 1) ||
 	   keypad->cols_en_mask > ((1 << MAX_MATRIX_KEY_COLS) - 1)) {
-		pr_err("invalid key data (too many rows or colums)\n");
+		dev_err(dev, "invalid key data (too many rows or colums)\n");
 		free(keypad);
 		return -EINVAL;
 	}
-	pr_debug("enabled rows mask: %x\n", keypad->rows_en_mask);
-	pr_debug("enabled cols mask: %x\n", keypad->cols_en_mask);
+
+	dev_dbg(dev, "enabled rows mask: %x\n", keypad->rows_en_mask);
+	dev_dbg(dev, "enabled cols mask: %x\n", keypad->cols_en_mask);
 
 	matrix_keypad_build_keymap(keymap_data, MATRIX_ROW_SHIFT,
 				keypad->keycodes);
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
