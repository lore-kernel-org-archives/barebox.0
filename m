Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp46.i.mail.ru ([94.100.177.106])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEgv2-0001Uj-Cb
 for barebox@lists.infradead.org; Sun, 19 Jun 2016 17:54:01 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 19 Jun 2016 20:53:33 +0300
Message-Id: <1466358813-31528-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] input: Compile keymap only if necessary
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/input/Makefile   | 3 +--
 include/input/keyboard.h | 4 ++++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/input/Makefile b/drivers/input/Makefile
index 7d2c194..e694a98 100644
--- a/drivers/input/Makefile
+++ b/drivers/input/Makefile
@@ -1,8 +1,7 @@
-obj-$(CONFIG_INPUT) += input.o
+obj-$(CONFIG_INPUT) += input.o keymap.o
 obj-$(CONFIG_INPUT_MATRIXKMAP) += matrix-keymap.o
 obj-$(CONFIG_KEYBOARD_USB) += usb_kbd.o
 obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
 obj-$(CONFIG_KEYBOARD_TWL6030) += twl6030_pwrbtn.o
 obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) += imx_keypad.o
 obj-$(CONFIG_KEYBOARD_QT1070) += qt1070.o
-obj-y += keymap.o
diff --git a/include/input/keyboard.h b/include/input/keyboard.h
index d1f5bf5..e205a51 100644
--- a/include/input/keyboard.h
+++ b/include/input/keyboard.h
@@ -1,6 +1,8 @@
 #ifndef __INPUT_KEYBOARD_H
 #define __INPUT_KEYBOARD_H
 
+#ifdef CONFIG_INPUT
+
 #include <linux/types.h>
 
 #define NR_KEYS	256
@@ -9,3 +11,5 @@ extern uint8_t keycode_bb_keys[NR_KEYS];
 extern uint8_t keycode_bb_shift_keys[NR_KEYS];
 
 #endif
+
+#endif
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
