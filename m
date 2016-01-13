Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004JA-NC
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:31 +0100
Message-Id: <1452699456-1025-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/15] input: move matrix_keypad_build_keymap() to C file
To: Barebox List <barebox@lists.infradead.org>

Future additions will make the function too big to live as a static
inline function. Move to a C file and while at it, move matrix_keypad.h
to include/input/ where it belongs to.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/devices.h |  2 +-
 drivers/input/Kconfig                    |  4 +++
 drivers/input/Makefile                   |  1 +
 drivers/input/imx_keypad.c               |  2 +-
 drivers/input/matrix-keymap.c            | 42 +++++++++++++++++++++++
 include/input/matrix_keypad.h            | 35 +++++++++++++++++++
 include/matrix_keypad.h                  | 59 --------------------------------
 7 files changed, 84 insertions(+), 61 deletions(-)
 create mode 100644 drivers/input/matrix-keymap.c
 create mode 100644 include/input/matrix_keypad.h
 delete mode 100644 include/matrix_keypad.h

diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index 4c07f46..45bb0a5 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -1,6 +1,6 @@
 
 #include <fec.h>
-#include <matrix_keypad.h>
+#include <input/matrix_keypad.h>
 #include <i2c/i2c.h>
 #include <mach/spi.h>
 #include <mach/imx-nand.h>
diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index b840df2..24c3bd7 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -8,6 +8,9 @@ menu "Input device support"
 config INPUT
 	bool
 
+config INPUT_MATRIXKMAP
+	bool
+
 config KEYBOARD_GPIO
 	bool "GPIO Buttons"
 	depends on GENERIC_GPIO
@@ -24,6 +27,7 @@ config KEYBOARD_GPIO
 config KEYBOARD_IMX_KEYPAD
 	bool "IMX Keypad"
 	depends on ARCH_IMX
+	select INPUT_MATRIXKMAP
 	select POLLER
 	help
 	  This driver implements support for buttons connected
diff --git a/drivers/input/Makefile b/drivers/input/Makefile
index b9e5a5d..7d2c194 100644
--- a/drivers/input/Makefile
+++ b/drivers/input/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_INPUT) += input.o
+obj-$(CONFIG_INPUT_MATRIXKMAP) += matrix-keymap.o
 obj-$(CONFIG_KEYBOARD_USB) += usb_kbd.o
 obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
 obj-$(CONFIG_KEYBOARD_TWL6030) += twl6030_pwrbtn.o
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index 272b836..b0282f2 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -46,7 +46,7 @@
 #include <poller.h>
 #include <kfifo.h>
 #include <malloc.h>
-#include <matrix_keypad.h>
+#include <input/matrix_keypad.h>
 #include <linux/err.h>
 
 /*
diff --git a/drivers/input/matrix-keymap.c b/drivers/input/matrix-keymap.c
new file mode 100644
index 0000000..d56eccc
--- /dev/null
+++ b/drivers/input/matrix-keymap.c
@@ -0,0 +1,42 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <common.h>
+#include <input/matrix_keypad.h>
+
+/**
+ * matrix_keypad_build_keymap - convert platform keymap into matrix keymap
+ * @keymap_data: keymap supplied by the platform code
+ * @row_shift: number of bits to shift row value by to advance to the next
+ * line in the keymap
+ * @keymap: expanded version of keymap that is suitable for use by
+ * matrix keyboad driver
+ * This function converts platform keymap (encoded with KEY() macro) into
+ * an array of keycodes that is suitable for using in a standard matrix
+ * keyboard driver that uses row and col as indices.
+ */
+int matrix_keypad_build_keymap(const struct matrix_keymap_data *keymap_data,
+			   unsigned int row_shift,
+			   unsigned short *keymap)
+{
+	int i;
+
+	for (i = 0; i < keymap_data->keymap_size; i++) {
+		unsigned int key = keymap_data->keymap[i];
+		unsigned int row = KEY_ROW(key);
+		unsigned int col = KEY_COL(key);
+		unsigned short code = KEY_VAL(key);
+
+		keymap[MATRIX_SCAN_CODE(row, col, row_shift)] = code;
+	}
+
+	return 0;
+}
diff --git a/include/input/matrix_keypad.h b/include/input/matrix_keypad.h
new file mode 100644
index 0000000..77b00c0
--- /dev/null
+++ b/include/input/matrix_keypad.h
@@ -0,0 +1,35 @@
+#ifndef _MATRIX_KEYPAD_H
+#define _MATRIX_KEYPAD_H
+
+#define MATRIX_MAX_ROWS		32
+#define MATRIX_MAX_COLS		32
+
+#define KEY(row, col, val)	((((row) & (MATRIX_MAX_ROWS - 1)) << 24) |\
+				 (((col) & (MATRIX_MAX_COLS - 1)) << 16) |\
+				 ((val) & 0xffff))
+
+#define KEY_ROW(k)		(((k) >> 24) & 0xff)
+#define KEY_COL(k)		(((k) >> 16) & 0xff)
+#define KEY_VAL(k)		((k) & 0xffff)
+
+#define MATRIX_SCAN_CODE(row, col, row_shift)	(((row) << (row_shift)) + (col))
+
+/**
+ * struct matrix_keymap_data - keymap for matrix keyboards
+ * @keymap: pointer to array of uint32 values encoded with KEY() macro
+ *	representing keymap
+ * @keymap_size: number of entries (initialized) in this keymap
+ *
+ * This structure is supposed to be used by platform code to supply
+ * keymaps to drivers that implement matrix-like keypads/keyboards.
+ */
+struct matrix_keymap_data {
+	const uint32_t *keymap;
+	unsigned int	keymap_size;
+};
+
+int matrix_keypad_build_keymap(const struct matrix_keymap_data *keymap_data,
+			   unsigned int row_shift,
+			   unsigned short *keymap);
+
+#endif /* _MATRIX_KEYPAD_H */
diff --git a/include/matrix_keypad.h b/include/matrix_keypad.h
deleted file mode 100644
index 60de428..0000000
--- a/include/matrix_keypad.h
+++ /dev/null
@@ -1,59 +0,0 @@
-#ifndef _MATRIX_KEYPAD_H
-#define _MATRIX_KEYPAD_H
-
-#define MATRIX_MAX_ROWS		32
-#define MATRIX_MAX_COLS		32
-
-#define KEY(row, col, val)	((((row) & (MATRIX_MAX_ROWS - 1)) << 24) |\
-				 (((col) & (MATRIX_MAX_COLS - 1)) << 16) |\
-				 ((val) & 0xffff))
-
-#define KEY_ROW(k)		(((k) >> 24) & 0xff)
-#define KEY_COL(k)		(((k) >> 16) & 0xff)
-#define KEY_VAL(k)		((k) & 0xffff)
-
-#define MATRIX_SCAN_CODE(row, col, row_shift)	(((row) << (row_shift)) + (col))
-
-/**
- * struct matrix_keymap_data - keymap for matrix keyboards
- * @keymap: pointer to array of uint32 values encoded with KEY() macro
- *	representing keymap
- * @keymap_size: number of entries (initialized) in this keymap
- *
- * This structure is supposed to be used by platform code to supply
- * keymaps to drivers that implement matrix-like keypads/keyboards.
- */
-struct matrix_keymap_data {
-	const uint32_t *keymap;
-	unsigned int	keymap_size;
-};
-
-/**
- * matrix_keypad_build_keymap - convert platform keymap into matrix keymap
- * @keymap_data: keymap supplied by the platform code
- * @row_shift: number of bits to shift row value by to advance to the next
- * line in the keymap
- * @keymap: expanded version of keymap that is suitable for use by
- * matrix keyboad driver
- * This function converts platform keymap (encoded with KEY() macro) into
- * an array of keycodes that is suitable for using in a standard matrix
- * keyboard driver that uses row and col as indices.
- */
-static inline void
-matrix_keypad_build_keymap(const struct matrix_keymap_data *keymap_data,
-			   unsigned int row_shift,
-			   unsigned short *keymap)
-{
-	int i;
-
-	for (i = 0; i < keymap_data->keymap_size; i++) {
-		unsigned int key = keymap_data->keymap[i];
-		unsigned int row = KEY_ROW(key);
-		unsigned int col = KEY_COL(key);
-		unsigned short code = KEY_VAL(key);
-
-		keymap[MATRIX_SCAN_CODE(row, col, row_shift)] = code;
-	}
-}
-
-#endif /* _MATRIX_KEYPAD_H */
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
