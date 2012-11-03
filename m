Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUbu3-0001Xv-CF
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 11:28:41 +0000
Received: from mail401.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 383E7DC251E
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 12:35:49 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  3 Nov 2012 12:26:19 +0100
Message-Id: <1351941979-25433-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351777973-26024-1-git-send-email-plagnioj@jcrosoft.com>
References: <1351777973-26024-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1 v3] input: add qt1070 touch keyboard support
To: barebox@lists.infradead.org

use irq pin as the pin is asserted untill we clear it
This will allow to do not poll on i2c which slow down barebox

If no irq_pin is provided fall back on i2c polling

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v3:

	add irq_pin support
	use different poll function to wait for calibration and reset
	so we do not endup with a delay of nearly 500ms at boot time

Best Regards,
J.
 drivers/input/Kconfig  |    8 ++
 drivers/input/Makefile |    1 +
 drivers/input/qt1070.c |  296 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/input/qt1070.h |   18 +++
 4 files changed, 323 insertions(+)
 create mode 100644 drivers/input/qt1070.c
 create mode 100644 include/input/qt1070.h

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index 15979a2..846483c 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -30,4 +30,12 @@ config KEYBOARD_IMX_KEYPAD
 	  setup logic must also provide a 'matrix_keymap_data' structure,
 	  defining the used keys.
 
+config KEYBOARD_QT1070
+	tristate "Atmel AT42QT1070 Touch Sensor Chip"
+	depends on I2C
+	select POLLER
+	help
+	  Say Y here if you want to use Atmel AT42QT1070 QTouch
+	  Sensor chip as input device.
+
 endmenu
diff --git a/drivers/input/Makefile b/drivers/input/Makefile
index 3d105cc..d042980 100644
--- a/drivers/input/Makefile
+++ b/drivers/input/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
 obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) += imx_keypad.o
+obj-$(CONFIG_KEYBOARD_QT1070) += qt1070.o
diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
new file mode 100644
index 0000000..c66189e
--- /dev/null
+++ b/drivers/input/qt1070.c
@@ -0,0 +1,296 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <init.h>
+#include <clock.h>
+#include <poller.h>
+#include <kfifo.h>
+#include <i2c/i2c.h>
+#include <malloc.h>
+#include <readkey.h>
+#include <input/qt1070.h>
+#include <gpio.h>
+
+#define QT1070_CHIP_ID		0x2e
+
+#define QT1070_READ_CHIP_ID	0x00
+#define QT1070_FW_VERSION	0x01
+#define QT1070_DET_STATUS	0x02
+#define QT1070_KEY_STATUS	0x03
+
+/* Calibrate */
+#define QT1070_CALIBRATE_CMD	0x38
+#define QT1070_CAL_TIME		200
+
+/* Reset */
+#define QT1070_RESET		0x39
+#define QT1070_RESET_TIME	255
+
+static int default_code[QT1070_NB_BUTTONS] = {
+	KEY_ENTER, KEY_HOME, KEY_UP, KEY_DOWN,
+	KEY_RIGHT, KEY_LEFT, KEY_CLEAR_SCREEN };
+
+struct qt1070_data {
+	int code[QT1070_NB_BUTTONS];
+
+	int irq_pin;
+
+	u64 start;
+
+	/* optional */
+	int fifo_size;
+
+	struct i2c_client *client;
+	u8 button_state[QT1070_NB_BUTTONS];
+	u8 previous_state;
+
+	struct kfifo *recv_fifo;
+	struct poller_struct poller;
+	struct console_device cdev;
+};
+
+static inline struct qt1070_data *
+poller_to_qt_data(struct poller_struct *poller)
+{
+	return container_of(poller, struct qt1070_data, poller);
+}
+
+static inline struct qt1070_data *
+cdev_to_qt_data(struct console_device *cdev)
+{
+	return container_of(cdev, struct qt1070_data, cdev);
+}
+
+static bool qt1070_read(struct qt1070_data *data, u8 reg, u8 *val)
+{
+	int ret;
+
+	ret = i2c_read_reg(data->client, reg, val, 1);
+
+	if (ret < 0)
+		return ret;
+	if (ret != 1)
+		return -EIO;
+	return 0;
+}
+
+static bool qt1070_write(struct qt1070_data *data, u8 reg, const u8 val)
+{
+	int ret;
+
+	ret = i2c_write_reg(data->client, reg, &val, 1);
+	if (ret < 0)
+		return ret;
+	if (ret != 1)
+		return -EIO;
+	return 0;
+}
+
+static void qt1070_poller(struct poller_struct *poller)
+{
+	struct qt1070_data *data = poller_to_qt_data(poller);
+	int i;
+	u8 buf, bt;
+	u8 mask = 0x1;
+
+	if (gpio_is_valid(data->irq_pin)) {
+		/* active low */
+		if (gpio_get_value(data->irq_pin))
+			return;
+	}
+
+	qt1070_read(data, QT1070_DET_STATUS, &buf);
+
+	if (qt1070_read(data, QT1070_KEY_STATUS, &buf))
+		return;
+
+	if (!buf & !data->previous_state)
+		return;
+
+	for (i = 0; i < QT1070_NB_BUTTONS; i++) {
+		bt = buf & mask;
+
+		if (!bt && data->button_state[i]) {
+			dev_dbg(data->cdev.dev, "release key(%d) as %d\n", i, data->code[i]);
+			kfifo_put(data->recv_fifo, (u_char*)&data->code[i], sizeof(int));
+		} else if (bt) {
+			dev_dbg(data->cdev.dev, "pressed key(%d) as %d\n", i, data->code[i]);
+		}
+
+		data->button_state[i] = bt;
+		mask <<= 1;
+	}
+
+	data->previous_state = buf;
+}
+
+static void qt1070_reset_poller(struct poller_struct *poller)
+{
+	struct qt1070_data *data = poller_to_qt_data(poller);
+	u8 buf;
+
+	if (!is_timeout_non_interruptible(data->start, QT1070_RESET_TIME * MSECOND))
+		return;
+
+	/* clear the status */
+	qt1070_read(data, QT1070_DET_STATUS, &buf);
+
+	poller->func = qt1070_poller;
+}
+
+static void qt1070_calibrate_poller(struct poller_struct *poller)
+{
+	struct qt1070_data *data = poller_to_qt_data(poller);
+	int ret;
+
+	if (!is_timeout_non_interruptible(data->start, QT1070_CAL_TIME * MSECOND))
+		return;
+
+	/* Soft reset */
+	ret = qt1070_write(data, QT1070_RESET, 1);
+	if (ret) {
+		dev_err(data->cdev.dev, "can not reset the chip (%d)\n", ret);
+		poller_unregister(poller);
+		return;
+	}
+	data->start = get_time_ns();
+
+	poller->func = qt1070_reset_poller;
+}
+
+static int qt1070_tstc(struct console_device *cdev)
+{
+	struct qt1070_data *data = cdev_to_qt_data(cdev);
+
+	return (kfifo_len(data->recv_fifo) == 0) ? 0 : 1;
+}
+
+static int qt1070_getc(struct console_device *cdev)
+{
+	int code = 0;
+	struct qt1070_data *data = cdev_to_qt_data(cdev);
+
+	kfifo_get(data->recv_fifo, (u_char*)&code, sizeof(int));
+	return code;
+}
+
+static int qt1070_pdata_init(struct device_d *dev, struct qt1070_data *data)
+{
+	struct qt1070_platform_data *pdata = dev->platform_data;
+	int ret;
+
+	if (!pdata)
+		return 0;
+
+	if (pdata->nb_code)
+		memcpy(data->code, pdata->code, sizeof(int) * pdata->nb_code);
+
+	if (!gpio_is_valid(pdata->irq_pin))
+		return 0;
+
+	ret = gpio_request(pdata->irq_pin, "qt1070");
+	if (ret)
+		return ret;
+
+	ret = gpio_direction_input(pdata->irq_pin);
+	if (ret)
+		goto err;
+
+	data->irq_pin = pdata->irq_pin;
+
+	return 0;
+err:
+	gpio_free(pdata->irq_pin);
+	return ret;
+}
+
+static int qt1070_probe(struct device_d *dev)
+{
+	struct console_device *cdev;
+	struct qt1070_data *data;
+	u8 fw_version, chip_id;
+	int ret;
+	char buf[6];
+
+	data = xzalloc(sizeof(*data));
+	data->client = to_i2c_client(dev);
+	data->irq_pin = -EINVAL;
+
+	ret = qt1070_read(data, QT1070_READ_CHIP_ID, &chip_id);
+	if (ret) {
+		dev_err(dev, "can not read chip id (%d)\n", ret);
+		goto err;
+	}
+
+	if (chip_id != QT1070_CHIP_ID) {
+		dev_err(dev, "unsupported id 0x%x\n", chip_id);
+		ret = -ENXIO;
+		goto err;
+	}
+
+	ret = qt1070_read(data, QT1070_FW_VERSION, &fw_version);
+	if (ret) {
+		dev_err(dev, "can not read firmware version (%d)\n", ret);
+		goto err;
+	}
+
+	sprintf(buf, "0x%x", fw_version);
+	dev_add_param_fixed(dev, "fw_version", buf);
+	sprintf(buf, "0x%x", chip_id);
+	dev_add_param_fixed(dev, "chip_ip", buf);
+
+	ret = qt1070_pdata_init(dev, data);
+	if (ret) {
+		dev_err(dev, "can not get pdata (%d)\n", ret);
+		goto err;
+	}
+
+	/* Calibrate device */
+	ret = qt1070_write(data, QT1070_CALIBRATE_CMD, 1);
+	if (ret) {
+		dev_err(dev, "can not calibrate the chip (%d)\n", ret);
+		goto err;
+	}
+	data->start = get_time_ns();
+
+	memcpy(data->code, default_code, sizeof(int) * ARRAY_SIZE(default_code));
+
+	data->fifo_size = 50;
+	data->recv_fifo = kfifo_alloc(data->fifo_size);
+
+	data->poller.func = qt1070_calibrate_poller;
+
+	cdev = &data->cdev;
+	cdev->dev = dev;
+	cdev->f_caps = CONSOLE_STDIN;
+	cdev->tstc = qt1070_tstc;
+	cdev->getc = qt1070_getc;
+
+	console_register(&data->cdev);
+
+	ret = poller_register(&data->poller);
+	if (ret)
+		goto err;
+
+	return 0;
+err:
+	free(data);
+	return ret;
+}
+
+static struct driver_d qt1070_driver = {
+	.name	= "qt1070",
+	.probe	= qt1070_probe,
+};
+
+static int qt1070_init(void)
+{
+	i2c_register_driver(&qt1070_driver);
+	return 0;
+}
+device_initcall(qt1070_init);
diff --git a/include/input/qt1070.h b/include/input/qt1070.h
new file mode 100644
index 0000000..014f67b
--- /dev/null
+++ b/include/input/qt1070.h
@@ -0,0 +1,18 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#ifndef __QT1070_H__
+#define __QT1070_H__
+
+#define QT1070_NB_BUTTONS	7
+
+struct qt1070_platform_data {
+	int code[QT1070_NB_BUTTONS];
+	int nb_code;
+	int irq_pin;
+};
+
+#endif /* __QT1070_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
