Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g05TO-0004gI-MD
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 13:46:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id v17-v6so2112704wrr.9
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2018 06:46:16 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 12 Sep 2018 15:45:46 +0200
Message-Id: <20180912134550.3970-4-aleksander@aleksander.es>
In-Reply-To: <20180912134550.3970-1-aleksander@aleksander.es>
References: <20180912134550.3970-1-aleksander@aleksander.es>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 3/7] ratp: implement support for GPIO commands
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com, Aleksander Morgado <aleksander@aleksander.es>

Introduce three new RATP commands that allow getting and setting GPIO
values as well as configuring the direction of the GPIO pins.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp/Kconfig  |  10 ++-
 common/ratp/Makefile |   1 +
 common/ratp/gpio.c   | 144 +++++++++++++++++++++++++++++++++++++++++++
 include/ratp_bb.h    |   6 ++
 4 files changed, 160 insertions(+), 1 deletion(-)
 create mode 100644 common/ratp/gpio.c

diff --git a/common/ratp/Kconfig b/common/ratp/Kconfig
index 4b28d5f9f..ddbbd955c 100644
--- a/common/ratp/Kconfig
+++ b/common/ratp/Kconfig
@@ -18,4 +18,12 @@ config RATP_CMD_I2C
 	depends on I2C
 	prompt "RATP i2c support"
 	help
-	  This option adds support for i2c read/write commands via RATP.
\ No newline at end of file
+	  This option adds support for i2c read/write commands via RATP.
+
+config RATP_CMD_GPIO
+	bool
+	depends on RATP
+	depends on GENERIC_GPIO
+	prompt "RATP GPIO support"
+	help
+	  This option adds support for GPIO get/set/direction commands via RATP.
\ No newline at end of file
diff --git a/common/ratp/Makefile b/common/ratp/Makefile
index b83c48327..71288bcb8 100644
--- a/common/ratp/Makefile
+++ b/common/ratp/Makefile
@@ -5,3 +5,4 @@ obj-y += md.o
 obj-y += mw.o
 obj-y += reset.o
 obj-$(CONFIG_RATP_CMD_I2C) += i2c.o
+obj-$(CONFIG_RATP_CMD_GPIO) += gpio.o
diff --git a/common/ratp/gpio.c b/common/ratp/gpio.c
new file mode 100644
index 000000000..d2c527a40
--- /dev/null
+++ b/common/ratp/gpio.c
@@ -0,0 +1,144 @@
+/*
+ * Copyright (c) 2018 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2018 Zodiac Inflight Innovations
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#define pr_fmt(fmt) "barebox-ratp: gpio: " fmt
+
+#include <common.h>
+#include <ratp_bb.h>
+#include <malloc.h>
+#include <environment.h>
+#include <gpio.h>
+#include <errno.h>
+
+struct ratp_bb_gpio_get_value_request {
+	struct ratp_bb header;
+	uint32_t       gpio;
+} __packed;
+
+struct ratp_bb_gpio_get_value_response {
+	struct ratp_bb header;
+	uint8_t        value;
+} __packed;
+
+static int ratp_cmd_gpio_get_value(const struct ratp_bb *req, int req_len,
+				   struct ratp_bb **rsp, int *rsp_len)
+{
+	struct ratp_bb_gpio_get_value_request *gpio_req = (struct ratp_bb_gpio_get_value_request *)req;
+	struct ratp_bb_gpio_get_value_response *gpio_rsp;
+	int gpio_rsp_len;
+
+	if (req_len < sizeof(*gpio_req)) {
+		pr_err("get value request ignored: size mismatch (%d < %zu)\n", req_len, sizeof(*gpio_req));
+		return 2;
+	}
+
+	gpio_rsp_len = sizeof(struct ratp_bb_gpio_get_value_response);
+	gpio_rsp = xzalloc(gpio_rsp_len);
+	gpio_rsp->header.type = cpu_to_be16(BB_RATP_TYPE_GPIO_GET_VALUE_RETURN);
+	gpio_rsp->value = !!gpio_get_value(be32_to_cpu(gpio_req->gpio));
+
+	*rsp_len = gpio_rsp_len;
+	*rsp = (struct ratp_bb *)gpio_rsp;
+	return 0;
+}
+
+BAREBOX_RATP_CMD_START(GPIO_GET_VALUE)
+	.request_id = BB_RATP_TYPE_GPIO_GET_VALUE,
+	.response_id = BB_RATP_TYPE_GPIO_GET_VALUE_RETURN,
+	.cmd = ratp_cmd_gpio_get_value
+BAREBOX_RATP_CMD_END
+
+
+struct ratp_bb_gpio_set_value_request {
+	struct ratp_bb header;
+	uint32_t       gpio;
+	uint8_t        value;
+} __packed;
+
+static int ratp_cmd_gpio_set_value(const struct ratp_bb *req, int req_len,
+				   struct ratp_bb **rsp, int *rsp_len)
+{
+	struct ratp_bb_gpio_set_value_request *gpio_req = (struct ratp_bb_gpio_set_value_request *)req;
+
+	if (req_len < sizeof(*gpio_req)) {
+		pr_err("set value request ignored: size mismatch (%d < %zu)\n", req_len, sizeof(*gpio_req));
+		return 2;
+	}
+
+	gpio_set_value(be32_to_cpu(gpio_req->gpio), gpio_req->value);
+
+	*rsp_len = sizeof(struct ratp_bb);
+	*rsp = xzalloc(*rsp_len);
+	(*rsp)->type = cpu_to_be16(BB_RATP_TYPE_GPIO_SET_VALUE_RETURN);
+	return 0;
+}
+
+BAREBOX_RATP_CMD_START(GPIO_SET_VALUE)
+	.request_id = BB_RATP_TYPE_GPIO_SET_VALUE,
+	.response_id = BB_RATP_TYPE_GPIO_SET_VALUE_RETURN,
+	.cmd = ratp_cmd_gpio_set_value
+BAREBOX_RATP_CMD_END
+
+
+struct ratp_bb_gpio_set_direction_request {
+	struct ratp_bb header;
+	uint32_t       gpio;
+	uint8_t        direction; /* 0: input, 1: output */
+	uint8_t        value;     /* applicable only if direction output */
+} __packed;
+
+struct ratp_bb_gpio_set_direction_response {
+	struct ratp_bb header;
+	uint32_t       errno;
+} __packed;
+
+static int ratp_cmd_gpio_set_direction(const struct ratp_bb *req, int req_len,
+				       struct ratp_bb **rsp, int *rsp_len)
+{
+	struct ratp_bb_gpio_set_direction_request *gpio_req = (struct ratp_bb_gpio_set_direction_request *)req;
+	struct ratp_bb_gpio_set_direction_response *gpio_rsp;
+	int gpio_rsp_len;
+	uint32_t gpio;
+	int ret;
+
+	if (req_len < sizeof(*gpio_req)) {
+		pr_err("set direction request ignored: size mismatch (%d < %zu)\n", req_len, sizeof(*gpio_req));
+		return 2;
+	}
+
+	gpio = be32_to_cpu(gpio_req->gpio);
+	if (gpio_req->direction)
+		ret = gpio_direction_output(gpio, gpio_req->value);
+	else
+		ret = gpio_direction_input(gpio);
+
+	gpio_rsp_len = sizeof(struct ratp_bb_gpio_set_direction_response);
+	gpio_rsp = xzalloc(gpio_rsp_len);
+	gpio_rsp->header.type = cpu_to_be16(BB_RATP_TYPE_GPIO_SET_DIRECTION_RETURN);
+	gpio_rsp->errno = (ret == 0 ? 0 : EIO);
+
+	*rsp_len = gpio_rsp_len;
+	*rsp = (struct ratp_bb *)gpio_rsp;
+	return 0;
+}
+
+BAREBOX_RATP_CMD_START(GPIO_SET_DIRECTION)
+	.request_id = BB_RATP_TYPE_GPIO_SET_DIRECTION,
+	.response_id = BB_RATP_TYPE_GPIO_SET_DIRECTION_RETURN,
+	.cmd = ratp_cmd_gpio_set_direction
+BAREBOX_RATP_CMD_END
diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index 32b8040b6..b6699979b 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -21,6 +21,12 @@
 #define BB_RATP_TYPE_I2C_READ_RETURN	16
 #define BB_RATP_TYPE_I2C_WRITE		17
 #define BB_RATP_TYPE_I2C_WRITE_RETURN	18
+#define BB_RATP_TYPE_GPIO_GET_VALUE		19
+#define BB_RATP_TYPE_GPIO_GET_VALUE_RETURN	20
+#define BB_RATP_TYPE_GPIO_SET_VALUE		21
+#define BB_RATP_TYPE_GPIO_SET_VALUE_RETURN	22
+#define BB_RATP_TYPE_GPIO_SET_DIRECTION		23
+#define BB_RATP_TYPE_GPIO_SET_DIRECTION_RETURN	24
 
 struct ratp_bb {
 	uint16_t type;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
