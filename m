Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.186])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqjfV-0000a0-T5
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 11:40:55 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Mon, 16 Jul 2012 13:40:29 +0200
Message-Id: <1342438830-30214-2-git-send-email-christian.kapeller@cmotion.eu>
In-Reply-To: <1342438830-30214-1-git-send-email-christian.kapeller@cmotion.eu>
References: <1342438830-30214-1-git-send-email-christian.kapeller@cmotion.eu>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] input: Add i.MX matrix keypad driver
To: barebox@lists.infradead.org


 create mode 100644 drivers/input/imx_keypad.c
 create mode 100644 include/matrix_keypad.h

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index b488553..a5aec03 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -16,4 +16,17 @@ config KEYBOARD_GPIO
 	  setup logic must also provide a platform device,
 	  with configuration data saying which GPIOs are used.
 
+config KEYBOARD_IMX_KEYPAD
+	bool "IMX Keypad"
+	depends on ARCH_IMX
+	select POLLER 
+	help
+	  This driver implements support for buttons connected
+	  to the IMX keypad matrix.
+
+	  Say Y here if your device has buttons connected
+	  to the IMX keypad matrix.  Your board-specific
+	  setup logic must also provide a 'matrix_keymap_data' structure,
+	  defining the used keys.
+
 endmenu
diff --git a/drivers/input/Makefile b/drivers/input/Makefile
index 7784d52..3d105cc 100644
--- a/drivers/input/Makefile
+++ b/drivers/input/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
+obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) += imx_keypad.o
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
new file mode 100644
index 0000000..bd9c6dc
--- /dev/null
+++ b/drivers/input/imx_keypad.c
@@ -0,0 +1,463 @@
+/*
+ * Driver for the IMX keypad port.
+ * Copyright (C) 2009 Alberto Panizzo <maramaopercheseimorto@gmail.com>
+ * Copyright (C) 2012 Christian Kapeller <christian.kapeller@cmotion.eu>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+
+/*
+	To use the imx keypad driver, you have to define the keys in your platform
+	code.
+
+	1. Configure the imx keypad row & column pads used by your board
+	2. Define the keys you want to use:
+
+	#define BTN_1         0x101
+	#define BTN_2         0x102
+	#define BTN_3         0x103
+
+	static uint32_t keypad_codes[] = {
+		// specify your keymap with KEY(row, col, keycode)
+		KEY(0, 1, BTN_1),
+		KEY(1, 0, BTN_2),
+		KEY(1, 1, BTN_3),
+	};
+
+	static struct matrix_keymap_data keypad_data = {
+		.keymap = keypad_codes,
+		.keymap_size = ARRAY_SIZE(keypad_codes),
+	};
+
+	3. Add the keypad to your platform in your devices init callback:
+
+	imx51_add_kpp(&keypad_data);
+
+	4. Compile , flash, and enjoy
+*/
+
+#include <common.h>
+#include <errno.h>
+#include <init.h>
+#include <io.h>
+#include <poller.h>
+#include <kfifo.h>
+#include <malloc.h>
+#include <matrix_keypad.h>
+
+/*
+ * Keypad Controller registers (halfword)
+ */
+#define KPCR		0x00 /* Keypad Control Register */
+
+#define KPSR		0x02 /* Keypad Status Register */
+#define KBD_STAT_KPKD	(0x1 << 0) /* Key Press Interrupt Status bit (w1c) */
+#define KBD_STAT_KPKR	(0x1 << 1) /* Key Release Interrupt Status bit (w1c) */
+#define KBD_STAT_KDSC	(0x1 << 2) /* Key Depress Synch Chain Status bit (w1c)*/
+#define KBD_STAT_KRSS	(0x1 << 3) /* Key Release Synch Status bit (w1c)*/
+#define KBD_STAT_KDIE	(0x1 << 8) /* Key Depress Interrupt Enable Status bit */
+#define KBD_STAT_KRIE	(0x1 << 9) /* Key Release Interrupt Enable */
+#define KBD_STAT_KPPEN	(0x1 << 10) /* Keypad Clock Enable */
+
+#define KDDR		0x04 /* Keypad Data Direction Register */
+#define KPDR		0x06 /* Keypad Data Register */
+
+#define MAX_MATRIX_KEY_ROWS	8
+#define MAX_MATRIX_KEY_COLS	8
+#define MATRIX_ROW_SHIFT	3
+
+#define MAX_MATRIX_KEY_NUM	(MAX_MATRIX_KEY_ROWS * MAX_MATRIX_KEY_COLS)
+
+struct imx_keypad {
+	struct clk *clk;
+	struct device_d *dev;
+	struct console_device cdev;
+	void __iomem *mmio_base;
+
+	/* optional */
+	int fifo_size;
+
+	struct kfifo *recv_fifo;
+	struct poller_struct poller;
+
+	/*
+	 * The matrix is stable only if no changes are detected after
+	 * IMX_KEYPAD_SCANS_FOR_STABILITY scans
+	 */
+#define IMX_KEYPAD_SCANS_FOR_STABILITY 3
+	int			stable_count;
+
+	/* Masks for enabled rows/cols */
+	unsigned short		rows_en_mask;
+	unsigned short		cols_en_mask;
+
+	unsigned short		keycodes[MAX_MATRIX_KEY_NUM];
+
+	/*
+	 * Matrix states:
+	 * -stable: achieved after a complete debounce process.
+	 * -unstable: used in the debouncing process.
+	 */
+	unsigned short		matrix_stable_state[MAX_MATRIX_KEY_COLS];
+	unsigned short		matrix_unstable_state[MAX_MATRIX_KEY_COLS];
+};
+
+static inline struct imx_keypad *
+poller_to_imx_kp_pdata(struct poller_struct *poller)
+{
+	return container_of(poller, struct imx_keypad, poller);
+}
+
+static inline struct imx_keypad *
+cdev_to_imx_kp_pdata(struct console_device *cdev)
+{
+	return container_of(cdev, struct imx_keypad, cdev);
+}
+
+static int imx_keypad_tstc(struct console_device *cdev)
+{
+	struct imx_keypad *kp = cdev_to_imx_kp_pdata(cdev);
+
+	return (kfifo_len(kp->recv_fifo) == 0) ? 0 : 1;
+}
+
+static int imx_keypad_getc(struct console_device *cdev)
+{
+	int code = 0;
+	struct imx_keypad *kp = cdev_to_imx_kp_pdata(cdev);
+
+	kfifo_get(kp->recv_fifo, (u_char*)&code, sizeof(int));
+	return code;
+}
+
+/* Scan the matrix and return the new state in *matrix_volatile_state. */
+static void imx_keypad_scan_matrix(struct imx_keypad *keypad,
+				  unsigned short *matrix_volatile_state)
+{
+	int col;
+	unsigned short reg_val;
+
+	for (col = 0; col < MAX_MATRIX_KEY_COLS; col++) {
+		if ((keypad->cols_en_mask & (1 << col)) == 0)
+			continue;
+		/*
+		 * Discharge keypad capacitance:
+		 * 2. write 1s on column data.
+		 * 3. configure columns as totem-pole to discharge capacitance.
+		 * 4. configure columns as open-drain.
+		 */
+		reg_val = readw(keypad->mmio_base + KPDR);
+		reg_val |= 0xff00;
+		writew(reg_val, keypad->mmio_base + KPDR);
+
+		reg_val = readw(keypad->mmio_base + KPCR);
+		reg_val &= ~((keypad->cols_en_mask & 0xff) << 8);
+		writew(reg_val, keypad->mmio_base + KPCR);
+
+		udelay(2);
+
+		reg_val = readw(keypad->mmio_base + KPCR);
+		reg_val |= (keypad->cols_en_mask & 0xff) << 8;
+		writew(reg_val, keypad->mmio_base + KPCR);
+
+		/*
+		 * 5. Write a single column to 0, others to 1.
+		 * 6. Sample row inputs and save data.
+		 * 7. Repeat steps 2 - 6 for remaining columns.
+		 */
+		reg_val = readw(keypad->mmio_base + KPDR);
+		reg_val &= ~(1 << (8 + col));
+		writew(reg_val, keypad->mmio_base + KPDR);
+
+		/*
+		 * Delay added to avoid propagating the 0 from column to row
+		 * when scanning.
+		 */
+		udelay(5);
+
+		/*
+		 * 1s in matrix_volatile_state[col] means key pressures
+		 * throw data from non enabled rows.
+		 */
+		reg_val = readw(keypad->mmio_base + KPDR);
+		matrix_volatile_state[col] = (~reg_val) & keypad->rows_en_mask;
+	}
+
+	/*
+	 * Return in standby mode:
+	 * 9. write 0s to columns
+	 */
+	reg_val = readw(keypad->mmio_base + KPDR);
+	reg_val &= 0x00ff;
+	writew(reg_val, keypad->mmio_base + KPDR);
+}
+
+/*
+ * Compare the new matrix state (volatile) with the stable one stored in
+ * keypad->matrix_stable_state and fire events if changes are detected.
+ */
+static void imx_keypad_fire_events(struct imx_keypad *keypad,
+				   unsigned short *matrix_volatile_state)
+{
+	int row, col;
+
+	for (col = 0; col < MAX_MATRIX_KEY_COLS; col++) {
+		unsigned short bits_changed;
+		int code;
+
+		if ((keypad->cols_en_mask & (1 << col)) == 0)
+			continue; /* Column is not enabled */
+
+		bits_changed = keypad->matrix_stable_state[col] ^
+						matrix_volatile_state[col];
+
+		if (bits_changed == 0)
+			continue; /* Column does not contain changes */
+
+		for (row = 0; row < MAX_MATRIX_KEY_ROWS; row++) {
+			if ((keypad->rows_en_mask & (1 << row)) == 0)
+				continue; /* Row is not enabled */
+			if ((bits_changed & (1 << row)) == 0)
+				continue; /* Row does not contain changes */
+
+			code = MATRIX_SCAN_CODE(row, col, MATRIX_ROW_SHIFT);
+
+			kfifo_put(keypad->recv_fifo, (u_char*)(&keypad->keycodes[code]), sizeof(int));
+
+			pr_debug("Event code: %d, val: %d",
+				keypad->keycodes[code],
+				matrix_volatile_state[col] & (1 << row));
+		}
+	}
+}
+
+/*
+ * imx_keypad_check_for_events is the timer handler.
+ */
+static void imx_keypad_check_for_events(struct poller_struct *poller)
+{
+	struct imx_keypad *keypad = (struct imx_keypad *) poller_to_imx_kp_pdata(poller);
+	unsigned short matrix_volatile_state[MAX_MATRIX_KEY_COLS];
+	unsigned short reg_val;
+	bool state_changed, is_zero_matrix;
+	int i;
+
+	memset(matrix_volatile_state, 0, sizeof(matrix_volatile_state));
+
+	imx_keypad_scan_matrix(keypad, matrix_volatile_state);
+
+	state_changed = false;
+	for (i = 0; i < MAX_MATRIX_KEY_COLS; i++) {
+		if ((keypad->cols_en_mask & (1 << i)) == 0)
+			continue;
+
+		if (keypad->matrix_unstable_state[i] ^ matrix_volatile_state[i]) {
+			state_changed = true;
+			break;
+		}
+	}
+
+	/*
+	 * If the matrix state is changed from the previous scan
+	 *   (Re)Begin the debouncing process, saving the new state in
+	 *    keypad->matrix_unstable_state.
+	 * else
+	 *   Increase the count of number of scans with a stable state.
+	 */
+	if (state_changed) {
+		memcpy(keypad->matrix_unstable_state, matrix_volatile_state,
+			sizeof(matrix_volatile_state));
+		keypad->stable_count = 0;
+	} else
+		keypad->stable_count++;
+
+	/*
+	 * If the matrix is not as stable as we want reschedule scan
+	 * in the near future.
+	 */
+	if (keypad->stable_count < IMX_KEYPAD_SCANS_FOR_STABILITY) {
+		return;
+	}
+
+	/*
+	 * If the matrix state is stable, fire the events and save the new
+	 * stable state. Note, if the matrix is kept stable for longer
+	 * (keypad->stable_count > IMX_KEYPAD_SCANS_FOR_STABILITY) all
+	 * events have already been generated.
+	 */
+	if (keypad->stable_count == IMX_KEYPAD_SCANS_FOR_STABILITY) {
+		imx_keypad_fire_events(keypad, matrix_volatile_state);
+
+		memcpy(keypad->matrix_stable_state, matrix_volatile_state,
+			sizeof(matrix_volatile_state));
+	}
+
+	is_zero_matrix = true;
+	for (i = 0; i < MAX_MATRIX_KEY_COLS; i++) {
+		if (matrix_volatile_state[i] != 0) {
+			is_zero_matrix = false;
+			break;
+		}
+	}
+
+
+	if (is_zero_matrix) {
+		/*
+		 * All keys have been released. Enable only the KDI
+		 * interrupt for future key presses (clear the KDI
+		 * status bit and its sync chain before that).
+		 */
+		reg_val = readw(keypad->mmio_base + KPSR);
+		reg_val |= KBD_STAT_KPKD | KBD_STAT_KDSC;
+		writew(reg_val, keypad->mmio_base + KPSR);
+
+		reg_val = readw(keypad->mmio_base + KPSR);
+		reg_val |= KBD_STAT_KDIE;
+		reg_val &= ~KBD_STAT_KRIE;
+		writew(reg_val, keypad->mmio_base + KPSR);
+	} else {
+		/*
+		 * Some keys are still pressed. Schedule a rescan in
+		 * attempt to detect multiple key presses and enable
+		 * the KRI interrupt to react quickly to key release
+		 * event.
+		 */
+		reg_val = readw(keypad->mmio_base + KPSR);
+		reg_val |= KBD_STAT_KPKR | KBD_STAT_KRSS;
+		writew(reg_val, keypad->mmio_base + KPSR);
+
+		reg_val = readw(keypad->mmio_base + KPSR);
+		reg_val |= KBD_STAT_KRIE;
+		reg_val &= ~KBD_STAT_KDIE;
+		writew(reg_val, keypad->mmio_base + KPSR);
+	}
+}
+
+static void imx_keypad_config(struct imx_keypad *keypad)
+{
+	unsigned short reg_val;
+
+	/*
+	 * Include enabled rows in interrupt generation (KPCR[7:0])
+	 * Configure keypad columns as open-drain (KPCR[15:8])
+	 */
+	reg_val = readw(keypad->mmio_base + KPCR);
+	reg_val |= keypad->rows_en_mask & 0xff;		/* rows */
+	reg_val |= (keypad->cols_en_mask & 0xff) << 8;	/* cols */
+	writew(reg_val, keypad->mmio_base + KPCR);
+
+	/* Write 0's to KPDR[15:8] (Colums) */
+	reg_val = readw(keypad->mmio_base + KPDR);
+	reg_val &= 0x00ff;
+	writew(reg_val, keypad->mmio_base + KPDR);
+
+	/* Configure columns as output, rows as input (KDDR[15:0]) */
+	writew(0xff00, keypad->mmio_base + KDDR);
+
+	/*
+	 * Clear Key Depress and Key Release status bit.
+	 * Clear both synchronizer chain.
+	 */
+	reg_val = readw(keypad->mmio_base + KPSR);
+	reg_val |= KBD_STAT_KPKR | KBD_STAT_KPKD |
+		   KBD_STAT_KDSC | KBD_STAT_KRSS;
+	writew(reg_val, keypad->mmio_base + KPSR);
+
+	/* Enable KDI and disable KRI (avoid false release events). */
+	reg_val |= KBD_STAT_KDIE;
+	reg_val &= ~KBD_STAT_KRIE;
+	writew(reg_val, keypad->mmio_base + KPSR);
+}
+
+static void imx_keypad_inhibit(struct imx_keypad *keypad)
+{
+	unsigned short reg_val;
+
+	/* Inhibit KDI and KRI interrupts. */
+	reg_val = readw(keypad->mmio_base + KPSR);
+	reg_val &= ~(KBD_STAT_KRIE | KBD_STAT_KDIE);
+	writew(reg_val, keypad->mmio_base + KPSR);
+
+	/* Colums as open drain and disable all rows */
+	writew(0xff00, keypad->mmio_base + KPCR);
+}
+
+static int __init imx_keypad_probe(struct device_d *dev)
+{
+	struct imx_keypad *keypad;
+	const struct matrix_keymap_data *keymap_data = dev->platform_data;
+	struct console_device *cdev;
+	int error, i;
+
+	keypad = xzalloc(sizeof(struct imx_keypad));
+	if (!keypad) {
+		pr_err("not enough memory for driver data\n");
+		error = -ENOMEM;
+	}
+
+	if (!keymap_data) {
+		pr_err("no keymap defined\n");
+		return -ENODEV;
+	}
+
+	keypad->dev = dev;
+	keypad->mmio_base = dev_request_mem_region(dev, 0);
+
+	if(!keypad->fifo_size)
+		keypad->fifo_size = 50;
+
+	keypad->recv_fifo = kfifo_alloc(keypad->fifo_size);
+
+	/* Search for rows and cols enabled */
+	for (i = 0; i < keymap_data->keymap_size; i++) {
+		keypad->rows_en_mask |= 1 << KEY_ROW(keymap_data->keymap[i]);
+		keypad->cols_en_mask |= 1 << KEY_COL(keymap_data->keymap[i]);
+	}
+
+	if (keypad->rows_en_mask > ((1 << MAX_MATRIX_KEY_ROWS) - 1) ||
+	   keypad->cols_en_mask > ((1 << MAX_MATRIX_KEY_COLS) - 1)) {
+		pr_err("invalid key data (too many rows or colums)\n");
+		error = -EINVAL;
+		//goto failed_clock_put;
+	}
+	pr_debug("enabled rows mask: %x\n", keypad->rows_en_mask);
+	pr_debug("enabled cols mask: %x\n", keypad->cols_en_mask);
+
+	matrix_keypad_build_keymap(keymap_data, MATRIX_ROW_SHIFT,
+				keypad->keycodes);
+
+	imx_keypad_config(keypad);
+
+	/* Ensure that the keypad will stay dormant until opened */
+	imx_keypad_inhibit(keypad);
+
+	keypad->poller.func = imx_keypad_check_for_events;
+
+	cdev = &keypad->cdev;
+	dev->type_data = cdev;
+	cdev->dev = dev;
+	cdev->tstc = imx_keypad_tstc;
+	cdev->getc = imx_keypad_getc;
+	cdev->f_caps = CONSOLE_STDIN;
+	cdev->f_active = CONSOLE_STDIN;
+
+	console_register(&keypad->cdev);
+
+	return poller_register(&keypad->poller);
+
+}
+
+static struct driver_d imx_keypad_driver = {
+	.name   = "imx-kpp",
+	.probe  = imx_keypad_probe,
+};
+
+static int imx_keypad_init(void)
+{
+	register_driver(&imx_keypad_driver);
+	return 0;
+}
+device_initcall(imx_keypad_init);
diff --git a/include/matrix_keypad.h b/include/matrix_keypad.h
new file mode 100644
index 0000000..60de428
--- /dev/null
+++ b/include/matrix_keypad.h
@@ -0,0 +1,59 @@
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
+static inline void
+matrix_keypad_build_keymap(const struct matrix_keymap_data *keymap_data,
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
+}
+
+#endif /* _MATRIX_KEYPAD_H */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
