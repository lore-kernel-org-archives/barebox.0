Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTvEe-0008AG-Bh
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 13:55:05 +0000
Received: from mail403.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 5BD8D104F982
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 15:02:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  1 Nov 2012 14:52:53 +0100
Message-Id: <1351777973-26024-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351776162-23461-1-git-send-email-plagnioj@jcrosoft.com>
References: <1351776162-23461-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1 v2] input: add qt1070 touch keyboard support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
fix typo add when checking the patch

Best Regards,
J.
 drivers/input/Kconfig  |    7 ++
 drivers/input/Makefile |    1 +
 drivers/input/qt1070.c |  228 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/input/qt1070.h |   17 ++++
 4 files changed, 253 insertions(+)
 create mode 100644 drivers/input/qt1070.c
 create mode 100644 include/input/qt1070.h

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index 15979a2..8c528b4 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -30,4 +30,11 @@ config KEYBOARD_IMX_KEYPAD
 	  setup logic must also provide a 'matrix_keymap_data' structure,
 	  defining the used keys.
 
+config KEYBOARD_QT1070
+	tristate "Atmel AT42QT1070 Touch Sensor Chip"
+	depends on I2C
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
index 0000000..49cd836
--- /dev/null
+++ b/drivers/input/qt1070.c
@@ -0,0 +1,228 @@
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
+			debug("release key(%d) as %d\n", i, data->code[i]);
+			kfifo_put(data->recv_fifo, (u_char*)&data->code[i], sizeof(int));
+		} else if (bt) {
+			debug("pressed key(%d) as %d\n", i, data->code[i]);
+		}
+
+		data->button_state[i] = bt;
+		mask <<= 1;
+	}
+
+	data->previous_state = buf;
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
+static int __init qt1070_probe(struct device_d *dev)
+{
+	struct console_device *cdev;
+	struct qt1070_data *data;
+	u8 fw_version, chip_id;
+	int ret;
+	char buf[6];
+
+	data = xzalloc(sizeof(*data));
+	data->client = to_i2c_client(dev);
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
+	/* Calibrate device */
+	qt1070_write(data, QT1070_CALIBRATE_CMD, 1);
+	if (ret) {
+		dev_err(dev, "can not calibreate the chip (%d)\n", ret);
+		goto err;
+	}
+	mdelay(QT1070_CAL_TIME);
+
+	/* Soft reset */
+	ret = qt1070_write(data, QT1070_RESET, 1);
+	if (ret) {
+		dev_err(dev, "can not reset the chip (%d)\n", ret);
+		goto err;
+	}
+	mdelay(QT1070_RESET_TIME);
+
+	memcpy(data->code, default_code, sizeof(int) * ARRAY_SIZE(default_code));
+	if (dev->platform_data) {
+		struct qt1070_platform_data *pdata = dev->platform_data;
+
+		memcpy(data->code, pdata->code, sizeof(int) * pdata->nb_code);
+	}
+
+	data->fifo_size = 50;
+	data->recv_fifo = kfifo_alloc(data->fifo_size);
+
+	data->poller.func = qt1070_poller;
+
+	cdev = &data->cdev;
+	dev->type_data = cdev;
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
index 0000000..8a29559
--- /dev/null
+++ b/include/input/qt1070.h
@@ -0,0 +1,17 @@
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
+};
+
+#endif /* __QT1070_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
