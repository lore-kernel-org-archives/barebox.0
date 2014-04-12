Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp36.i.mail.ru ([94.100.177.96])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYt2Z-00072I-C3
 for barebox@lists.infradead.org; Sat, 12 Apr 2014 08:11:56 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 12 Apr 2014 12:11:03 +0400
Message-Id: <1397290265-21273-10-git-send-email-shc_work@mail.ru>
In-Reply-To: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
References: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 10/12] imx_keypad: Fix error handling
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/input/imx_keypad.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index e6870df..a1e2055 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -392,17 +392,17 @@ static int __init imx_keypad_probe(struct device_d *dev)
 	struct console_device *cdev;
 	int error, i;
 
-	keypad = xzalloc(sizeof(struct imx_keypad));
-	if (!keypad) {
-		pr_err("not enough memory for driver data\n");
-		error = -ENOMEM;
-	}
-
 	if (!keymap_data) {
 		pr_err("no keymap defined\n");
 		return -ENODEV;
 	}
 
+	keypad = xzalloc(sizeof(struct imx_keypad));
+	if (!keypad) {
+		pr_err("not enough memory for driver data\n");
+		return -ENOMEM;
+	}
+
 	keypad->dev = dev;
 	keypad->mmio_base = dev_request_mem_region(dev, 0);
 
@@ -420,8 +420,8 @@ static int __init imx_keypad_probe(struct device_d *dev)
 	if (keypad->rows_en_mask > ((1 << MAX_MATRIX_KEY_ROWS) - 1) ||
 	   keypad->cols_en_mask > ((1 << MAX_MATRIX_KEY_COLS) - 1)) {
 		pr_err("invalid key data (too many rows or colums)\n");
-		error = -EINVAL;
-		//goto failed_clock_put;
+		free(keypad);
+		return -EINVAL;
 	}
 	pr_debug("enabled rows mask: %x\n", keypad->rows_en_mask);
 	pr_debug("enabled cols mask: %x\n", keypad->cols_en_mask);
@@ -446,7 +446,6 @@ static int __init imx_keypad_probe(struct device_d *dev)
 	console_register(&keypad->cdev);
 
 	return poller_register(&keypad->poller);
-
 }
 
 static struct driver_d imx_keypad_driver = {
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
