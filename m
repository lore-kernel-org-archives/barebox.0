Delivery-date: Thu, 12 Feb 2026 23:03:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem9-0012E5-0Z
	for lore@lore.pengutronix.de;
	Thu, 12 Feb 2026 23:03:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem8-0008Si-Jn
	for lore@pengutronix.de; Thu, 12 Feb 2026 23:03:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ikHJrNk9j5ixc1Pnv7EdqqAVi7xbtU7ZzHxdoaLn4z4=; b=l7D+bedT9WwC4+vJ1i/M+U8yuL
	7+zkh6nM/b8yrTKRdw3MvwnitahZB5Nml/BuGnb8eQlvvefcs8s2seZdvGt2DXwFmHnMBPT0clQhv
	4sB4kRRCVHoO77WqELAbGNoKJWpuOrIq37PSLQqN3ix+1pbY8cQuVf5aJJB35WWCeSg5R0qme3AzY
	2huwi3ffvF7yXXIGZ23+lf/+lLd14aiSPKQXmYPz9qfjiHofXUv3mNj0GmEX9Xes6HDwZUGMUoqbc
	9To2v0Ye+lPSCDiCY/z/hNVzT1ro5CdvdBYExWoRLWVtSrw9niEsggdZSfYgJ1BlpXAKHqDhTT/Vu
	z6Sh7t1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelQ-00000002fxo-1G0S;
	Thu, 12 Feb 2026 22:02:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelJ-00000002ftx-1L8Z
	for barebox@lists.infradead.org;
	Thu, 12 Feb 2026 22:02:16 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqelH-000855-1d; Thu, 12 Feb 2026 23:02:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 12 Feb 2026 23:02:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-vmaster-customers-leicageo-system1600-v2-3-f590b7d5b0e9@pengutronix.de>
References: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
In-Reply-To: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_140213_752881_D5C3FC56 
X-CRM114-Status: GOOD (  27.37  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/7] mfd: Add Hexagon EFI driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the Heaxgon Electrical Front Interface (EFI) core driver to
communicate with the system co-processor.

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mfd/Kconfig   |   9 +
 drivers/mfd/Makefile  |   1 +
 drivers/mfd/hgs-efi.c | 514 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/mfd/hgs-efi.h |  46 +++++
 4 files changed, 570 insertions(+)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 471f85cd63dad30b39017f694b594b768e463a15..22b57eee1669b5c2fffbf01c7e0d04cbfbb0525b 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -158,4 +158,13 @@ config MFD_ATMEL_SMC
 	bool
 	select MFD_SYSCON
 
+config MFD_HGS_EFI
+	tristate "Hexagon Geosystems EFI core driver"
+	depends on SERIAL_DEV_BUS
+	select CRC16
+	help
+	  Select this to get support for the Hexagon Electrical Front Interface
+	  (EFI) Co-Processor device found on several devices in the System1600
+	  platform.
+
 endmenu
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 88480f70640d464e0e12241ec422a63ca860330d..9d27b0bc336a908f1245eb7f1d257a23e271ebd7 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -27,3 +27,4 @@ obj-$(CONFIG_MFD_ATMEL_SMC)	+= atmel-smc.o
 obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
 obj-$(CONFIG_MFD_PCA9450)	+= pca9450.o
 obj-$(CONFIG_MFD_TPS65219)	+= tps65219.o
+obj-$(CONFIG_MFD_HGS_EFI)	+= hgs-efi.o
diff --git a/drivers/mfd/hgs-efi.c b/drivers/mfd/hgs-efi.c
new file mode 100644
index 0000000000000000000000000000000000000000..51c0b7ffc9c887943ac87a206ec9e45d525d09ef
--- /dev/null
+++ b/drivers/mfd/hgs-efi.c
@@ -0,0 +1,514 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2025 Pengutronix
+
+/*
+ * Multifunction core driver for Hexagon Geosystems EFI MCU that is connected
+ * via dedicated UART port. The communication protocol between both parties is
+ * called Sensor Protocol (SEP).
+ *
+ * Based on drivers/mfd/rave-sp.c
+ */
+
+#define pr_fmt(fmt) "hgs-efi: " fmt
+
+#include <asm/unaligned.h>
+#include <common.h>
+#include <init.h>
+#include <of_device.h>
+#include <mfd/hgs-efi.h>
+#include <linux/crc16.h>
+#include <linux/ctype.h>
+#include <linux/gpio/consumer.h>
+#include <linux/string.h>
+#include <mfd/hgs-efi.h>
+#include <param.h>
+
+#define HGS_EFI_SEP_ASCII_SYNCBYTE		'S'
+#define HGS_EFI_SEP_ASCII_MSG_TYPE_CMD		'C'
+#define HGS_EFI_SEP_ASCII_MSG_TYPE_EVENT	'E'
+#define HGS_EFI_SEP_ASCII_MSG_TYPE_REPLY	'R'
+#define HGS_EFI_SEP_ASCII_DELIM			','
+#define HGS_EFI_SEP_ASCII_HDR_END		':'
+
+/* Non addressed ascii header format */
+struct hgs_efi_sep_ascii_hdr {
+	u8 syncbyte;
+	u8 msg_type;
+	u8 msg_id[5]; /* u16 dec number */
+	u8 delim;
+	u8 crc16[4];  /* u16 hex number */
+	u8 hdr_end;
+} __packed;
+
+#define HGS_EFI_SEP_RX_BUFFER_SIZE	64
+#define HGS_EFI_SEP_FRAME_PREAMBLE_SZ	2
+#define HGS_EFI_SEP_FRAME_POSTAMBLE_SZ	2
+
+enum hgs_efi_sep_deframer_state {
+	HGS_EFI_SEP_EXPECT_SOF,
+	HGS_EFI_SEP_EXPECT_DATA,
+};
+
+/**
+ * struct hgs_efi_deframer - Device protocol deframer
+ *
+ * @state:  Current state of the deframer
+ * @data:   Buffer used to collect deframed data
+ * @length: Number of bytes de-framed so far
+ */
+struct hgs_efi_deframer {
+	enum hgs_efi_sep_deframer_state state;
+	unsigned char data[HGS_EFI_SEP_RX_BUFFER_SIZE];
+	size_t length;
+};
+
+/**
+ * struct hgs_efi_reply - Reply as per SEP
+ *
+ * @length:	Expected reply length
+ * @data:	Buffer to store reply payload in
+ * @msg_id:	Expected SEP msg-id
+ * @received:   Successful reply reception
+ */
+struct hgs_efi_reply {
+	size_t length;
+	void  *data;
+	u16    msg_id;
+	bool   received;
+};
+
+struct hgs_efi_sep_coder {
+	int (*encode)(struct hgs_efi *efi, struct hgs_sep_cmd *cmd, u8 *buf);
+	int (*process_frame)(struct hgs_efi *efi, void *buf, size_t size);
+	unsigned int sep_header_hdrsize;
+	char sep_sof_char;
+};
+
+struct hgs_efi {
+	struct device dev;
+	struct serdev_device *serdev;
+	struct gpio_desc *cpu_rdy_gpio;
+	const struct hgs_efi_sep_coder *coder;
+	struct hgs_efi_deframer deframer;
+	struct hgs_efi_reply *reply;
+
+	unsigned int cpu_rdy_send;
+};
+
+static int hgs_efi_signal_cpu_set(struct param_d *p, void *priv)
+{
+	struct hgs_efi *efi = priv;
+
+	gpiod_set_value(efi->cpu_rdy_gpio, 1);
+
+	return 0;
+}
+
+static void hgs_efi_write(struct hgs_efi *efi, const u8 *data, size_t data_size)
+{
+	print_hex_dump_bytes("tx: ", DUMP_PREFIX_NONE, data, data_size);
+
+	/* timeout is ignored, instead polling_window is used */
+	serdev_device_write(efi->serdev, data, data_size, SECOND);
+}
+
+int hgs_efi_exec(struct hgs_efi *efi, struct hgs_sep_cmd *cmd)
+{
+	struct device *dev = efi->serdev->dev;
+	struct hgs_efi_reply reply = {
+		.msg_id   = cmd->msg_id,
+		.data     = cmd->reply_data,
+		.length   = cmd->reply_data_size,
+		.received = false,
+	};
+	unsigned int max_msg_len;
+	u8 *msg, *p;
+	int ret;
+
+	switch (cmd->type) {
+	case HGS_SEP_MSG_TYPE_COMMAND:
+	case HGS_SEP_MSG_TYPE_EVENT:
+		break;
+	case HGS_SEP_MSG_TYPE_REPLY:
+		dev_warn(dev, "MCU initiated communication is not supported yet!\n");
+		return -EINVAL;
+	default:
+		dev_warn(dev, "Unknown EFI msg-type %#x\n", cmd->type);
+		return -EINVAL;
+	}
+
+	max_msg_len = HGS_EFI_SEP_FRAME_PREAMBLE_SZ +
+		      HGS_EFI_SEP_FRAME_POSTAMBLE_SZ +
+		      efi->coder->sep_header_hdrsize + cmd->payload_size;
+	msg = p = xzalloc(max_msg_len);
+
+	/* MCU serial flush preamble */
+	*p++ = '\r';
+	*p++ = '\n';
+
+	ret = efi->coder->encode(efi, cmd, p);
+	if (ret < 0) {
+		free(msg);
+		return ret;
+	}
+
+	p += ret;
+
+	/* SEP postamble */
+	*p++ = '\r';
+	*p++ = '\n';
+
+	efi->reply = &reply;
+	hgs_efi_write(efi, msg, p - msg);
+
+	free(msg);
+
+	if (cmd->type == HGS_SEP_MSG_TYPE_EVENT) {
+		efi->reply = NULL;
+		return 0;
+	}
+
+	/*
+	 * is_timeout will implicitly poll serdev via poller
+	 * infrastructure
+	 */
+	ret = wait_on_timeout(SECOND, reply.received);
+	if (ret)
+		dev_err(dev, "Command timeout\n");
+
+	efi->reply = NULL;
+
+	return ret;
+}
+
+#define HGS_SEP_DOUBLE_QUOTE_SUB_VAL	0x1a
+
+char *hgs_efi_extract_str_response(u8 *buf)
+{
+	unsigned char *start;
+	unsigned char *end;
+	unsigned char *p;
+	size_t i;
+
+	if (!buf || buf[0] != '"') {
+		pr_warn("No start \" char found in string response\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	start = &buf[1];
+	end = strrchr(start, '"');
+	if (!end) {
+		pr_warn("No end \" char found in string response\n");
+		return ERR_PTR(-EINVAL);
+	}
+	*end = '\0';
+
+	/*
+	 * Last step, check for substition val in string reply
+	 * and re-substitute it.
+	 */
+	p = start;
+	for (i = 0; i < strlen(start); i++)
+		if (*p == HGS_SEP_DOUBLE_QUOTE_SUB_VAL)
+			*p = '"';
+
+	return start;
+}
+
+static int hgs_sep_ascii_encode(struct hgs_efi *efi, struct hgs_sep_cmd *cmd,
+				u8 *buf)
+{
+	size_t hdr_len;
+	char msg_type;
+
+	switch (cmd->type) {
+	case HGS_SEP_MSG_TYPE_COMMAND:
+		msg_type = 'C';
+		break;
+	case HGS_SEP_MSG_TYPE_EVENT:
+		msg_type = 'E';
+		break;
+	default:
+		/* Should never happen */
+		return -EINVAL;
+	}
+
+	/*
+	 * The ASCII coder doesn't care about the CRC, also the CRC handling
+	 * has a few flaws. Therefore skip it for now.
+	 */
+	hdr_len = sprintf(buf, "S%c%u:", msg_type, cmd->msg_id);
+	memcpy(buf + hdr_len, cmd->payload, cmd->payload_size);
+
+	return hdr_len + cmd->payload_size;
+}
+
+static int
+hgs_sep_process_ascii_frame(struct hgs_efi *efi, void *_buf, size_t size)
+{
+	struct device *dev = efi->serdev->dev;
+	unsigned char *payload;
+	unsigned int copy_bytes;
+	unsigned int msgid;
+	size_t payload_len;
+	u8 *buf = _buf;
+	size_t hdrlen;
+	char *p;
+	int ret;
+
+	/*
+	 * Non addressing ASCII format:
+	 * S[MsgType][MsgID](,[CRC]):[Payload]
+	 */
+	if (buf[0] != HGS_EFI_SEP_ASCII_SYNCBYTE) {
+		dev_warn(dev, "Invalid SOF detected\n");
+		return -EINVAL;
+	}
+
+	if (buf[1] != HGS_EFI_SEP_ASCII_MSG_TYPE_REPLY) {
+		dev_warn(dev, "Invalid MsgType: %c(%#x)\n", buf[1], buf[1]);
+		return -EINVAL;
+	}
+
+	/* Split header from payload first for the following str-ops on buf */
+	payload = strchr(buf, ':');
+	if (!payload) {
+		dev_warn(dev, "Failed to find header delim\n");
+		return -EINVAL;
+	}
+
+	hdrlen = payload - buf;
+	if (hdrlen > sizeof(struct hgs_efi_sep_ascii_hdr)) {
+		dev_warn(dev, "Invalid header len detected\n");
+		return -EINVAL;
+	}
+
+	*payload = 0;
+	payload++;
+
+	/*
+	 * Albeit the CRC is optional and the calc has a few flaws the coder may
+	 * has added it. Skip the CRC check but do the MsgID check.
+	 */
+	p = strchr(buf, ',');
+	if (p)
+		*p = 0;
+
+	ret = kstrtouint(&buf[2], 10, &msgid);
+	if (ret) {
+		dev_warn(dev, "Failed to parse MsgID, ret:%d\n", ret);
+		return -EINVAL;
+	}
+
+	if (msgid != efi->reply->msg_id) {
+		dev_warn(dev, "Wrong MsgID received, ignore frame (%u != %u)\n",
+			 msgid, efi->reply->msg_id);
+		return -EINVAL;
+	}
+
+	payload_len = size - hdrlen;
+	copy_bytes = payload_len;
+	if (payload_len > efi->reply->length) {
+		dev_warn(dev, "Reply buffer to small, dropping remaining %zu bytes\n",
+			 payload_len - efi->reply->length);
+		copy_bytes = efi->reply->length;
+	}
+
+	memcpy(efi->reply->data, payload, copy_bytes);
+
+	return 0;
+}
+
+static const struct hgs_efi_sep_coder hgs_efi_ascii_coder = {
+	.encode = hgs_sep_ascii_encode,
+	.process_frame = hgs_sep_process_ascii_frame,
+	.sep_header_hdrsize = sizeof(struct hgs_efi_sep_ascii_hdr),
+	.sep_sof_char = HGS_EFI_SEP_ASCII_SYNCBYTE,
+};
+
+static bool hgs_efi_eof_received(struct hgs_efi_deframer *deframer)
+{
+	const char eof_seq[] = { '\r', '\n' };
+
+	if (deframer->length <= 2)
+		return false;
+
+	if (memcmp(&deframer->data[deframer->length - 2], eof_seq, 2))
+		return false;
+
+	return true;
+}
+
+static void hgs_efi_receive_frame(struct hgs_efi *efi,
+				  struct hgs_efi_deframer *deframer)
+{
+	int ret;
+
+	if (deframer->length < efi->coder->sep_header_hdrsize) {
+		dev_warn(efi->serdev->dev, "Bad frame: Too short\n");
+		return;
+	}
+
+	print_hex_dump_bytes("rx-frame: ", DUMP_PREFIX_NONE,
+			     deframer->data, deframer->length);
+
+	ret = efi->coder->process_frame(efi, deframer->data,
+			      deframer->length - HGS_EFI_SEP_FRAME_PREAMBLE_SZ);
+	if (!ret)
+		efi->reply->received = true;
+}
+
+static int hgs_efi_receive_buf(struct serdev_device *serdev,
+			       const unsigned char *buf, size_t size)
+{
+	struct device *dev = serdev->dev;
+	struct hgs_efi *efi = dev->priv;
+	struct hgs_efi_deframer *deframer = &efi->deframer;
+	const unsigned char *src = buf;
+	const unsigned char *end = buf + size;
+
+	print_hex_dump_bytes("rx-bytes: ", DUMP_PREFIX_NONE, buf, size);
+
+	while (src < end) {
+		const unsigned char byte = *src++;
+
+		switch (deframer->state) {
+		case HGS_EFI_SEP_EXPECT_SOF:
+			if (byte == efi->coder->sep_sof_char)
+				deframer->state = HGS_EFI_SEP_EXPECT_DATA;
+			deframer->data[deframer->length++] = byte;
+			break;
+		case HGS_EFI_SEP_EXPECT_DATA:
+			if (deframer->length >= sizeof(deframer->data)) {
+				dev_warn(dev, "Bad frame: Too long\n");
+				goto frame_reset;
+			}
+
+			deframer->data[deframer->length++] = byte;
+			if (hgs_efi_eof_received(deframer)) {
+				hgs_efi_receive_frame(efi, deframer);
+				goto frame_reset;
+			}
+		}
+	}
+
+	/*
+	 * All bytes processed but no EOF detected yet because the serdev
+	 * poller may called us to early. Keep the deframer state to continue
+	 * the work where we finished.
+	 */
+	return size;
+
+frame_reset:
+	memset(deframer->data, 0, deframer->length);
+	deframer->length = 0;
+	deframer->state = HGS_EFI_SEP_EXPECT_SOF;
+
+	return src - buf;
+}
+
+static int hgs_efi_register_dev(struct hgs_efi *efi)
+{
+	struct device *dev = &efi->dev;
+	struct param_d *p;
+	int ret;
+
+	dev->parent = efi->serdev->dev;
+	dev_set_name(dev, "efi");
+	dev->id = DEVICE_ID_SINGLE;
+
+	ret = register_device(dev);
+	if (ret)
+		return ret;
+
+	p = dev_add_param_bool(dev, "cpu_rdy", hgs_efi_signal_cpu_set, NULL,
+			       &efi->cpu_rdy_send, efi);
+	if (IS_ERR(p)) {
+		ret = PTR_ERR(p);
+		goto err_unregister_dev;
+	}
+
+	return 0;
+
+err_unregister_dev:
+	unregister_device(dev);
+	return ret;
+}
+
+static void hgs_efi_unregister_dev(struct hgs_efi *efi)
+{
+	unregister_device(&efi->dev);
+}
+
+static int hgs_efi_probe(struct device *dev)
+{
+	struct serdev_device *serdev = to_serdev_device(dev->parent);
+	struct hgs_efi *efi;
+	u32 baud;
+	int ret;
+
+	if (of_property_read_u32(dev->of_node, "current-speed", &baud)) {
+		dev_err(dev,
+			"'current-speed' is not specified in device node\n");
+		return -EINVAL;
+	}
+
+	efi = xzalloc(sizeof(*efi));
+	efi->serdev = serdev;
+	efi->coder = of_device_get_match_data(dev);
+	efi->cpu_rdy_gpio = gpiod_get(dev, "cpu-rdy", GPIOD_OUT_LOW);
+	if (IS_ERR(efi->cpu_rdy_gpio)) {
+		dev_err(dev, "Failed to get cpu-rdy GPIO\n");
+		ret = PTR_ERR(efi->cpu_rdy_gpio);
+		goto err_free;
+	}
+
+	dev->priv = efi;
+	serdev->dev = dev;
+	serdev->receive_buf = hgs_efi_receive_buf;
+	serdev->polling_interval = 200 * MSECOND;
+	serdev->polling_window = 10 * MSECOND;
+
+	ret = serdev_device_open(serdev);
+	if (ret)
+		goto err_gpiod_put;
+
+	serdev_device_set_baudrate(serdev, baud);
+
+	ret = hgs_efi_register_dev(efi);
+	if (ret) {
+		dev_err(dev, "Failed to register EFI device\n");
+		goto err_serdev_close;
+	};
+
+	ret = of_platform_populate(dev->of_node, NULL, dev);
+	if (ret) {
+		dev_err(dev, "OF populate failed\n");
+		goto err_hgs_efi_unregister_dev;
+	}
+
+	return 0;
+
+err_hgs_efi_unregister_dev:
+	hgs_efi_unregister_dev(efi);
+err_serdev_close:
+	serdev_device_close(serdev);
+err_gpiod_put:
+	gpiod_put(efi->cpu_rdy_gpio);
+err_free:
+	free(efi);
+	return ret;
+}
+
+static const struct of_device_id __maybe_unused hgs_efi_dt_ids[] = {
+	{ .compatible = "hgs,efi-gs05", .data = &hgs_efi_ascii_coder },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, lgs_efi_dt_ids);
+
+static struct driver hgs_efi_drv = {
+	.name = "hgs-efi",
+	.probe = hgs_efi_probe,
+	.of_compatible = DRV_OF_COMPAT(hgs_efi_dt_ids),
+};
+console_platform_driver(hgs_efi_drv);
diff --git a/include/mfd/hgs-efi.h b/include/mfd/hgs-efi.h
new file mode 100644
index 0000000000000000000000000000000000000000..8a848a0c7655ce1347f92838c1bdd1865c896475
--- /dev/null
+++ b/include/mfd/hgs-efi.h
@@ -0,0 +1,46 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2025 Pengutronix */
+
+#ifndef HGS_EFI_H
+#define HGS_EFI_H
+
+#include <errno.h>
+#include <linux/types.h>
+
+enum hgs_sep_msg_type {
+	HGS_SEP_MSG_TYPE_COMMAND,
+	HGS_SEP_MSG_TYPE_EVENT,
+	HGS_SEP_MSG_TYPE_REPLY,
+};
+
+struct hgs_sep_cmd {
+	enum hgs_sep_msg_type type;
+	uint16_t msg_id;
+	void *payload;
+	size_t payload_size;
+	void *reply_data;
+	size_t reply_data_size;
+};
+
+struct hgs_efi;
+
+#if defined(CONFIG_MFD_HGS_EFI)
+
+int hgs_efi_exec(struct hgs_efi *efi, struct hgs_sep_cmd *cmd);
+char *hgs_efi_extract_str_response(u8 *buf);
+
+#else
+
+static inline int hgs_efi_exec(struct hgs_efi *efi, struct hgs_sep_cmd *cmd)
+{
+	return -ENOTSUPP;
+}
+
+static inline char *hgs_efi_extract_str_response(u8 *buf)
+{
+	return ERR_PTR(-ENOTSUPP);
+}
+
+#endif /* CONFIG_MFD_HGS_EFI */
+
+#endif /* HGS_EFI_H */

-- 
2.47.3



