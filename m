Delivery-date: Thu, 03 Aug 2023 12:53:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVx2-004wYZ-Uq
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:53:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVwu-0002gh-BF
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:53:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p25qJLQOw6LUn7Afu/nTjW8r/nzE/nWBqocRta0qt9Q=; b=aqfKvOnsYXaj97bItawru+S4TR
	dR7xrQCXdr2G7EKpTTR6IBwqM2QdY16o3IOMiR49ImaG9QlcmnPNwi3LtFa5E1FAsL1yoSmJBWj3V
	P4uYGraBtkpLQatP4UuYzQDQUJhNNpbWhNzkT3Plp2IYYnYA6xbmNlAGATQz/ppNexyvAmIlZLBNj
	yeTR9sFfwv2oi1bdXQRnVux5K0AHgDmkBkfv1TtzXGsPdbZAwnHjXOd6sWfyAADM+/ClHa5Go8F7s
	UKiRZXgVlqeJ6xMm1WVPOe4E4OYl+LoOsK3L8FEU62PsHOyfmzVlsYjYu7sX/pqzpEdyzFvZkUWpI
	CAfiqrXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVut-007VCe-28;
	Thu, 03 Aug 2023 10:50:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuD-007UYB-0v
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-0000vZ-0A; Thu, 03 Aug 2023 12:50:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-000ovQ-9G; Thu, 03 Aug 2023 12:50:07 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAzI-DH; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:49 +0200
Message-Id: <20230803105003.4088205-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/22] firmware: Add basic support for TI System Control Interface (TI SCI) protocol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The TI System Control Interface is needed to control things like clocks
and power domains on K3 SoCs. The code is based on the corresponding
U-Boot code from U-Boot 2023.07-rc6.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/firmware/Kconfig         |   15 +
 drivers/firmware/Makefile        |    1 +
 drivers/firmware/ti_sci.c        | 2745 ++++++++++++++++++++++++++++++
 drivers/firmware/ti_sci.h        | 1533 +++++++++++++++++
 include/soc/ti/ti_sci_protocol.h |  657 +++++++
 5 files changed, 4951 insertions(+)
 create mode 100644 drivers/firmware/ti_sci.c
 create mode 100644 drivers/firmware/ti_sci.h
 create mode 100644 include/soc/ti/ti_sci_protocol.h

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index a6c564320e..b4244fb1db 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -42,4 +42,19 @@ config QEMU_FW_CFG
 	  and read/writes are translated to the MMIO/IO port appropriate
 	  for the platform.
 
+config TI_SCI_PROTOCOL
+	bool "TI System Control Interface (TISCI) Message Protocol"
+	depends on TI_MESSAGE_MANAGER
+	help
+	  TI System Control Interface (TISCI) Message Protocol is used to manage
+	  compute systems such as ARM, DSP etc with the system controller in
+	  complex System on Chip(SoC) such as those found on certain keystone
+	  generation SoC from TI.
+
+	  System controller provides various facilities including power
+	  management function support.
+
+	  This protocol library is used by client drivers to use the features
+	  provided by the system controller.
+
 endmenu
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index 90f5113f53..4eabf42fd6 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -3,4 +3,5 @@ obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
 obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o socfpga_sdr.o
 obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynqmp-fpga.o
 obj-$(CONFIG_QEMU_FW_CFG) += qemu_fw_cfg.o
+obj-$(CONFIG_TI_SCI_PROTOCOL) += ti_sci.o
 obj-y += arm_scmi/
diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
new file mode 100644
index 0000000000..2e930064f4
--- /dev/null
+++ b/drivers/firmware/ti_sci.c
@@ -0,0 +1,2745 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Texas Instruments System Control Interface Protocol Driver
+ * Based on drivers/firmware/ti_sci.c from Linux.
+ *
+ * Copyright (C) 2018 Texas Instruments Incorporated - http://www.ti.com/
+ *	Lokesh Vutla <lokeshvutla@ti.com>
+ */
+
+#include <common.h>
+#include <mailbox.h>
+#include <restart.h>
+#include <soc/ti/k3-sec-proxy.h>
+#include <soc/ti/ti_sci_protocol.h>
+
+#include "ti_sci.h"
+
+/* List of all TI SCI devices active in system */
+static LIST_HEAD(ti_sci_list);
+
+/**
+ * struct ti_sci_xfer - Structure representing a message flow
+ * @tx_message:	Transmit message
+ * @rx_len:	Receive message length
+ */
+struct ti_sci_xfer {
+	struct k3_sec_proxy_msg tx_message;
+	u8 rx_len;
+};
+
+/**
+ * struct ti_sci_rm_type_map - Structure representing TISCI Resource
+ *				management representation of dev_ids.
+ * @dev_id:	TISCI device ID
+ * @type:	Corresponding id as identified by TISCI RM.
+ *
+ * Note: This is used only as a work around for using RM range apis
+ *	for AM654 SoC. For future SoCs dev_id will be used as type
+ *	for RM range APIs. In order to maintain ABI backward compatibility
+ *	type is not being changed for AM654 SoC.
+ */
+struct ti_sci_rm_type_map {
+	u32 dev_id;
+	u16 type;
+};
+
+/**
+ * struct ti_sci_desc - Description of SoC integration
+ * @default_host_id:	Host identifier representing the compute entity
+ * @max_rx_timeout_ms:	Timeout for communication with SoC (in Milliseconds)
+ * @max_msgs: Maximum number of messages that can be pending
+ *		  simultaneously in the system
+ * @max_msg_size: Maximum size of data per message that can be handled.
+ */
+struct ti_sci_desc {
+	u8 default_host_id;
+	int max_rx_timeout_ms;
+	int max_msgs;
+	int max_msg_size;
+};
+
+/**
+ * struct ti_sci_info - Structure representing a TI SCI instance
+ * @dev:	Device pointer
+ * @desc:	SoC description for this instance
+ * @handle:	Instance of TI SCI handle to send to clients.
+ * @chan_tx:	Transmit mailbox channel
+ * @chan_rx:	Receive mailbox channel
+ * @xfer:	xfer info
+ * @list:	list head
+ * @is_secure:	Determines if the communication is through secure threads.
+ * @host_id:	Host identifier representing the compute entity
+ * @seq:	Seq id used for verification for tx and rx message.
+ */
+struct ti_sci_info {
+	struct device *dev;
+	const struct ti_sci_desc *desc;
+	struct ti_sci_handle handle;
+	struct mbox_chan *chan_tx;
+	struct mbox_chan *chan_rx;
+	struct mbox_chan *chan_notify;
+	struct ti_sci_xfer xfer;
+	struct list_head list;
+	struct list_head dev_list;
+	bool is_secure;
+	u32 host_id;
+	u8 seq;
+};
+
+struct ti_sci_exclusive_dev {
+	u32 id;
+	u32 count;
+	struct list_head list;
+};
+
+#define handle_to_ti_sci_info(h) container_of(h, struct ti_sci_info, handle)
+
+/**
+ * ti_sci_setup_one_xfer() - Setup one message type
+ * @info:	Pointer to SCI entity information
+ * @msg_type:	Message type
+ * @msg_flags:	Flag to set for the message
+ * @buf:	Buffer to be send to mailbox channel
+ * @tx_message_size: transmit message size
+ * @rx_message_size: receive message size. may be set to zero for send-only
+ *		     transactions.
+ *
+ * Helper function which is used by various command functions that are
+ * exposed to clients of this driver for allocating a message traffic event.
+ *
+ * Return: Corresponding ti_sci_xfer pointer if all went fine,
+ *	   else appropriate error pointer.
+ */
+static struct ti_sci_xfer *ti_sci_setup_one_xfer(struct ti_sci_info *info,
+						 u16 msg_type, u32 msg_flags,
+						 u32 *buf,
+						 size_t tx_message_size,
+						 size_t rx_message_size)
+{
+	struct ti_sci_xfer *xfer = &info->xfer;
+	struct ti_sci_msg_hdr *hdr;
+
+	/* Ensure we have sane transfer sizes */
+	if (rx_message_size > info->desc->max_msg_size ||
+	    tx_message_size > info->desc->max_msg_size ||
+	    (rx_message_size > 0 && rx_message_size < sizeof(*hdr)) ||
+	    tx_message_size < sizeof(*hdr)) {
+		dev_err(info->dev, "TI-SCI message transfer size not sane\n");
+		return ERR_PTR(-ERANGE);
+	}
+
+
+	info->seq = ~info->seq;
+	xfer->tx_message.buf = buf;
+	xfer->tx_message.len = tx_message_size;
+	xfer->rx_len = (u8)rx_message_size;
+
+	hdr = (struct ti_sci_msg_hdr *)buf;
+	hdr->seq = info->seq;
+	hdr->type = msg_type;
+	hdr->host = info->host_id;
+	hdr->flags = msg_flags;
+
+	return xfer;
+}
+
+/**
+ * ti_sci_get_response() - Receive response from mailbox channel
+ * @info:	Pointer to SCI entity information
+ * @xfer:	Transfer to initiate and wait for response
+ * @chan:	Channel to receive the response
+ *
+ * Return: -ETIMEDOUT in case of no response, if transmit error,
+ *	   return corresponding error, else if all goes well,
+ *	   return 0.
+ */
+static int ti_sci_get_response(struct ti_sci_info *info,
+				      struct ti_sci_xfer *xfer,
+				      struct mbox_chan *chan)
+{
+	struct k3_sec_proxy_msg *msg = &xfer->tx_message;
+	struct ti_sci_secure_msg_hdr *secure_hdr;
+	struct ti_sci_msg_hdr *hdr;
+	int ret;
+
+	/* Receive the response */
+	ret = mbox_recv(chan, msg, info->desc->max_rx_timeout_ms * 1000);
+	if (ret) {
+		dev_err(info->dev, "%s: Message receive failed. ret = %d\n",
+			__func__, ret);
+		return ret;
+	}
+
+	/* ToDo: Verify checksum */
+	if (info->is_secure) {
+		secure_hdr = (struct ti_sci_secure_msg_hdr *)msg->buf;
+		msg->buf = (u32 *)((void *)msg->buf + sizeof(*secure_hdr));
+	}
+
+	/* msg is updated by mailbox driver */
+	hdr = (struct ti_sci_msg_hdr *)msg->buf;
+
+	/* Sanity check for message response */
+	if (hdr->seq != info->seq) {
+		dev_dbg(info->dev, "%s: Message for %d is not expected\n",
+			__func__, hdr->seq);
+		return ret;
+	}
+
+	if (msg->len > info->desc->max_msg_size) {
+		dev_err(info->dev, "%s: Unable to handle %zu xfer (max %d)\n",
+			__func__, msg->len, info->desc->max_msg_size);
+		return -EINVAL;
+	}
+
+	if (msg->len < xfer->rx_len) {
+		dev_err(info->dev, "%s: Recv xfer %zu < expected %d length\n",
+			__func__, msg->len, xfer->rx_len);
+	}
+
+	return ret;
+}
+
+/**
+ * ti_sci_is_response_ack() - Generic ACK/NACK message checkup
+ * @r:	pointer to response buffer
+ *
+ * Return: true if the response was an ACK, else returns false.
+ */
+static bool ti_sci_is_response_ack(void *r)
+{
+	struct ti_sci_msg_hdr *hdr = r;
+
+	return hdr->flags & TI_SCI_FLAG_RESP_GENERIC_ACK ? true : false;
+}
+
+/**
+ * ti_sci_do_xfer() - Do one transfer
+ * @info:	Pointer to SCI entity information
+ * @xfer:	Transfer to initiate and wait for response
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_do_xfer(struct ti_sci_info *info,
+				 struct ti_sci_xfer *xfer)
+{
+	struct k3_sec_proxy_msg *msg = &xfer->tx_message;
+	u8 secure_buf[info->desc->max_msg_size];
+	struct ti_sci_secure_msg_hdr secure_hdr;
+	int ret;
+
+	if (info->is_secure) {
+		/* ToDo: get checksum of the entire message */
+		secure_hdr.checksum = 0;
+		secure_hdr.reserved = 0;
+		memcpy(&secure_buf[sizeof(secure_hdr)], xfer->tx_message.buf,
+		       xfer->tx_message.len);
+
+		xfer->tx_message.buf = (u32 *)secure_buf;
+		xfer->tx_message.len += sizeof(secure_hdr);
+
+		if (xfer->rx_len)
+			xfer->rx_len += sizeof(secure_hdr);
+	}
+
+	/* Send the message */
+	ret = mbox_send(info->chan_tx, msg);
+	if (ret) {
+		dev_err(info->dev, "%s: Message sending failed. ret = %d\n",
+			__func__, ret);
+		return ret;
+	}
+
+	/* Get response if requested */
+	if (xfer->rx_len) {
+		ret = ti_sci_get_response(info, xfer, info->chan_rx);
+		if (!ti_sci_is_response_ack(xfer->tx_message.buf)) {
+			dev_err(info->dev, "Message not acknowledged\n");
+			ret = -ENODEV;
+		}
+	}
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_get_revision() - command to get the revision of the SCI entity
+ * @handle:	pointer to TI SCI handle
+ *
+ * Updates the SCI information in the internal data structure.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_get_revision(struct ti_sci_handle *handle)
+{
+	struct ti_sci_msg_resp_version *rev_info;
+	struct ti_sci_version_info *ver;
+	struct ti_sci_msg_hdr hdr;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_VERSION,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&hdr, sizeof(struct ti_sci_msg_hdr),
+				     sizeof(*rev_info));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	rev_info = (struct ti_sci_msg_resp_version *)xfer->tx_message.buf;
+
+	ver = &handle->version;
+	ver->abi_major = rev_info->abi_major;
+	ver->abi_minor = rev_info->abi_minor;
+	ver->firmware_revision = rev_info->firmware_revision;
+	strncpy(ver->firmware_description, rev_info->firmware_description,
+		sizeof(ver->firmware_description));
+
+	return 0;
+}
+
+/**
+ * cmd_set_board_config_using_msg() - Common command to send board configuration
+ *                                    message
+ * @handle:	pointer to TI SCI handle
+ * @msg_type:	One of the TISCI message types to set board configuration
+ * @addr:	Address where the board config structure is located
+ * @size:	Size of the board config structure
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int cmd_set_board_config_using_msg(const struct ti_sci_handle *handle,
+					  u16 msg_type, u64 addr, u32 size)
+{
+	struct ti_sci_msg_board_config req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, msg_type,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.boardcfgp_high = (addr >> 32) & 0xffffffff;
+	req.boardcfgp_low = addr & 0xffffffff;
+	req.boardcfg_size = size;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_set_board_config() - Command to send board configuration message
+ * @handle:	pointer to TI SCI handle
+ * @addr:	Address where the board config structure is located
+ * @size:	Size of the board config structure
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_set_board_config(const struct ti_sci_handle *handle,
+				       u64 addr, u32 size)
+{
+	return cmd_set_board_config_using_msg(handle,
+					      TI_SCI_MSG_BOARD_CONFIG,
+					      addr, size);
+}
+
+/**
+ * ti_sci_cmd_set_board_config_rm() - Command to send board resource
+ *				      management configuration
+ * @handle:	pointer to TI SCI handle
+ * @addr:	Address where the board RM config structure is located
+ * @size:	Size of the RM config structure
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static
+int ti_sci_cmd_set_board_config_rm(const struct ti_sci_handle *handle,
+				   u64 addr, u32 size)
+{
+	return cmd_set_board_config_using_msg(handle,
+					      TI_SCI_MSG_BOARD_CONFIG_RM,
+					      addr, size);
+}
+
+/**
+ * ti_sci_cmd_set_board_config_security() - Command to send board security
+ *					    configuration message
+ * @handle:	pointer to TI SCI handle
+ * @addr:	Address where the board security config structure is located
+ * @size:	Size of the security config structure
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static
+int ti_sci_cmd_set_board_config_security(const struct ti_sci_handle *handle,
+					 u64 addr, u32 size)
+{
+	return cmd_set_board_config_using_msg(handle,
+					      TI_SCI_MSG_BOARD_CONFIG_SECURITY,
+					      addr, size);
+}
+
+/**
+ * ti_sci_cmd_set_board_config_pm() - Command to send board power and clock
+ *				      configuration message
+ * @handle:	pointer to TI SCI handle
+ * @addr:	Address where the board PM config structure is located
+ * @size:	Size of the PM config structure
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_set_board_config_pm(const struct ti_sci_handle *handle,
+					  u64 addr, u32 size)
+{
+	return cmd_set_board_config_using_msg(handle,
+					      TI_SCI_MSG_BOARD_CONFIG_PM,
+					      addr, size);
+}
+
+static struct ti_sci_exclusive_dev
+*ti_sci_get_exclusive_dev(struct list_head *dev_list, u32 id)
+{
+	struct ti_sci_exclusive_dev *dev;
+
+	list_for_each_entry(dev, dev_list, list)
+		if (dev->id == id)
+			return dev;
+
+	return NULL;
+}
+
+static void ti_sci_add_exclusive_dev(struct ti_sci_info *info, u32 id)
+{
+	struct ti_sci_exclusive_dev *dev;
+
+	dev = ti_sci_get_exclusive_dev(&info->dev_list, id);
+	if (dev) {
+		dev->count++;
+		return;
+	}
+
+	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
+	dev->id = id;
+	dev->count = 1;
+	INIT_LIST_HEAD(&dev->list);
+	list_add_tail(&dev->list, &info->dev_list);
+}
+
+static void ti_sci_delete_exclusive_dev(struct ti_sci_info *info, u32 id)
+{
+	struct ti_sci_exclusive_dev *dev;
+
+	dev = ti_sci_get_exclusive_dev(&info->dev_list, id);
+	if (!dev)
+		return;
+
+	if (dev->count > 0)
+		dev->count--;
+}
+
+/**
+ * ti_sci_set_device_state() - Set device state helper
+ * @handle:	pointer to TI SCI handle
+ * @id:		Device identifier
+ * @flags:	flags to setup for the device
+ * @state:	State to move the device to
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_set_device_state(const struct ti_sci_handle *handle,
+				   u32 id, u32 flags, u8 state)
+{
+	struct ti_sci_msg_req_set_device_state req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_SET_DEVICE_STATE,
+				     flags | TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.id = id;
+	req.state = state;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	if (state == MSG_DEVICE_SW_STATE_AUTO_OFF)
+		ti_sci_delete_exclusive_dev(info, id);
+	else if (flags & MSG_FLAG_DEVICE_EXCLUSIVE)
+		ti_sci_add_exclusive_dev(info, id);
+
+	return ret;
+}
+
+/**
+ * ti_sci_set_device_state_no_wait() - Set device state helper without
+ *				       requesting or waiting for a response.
+ * @handle:	pointer to TI SCI handle
+ * @id:		Device identifier
+ * @flags:	flags to setup for the device
+ * @state:	State to move the device to
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_set_device_state_no_wait(const struct ti_sci_handle *handle,
+					   u32 id, u32 flags, u8 state)
+{
+	struct ti_sci_msg_req_set_device_state req;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_SET_DEVICE_STATE,
+				     flags | TI_SCI_FLAG_REQ_GENERIC_NORESPONSE,
+				     (u32 *)&req, sizeof(req), 0);
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.id = id;
+	req.state = state;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_get_device_state() - Get device state helper
+ * @handle:	Handle to the device
+ * @id:		Device Identifier
+ * @clcnt:	Pointer to Context Loss Count
+ * @resets:	pointer to resets
+ * @p_state:	pointer to p_state
+ * @c_state:	pointer to c_state
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_get_device_state(const struct ti_sci_handle *handle,
+				   u32 id,  u32 *clcnt,  u32 *resets,
+				   u8 *p_state,  u8 *c_state)
+{
+	struct ti_sci_msg_resp_get_device_state *resp;
+	struct ti_sci_msg_req_get_device_state req;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	if (!clcnt && !resets && !p_state && !c_state)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_GET_DEVICE_STATE,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.id = id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	resp = (struct ti_sci_msg_resp_get_device_state *)xfer->tx_message.buf;
+
+	if (clcnt)
+		*clcnt = resp->context_loss_count;
+	if (resets)
+		*resets = resp->resets;
+	if (p_state)
+		*p_state = resp->programmed_state;
+	if (c_state)
+		*c_state = resp->current_state;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_get_device() - command to request for device managed by TISCI
+ * @handle:	Pointer to TISCI handle as retrieved by *ti_sci_get_handle
+ * @id:		Device Identifier
+ *
+ * Request for the device - NOTE: the client MUST maintain integrity of
+ * usage count by balancing get_device with put_device. No refcounting is
+ * managed by driver for that purpose.
+ *
+ * NOTE: The request is for exclusive access for the processor.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_get_device(const struct ti_sci_handle *handle, u32 id)
+{
+	return ti_sci_set_device_state(handle, id, 0,
+				       MSG_DEVICE_SW_STATE_ON);
+}
+
+static int ti_sci_cmd_get_device_exclusive(const struct ti_sci_handle *handle,
+					   u32 id)
+{
+	return ti_sci_set_device_state(handle, id, MSG_FLAG_DEVICE_EXCLUSIVE,
+				       MSG_DEVICE_SW_STATE_ON);
+}
+
+/**
+ * ti_sci_cmd_idle_device() - Command to idle a device managed by TISCI
+ * @handle:	Pointer to TISCI handle as retrieved by *ti_sci_get_handle
+ * @id:		Device Identifier
+ *
+ * Request for the device - NOTE: the client MUST maintain integrity of
+ * usage count by balancing get_device with put_device. No refcounting is
+ * managed by driver for that purpose.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_idle_device(const struct ti_sci_handle *handle, u32 id)
+{
+	return ti_sci_set_device_state(handle, id,
+				       0,
+				       MSG_DEVICE_SW_STATE_RETENTION);
+}
+
+static int ti_sci_cmd_idle_device_exclusive(const struct ti_sci_handle *handle,
+					    u32 id)
+{
+	return ti_sci_set_device_state(handle, id, MSG_FLAG_DEVICE_EXCLUSIVE,
+				       MSG_DEVICE_SW_STATE_RETENTION);
+}
+
+/**
+ * ti_sci_cmd_put_device() - command to release a device managed by TISCI
+ * @handle:	Pointer to TISCI handle as retrieved by *ti_sci_get_handle
+ * @id:		Device Identifier
+ *
+ * Request for the device - NOTE: the client MUST maintain integrity of
+ * usage count by balancing get_device with put_device. No refcounting is
+ * managed by driver for that purpose.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_put_device(const struct ti_sci_handle *handle, u32 id)
+{
+	return ti_sci_set_device_state(handle, id, 0,
+				       MSG_DEVICE_SW_STATE_AUTO_OFF);
+}
+
+static
+int ti_sci_cmd_release_exclusive_devices(const struct ti_sci_handle *handle)
+{
+	struct ti_sci_exclusive_dev *dev, *tmp;
+	struct ti_sci_info *info;
+	int i, cnt;
+
+	info = handle_to_ti_sci_info(handle);
+
+	list_for_each_entry_safe(dev, tmp, &info->dev_list, list) {
+		cnt = dev->count;
+		debug("%s: id = %d, cnt = %d\n", __func__, dev->id, cnt);
+		for (i = 0; i < cnt; i++)
+			ti_sci_cmd_put_device(handle, dev->id);
+	}
+
+	return 0;
+}
+
+/**
+ * ti_sci_cmd_dev_is_valid() - Is the device valid
+ * @handle:	Pointer to TISCI handle as retrieved by *ti_sci_get_handle
+ * @id:		Device Identifier
+ *
+ * Return: 0 if all went fine and the device ID is valid, else return
+ * appropriate error.
+ */
+static int ti_sci_cmd_dev_is_valid(const struct ti_sci_handle *handle, u32 id)
+{
+	u8 unused;
+
+	/* check the device state which will also tell us if the ID is valid */
+	return ti_sci_get_device_state(handle, id, NULL, NULL, NULL, &unused);
+}
+
+/**
+ * ti_sci_cmd_dev_get_clcnt() - Get context loss counter
+ * @handle:	Pointer to TISCI handle
+ * @id:		Device Identifier
+ * @count:	Pointer to Context Loss counter to populate
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_dev_get_clcnt(const struct ti_sci_handle *handle, u32 id,
+				    u32 *count)
+{
+	return ti_sci_get_device_state(handle, id, count, NULL, NULL, NULL);
+}
+
+/**
+ * ti_sci_cmd_dev_is_idle() - Check if the device is requested to be idle
+ * @handle:	Pointer to TISCI handle
+ * @id:		Device Identifier
+ * @r_state:	true if requested to be idle
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_dev_is_idle(const struct ti_sci_handle *handle, u32 id,
+				  bool *r_state)
+{
+	int ret;
+	u8 state;
+
+	if (!r_state)
+		return -EINVAL;
+
+	ret = ti_sci_get_device_state(handle, id, NULL, NULL, &state, NULL);
+	if (ret)
+		return ret;
+
+	*r_state = (state == MSG_DEVICE_SW_STATE_RETENTION);
+
+	return 0;
+}
+
+/**
+ * ti_sci_cmd_dev_is_stop() - Check if the device is requested to be stopped
+ * @handle:	Pointer to TISCI handle
+ * @id:		Device Identifier
+ * @r_state:	true if requested to be stopped
+ * @curr_state:	true if currently stopped.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_dev_is_stop(const struct ti_sci_handle *handle, u32 id,
+				  bool *r_state,  bool *curr_state)
+{
+	int ret;
+	u8 p_state, c_state;
+
+	if (!r_state && !curr_state)
+		return -EINVAL;
+
+	ret =
+	    ti_sci_get_device_state(handle, id, NULL, NULL, &p_state, &c_state);
+	if (ret)
+		return ret;
+
+	if (r_state)
+		*r_state = (p_state == MSG_DEVICE_SW_STATE_AUTO_OFF);
+	if (curr_state)
+		*curr_state = (c_state == MSG_DEVICE_HW_STATE_OFF);
+
+	return 0;
+}
+
+/**
+ * ti_sci_cmd_dev_is_on() - Check if the device is requested to be ON
+ * @handle:	Pointer to TISCI handle
+ * @id:		Device Identifier
+ * @r_state:	true if requested to be ON
+ * @curr_state:	true if currently ON and active
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_dev_is_on(const struct ti_sci_handle *handle, u32 id,
+				bool *r_state,  bool *curr_state)
+{
+	int ret;
+	u8 p_state, c_state;
+
+	if (!r_state && !curr_state)
+		return -EINVAL;
+
+	ret =
+	    ti_sci_get_device_state(handle, id, NULL, NULL, &p_state, &c_state);
+	if (ret)
+		return ret;
+
+	if (r_state)
+		*r_state = (p_state == MSG_DEVICE_SW_STATE_ON);
+	if (curr_state)
+		*curr_state = (c_state == MSG_DEVICE_HW_STATE_ON);
+
+	return 0;
+}
+
+/**
+ * ti_sci_cmd_dev_is_trans() - Check if the device is currently transitioning
+ * @handle:	Pointer to TISCI handle
+ * @id:		Device Identifier
+ * @curr_state:	true if currently transitioning.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_dev_is_trans(const struct ti_sci_handle *handle, u32 id,
+				   bool *curr_state)
+{
+	int ret;
+	u8 state;
+
+	if (!curr_state)
+		return -EINVAL;
+
+	ret = ti_sci_get_device_state(handle, id, NULL, NULL, NULL, &state);
+	if (ret)
+		return ret;
+
+	*curr_state = (state == MSG_DEVICE_HW_STATE_TRANS);
+
+	return 0;
+}
+
+/**
+ * ti_sci_cmd_set_device_resets() - command to set resets for device managed
+ *				    by TISCI
+ * @handle:	Pointer to TISCI handle as retrieved by *ti_sci_get_handle
+ * @id:		Device Identifier
+ * @reset_state: Device specific reset bit field
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_set_device_resets(const struct ti_sci_handle *handle,
+					u32 id, u32 reset_state)
+{
+	struct ti_sci_msg_req_set_device_resets req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_SET_DEVICE_RESETS,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.id = id;
+	req.resets = reset_state;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_get_device_resets() - Get reset state for device managed
+ *				    by TISCI
+ * @handle:		Pointer to TISCI handle
+ * @id:			Device Identifier
+ * @reset_state:	Pointer to reset state to populate
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_get_device_resets(const struct ti_sci_handle *handle,
+					u32 id, u32 *reset_state)
+{
+	return ti_sci_get_device_state(handle, id, NULL, reset_state, NULL,
+				       NULL);
+}
+
+/**
+ * ti_sci_set_clock_state() - Set clock state helper
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @flags:	Header flags as needed
+ * @state:	State to request for the clock.
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_set_clock_state(const struct ti_sci_handle *handle,
+				  u32 dev_id, u8 clk_id,
+				  u32 flags, u8 state)
+{
+	struct ti_sci_msg_req_set_clock_state req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_SET_CLOCK_STATE,
+				     flags | TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.dev_id = dev_id;
+	req.clk_id = clk_id;
+	req.request_state = state;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_get_clock_state() - Get clock state helper
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @programmed_state:	State requested for clock to move to
+ * @current_state:	State that the clock is currently in
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_get_clock_state(const struct ti_sci_handle *handle,
+				      u32 dev_id, u8 clk_id,
+				      u8 *programmed_state, u8 *current_state)
+{
+	struct ti_sci_msg_resp_get_clock_state *resp;
+	struct ti_sci_msg_req_get_clock_state req;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	if (!programmed_state && !current_state)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_GET_CLOCK_STATE,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.dev_id = dev_id;
+	req.clk_id = clk_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	resp = (struct ti_sci_msg_resp_get_clock_state *)xfer->tx_message.buf;
+
+	if (programmed_state)
+		*programmed_state = resp->programmed_state;
+	if (current_state)
+		*current_state = resp->current_state;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_get_clock() - Get control of a clock from TI SCI
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @needs_ssc: 'true' if Spread Spectrum clock is desired, else 'false'
+ * @can_change_freq: 'true' if frequency change is desired, else 'false'
+ * @enable_input_term: 'true' if input termination is desired, else 'false'
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_get_clock(const struct ti_sci_handle *handle, u32 dev_id,
+				u8 clk_id, bool needs_ssc, bool can_change_freq,
+				bool enable_input_term)
+{
+	u32 flags = 0;
+
+	flags |= needs_ssc ? MSG_FLAG_CLOCK_ALLOW_SSC : 0;
+	flags |= can_change_freq ? MSG_FLAG_CLOCK_ALLOW_FREQ_CHANGE : 0;
+	flags |= enable_input_term ? MSG_FLAG_CLOCK_INPUT_TERM : 0;
+
+	return ti_sci_set_clock_state(handle, dev_id, clk_id, flags,
+				      MSG_CLOCK_SW_STATE_REQ);
+}
+
+/**
+ * ti_sci_cmd_idle_clock() - Idle a clock which is in our control
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ *
+ * NOTE: This clock must have been requested by get_clock previously.
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_idle_clock(const struct ti_sci_handle *handle,
+				 u32 dev_id, u8 clk_id)
+{
+	return ti_sci_set_clock_state(handle, dev_id, clk_id, 0,
+				      MSG_CLOCK_SW_STATE_UNREQ);
+}
+
+/**
+ * ti_sci_cmd_put_clock() - Release a clock from our control back to TISCI
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ *
+ * NOTE: This clock must have been requested by get_clock previously.
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_put_clock(const struct ti_sci_handle *handle,
+				u32 dev_id, u8 clk_id)
+{
+	return ti_sci_set_clock_state(handle, dev_id, clk_id, 0,
+				      MSG_CLOCK_SW_STATE_AUTO);
+}
+
+/**
+ * ti_sci_cmd_clk_is_auto() - Is the clock being auto managed
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @req_state: state indicating if the clock is auto managed
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_clk_is_auto(const struct ti_sci_handle *handle,
+				  u32 dev_id, u8 clk_id, bool *req_state)
+{
+	u8 state = 0;
+	int ret;
+
+	if (!req_state)
+		return -EINVAL;
+
+	ret = ti_sci_cmd_get_clock_state(handle, dev_id, clk_id, &state, NULL);
+	if (ret)
+		return ret;
+
+	*req_state = (state == MSG_CLOCK_SW_STATE_AUTO);
+	return 0;
+}
+
+/**
+ * ti_sci_cmd_clk_is_on() - Is the clock ON
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @req_state: state indicating if the clock is managed by us and enabled
+ * @curr_state: state indicating if the clock is ready for operation
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_clk_is_on(const struct ti_sci_handle *handle, u32 dev_id,
+				u8 clk_id, bool *req_state, bool *curr_state)
+{
+	u8 c_state = 0, r_state = 0;
+	int ret;
+
+	if (!req_state && !curr_state)
+		return -EINVAL;
+
+	ret = ti_sci_cmd_get_clock_state(handle, dev_id, clk_id,
+					 &r_state, &c_state);
+	if (ret)
+		return ret;
+
+	if (req_state)
+		*req_state = (r_state == MSG_CLOCK_SW_STATE_REQ);
+	if (curr_state)
+		*curr_state = (c_state == MSG_CLOCK_HW_STATE_READY);
+	return 0;
+}
+
+/**
+ * ti_sci_cmd_clk_is_off() - Is the clock OFF
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @req_state: state indicating if the clock is managed by us and disabled
+ * @curr_state: state indicating if the clock is NOT ready for operation
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_clk_is_off(const struct ti_sci_handle *handle, u32 dev_id,
+				 u8 clk_id, bool *req_state, bool *curr_state)
+{
+	u8 c_state = 0, r_state = 0;
+	int ret;
+
+	if (!req_state && !curr_state)
+		return -EINVAL;
+
+	ret = ti_sci_cmd_get_clock_state(handle, dev_id, clk_id,
+					 &r_state, &c_state);
+	if (ret)
+		return ret;
+
+	if (req_state)
+		*req_state = (r_state == MSG_CLOCK_SW_STATE_UNREQ);
+	if (curr_state)
+		*curr_state = (c_state == MSG_CLOCK_HW_STATE_NOT_READY);
+	return 0;
+}
+
+/**
+ * ti_sci_cmd_clk_set_parent() - Set the clock source of a specific device clock
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @parent_id:	Parent clock identifier to set
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_clk_set_parent(const struct ti_sci_handle *handle,
+				     u32 dev_id, u8 clk_id, u8 parent_id)
+{
+	struct ti_sci_msg_req_set_clock_parent req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_SET_CLOCK_PARENT,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.dev_id = dev_id;
+	req.clk_id = clk_id;
+	req.parent_id = parent_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_clk_get_parent() - Get current parent clock source
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @parent_id:	Current clock parent
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_clk_get_parent(const struct ti_sci_handle *handle,
+				     u32 dev_id, u8 clk_id, u8 *parent_id)
+{
+	struct ti_sci_msg_resp_get_clock_parent *resp;
+	struct ti_sci_msg_req_get_clock_parent req;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle || !parent_id)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_GET_CLOCK_PARENT,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.dev_id = dev_id;
+	req.clk_id = clk_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	resp = (struct ti_sci_msg_resp_get_clock_parent *)xfer->tx_message.buf;
+
+	*parent_id = resp->parent_id;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_clk_get_num_parents() - Get num parents of the current clk source
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @num_parents: Returns he number of parents to the current clock.
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_clk_get_num_parents(const struct ti_sci_handle *handle,
+					  u32 dev_id, u8 clk_id,
+					  u8 *num_parents)
+{
+	struct ti_sci_msg_resp_get_clock_num_parents *resp;
+	struct ti_sci_msg_req_get_clock_num_parents req;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle || !num_parents)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_GET_NUM_CLOCK_PARENTS,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.dev_id = dev_id;
+	req.clk_id = clk_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	resp = (struct ti_sci_msg_resp_get_clock_num_parents *)
+							xfer->tx_message.buf;
+
+	*num_parents = resp->num_parents;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_clk_get_match_freq() - Find a good match for frequency
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @min_freq:	The minimum allowable frequency in Hz. This is the minimum
+ *		allowable programmed frequency and does not account for clock
+ *		tolerances and jitter.
+ * @target_freq: The target clock frequency in Hz. A frequency will be
+ *		processed as close to this target frequency as possible.
+ * @max_freq:	The maximum allowable frequency in Hz. This is the maximum
+ *		allowable programmed frequency and does not account for clock
+ *		tolerances and jitter.
+ * @match_freq:	Frequency match in Hz response.
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_clk_get_match_freq(const struct ti_sci_handle *handle,
+					 u32 dev_id, u8 clk_id, u64 min_freq,
+					 u64 target_freq, u64 max_freq,
+					 u64 *match_freq)
+{
+	struct ti_sci_msg_resp_query_clock_freq *resp;
+	struct ti_sci_msg_req_query_clock_freq req;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle || !match_freq)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_QUERY_CLOCK_FREQ,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.dev_id = dev_id;
+	req.clk_id = clk_id;
+	req.min_freq_hz = min_freq;
+	req.target_freq_hz = target_freq;
+	req.max_freq_hz = max_freq;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	resp = (struct ti_sci_msg_resp_query_clock_freq *)xfer->tx_message.buf;
+
+	*match_freq = resp->freq_hz;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_clk_set_freq() - Set a frequency for clock
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @min_freq:	The minimum allowable frequency in Hz. This is the minimum
+ *		allowable programmed frequency and does not account for clock
+ *		tolerances and jitter.
+ * @target_freq: The target clock frequency in Hz. A frequency will be
+ *		processed as close to this target frequency as possible.
+ * @max_freq:	The maximum allowable frequency in Hz. This is the maximum
+ *		allowable programmed frequency and does not account for clock
+ *		tolerances and jitter.
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_clk_set_freq(const struct ti_sci_handle *handle,
+				   u32 dev_id, u8 clk_id, u64 min_freq,
+				   u64 target_freq, u64 max_freq)
+{
+	struct ti_sci_msg_req_set_clock_freq req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_SET_CLOCK_FREQ,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.dev_id = dev_id;
+	req.clk_id = clk_id;
+	req.min_freq_hz = min_freq;
+	req.target_freq_hz = target_freq;
+	req.max_freq_hz = max_freq;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_clk_get_freq() - Get current frequency
+ * @handle:	pointer to TI SCI handle
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @freq:	Currently frequency in Hz
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_clk_get_freq(const struct ti_sci_handle *handle,
+				   u32 dev_id, u8 clk_id, u64 *freq)
+{
+	struct ti_sci_msg_resp_get_clock_freq *resp;
+	struct ti_sci_msg_req_get_clock_freq req;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle || !freq)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_GET_CLOCK_FREQ,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.dev_id = dev_id;
+	req.clk_id = clk_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	resp = (struct ti_sci_msg_resp_get_clock_freq *)xfer->tx_message.buf;
+
+	*freq = resp->freq_hz;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_core_reboot() - Command to request system reset
+ * @handle:	pointer to TI SCI handle
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_core_reboot(const struct ti_sci_handle *handle)
+{
+	struct ti_sci_msg_req_reboot req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_SYS_RESET,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.domain = 0;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_get_resource_range - Helper to get a range of resources assigned
+ *			       to a host. Resource is uniquely identified by
+ *			       type and subtype.
+ * @handle:		Pointer to TISCI handle.
+ * @dev_id:		TISCI device ID.
+ * @subtype:		Resource assignment subtype that is being requested
+ *			from the given device.
+ * @s_host:		Host processor ID to which the resources are allocated
+ * @range_start:	Start index of the resource range
+ * @range_num:		Number of resources in the range
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_get_resource_range(const struct ti_sci_handle *handle,
+				     u32 dev_id, u8 subtype, u8 s_host,
+				     u16 *range_start, u16 *range_num)
+{
+	struct ti_sci_msg_resp_get_resource_range *resp;
+	struct ti_sci_msg_req_get_resource_range req;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_GET_RESOURCE_RANGE,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+
+	req.secondary_host = s_host;
+	req.type = dev_id & MSG_RM_RESOURCE_TYPE_MASK;
+	req.subtype = subtype & MSG_RM_RESOURCE_SUBTYPE_MASK;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		goto fail;
+
+	resp = (struct ti_sci_msg_resp_get_resource_range *)xfer->tx_message.buf;
+	if (!resp->range_start && !resp->range_num) {
+		ret = -ENODEV;
+	} else {
+		*range_start = resp->range_start;
+		*range_num = resp->range_num;
+	};
+
+fail:
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_get_resource_range - Get a range of resources assigned to host
+ *				   that is same as ti sci interface host.
+ * @handle:		Pointer to TISCI handle.
+ * @dev_id:		TISCI device ID.
+ * @subtype:		Resource assignment subtype that is being requested
+ *			from the given device.
+ * @range_start:	Start index of the resource range
+ * @range_num:		Number of resources in the range
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_get_resource_range(const struct ti_sci_handle *handle,
+					 u32 dev_id, u8 subtype,
+					 u16 *range_start, u16 *range_num)
+{
+	return ti_sci_get_resource_range(handle, dev_id, subtype,
+					 TI_SCI_IRQ_SECONDARY_HOST_INVALID,
+					 range_start, range_num);
+}
+
+/**
+ * ti_sci_cmd_get_resource_range_from_shost - Get a range of resources
+ *					      assigned to a specified host.
+ * @handle:		Pointer to TISCI handle.
+ * @dev_id:		TISCI device ID.
+ * @subtype:		Resource assignment subtype that is being requested
+ *			from the given device.
+ * @s_host:		Host processor ID to which the resources are allocated
+ * @range_start:	Start index of the resource range
+ * @range_num:		Number of resources in the range
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static
+int ti_sci_cmd_get_resource_range_from_shost(const struct ti_sci_handle *handle,
+					     u32 dev_id, u8 subtype, u8 s_host,
+					     u16 *range_start, u16 *range_num)
+{
+	return ti_sci_get_resource_range(handle, dev_id, subtype, s_host,
+					 range_start, range_num);
+}
+
+/**
+ * ti_sci_cmd_query_msmc() - Command to query currently available msmc memory
+ * @handle:		pointer to TI SCI handle
+ * @msms_start:		MSMC start as returned by tisci
+ * @msmc_end:		MSMC end as returned by tisci
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_query_msmc(const struct ti_sci_handle *handle,
+				 u64 *msmc_start, u64 *msmc_end)
+{
+	struct ti_sci_msg_resp_query_msmc *resp;
+	struct ti_sci_msg_hdr req;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_QUERY_MSMC,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	resp = (struct ti_sci_msg_resp_query_msmc *)xfer->tx_message.buf;
+
+	*msmc_start = ((u64)resp->msmc_start_high << TISCI_ADDR_HIGH_SHIFT) |
+			resp->msmc_start_low;
+	*msmc_end = ((u64)resp->msmc_end_high << TISCI_ADDR_HIGH_SHIFT) |
+			resp->msmc_end_low;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_proc_request() - Command to request a physical processor control
+ * @handle:	Pointer to TI SCI handle
+ * @proc_id:	Processor ID this request is for
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_proc_request(const struct ti_sci_handle *handle,
+				   u8 proc_id)
+{
+	struct ti_sci_msg_req_proc_request req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_PROC_REQUEST,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.processor_id = proc_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_proc_release() - Command to release a physical processor control
+ * @handle:	Pointer to TI SCI handle
+ * @proc_id:	Processor ID this request is for
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_proc_release(const struct ti_sci_handle *handle,
+				   u8 proc_id)
+{
+	struct ti_sci_msg_req_proc_release req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_PROC_RELEASE,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.processor_id = proc_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_proc_handover() - Command to handover a physical processor
+ *				control to a host in the processor's access
+ *				control list.
+ * @handle:	Pointer to TI SCI handle
+ * @proc_id:	Processor ID this request is for
+ * @host_id:	Host ID to get the control of the processor
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_proc_handover(const struct ti_sci_handle *handle,
+				    u8 proc_id, u8 host_id)
+{
+	struct ti_sci_msg_req_proc_handover req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_PROC_HANDOVER,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.processor_id = proc_id;
+	req.host_id = host_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_set_proc_boot_cfg() - Command to set the processor boot
+ *				    configuration flags
+ * @handle:		Pointer to TI SCI handle
+ * @proc_id:		Processor ID this request is for
+ * @config_flags_set:	Configuration flags to be set
+ * @config_flags_clear:	Configuration flags to be cleared.
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_set_proc_boot_cfg(const struct ti_sci_handle *handle,
+					u8 proc_id, u64 bootvector,
+					u32 config_flags_set,
+					u32 config_flags_clear)
+{
+	struct ti_sci_msg_req_set_proc_boot_config req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_SET_PROC_BOOT_CONFIG,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.processor_id = proc_id;
+	req.bootvector_low = bootvector & TISCI_ADDR_LOW_MASK;
+	req.bootvector_high = (bootvector & TISCI_ADDR_HIGH_MASK) >>
+				TISCI_ADDR_HIGH_SHIFT;
+	req.config_flags_set = config_flags_set;
+	req.config_flags_clear = config_flags_clear;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_set_proc_boot_ctrl() - Command to set the processor boot
+ *				     control flags
+ * @handle:			Pointer to TI SCI handle
+ * @proc_id:			Processor ID this request is for
+ * @control_flags_set:		Control flags to be set
+ * @control_flags_clear:	Control flags to be cleared
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_set_proc_boot_ctrl(const struct ti_sci_handle *handle,
+					 u8 proc_id, u32 control_flags_set,
+					 u32 control_flags_clear)
+{
+	struct ti_sci_msg_req_set_proc_boot_ctrl req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_SET_PROC_BOOT_CTRL,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.processor_id = proc_id;
+	req.control_flags_set = control_flags_set;
+	req.control_flags_clear = control_flags_clear;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_proc_auth_boot_image() - Command to authenticate and load the
+ *			image and then set the processor configuration flags.
+ * @handle:	Pointer to TI SCI handle
+ * @image_addr:	Memory address at which payload image and certificate is
+ *		located in memory, this is updated if the image data is
+ *		moved during authentication.
+ * @image_size: This is updated with the final size of the image after
+ *		authentication.
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_proc_auth_boot_image(const struct ti_sci_handle *handle,
+					   u64 *image_addr, u32 *image_size)
+{
+	struct ti_sci_msg_req_proc_auth_boot_image req;
+	struct ti_sci_msg_resp_proc_auth_boot_image *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_PROC_AUTH_BOOT_IMAGE,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.cert_addr_low = *image_addr & TISCI_ADDR_LOW_MASK;
+	req.cert_addr_high = (*image_addr & TISCI_ADDR_HIGH_MASK) >>
+				TISCI_ADDR_HIGH_SHIFT;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	resp = (struct ti_sci_msg_resp_proc_auth_boot_image *)xfer->tx_message.buf;
+
+	*image_addr = (resp->image_addr_low & TISCI_ADDR_LOW_MASK) |
+			(((u64)resp->image_addr_high <<
+			  TISCI_ADDR_HIGH_SHIFT) & TISCI_ADDR_HIGH_MASK);
+	*image_size = resp->image_size;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_get_proc_boot_status() - Command to get the processor boot status
+ * @handle:	Pointer to TI SCI handle
+ * @proc_id:	Processor ID this request is for
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_get_proc_boot_status(const struct ti_sci_handle *handle,
+					   u8 proc_id, u64 *bv, u32 *cfg_flags,
+					   u32 *ctrl_flags, u32 *sts_flags)
+{
+	struct ti_sci_msg_resp_get_proc_boot_status *resp;
+	struct ti_sci_msg_req_get_proc_boot_status req;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_GET_PROC_BOOT_STATUS,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.processor_id = proc_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	resp = (struct ti_sci_msg_resp_get_proc_boot_status *)
+							xfer->tx_message.buf;
+
+	*bv = (resp->bootvector_low & TISCI_ADDR_LOW_MASK) |
+			(((u64)resp->bootvector_high  <<
+			  TISCI_ADDR_HIGH_SHIFT) & TISCI_ADDR_HIGH_MASK);
+	*cfg_flags = resp->config_flags;
+	*ctrl_flags = resp->control_flags;
+	*sts_flags = resp->status_flags;
+
+	return ret;
+}
+
+/**
+ * ti_sci_proc_wait_boot_status_no_wait() - Helper function to wait for a
+ *				processor boot status without requesting or
+ *				waiting for a response.
+ * @proc_id:			Processor ID this request is for
+ * @num_wait_iterations:	Total number of iterations we will check before
+ *				we will timeout and give up
+ * @num_match_iterations:	How many iterations should we have continued
+ *				status to account for status bits glitching.
+ *				This is to make sure that match occurs for
+ *				consecutive checks. This implies that the
+ *				worst case should consider that the stable
+ *				time should at the worst be num_wait_iterations
+ *				num_match_iterations to prevent timeout.
+ * @delay_per_iteration_us:	Specifies how long to wait (in micro seconds)
+ *				between each status checks. This is the minimum
+ *				duration, and overhead of register reads and
+ *				checks are on top of this and can vary based on
+ *				varied conditions.
+ * @delay_before_iterations_us:	Specifies how long to wait (in micro seconds)
+ *				before the very first check in the first
+ *				iteration of status check loop. This is the
+ *				minimum duration, and overhead of register
+ *				reads and checks are.
+ * @status_flags_1_set_all_wait:If non-zero, Specifies that all bits of the
+ *				status matching this field requested MUST be 1.
+ * @status_flags_1_set_any_wait:If non-zero, Specifies that at least one of the
+ *				bits matching this field requested MUST be 1.
+ * @status_flags_1_clr_all_wait:If non-zero, Specifies that all bits of the
+ *				status matching this field requested MUST be 0.
+ * @status_flags_1_clr_any_wait:If non-zero, Specifies that at least one of the
+ *				bits matching this field requested MUST be 0.
+ *
+ * Return: 0 if all goes well, else appropriate error message
+ */
+static int
+ti_sci_proc_wait_boot_status_no_wait(const struct ti_sci_handle *handle,
+				     u8 proc_id,
+				     u8 num_wait_iterations,
+				     u8 num_match_iterations,
+				     u8 delay_per_iteration_us,
+				     u8 delay_before_iterations_us,
+				     u32 status_flags_1_set_all_wait,
+				     u32 status_flags_1_set_any_wait,
+				     u32 status_flags_1_clr_all_wait,
+				     u32 status_flags_1_clr_any_wait)
+{
+	struct ti_sci_msg_req_wait_proc_boot_status req;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_WAIT_PROC_BOOT_STATUS,
+				     TI_SCI_FLAG_REQ_GENERIC_NORESPONSE,
+				     (u32 *)&req, sizeof(req), 0);
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.processor_id = proc_id;
+	req.num_wait_iterations = num_wait_iterations;
+	req.num_match_iterations = num_match_iterations;
+	req.delay_per_iteration_us = delay_per_iteration_us;
+	req.delay_before_iterations_us = delay_before_iterations_us;
+	req.status_flags_1_set_all_wait = status_flags_1_set_all_wait;
+	req.status_flags_1_set_any_wait = status_flags_1_set_any_wait;
+	req.status_flags_1_clr_all_wait = status_flags_1_clr_all_wait;
+	req.status_flags_1_clr_any_wait = status_flags_1_clr_any_wait;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_proc_shutdown_no_wait() - Command to shutdown a core without
+ *		requesting or waiting for a response. Note that this API call
+ *		should be followed by placing the respective processor into
+ *		either WFE or WFI mode.
+ * @handle:	Pointer to TI SCI handle
+ * @proc_id:	Processor ID this request is for
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_proc_shutdown_no_wait(const struct ti_sci_handle *handle,
+					    u8 proc_id)
+{
+	int ret;
+	struct ti_sci_info *info;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	/*
+	 * Send the core boot status wait message waiting for either WFE or
+	 * WFI without requesting or waiting for a TISCI response with the
+	 * maximum wait time to give us the best chance to get to the WFE/WFI
+	 * command that should follow the invocation of this API before the
+	 * DMSC-internal processing of this command times out. Note that
+	 * waiting for the R5 WFE/WFI flags will also work on an ARMV8 type
+	 * core as the related flag bit positions are the same.
+	 */
+	ret = ti_sci_proc_wait_boot_status_no_wait(handle, proc_id,
+		U8_MAX, 100, U8_MAX, U8_MAX,
+		0, PROC_BOOT_STATUS_FLAG_R5_WFE | PROC_BOOT_STATUS_FLAG_R5_WFI,
+		0, 0);
+	if (ret) {
+		dev_err(info->dev, "Sending core %u wait message fail %d\n",
+			proc_id, ret);
+		return ret;
+	}
+
+	/*
+	 * Release a processor managed by TISCI without requesting or waiting
+	 * for a response.
+	 */
+	ret = ti_sci_set_device_state_no_wait(handle, proc_id, 0,
+					      MSG_DEVICE_SW_STATE_AUTO_OFF);
+	if (ret)
+		dev_err(info->dev, "Sending core %u shutdown message fail %d\n",
+			proc_id, ret);
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_ring_config() - configure RA ring
+ * @handle:	pointer to TI SCI handle
+ * @valid_params: Bitfield defining validity of ring configuration parameters.
+ * @nav_id: Device ID of Navigator Subsystem from which the ring is allocated
+ * @index: Ring index.
+ * @addr_lo: The ring base address lo 32 bits
+ * @addr_hi: The ring base address hi 32 bits
+ * @count: Number of ring elements.
+ * @mode: The mode of the ring
+ * @size: The ring element size.
+ * @order_id: Specifies the ring's bus order ID.
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ *
+ * See @ti_sci_msg_rm_ring_cfg_req for more info.
+ */
+static int ti_sci_cmd_ring_config(const struct ti_sci_handle *handle,
+				  u32 valid_params, u16 nav_id, u16 index,
+				  u32 addr_lo, u32 addr_hi, u32 count,
+				  u8 mode, u8 size, u8 order_id)
+{
+	struct ti_sci_msg_rm_ring_cfg_resp *resp;
+	struct ti_sci_msg_rm_ring_cfg_req req;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_RM_RING_CFG,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.valid_params = valid_params;
+	req.nav_id = nav_id;
+	req.index = index;
+	req.addr_lo = addr_lo;
+	req.addr_hi = addr_hi;
+	req.count = count;
+	req.mode = mode;
+	req.size = size;
+	req.order_id = order_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		goto fail;
+
+fail:
+	dev_dbg(info->dev, "RM_RA:config ring %u ret:%d\n", index, ret);
+	return ret;
+}
+
+static int ti_sci_cmd_rm_psil_pair(const struct ti_sci_handle *handle,
+				   u32 nav_id, u32 src_thread, u32 dst_thread)
+{
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_msg_psil_pair req;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_RM_PSIL_PAIR,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.nav_id = nav_id;
+	req.src_thread = src_thread;
+	req.dst_thread = dst_thread;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		goto fail;
+
+fail:
+	dev_dbg(info->dev, "RM_PSIL: nav: %u link pair %u->%u ret:%u\n",
+		nav_id, src_thread, dst_thread, ret);
+	return ret;
+}
+
+static int ti_sci_cmd_rm_psil_unpair(const struct ti_sci_handle *handle,
+				     u32 nav_id, u32 src_thread, u32 dst_thread)
+{
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_msg_psil_unpair req;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TI_SCI_MSG_RM_PSIL_UNPAIR,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.nav_id = nav_id;
+	req.src_thread = src_thread;
+	req.dst_thread = dst_thread;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		goto fail;
+
+fail:
+	dev_dbg(info->dev, "RM_PSIL: link unpair %u->%u ret:%u\n",
+		src_thread, dst_thread, ret);
+	return ret;
+}
+
+static int ti_sci_cmd_rm_udmap_tx_ch_cfg(
+			const struct ti_sci_handle *handle,
+			const struct ti_sci_msg_rm_udmap_tx_ch_cfg *params)
+{
+	struct ti_sci_msg_rm_udmap_tx_ch_cfg_resp *resp;
+	struct ti_sci_msg_rm_udmap_tx_ch_cfg_req req;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_RM_UDMAP_TX_CH_CFG,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+	req.valid_params = params->valid_params;
+	req.nav_id = params->nav_id;
+	req.index = params->index;
+	req.tx_pause_on_err = params->tx_pause_on_err;
+	req.tx_filt_einfo = params->tx_filt_einfo;
+	req.tx_filt_pswords = params->tx_filt_pswords;
+	req.tx_atype = params->tx_atype;
+	req.tx_chan_type = params->tx_chan_type;
+	req.tx_supr_tdpkt = params->tx_supr_tdpkt;
+	req.tx_fetch_size = params->tx_fetch_size;
+	req.tx_credit_count = params->tx_credit_count;
+	req.txcq_qnum = params->txcq_qnum;
+	req.tx_priority = params->tx_priority;
+	req.tx_qos = params->tx_qos;
+	req.tx_orderid = params->tx_orderid;
+	req.fdepth = params->fdepth;
+	req.tx_sched_priority = params->tx_sched_priority;
+	req.tx_burst_size = params->tx_burst_size;
+	req.tx_tdtype = params->tx_tdtype;
+	req.extended_ch_type = params->extended_ch_type;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		goto fail;
+
+fail:
+	dev_dbg(info->dev, "TX_CH_CFG: chn %u ret:%u\n", params->index, ret);
+	return ret;
+}
+
+static int ti_sci_cmd_rm_udmap_rx_ch_cfg(
+			const struct ti_sci_handle *handle,
+			const struct ti_sci_msg_rm_udmap_rx_ch_cfg *params)
+{
+	struct ti_sci_msg_rm_udmap_rx_ch_cfg_resp *resp;
+	struct ti_sci_msg_rm_udmap_rx_ch_cfg_req req;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_RM_UDMAP_RX_CH_CFG,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+
+	req.valid_params = params->valid_params;
+	req.nav_id = params->nav_id;
+	req.index = params->index;
+	req.rx_fetch_size = params->rx_fetch_size;
+	req.rxcq_qnum = params->rxcq_qnum;
+	req.rx_priority = params->rx_priority;
+	req.rx_qos = params->rx_qos;
+	req.rx_orderid = params->rx_orderid;
+	req.rx_sched_priority = params->rx_sched_priority;
+	req.flowid_start = params->flowid_start;
+	req.flowid_cnt = params->flowid_cnt;
+	req.rx_pause_on_err = params->rx_pause_on_err;
+	req.rx_atype = params->rx_atype;
+	req.rx_chan_type = params->rx_chan_type;
+	req.rx_ignore_short = params->rx_ignore_short;
+	req.rx_ignore_long = params->rx_ignore_long;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		goto fail;
+
+fail:
+	dev_dbg(info->dev, "RX_CH_CFG: chn %u ret:%d\n", params->index, ret);
+	return ret;
+}
+
+static int ti_sci_cmd_rm_udmap_rx_flow_cfg(
+			const struct ti_sci_handle *handle,
+			const struct ti_sci_msg_rm_udmap_flow_cfg *params)
+{
+	struct ti_sci_msg_rm_udmap_flow_cfg_resp *resp;
+	struct ti_sci_msg_rm_udmap_flow_cfg_req req;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_RM_UDMAP_FLOW_CFG,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+
+	req.valid_params = params->valid_params;
+	req.nav_id = params->nav_id;
+	req.flow_index = params->flow_index;
+	req.rx_einfo_present = params->rx_einfo_present;
+	req.rx_psinfo_present = params->rx_psinfo_present;
+	req.rx_error_handling = params->rx_error_handling;
+	req.rx_desc_type = params->rx_desc_type;
+	req.rx_sop_offset = params->rx_sop_offset;
+	req.rx_dest_qnum = params->rx_dest_qnum;
+	req.rx_src_tag_hi = params->rx_src_tag_hi;
+	req.rx_src_tag_lo = params->rx_src_tag_lo;
+	req.rx_dest_tag_hi = params->rx_dest_tag_hi;
+	req.rx_dest_tag_lo = params->rx_dest_tag_lo;
+	req.rx_src_tag_hi_sel = params->rx_src_tag_hi_sel;
+	req.rx_src_tag_lo_sel = params->rx_src_tag_lo_sel;
+	req.rx_dest_tag_hi_sel = params->rx_dest_tag_hi_sel;
+	req.rx_dest_tag_lo_sel = params->rx_dest_tag_lo_sel;
+	req.rx_fdq0_sz0_qnum = params->rx_fdq0_sz0_qnum;
+	req.rx_fdq1_qnum = params->rx_fdq1_qnum;
+	req.rx_fdq2_qnum = params->rx_fdq2_qnum;
+	req.rx_fdq3_qnum = params->rx_fdq3_qnum;
+	req.rx_ps_location = params->rx_ps_location;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		goto fail;
+
+fail:
+	dev_dbg(info->dev, "RX_FL_CFG: %u ret:%d\n", params->flow_index, ret);
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_set_fwl_region() - Request for configuring a firewall region
+ * @handle:    pointer to TI SCI handle
+ * @region:    region configuration parameters
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_set_fwl_region(const struct ti_sci_handle *handle,
+				     const struct ti_sci_msg_fwl_region *region)
+{
+	struct ti_sci_msg_fwl_set_firewall_region_req req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_FWL_SET,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+
+	req.fwl_id = region->fwl_id;
+	req.region = region->region;
+	req.n_permission_regs = region->n_permission_regs;
+	req.control = region->control;
+	req.permissions[0] = region->permissions[0];
+	req.permissions[1] = region->permissions[1];
+	req.permissions[2] = region->permissions[2];
+	req.start_address = region->start_address;
+	req.end_address = region->end_address;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+/**
+ * ti_sci_cmd_get_fwl_region() - Request for getting a firewall region
+ * @handle:    pointer to TI SCI handle
+ * @region:    region configuration parameters
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_get_fwl_region(const struct ti_sci_handle *handle,
+				     struct ti_sci_msg_fwl_region *region)
+{
+	struct ti_sci_msg_fwl_get_firewall_region_req req;
+	struct ti_sci_msg_fwl_get_firewall_region_resp *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_FWL_GET,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+
+	req.fwl_id = region->fwl_id;
+	req.region = region->region;
+	req.n_permission_regs = region->n_permission_regs;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	resp = (struct ti_sci_msg_fwl_get_firewall_region_resp *)xfer->tx_message.buf;
+
+	region->fwl_id = resp->fwl_id;
+	region->region = resp->region;
+	region->n_permission_regs = resp->n_permission_regs;
+	region->control = resp->control;
+	region->permissions[0] = resp->permissions[0];
+	region->permissions[1] = resp->permissions[1];
+	region->permissions[2] = resp->permissions[2];
+	region->start_address = resp->start_address;
+	region->end_address = resp->end_address;
+
+	return 0;
+}
+
+/**
+ * ti_sci_cmd_change_fwl_owner() - Request for changing a firewall owner
+ * @handle:    pointer to TI SCI handle
+ * @region:    region configuration parameters
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_change_fwl_owner(const struct ti_sci_handle *handle,
+				       struct ti_sci_msg_fwl_owner *owner)
+{
+	struct ti_sci_msg_fwl_change_owner_info_req req;
+	struct ti_sci_msg_fwl_change_owner_info_resp *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+
+	xfer = ti_sci_setup_one_xfer(info, TISCI_MSG_FWL_CHANGE_OWNER,
+				     TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				     (u32 *)&req, sizeof(req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		return ret;
+	}
+
+	req.fwl_id = owner->fwl_id;
+	req.region = owner->region;
+	req.owner_index = owner->owner_index;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret)
+		return ret;
+
+	resp = (struct ti_sci_msg_fwl_change_owner_info_resp *)xfer->tx_message.buf;
+
+	owner->fwl_id = resp->fwl_id;
+	owner->region = resp->region;
+	owner->owner_index = resp->owner_index;
+	owner->owner_privid = resp->owner_privid;
+	owner->owner_permission_bits = resp->owner_permission_bits;
+
+	return ret;
+}
+
+static struct ti_sci_handle *g_handle;
+
+const struct ti_sci_handle *ti_sci_get_handle(struct device *dev)
+{
+	return g_handle;
+}
+
+/*
+ * ti_sci_setup_ops() - Setup the operations structures
+ * @info:	pointer to TISCI pointer
+ */
+static void ti_sci_setup_ops(struct ti_sci_info *info)
+{
+	struct ti_sci_ops *ops = &info->handle.ops;
+	struct ti_sci_board_ops *bops = &ops->board_ops;
+	struct ti_sci_dev_ops *dops = &ops->dev_ops;
+	struct ti_sci_clk_ops *cops = &ops->clk_ops;
+	struct ti_sci_core_ops *core_ops = &ops->core_ops;
+	struct ti_sci_rm_core_ops *rm_core_ops = &ops->rm_core_ops;
+	struct ti_sci_proc_ops *pops = &ops->proc_ops;
+	struct ti_sci_rm_ringacc_ops *rops = &ops->rm_ring_ops;
+	struct ti_sci_rm_psil_ops *psilops = &ops->rm_psil_ops;
+	struct ti_sci_rm_udmap_ops *udmap_ops = &ops->rm_udmap_ops;
+	struct ti_sci_fwl_ops *fwl_ops = &ops->fwl_ops;
+
+	bops->board_config = ti_sci_cmd_set_board_config;
+	bops->board_config_rm = ti_sci_cmd_set_board_config_rm;
+	bops->board_config_security = ti_sci_cmd_set_board_config_security;
+	bops->board_config_pm = ti_sci_cmd_set_board_config_pm;
+
+	dops->get_device = ti_sci_cmd_get_device;
+	dops->get_device_exclusive = ti_sci_cmd_get_device_exclusive;
+	dops->idle_device = ti_sci_cmd_idle_device;
+	dops->idle_device_exclusive = ti_sci_cmd_idle_device_exclusive;
+	dops->put_device = ti_sci_cmd_put_device;
+	dops->is_valid = ti_sci_cmd_dev_is_valid;
+	dops->get_context_loss_count = ti_sci_cmd_dev_get_clcnt;
+	dops->is_idle = ti_sci_cmd_dev_is_idle;
+	dops->is_stop = ti_sci_cmd_dev_is_stop;
+	dops->is_on = ti_sci_cmd_dev_is_on;
+	dops->is_transitioning = ti_sci_cmd_dev_is_trans;
+	dops->set_device_resets = ti_sci_cmd_set_device_resets;
+	dops->get_device_resets = ti_sci_cmd_get_device_resets;
+	dops->release_exclusive_devices = ti_sci_cmd_release_exclusive_devices;
+
+	cops->get_clock = ti_sci_cmd_get_clock;
+	cops->idle_clock = ti_sci_cmd_idle_clock;
+	cops->put_clock = ti_sci_cmd_put_clock;
+	cops->is_auto = ti_sci_cmd_clk_is_auto;
+	cops->is_on = ti_sci_cmd_clk_is_on;
+	cops->is_off = ti_sci_cmd_clk_is_off;
+
+	cops->set_parent = ti_sci_cmd_clk_set_parent;
+	cops->get_parent = ti_sci_cmd_clk_get_parent;
+	cops->get_num_parents = ti_sci_cmd_clk_get_num_parents;
+
+	cops->get_best_match_freq = ti_sci_cmd_clk_get_match_freq;
+	cops->set_freq = ti_sci_cmd_clk_set_freq;
+	cops->get_freq = ti_sci_cmd_clk_get_freq;
+
+	core_ops->reboot_device = ti_sci_cmd_core_reboot;
+	core_ops->query_msmc = ti_sci_cmd_query_msmc;
+
+	rm_core_ops->get_range = ti_sci_cmd_get_resource_range;
+	rm_core_ops->get_range_from_shost =
+		ti_sci_cmd_get_resource_range_from_shost;
+
+	pops->proc_request = ti_sci_cmd_proc_request;
+	pops->proc_release = ti_sci_cmd_proc_release;
+	pops->proc_handover = ti_sci_cmd_proc_handover;
+	pops->set_proc_boot_cfg = ti_sci_cmd_set_proc_boot_cfg;
+	pops->set_proc_boot_ctrl = ti_sci_cmd_set_proc_boot_ctrl;
+	pops->proc_auth_boot_image = ti_sci_cmd_proc_auth_boot_image;
+	pops->get_proc_boot_status = ti_sci_cmd_get_proc_boot_status;
+	pops->proc_shutdown_no_wait = ti_sci_cmd_proc_shutdown_no_wait;
+
+	rops->config = ti_sci_cmd_ring_config;
+
+	psilops->pair = ti_sci_cmd_rm_psil_pair;
+	psilops->unpair = ti_sci_cmd_rm_psil_unpair;
+
+	udmap_ops->tx_ch_cfg = ti_sci_cmd_rm_udmap_tx_ch_cfg;
+	udmap_ops->rx_ch_cfg = ti_sci_cmd_rm_udmap_rx_ch_cfg;
+	udmap_ops->rx_flow_cfg = ti_sci_cmd_rm_udmap_rx_flow_cfg;
+
+	fwl_ops->set_fwl_region = ti_sci_cmd_set_fwl_region;
+	fwl_ops->get_fwl_region = ti_sci_cmd_get_fwl_region;
+	fwl_ops->change_fwl_owner = ti_sci_cmd_change_fwl_owner;
+}
+
+static void ti_sci_reset(struct restart_handler *unused)
+{
+	ti_sci_cmd_core_reboot(g_handle);
+}
+
+static int ti_sci_probe(struct device *dev)
+{
+	struct ti_sci_info *info;
+	const void *data;
+	int ret;
+
+	if (g_handle)
+		return 0;
+
+	ret = dev_get_drvdata(dev, &data);
+        if (ret)
+                return ret;
+
+	info = xzalloc(sizeof(*info));
+
+	info->chan_rx = mbox_request_channel_byname(dev, "rx");
+	if (IS_ERR(info->chan_rx))
+		return PTR_ERR(info->chan_rx);
+
+	info->chan_tx = mbox_request_channel_byname(dev, "tx");
+	if (IS_ERR(info->chan_tx))
+		return PTR_ERR(info->chan_tx);
+
+	info->desc = data;
+	info->host_id = info->desc->default_host_id;
+	of_property_read_u32(dev->of_node, "ti,host-id", &info->host_id);
+
+        info->is_secure = of_property_read_bool(dev->of_node, "ti,secure-host");
+
+	info->dev = dev;
+	info->seq = 0xA;
+	INIT_LIST_HEAD(&info->dev_list);
+
+	ti_sci_setup_ops(info);
+
+	ret = ti_sci_cmd_get_revision(&info->handle);
+	if (ret)
+		return ret;
+
+	g_handle = &info->handle;
+
+	of_platform_populate(dev->of_node, NULL, NULL);
+
+	restart_handler_register_fn("ti-sci", ti_sci_reset);
+
+	return 0;
+}
+
+/* Description for K2G */
+static const struct ti_sci_desc ti_sci_pmmc_k2g_desc = {
+	.default_host_id = 2,
+	/* Conservative duration */
+	.max_rx_timeout_ms = 10000,
+	/* Limited by MBOX_TX_QUEUE_LEN. K2G can handle upto 128 messages! */
+	.max_msgs = 20,
+	.max_msg_size = 64,
+};
+
+/* Description for AM654 */
+static const struct ti_sci_desc ti_sci_pmmc_am654_desc = {
+	.default_host_id = 12,
+	/* Conservative duration */
+	.max_rx_timeout_ms = 10000,
+	/* Limited by MBOX_TX_QUEUE_LEN. K2G can handle upto 128 messages! */
+	.max_msgs = 20,
+	.max_msg_size = 60,
+};
+
+static const struct of_device_id ti_sci_of_match[] = {
+	{
+		.compatible = "ti,k2g-sci",
+		.data = &ti_sci_pmmc_k2g_desc
+	}, {
+		.compatible = "ti,am654-sci",
+		.data = &ti_sci_pmmc_am654_desc
+	}, {
+		/* sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(of, ti_sci_of_match);
+
+static struct driver ti_sci_driver = {
+        .name   = "ti-sci",
+        .probe  = ti_sci_probe,
+        .of_compatible = DRV_OF_COMPAT(ti_sci_of_match),
+};
+core_platform_driver(ti_sci_driver);
diff --git a/drivers/firmware/ti_sci.h b/drivers/firmware/ti_sci.h
new file mode 100644
index 0000000000..101210eb21
--- /dev/null
+++ b/drivers/firmware/ti_sci.h
@@ -0,0 +1,1533 @@
+/* SPDX-License-Identifier: BSD-3-Clause */
+/*
+ * Texas Instruments System Control Interface (TISCI) Protocol
+ *
+ * Communication protocol with TI SCI hardware
+ * The system works in a message response protocol
+ * See: http://processors.wiki.ti.com/index.php/TISCI for details
+ *
+ * Copyright (C)  2018 Texas Instruments Incorporated - http://www.ti.com/
+ * Based on drivers/firmware/ti_sci.h from Linux.
+ *
+ */
+
+#ifndef __TI_SCI_H
+#define __TI_SCI_H
+
+/* Generic Messages */
+#include <linux/bitops.h>
+#define TI_SCI_MSG_ENABLE_WDT		0x0000
+#define TI_SCI_MSG_WAKE_RESET		0x0001
+#define TI_SCI_MSG_VERSION		0x0002
+#define TI_SCI_MSG_WAKE_REASON		0x0003
+#define TI_SCI_MSG_GOODBYE		0x0004
+#define TI_SCI_MSG_SYS_RESET		0x0005
+#define TI_SCI_MSG_BOARD_CONFIG		0x000b
+#define TI_SCI_MSG_BOARD_CONFIG_RM	0x000c
+#define TI_SCI_MSG_BOARD_CONFIG_SECURITY  0x000d
+#define TI_SCI_MSG_BOARD_CONFIG_PM	0x000e
+#define TISCI_MSG_QUERY_MSMC		0x0020
+
+/* Device requests */
+#define TI_SCI_MSG_SET_DEVICE_STATE	0x0200
+#define TI_SCI_MSG_GET_DEVICE_STATE	0x0201
+#define TI_SCI_MSG_SET_DEVICE_RESETS	0x0202
+
+/* Clock requests */
+#define TI_SCI_MSG_SET_CLOCK_STATE	0x0100
+#define TI_SCI_MSG_GET_CLOCK_STATE	0x0101
+#define TI_SCI_MSG_SET_CLOCK_PARENT	0x0102
+#define TI_SCI_MSG_GET_CLOCK_PARENT	0x0103
+#define TI_SCI_MSG_GET_NUM_CLOCK_PARENTS 0x0104
+#define TI_SCI_MSG_SET_CLOCK_FREQ	0x010c
+#define TI_SCI_MSG_QUERY_CLOCK_FREQ	0x010d
+#define TI_SCI_MSG_GET_CLOCK_FREQ	0x010e
+
+/* Processor Control Messages */
+#define TISCI_MSG_PROC_REQUEST		0xc000
+#define TISCI_MSG_PROC_RELEASE		0xc001
+#define TISCI_MSG_PROC_HANDOVER		0xc005
+#define TISCI_MSG_SET_PROC_BOOT_CONFIG	0xc100
+#define TISCI_MSG_SET_PROC_BOOT_CTRL	0xc101
+#define TISCI_MSG_PROC_AUTH_BOOT_IMAGE	0xc120
+#define TISCI_MSG_GET_PROC_BOOT_STATUS	0xc400
+#define TISCI_MSG_WAIT_PROC_BOOT_STATUS	0xc401
+
+/* Resource Management Requests */
+#define TI_SCI_MSG_GET_RESOURCE_RANGE	0x1500
+
+/* NAVSS resource management */
+/* Ringacc requests */
+#define TI_SCI_MSG_RM_RING_CFG			0x1110
+
+/* PSI-L requests */
+#define TI_SCI_MSG_RM_PSIL_PAIR			0x1280
+#define TI_SCI_MSG_RM_PSIL_UNPAIR		0x1281
+
+#define TI_SCI_MSG_RM_UDMAP_TX_ALLOC		0x1200
+#define TI_SCI_MSG_RM_UDMAP_TX_FREE		0x1201
+#define TI_SCI_MSG_RM_UDMAP_RX_ALLOC		0x1210
+#define TI_SCI_MSG_RM_UDMAP_RX_FREE		0x1211
+#define TI_SCI_MSG_RM_UDMAP_FLOW_CFG		0x1220
+#define TI_SCI_MSG_RM_UDMAP_OPT_FLOW_CFG	0x1221
+
+#define TISCI_MSG_RM_UDMAP_TX_CH_CFG		0x1205
+#define TISCI_MSG_RM_UDMAP_RX_CH_CFG		0x1215
+#define TISCI_MSG_RM_UDMAP_FLOW_CFG		0x1230
+#define TISCI_MSG_RM_UDMAP_FLOW_SIZE_THRESH_CFG	0x1231
+
+#define TISCI_MSG_FWL_SET		0x9000
+#define TISCI_MSG_FWL_GET		0x9001
+#define TISCI_MSG_FWL_CHANGE_OWNER	0x9002
+
+/**
+ * struct ti_sci_msg_hdr - Generic Message Header for All messages and responses
+ * @type:	Type of messages: One of TI_SCI_MSG* values
+ * @host:	Host of the message
+ * @seq:	Message identifier indicating a transfer sequence
+ * @flags:	Flag for the message
+ */
+struct ti_sci_msg_hdr {
+	u16 type;
+	u8 host;
+	u8 seq;
+#define TI_SCI_MSG_FLAG(val)			(1 << (val))
+#define TI_SCI_FLAG_REQ_GENERIC_NORESPONSE	0x0
+#define TI_SCI_FLAG_REQ_ACK_ON_RECEIVED		TI_SCI_MSG_FLAG(0)
+#define TI_SCI_FLAG_REQ_ACK_ON_PROCESSED	TI_SCI_MSG_FLAG(1)
+#define TI_SCI_FLAG_RESP_GENERIC_NACK		0x0
+#define TI_SCI_FLAG_RESP_GENERIC_ACK		TI_SCI_MSG_FLAG(1)
+	/* Additional Flags */
+	u32 flags;
+} __packed;
+
+/**
+ * struct ti_sci_secure_msg_hdr - Header that prefixes all TISCI messages sent
+ *				  via secure transport.
+ * @checksum:	crc16 checksum for the entire message
+ * @reserved:	Reserved for future use.
+ */
+struct ti_sci_secure_msg_hdr {
+	u16 checksum;
+	u16 reserved;
+} __packed;
+
+/**
+ * struct ti_sci_msg_resp_version - Response for a message
+ * @hdr:		Generic header
+ * @firmware_description: String describing the firmware
+ * @firmware_revision:	Firmware revision
+ * @abi_major:		Major version of the ABI that firmware supports
+ * @abi_minor:		Minor version of the ABI that firmware supports
+ *
+ * In general, ABI version changes follow the rule that minor version increments
+ * are backward compatible. Major revision changes in ABI may not be
+ * backward compatible.
+ *
+ * Response to a generic message with message type TI_SCI_MSG_VERSION
+ */
+struct ti_sci_msg_resp_version {
+	struct ti_sci_msg_hdr hdr;
+	char firmware_description[32];
+	u16 firmware_revision;
+	u8 abi_major;
+	u8 abi_minor;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_reboot - Reboot the SoC
+ * @hdr:	Generic Header
+ * @domain:	Domain to be reset, 0 for full SoC reboot.
+ *
+ * Request type is TI_SCI_MSG_SYS_RESET, responded with a generic
+ * ACK/NACK message.
+ */
+struct ti_sci_msg_req_reboot {
+	struct ti_sci_msg_hdr hdr;
+	u8 domain;
+} __packed;
+
+/**
+ * struct ti_sci_msg_board_config - Board configuration message
+ * @hdr:		Generic Header
+ * @boardcfgp_low:	Lower 32 bit of the pointer pointing to the board
+ *			configuration data
+ * @boardcfgp_high:	Upper 32 bit of the pointer pointing to the board
+ *			configuration data
+ * @boardcfg_size:	Size of board configuration data object
+ * Request type is TI_SCI_MSG_BOARD_CONFIG, responded with a generic
+ * ACK/NACK message.
+ */
+struct ti_sci_msg_board_config {
+	struct ti_sci_msg_hdr hdr;
+	u32 boardcfgp_low;
+	u32 boardcfgp_high;
+	u16 boardcfg_size;
+} __packed;
+
+/**
+ * struct ti_sci_msg_resp_query_msmc - Query msmc message response structure
+ * @hdr:		Generic Header
+ * @msmc_start_low:	Lower 32 bit of msmc start
+ * @msmc_start_high:	Upper 32 bit of msmc start
+ * @msmc_end_low:	Lower 32 bit of msmc end
+ * @msmc_end_high:	Upper 32 bit of msmc end
+ *
+ * Response to a generic message with message type TISCI_MSG_QUERY_MSMC
+ */
+struct ti_sci_msg_resp_query_msmc {
+	struct ti_sci_msg_hdr hdr;
+	u32 msmc_start_low;
+	u32 msmc_start_high;
+	u32 msmc_end_low;
+	u32 msmc_end_high;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_set_device_state - Set the desired state of the device
+ * @hdr:		Generic header
+ * @id:	Indicates which device to modify
+ * @reserved: Reserved space in message, must be 0 for backward compatibility
+ * @state: The desired state of the device.
+ *
+ * Certain flags can also be set to alter the device state:
+ * + MSG_FLAG_DEVICE_WAKE_ENABLED - Configure the device to be a wake source.
+ * The meaning of this flag will vary slightly from device to device and from
+ * SoC to SoC but it generally allows the device to wake the SoC out of deep
+ * suspend states.
+ * + MSG_FLAG_DEVICE_RESET_ISO - Enable reset isolation for this device.
+ * + MSG_FLAG_DEVICE_EXCLUSIVE - Claim this device exclusively. When passed
+ * with STATE_RETENTION or STATE_ON, it will claim the device exclusively.
+ * If another host already has this device set to STATE_RETENTION or STATE_ON,
+ * the message will fail. Once successful, other hosts attempting to set
+ * STATE_RETENTION or STATE_ON will fail.
+ *
+ * Request type is TI_SCI_MSG_SET_DEVICE_STATE, responded with a generic
+ * ACK/NACK message.
+ */
+struct ti_sci_msg_req_set_device_state {
+	/* Additional hdr->flags options */
+#define MSG_FLAG_DEVICE_WAKE_ENABLED	TI_SCI_MSG_FLAG(8)
+#define MSG_FLAG_DEVICE_RESET_ISO	TI_SCI_MSG_FLAG(9)
+#define MSG_FLAG_DEVICE_EXCLUSIVE	TI_SCI_MSG_FLAG(10)
+	struct ti_sci_msg_hdr hdr;
+	u32 id;
+	u32 reserved;
+
+#define MSG_DEVICE_SW_STATE_AUTO_OFF	0
+#define MSG_DEVICE_SW_STATE_RETENTION	1
+#define MSG_DEVICE_SW_STATE_ON		2
+	u8 state;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_get_device_state - Request to get device.
+ * @hdr:		Generic header
+ * @id:		Device Identifier
+ *
+ * Request type is TI_SCI_MSG_GET_DEVICE_STATE, responded device state
+ * information
+ */
+struct ti_sci_msg_req_get_device_state {
+	struct ti_sci_msg_hdr hdr;
+	u32 id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_resp_get_device_state - Response to get device request.
+ * @hdr:		Generic header
+ * @context_loss_count: Indicates how many times the device has lost context. A
+ *	driver can use this monotonic counter to determine if the device has
+ *	lost context since the last time this message was exchanged.
+ * @resets: Programmed state of the reset lines.
+ * @programmed_state:	The state as programmed by set_device.
+ *			- Uses the MSG_DEVICE_SW_* macros
+ * @current_state:	The actual state of the hardware.
+ *
+ * Response to request TI_SCI_MSG_GET_DEVICE_STATE.
+ */
+struct ti_sci_msg_resp_get_device_state {
+	struct ti_sci_msg_hdr hdr;
+	u32 context_loss_count;
+	u32 resets;
+	u8 programmed_state;
+#define MSG_DEVICE_HW_STATE_OFF		0
+#define MSG_DEVICE_HW_STATE_ON		1
+#define MSG_DEVICE_HW_STATE_TRANS	2
+	u8 current_state;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_set_device_resets - Set the desired resets
+ *				configuration of the device
+ * @hdr:		Generic header
+ * @id:	Indicates which device to modify
+ * @resets: A bit field of resets for the device. The meaning, behavior,
+ *	and usage of the reset flags are device specific. 0 for a bit
+ *	indicates releasing the reset represented by that bit while 1
+ *	indicates keeping it held.
+ *
+ * Request type is TI_SCI_MSG_SET_DEVICE_RESETS, responded with a generic
+ * ACK/NACK message.
+ */
+struct ti_sci_msg_req_set_device_resets {
+	struct ti_sci_msg_hdr hdr;
+	u32 id;
+	u32 resets;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_set_clock_state - Request to setup a Clock state
+ * @hdr:	Generic Header, Certain flags can be set specific to the clocks:
+ *		MSG_FLAG_CLOCK_ALLOW_SSC: Allow this clock to be modified
+ *		via spread spectrum clocking.
+ *		MSG_FLAG_CLOCK_ALLOW_FREQ_CHANGE: Allow this clock's
+ *		frequency to be changed while it is running so long as it
+ *		is within the min/max limits.
+ *		MSG_FLAG_CLOCK_INPUT_TERM: Enable input termination, this
+ *		is only applicable to clock inputs on the SoC pseudo-device.
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @request_state: Request the state for the clock to be set to.
+ *		MSG_CLOCK_SW_STATE_UNREQ: The IP does not require this clock,
+ *		it can be disabled, regardless of the state of the device
+ *		MSG_CLOCK_SW_STATE_AUTO: Allow the System Controller to
+ *		automatically manage the state of this clock. If the device
+ *		is enabled, then the clock is enabled. If the device is set
+ *		to off or retention, then the clock is internally set as not
+ *		being required by the device.(default)
+ *		MSG_CLOCK_SW_STATE_REQ:  Configure the clock to be enabled,
+ *		regardless of the state of the device.
+ *
+ * Normally, all required clocks are managed by TISCI entity, this is used
+ * only for specific control *IF* required. Auto managed state is
+ * MSG_CLOCK_SW_STATE_AUTO, in other states, TISCI entity assume remote
+ * will explicitly control.
+ *
+ * Request type is TI_SCI_MSG_SET_CLOCK_STATE, response is a generic
+ * ACK or NACK message.
+ */
+struct ti_sci_msg_req_set_clock_state {
+	/* Additional hdr->flags options */
+#define MSG_FLAG_CLOCK_ALLOW_SSC		TI_SCI_MSG_FLAG(8)
+#define MSG_FLAG_CLOCK_ALLOW_FREQ_CHANGE	TI_SCI_MSG_FLAG(9)
+#define MSG_FLAG_CLOCK_INPUT_TERM		TI_SCI_MSG_FLAG(10)
+	struct ti_sci_msg_hdr hdr;
+	u32 dev_id;
+	u8 clk_id;
+#define MSG_CLOCK_SW_STATE_UNREQ	0
+#define MSG_CLOCK_SW_STATE_AUTO		1
+#define MSG_CLOCK_SW_STATE_REQ		2
+	u8 request_state;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_get_clock_state - Request for clock state
+ * @hdr:	Generic Header
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to get state of.
+ *
+ * Request type is TI_SCI_MSG_GET_CLOCK_STATE, response is state
+ * of the clock
+ */
+struct ti_sci_msg_req_get_clock_state {
+	struct ti_sci_msg_hdr hdr;
+	u32 dev_id;
+	u8 clk_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_resp_get_clock_state - Response to get clock state
+ * @hdr:	Generic Header
+ * @programmed_state: Any programmed state of the clock. This is one of
+ *		MSG_CLOCK_SW_STATE* values.
+ * @current_state: Current state of the clock. This is one of:
+ *		MSG_CLOCK_HW_STATE_NOT_READY: Clock is not ready
+ *		MSG_CLOCK_HW_STATE_READY: Clock is ready
+ *
+ * Response to TI_SCI_MSG_GET_CLOCK_STATE.
+ */
+struct ti_sci_msg_resp_get_clock_state {
+	struct ti_sci_msg_hdr hdr;
+	u8 programmed_state;
+#define MSG_CLOCK_HW_STATE_NOT_READY	0
+#define MSG_CLOCK_HW_STATE_READY	1
+	u8 current_state;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_set_clock_parent - Set the clock parent
+ * @hdr:	Generic Header
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * @parent_id:	The new clock parent is selectable by an index via this
+ *		parameter.
+ *
+ * Request type is TI_SCI_MSG_SET_CLOCK_PARENT, response is generic
+ * ACK / NACK message.
+ */
+struct ti_sci_msg_req_set_clock_parent {
+	struct ti_sci_msg_hdr hdr;
+	u32 dev_id;
+	u8 clk_id;
+	u8 parent_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_get_clock_parent - Get the clock parent
+ * @hdr:	Generic Header
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to get the parent for.
+ *
+ * Request type is TI_SCI_MSG_GET_CLOCK_PARENT, response is parent information
+ */
+struct ti_sci_msg_req_get_clock_parent {
+	struct ti_sci_msg_hdr hdr;
+	u32 dev_id;
+	u8 clk_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_resp_get_clock_parent - Response with clock parent
+ * @hdr:	Generic Header
+ * @parent_id:	The current clock parent
+ *
+ * Response to TI_SCI_MSG_GET_CLOCK_PARENT.
+ */
+struct ti_sci_msg_resp_get_clock_parent {
+	struct ti_sci_msg_hdr hdr;
+	u8 parent_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_get_clock_num_parents - Request to get clock parents
+ * @hdr:	Generic header
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *
+ * This request provides information about how many clock parent options
+ * are available for a given clock to a device. This is typically used
+ * for input clocks.
+ *
+ * Request type is TI_SCI_MSG_GET_NUM_CLOCK_PARENTS, response is appropriate
+ * message, or NACK in case of inability to satisfy request.
+ */
+struct ti_sci_msg_req_get_clock_num_parents {
+	struct ti_sci_msg_hdr hdr;
+	u32 dev_id;
+	u8 clk_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_resp_get_clock_num_parents - Response for get clk parents
+ * @hdr:		Generic header
+ * @num_parents:	Number of clock parents
+ *
+ * Response to TI_SCI_MSG_GET_NUM_CLOCK_PARENTS
+ */
+struct ti_sci_msg_resp_get_clock_num_parents {
+	struct ti_sci_msg_hdr hdr;
+	u8 num_parents;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_query_clock_freq - Request to query a frequency
+ * @hdr:	Generic Header
+ * @dev_id:	Device identifier this request is for
+ * @min_freq_hz: The minimum allowable frequency in Hz. This is the minimum
+ *		allowable programmed frequency and does not account for clock
+ *		tolerances and jitter.
+ * @target_freq_hz: The target clock frequency. A frequency will be found
+ *		as close to this target frequency as possible.
+ * @max_freq_hz: The maximum allowable frequency in Hz. This is the maximum
+ *		allowable programmed frequency and does not account for clock
+ *		tolerances and jitter.
+ * @clk_id:	Clock identifier for the device for this request.
+ *
+ * NOTE: Normally clock frequency management is automatically done by TISCI
+ * entity. In case of specific requests, TISCI evaluates capability to achieve
+ * requested frequency within provided range and responds with
+ * result message.
+ *
+ * Request type is TI_SCI_MSG_QUERY_CLOCK_FREQ, response is appropriate message,
+ * or NACK in case of inability to satisfy request.
+ */
+struct ti_sci_msg_req_query_clock_freq {
+	struct ti_sci_msg_hdr hdr;
+	u32 dev_id;
+	u64 min_freq_hz;
+	u64 target_freq_hz;
+	u64 max_freq_hz;
+	u8 clk_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_resp_query_clock_freq - Response to a clock frequency query
+ * @hdr:	Generic Header
+ * @freq_hz:	Frequency that is the best match in Hz.
+ *
+ * Response to request type TI_SCI_MSG_QUERY_CLOCK_FREQ. NOTE: if the request
+ * cannot be satisfied, the message will be of type NACK.
+ */
+struct ti_sci_msg_resp_query_clock_freq {
+	struct ti_sci_msg_hdr hdr;
+	u64 freq_hz;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_set_clock_freq - Request to setup a clock frequency
+ * @hdr:	Generic Header
+ * @dev_id:	Device identifier this request is for
+ * @min_freq_hz: The minimum allowable frequency in Hz. This is the minimum
+ *		allowable programmed frequency and does not account for clock
+ *		tolerances and jitter.
+ * @target_freq_hz: The target clock frequency. The clock will be programmed
+ *		at a rate as close to this target frequency as possible.
+ * @max_freq_hz: The maximum allowable frequency in Hz. This is the maximum
+ *		allowable programmed frequency and does not account for clock
+ *		tolerances and jitter.
+ * @clk_id:	Clock identifier for the device for this request.
+ *
+ * NOTE: Normally clock frequency management is automatically done by TISCI
+ * entity. In case of specific requests, TISCI evaluates capability to achieve
+ * requested range and responds with success/failure message.
+ *
+ * This sets the desired frequency for a clock within an allowable
+ * range. This message will fail on an enabled clock unless
+ * MSG_FLAG_CLOCK_ALLOW_FREQ_CHANGE is set for the clock. Additionally,
+ * if other clocks have their frequency modified due to this message,
+ * they also must have the MSG_FLAG_CLOCK_ALLOW_FREQ_CHANGE or be disabled.
+ *
+ * Calling set frequency on a clock input to the SoC pseudo-device will
+ * inform the PMMC of that clock's frequency. Setting a frequency of
+ * zero will indicate the clock is disabled.
+ *
+ * Calling set frequency on clock outputs from the SoC pseudo-device will
+ * function similarly to setting the clock frequency on a device.
+ *
+ * Request type is TI_SCI_MSG_SET_CLOCK_FREQ, response is a generic ACK/NACK
+ * message.
+ */
+struct ti_sci_msg_req_set_clock_freq {
+	struct ti_sci_msg_hdr hdr;
+	u32 dev_id;
+	u64 min_freq_hz;
+	u64 target_freq_hz;
+	u64 max_freq_hz;
+	u8 clk_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_get_clock_freq - Request to get the clock frequency
+ * @hdr:	Generic Header
+ * @dev_id:	Device identifier this request is for
+ * @clk_id:	Clock identifier for the device for this request.
+ *
+ * NOTE: Normally clock frequency management is automatically done by TISCI
+ * entity. In some cases, clock frequencies are configured by host.
+ *
+ * Request type is TI_SCI_MSG_GET_CLOCK_FREQ, responded with clock frequency
+ * that the clock is currently at.
+ */
+struct ti_sci_msg_req_get_clock_freq {
+	struct ti_sci_msg_hdr hdr;
+	u32 dev_id;
+	u8 clk_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_resp_get_clock_freq - Response of clock frequency request
+ * @hdr:	Generic Header
+ * @freq_hz:	Frequency that the clock is currently on, in Hz.
+ *
+ * Response to request type TI_SCI_MSG_GET_CLOCK_FREQ.
+ */
+struct ti_sci_msg_resp_get_clock_freq {
+	struct ti_sci_msg_hdr hdr;
+	u64 freq_hz;
+} __packed;
+
+#define TI_SCI_IRQ_SECONDARY_HOST_INVALID	0xff
+
+/**
+ * struct ti_sci_msg_req_get_resource_range - Request to get a host's assigned
+ *					      range of resources.
+ * @hdr:		Generic Header
+ * @type:		Unique resource assignment type
+ * @subtype:		Resource assignment subtype within the resource type.
+ * @secondary_host:	Host processing entity to which the resources are
+ *			allocated. This is required only when the destination
+ *			host id id different from ti sci interface host id,
+ *			else TI_SCI_IRQ_SECONDARY_HOST_INVALID can be passed.
+ *
+ * Request type is TI_SCI_MSG_GET_RESOURCE_RANGE. Responded with requested
+ * resource range which is of type TI_SCI_MSG_GET_RESOURCE_RANGE.
+ */
+struct ti_sci_msg_req_get_resource_range {
+	struct ti_sci_msg_hdr hdr;
+#define MSG_RM_RESOURCE_TYPE_MASK	GENMASK(9, 0)
+#define MSG_RM_RESOURCE_SUBTYPE_MASK	GENMASK(5, 0)
+	u16 type;
+	u8 subtype;
+	u8 secondary_host;
+} __packed;
+
+/**
+ * struct ti_sci_msg_resp_get_resource_range - Response to resource get range.
+ * @hdr:		Generic Header
+ * @range_start:	Start index of the resource range.
+ * @range_num:		Number of resources in the range.
+ *
+ * Response to request TI_SCI_MSG_GET_RESOURCE_RANGE.
+ */
+struct ti_sci_msg_resp_get_resource_range {
+	struct ti_sci_msg_hdr hdr;
+	u16 range_start;
+	u16 range_num;
+} __packed;
+
+#define TISCI_ADDR_LOW_MASK		GENMASK_ULL(31, 0)
+#define TISCI_ADDR_HIGH_MASK		GENMASK_ULL(63, 32)
+#define TISCI_ADDR_HIGH_SHIFT		32
+
+/**
+ * struct ti_sci_msg_req_proc_request - Request a processor
+ *
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor
+ *
+ * Request type is TISCI_MSG_PROC_REQUEST, response is a generic ACK/NACK
+ * message.
+ */
+struct ti_sci_msg_req_proc_request {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_proc_release - Release a processor
+ *
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor
+ *
+ * Request type is TISCI_MSG_PROC_RELEASE, response is a generic ACK/NACK
+ * message.
+ */
+struct ti_sci_msg_req_proc_release {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_proc_handover - Handover a processor to a host
+ *
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor
+ * @host_id:		New Host we want to give control to
+ *
+ * Request type is TISCI_MSG_PROC_HANDOVER, response is a generic ACK/NACK
+ * message.
+ */
+struct ti_sci_msg_req_proc_handover {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+	u8 host_id;
+} __packed;
+
+/* A53 Config Flags */
+#define PROC_BOOT_CFG_FLAG_ARMV8_DBG_EN         0x00000001
+#define PROC_BOOT_CFG_FLAG_ARMV8_DBG_NIDEN      0x00000002
+#define PROC_BOOT_CFG_FLAG_ARMV8_DBG_SPIDEN     0x00000004
+#define PROC_BOOT_CFG_FLAG_ARMV8_DBG_SPNIDEN    0x00000008
+#define PROC_BOOT_CFG_FLAG_ARMV8_AARCH32        0x00000100
+
+/* R5 Config Flags */
+#define PROC_BOOT_CFG_FLAG_R5_DBG_EN            0x00000001
+#define PROC_BOOT_CFG_FLAG_R5_DBG_NIDEN         0x00000002
+#define PROC_BOOT_CFG_FLAG_R5_LOCKSTEP          0x00000100
+#define PROC_BOOT_CFG_FLAG_R5_TEINIT            0x00000200
+#define PROC_BOOT_CFG_FLAG_R5_NMFI_EN           0x00000400
+#define PROC_BOOT_CFG_FLAG_R5_TCM_RSTBASE       0x00000800
+#define PROC_BOOT_CFG_FLAG_R5_BTCM_EN           0x00001000
+#define PROC_BOOT_CFG_FLAG_R5_ATCM_EN           0x00002000
+
+/**
+ * struct ti_sci_msg_req_set_proc_boot_config - Set Processor boot configuration
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor
+ * @bootvector_low:	Lower 32bit (Little Endian) of boot vector
+ * @bootvector_high:	Higher 32bit (Little Endian) of boot vector
+ * @config_flags_set:	Optional Processor specific Config Flags to set.
+ *			Setting a bit here implies required bit sets to 1.
+ * @config_flags_clear:	Optional Processor specific Config Flags to clear.
+ *			Setting a bit here implies required bit gets cleared.
+ *
+ * Request type is TISCI_MSG_SET_PROC_BOOT_CONFIG, response is a generic
+ * ACK/NACK message.
+ */
+struct ti_sci_msg_req_set_proc_boot_config {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+	u32 bootvector_low;
+	u32 bootvector_high;
+	u32 config_flags_set;
+	u32 config_flags_clear;
+} __packed;
+
+/* R5 Control Flags */
+#define PROC_BOOT_CTRL_FLAG_R5_CORE_HALT                0x00000001
+
+/**
+ * struct ti_sci_msg_req_set_proc_boot_ctrl - Set Processor boot control flags
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor
+ * @control_flags_set:	Optional Processor specific Control Flags to set.
+ *			Setting a bit here implies required bit sets to 1.
+ * @control_flags_clear:Optional Processor specific Control Flags to clear.
+ *			Setting a bit here implies required bit gets cleared.
+ *
+ * Request type is TISCI_MSG_SET_PROC_BOOT_CTRL, response is a generic ACK/NACK
+ * message.
+ */
+struct ti_sci_msg_req_set_proc_boot_ctrl {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+	u32 control_flags_set;
+	u32 control_flags_clear;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_proc_auth_start_image - Authenticate and start image
+ * @hdr:		Generic Header
+ * @cert_addr_low:	Lower 32bit (Little Endian) of certificate
+ * @cert_addr_high:	Higher 32bit (Little Endian) of certificate
+ *
+ * Request type is TISCI_MSG_PROC_AUTH_BOOT_IMAGE, response is a generic
+ * ACK/NACK message.
+ */
+struct ti_sci_msg_req_proc_auth_boot_image {
+	struct ti_sci_msg_hdr hdr;
+	u32 cert_addr_low;
+	u32 cert_addr_high;
+} __packed;
+
+struct ti_sci_msg_resp_proc_auth_boot_image {
+	struct ti_sci_msg_hdr hdr;
+	u32 image_addr_low;
+	u32 image_addr_high;
+	u32 image_size;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_get_proc_boot_status - Get processor boot status
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor
+ *
+ * Request type is TISCI_MSG_GET_PROC_BOOT_STATUS, response is appropriate
+ * message, or NACK in case of inability to satisfy request.
+ */
+struct ti_sci_msg_req_get_proc_boot_status {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+} __packed;
+
+/* ARMv8 Status Flags */
+#define PROC_BOOT_STATUS_FLAG_ARMV8_WFE			0x00000001
+#define PROC_BOOT_STATUS_FLAG_ARMV8_WFI			0x00000002
+
+/* R5 Status Flags */
+#define PROC_BOOT_STATUS_FLAG_R5_WFE			0x00000001
+#define PROC_BOOT_STATUS_FLAG_R5_WFI			0x00000002
+#define PROC_BOOT_STATUS_FLAG_R5_CLK_GATED		0x00000004
+#define PROC_BOOT_STATUS_FLAG_R5_LOCKSTEP_PERMITTED	0x00000100
+
+/**
+ * struct ti_sci_msg_resp_get_proc_boot_status - Processor boot status response
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor
+ * @bootvector_low:	Lower 32bit (Little Endian) of boot vector
+ * @bootvector_high:	Higher 32bit (Little Endian) of boot vector
+ * @config_flags:	Optional Processor specific Config Flags set.
+ * @control_flags:	Optional Processor specific Control Flags.
+ * @status_flags:	Optional Processor specific Status Flags set.
+ *
+ * Response to TISCI_MSG_GET_PROC_BOOT_STATUS.
+ */
+struct ti_sci_msg_resp_get_proc_boot_status {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+	u32 bootvector_low;
+	u32 bootvector_high;
+	u32 config_flags;
+	u32 control_flags;
+	u32 status_flags;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_wait_proc_boot_status - Wait for a processor
+ *						 boot status
+ * @hdr:			Generic Header
+ * @processor_id:		ID of processor
+ * @num_wait_iterations:	Total number of iterations we will check before
+ *				we will timeout and give up
+ * @num_match_iterations:	How many iterations should we have continued
+ *				status to account for status bits glitching.
+ *				This is to make sure that match occurs for
+ *				consecutive checks. This implies that the
+ *				worst case should consider that the stable
+ *				time should at the worst be num_wait_iterations
+ *				num_match_iterations to prevent timeout.
+ * @delay_per_iteration_us:	Specifies how long to wait (in micro seconds)
+ *				between each status checks. This is the minimum
+ *				duration, and overhead of register reads and
+ *				checks are on top of this and can vary based on
+ *				varied conditions.
+ * @delay_before_iterations_us:	Specifies how long to wait (in micro seconds)
+ *				before the very first check in the first
+ *				iteration of status check loop. This is the
+ *				minimum duration, and overhead of register
+ *				reads and checks are.
+ * @status_flags_1_set_all_wait:If non-zero, Specifies that all bits of the
+ *				status matching this field requested MUST be 1.
+ * @status_flags_1_set_any_wait:If non-zero, Specifies that at least one of the
+ *				bits matching this field requested MUST be 1.
+ * @status_flags_1_clr_all_wait:If non-zero, Specifies that all bits of the
+ *				status matching this field requested MUST be 0.
+ * @status_flags_1_clr_any_wait:If non-zero, Specifies that at least one of the
+ *				bits matching this field requested MUST be 0.
+ *
+ * Request type is TISCI_MSG_WAIT_PROC_BOOT_STATUS, response is appropriate
+ * message, or NACK in case of inability to satisfy request.
+ */
+struct ti_sci_msg_req_wait_proc_boot_status {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+	u8 num_wait_iterations;
+	u8 num_match_iterations;
+	u8 delay_per_iteration_us;
+	u8 delay_before_iterations_us;
+	u32 status_flags_1_set_all_wait;
+	u32 status_flags_1_set_any_wait;
+	u32 status_flags_1_clr_all_wait;
+	u32 status_flags_1_clr_any_wait;
+} __packed;
+
+/**
+ * struct ti_sci_msg_rm_ring_cfg_req - Configure a Navigator Subsystem ring
+ *
+ * Configures the non-real-time registers of a Navigator Subsystem ring.
+ * @hdr:	Generic Header
+ * @valid_params: Bitfield defining validity of ring configuration parameters.
+ *	The ring configuration fields are not valid, and will not be used for
+ *	ring configuration, if their corresponding valid bit is zero.
+ *	Valid bit usage:
+ *	0 - Valid bit for @tisci_msg_rm_ring_cfg_req addr_lo
+ *	1 - Valid bit for @tisci_msg_rm_ring_cfg_req addr_hi
+ *	2 - Valid bit for @tisci_msg_rm_ring_cfg_req count
+ *	3 - Valid bit for @tisci_msg_rm_ring_cfg_req mode
+ *	4 - Valid bit for @tisci_msg_rm_ring_cfg_req size
+ *	5 - Valid bit for @tisci_msg_rm_ring_cfg_req order_id
+ * @nav_id: Device ID of Navigator Subsystem from which the ring is allocated
+ * @index: ring index to be configured.
+ * @addr_lo: 32 LSBs of ring base address to be programmed into the ring's
+ *	RING_BA_LO register
+ * @addr_hi: 16 MSBs of ring base address to be programmed into the ring's
+ *	RING_BA_HI register.
+ * @count: Number of ring elements. Must be even if mode is CREDENTIALS or QM
+ *	modes.
+ * @mode: Specifies the mode the ring is to be configured.
+ * @size: Specifies encoded ring element size. To calculate the encoded size use
+ *	the formula (log2(size_bytes) - 2), where size_bytes cannot be
+ *	greater than 256.
+ * @order_id: Specifies the ring's bus order ID.
+ */
+struct ti_sci_msg_rm_ring_cfg_req {
+	struct ti_sci_msg_hdr hdr;
+	u32 valid_params;
+	u16 nav_id;
+	u16 index;
+	u32 addr_lo;
+	u32 addr_hi;
+	u32 count;
+	u8 mode;
+	u8 size;
+	u8 order_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_rm_ring_cfg_resp - Response to configuring a ring.
+ *
+ * @hdr:	Generic Header
+ */
+struct ti_sci_msg_rm_ring_cfg_resp {
+	struct ti_sci_msg_hdr hdr;
+} __packed;
+
+/**
+ * struct ti_sci_msg_rm_ring_get_cfg_req - Get RA ring's configuration
+ *
+ * Gets the configuration of the non-real-time register fields of a ring.  The
+ * host, or a supervisor of the host, who owns the ring must be the requesting
+ * host.  The values of the non-real-time registers are returned in
+ * @ti_sci_msg_rm_ring_get_cfg_resp.
+ *
+ * @hdr: Generic Header
+ * @nav_id: Device ID of Navigator Subsystem from which the ring is allocated
+ * @index: ring index.
+ */
+struct ti_sci_msg_rm_ring_get_cfg_req {
+	struct ti_sci_msg_hdr hdr;
+	u16 nav_id;
+	u16 index;
+} __packed;
+
+/**
+ * struct ti_sci_msg_rm_ring_get_cfg_resp -  Ring get configuration response
+ *
+ * Response received by host processor after RM has handled
+ * @ti_sci_msg_rm_ring_get_cfg_req. The response contains the ring's
+ * non-real-time register values.
+ *
+ * @hdr: Generic Header
+ * @addr_lo: Ring 32 LSBs of base address
+ * @addr_hi: Ring 16 MSBs of base address.
+ * @count: Ring number of elements.
+ * @mode: Ring mode.
+ * @size: encoded Ring element size
+ * @order_id: ing order ID.
+ */
+struct ti_sci_msg_rm_ring_get_cfg_resp {
+	struct ti_sci_msg_hdr hdr;
+	u32 addr_lo;
+	u32 addr_hi;
+	u32 count;
+	u8 mode;
+	u8 size;
+	u8 order_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_psil_pair - Pairs a PSI-L source thread to a destination
+ *				 thread
+ * @hdr:	Generic Header
+ * @nav_id:	SoC Navigator Subsystem device ID whose PSI-L config proxy is
+ *		used to pair the source and destination threads.
+ * @src_thread:	PSI-L source thread ID within the PSI-L System thread map.
+ *
+ * UDMAP transmit channels mapped to source threads will have their
+ * TCHAN_THRD_ID register programmed with the destination thread if the pairing
+ * is successful.
+
+ * @dst_thread: PSI-L destination thread ID within the PSI-L System thread map.
+ * PSI-L destination threads start at index 0x8000.  The request is NACK'd if
+ * the destination thread is not greater than or equal to 0x8000.
+ *
+ * UDMAP receive channels mapped to destination threads will have their
+ * RCHAN_THRD_ID register programmed with the source thread if the pairing
+ * is successful.
+ *
+ * Request type is TI_SCI_MSG_RM_PSIL_PAIR, response is a generic ACK or NACK
+ * message.
+ */
+struct ti_sci_msg_psil_pair {
+	struct ti_sci_msg_hdr hdr;
+	u32 nav_id;
+	u32 src_thread;
+	u32 dst_thread;
+} __packed;
+
+/**
+ * struct ti_sci_msg_psil_unpair - Unpairs a PSI-L source thread from a
+ *				   destination thread
+ * @hdr:	Generic Header
+ * @nav_id:	SoC Navigator Subsystem device ID whose PSI-L config proxy is
+ *		used to unpair the source and destination threads.
+ * @src_thread:	PSI-L source thread ID within the PSI-L System thread map.
+ *
+ * UDMAP transmit channels mapped to source threads will have their
+ * TCHAN_THRD_ID register cleared if the unpairing is successful.
+ *
+ * @dst_thread: PSI-L destination thread ID within the PSI-L System thread map.
+ * PSI-L destination threads start at index 0x8000.  The request is NACK'd if
+ * the destination thread is not greater than or equal to 0x8000.
+ *
+ * UDMAP receive channels mapped to destination threads will have their
+ * RCHAN_THRD_ID register cleared if the unpairing is successful.
+ *
+ * Request type is TI_SCI_MSG_RM_PSIL_UNPAIR, response is a generic ACK or NACK
+ * message.
+ */
+struct ti_sci_msg_psil_unpair {
+	struct ti_sci_msg_hdr hdr;
+	u32 nav_id;
+	u32 src_thread;
+	u32 dst_thread;
+} __packed;
+
+/**
+ * Configures a Navigator Subsystem UDMAP transmit channel
+ *
+ * Configures the non-real-time registers of a Navigator Subsystem UDMAP
+ * transmit channel.  The channel index must be assigned to the host defined
+ * in the TISCI header via the RM board configuration resource assignment
+ * range list.
+ *
+ * @hdr: Generic Header
+ *
+ * @valid_params: Bitfield defining validity of tx channel configuration
+ * parameters. The tx channel configuration fields are not valid, and will not
+ * be used for ch configuration, if their corresponding valid bit is zero.
+ * Valid bit usage:
+ *    0 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_pause_on_err
+ *    1 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_atype
+ *    2 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_chan_type
+ *    3 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_fetch_size
+ *    4 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::txcq_qnum
+ *    5 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_priority
+ *    6 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_qos
+ *    7 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_orderid
+ *    8 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_sched_priority
+ *    9 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_filt_einfo
+ *   10 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_filt_pswords
+ *   11 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_supr_tdpkt
+ *   12 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_credit_count
+ *   13 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::fdepth
+ *   14 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_burst_size
+ *   15 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_tdtype
+ *   16 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::extended_ch_type
+ *
+ * @nav_id: SoC device ID of Navigator Subsystem where tx channel is located
+ *
+ * @index: UDMAP transmit channel index.
+ *
+ * @tx_pause_on_err: UDMAP transmit channel pause on error configuration to
+ * be programmed into the tx_pause_on_err field of the channel's TCHAN_TCFG
+ * register.
+ *
+ * @tx_filt_einfo: UDMAP transmit channel extended packet information passing
+ * configuration to be programmed into the tx_filt_einfo field of the
+ * channel's TCHAN_TCFG register.
+ *
+ * @tx_filt_pswords: UDMAP transmit channel protocol specific word passing
+ * configuration to be programmed into the tx_filt_pswords field of the
+ * channel's TCHAN_TCFG register.
+ *
+ * @tx_atype: UDMAP transmit channel non Ring Accelerator access pointer
+ * interpretation configuration to be programmed into the tx_atype field of
+ * the channel's TCHAN_TCFG register.
+ *
+ * @tx_chan_type: UDMAP transmit channel functional channel type and work
+ * passing mechanism configuration to be programmed into the tx_chan_type
+ * field of the channel's TCHAN_TCFG register.
+ *
+ * @tx_supr_tdpkt: UDMAP transmit channel teardown packet generation suppression
+ * configuration to be programmed into the tx_supr_tdpkt field of the channel's
+ * TCHAN_TCFG register.
+ *
+ * @tx_fetch_size: UDMAP transmit channel number of 32-bit descriptor words to
+ * fetch configuration to be programmed into the tx_fetch_size field of the
+ * channel's TCHAN_TCFG register.  The user must make sure to set the maximum
+ * word count that can pass through the channel for any allowed descriptor type.
+ *
+ * @tx_credit_count: UDMAP transmit channel transfer request credit count
+ * configuration to be programmed into the count field of the TCHAN_TCREDIT
+ * register.  Specifies how many credits for complete TRs are available.
+ *
+ * @txcq_qnum: UDMAP transmit channel completion queue configuration to be
+ * programmed into the txcq_qnum field of the TCHAN_TCQ register. The specified
+ * completion queue must be assigned to the host, or a subordinate of the host,
+ * requesting configuration of the transmit channel.
+ *
+ * @tx_priority: UDMAP transmit channel transmit priority value to be programmed
+ * into the priority field of the channel's TCHAN_TPRI_CTRL register.
+ *
+ * @tx_qos: UDMAP transmit channel transmit qos value to be programmed into the
+ * qos field of the channel's TCHAN_TPRI_CTRL register.
+ *
+ * @tx_orderid: UDMAP transmit channel bus order id value to be programmed into
+ * the orderid field of the channel's TCHAN_TPRI_CTRL register.
+ *
+ * @fdepth: UDMAP transmit channel FIFO depth configuration to be programmed
+ * into the fdepth field of the TCHAN_TFIFO_DEPTH register. Sets the number of
+ * Tx FIFO bytes which are allowed to be stored for the channel. Check the UDMAP
+ * section of the TRM for restrictions regarding this parameter.
+ *
+ * @tx_sched_priority: UDMAP transmit channel tx scheduling priority
+ * configuration to be programmed into the priority field of the channel's
+ * TCHAN_TST_SCHED register.
+ *
+ * @tx_burst_size: UDMAP transmit channel burst size configuration to be
+ * programmed into the tx_burst_size field of the TCHAN_TCFG register.
+ *
+ * @tx_tdtype: UDMAP transmit channel teardown type configuration to be
+ * programmed into the tdtype field of the TCHAN_TCFG register:
+ * 0 - Return immediately
+ * 1 - Wait for completion message from remote peer
+ *
+ * @extended_ch_type: Valid for BCDMA.
+ * 0 - the channel is split tx channel (tchan)
+ * 1 - the channel is block copy channel (bchan)
+ */
+struct ti_sci_msg_rm_udmap_tx_ch_cfg_req {
+	struct ti_sci_msg_hdr hdr;
+	u32 valid_params;
+	u16 nav_id;
+	u16 index;
+	u8 tx_pause_on_err;
+	u8 tx_filt_einfo;
+	u8 tx_filt_pswords;
+	u8 tx_atype;
+	u8 tx_chan_type;
+	u8 tx_supr_tdpkt;
+	u16 tx_fetch_size;
+	u8 tx_credit_count;
+	u16 txcq_qnum;
+	u8 tx_priority;
+	u8 tx_qos;
+	u8 tx_orderid;
+	u16 fdepth;
+	u8 tx_sched_priority;
+	u8 tx_burst_size;
+	u8 tx_tdtype;
+	u8 extended_ch_type;
+} __packed;
+
+/**
+ *  Response to configuring a UDMAP transmit channel.
+ *
+ * @hdr: Standard TISCI header
+ */
+struct ti_sci_msg_rm_udmap_tx_ch_cfg_resp {
+	struct ti_sci_msg_hdr hdr;
+} __packed;
+
+/**
+ * Configures a Navigator Subsystem UDMAP receive channel
+ *
+ * Configures the non-real-time registers of a Navigator Subsystem UDMAP
+ * receive channel.  The channel index must be assigned to the host defined
+ * in the TISCI header via the RM board configuration resource assignment
+ * range list.
+ *
+ * @hdr: Generic Header
+ *
+ * @valid_params: Bitfield defining validity of rx channel configuration
+ * parameters.
+ * The rx channel configuration fields are not valid, and will not be used for
+ * ch configuration, if their corresponding valid bit is zero.
+ * Valid bit usage:
+ *    0 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_pause_on_err
+ *    1 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_atype
+ *    2 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_chan_type
+ *    3 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_fetch_size
+ *    4 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rxcq_qnum
+ *    5 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_priority
+ *    6 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_qos
+ *    7 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_orderid
+ *    8 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_sched_priority
+ *    9 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::flowid_start
+ *   10 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::flowid_cnt
+ *   11 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_ignore_short
+ *   12 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_ignore_long
+ *
+ * @nav_id: SoC device ID of Navigator Subsystem where rx channel is located
+ *
+ * @index: UDMAP receive channel index.
+ *
+ * @rx_fetch_size: UDMAP receive channel number of 32-bit descriptor words to
+ * fetch configuration to be programmed into the rx_fetch_size field of the
+ * channel's RCHAN_RCFG register.
+ *
+ * @rxcq_qnum: UDMAP receive channel completion queue configuration to be
+ * programmed into the rxcq_qnum field of the RCHAN_RCQ register.
+ * The specified completion queue must be assigned to the host, or a subordinate
+ * of the host, requesting configuration of the receive channel.
+ *
+ * @rx_priority: UDMAP receive channel receive priority value to be programmed
+ * into the priority field of the channel's RCHAN_RPRI_CTRL register.
+ *
+ * @rx_qos: UDMAP receive channel receive qos value to be programmed into the
+ * qos field of the channel's RCHAN_RPRI_CTRL register.
+ *
+ * @rx_orderid: UDMAP receive channel bus order id value to be programmed into
+ * the orderid field of the channel's RCHAN_RPRI_CTRL register.
+ *
+ * @rx_sched_priority: UDMAP receive channel rx scheduling priority
+ * configuration to be programmed into the priority field of the channel's
+ * RCHAN_RST_SCHED register.
+ *
+ * @flowid_start: UDMAP receive channel additional flows starting index
+ * configuration to program into the flow_start field of the RCHAN_RFLOW_RNG
+ * register. Specifies the starting index for flow IDs the receive channel is to
+ * make use of beyond the default flow. flowid_start and @ref flowid_cnt must be
+ * set as valid and configured together. The starting flow ID set by
+ * @ref flowid_cnt must be a flow index within the Navigator Subsystem's subset
+ * of flows beyond the default flows statically mapped to receive channels.
+ * The additional flows must be assigned to the host, or a subordinate of the
+ * host, requesting configuration of the receive channel.
+ *
+ * @flowid_cnt: UDMAP receive channel additional flows count configuration to
+ * program into the flowid_cnt field of the RCHAN_RFLOW_RNG register.
+ * This field specifies how many flow IDs are in the additional contiguous range
+ * of legal flow IDs for the channel.  @ref flowid_start and flowid_cnt must be
+ * set as valid and configured together. Disabling the valid_params field bit
+ * for flowid_cnt indicates no flow IDs other than the default are to be
+ * allocated and used by the receive channel. @ref flowid_start plus flowid_cnt
+ * cannot be greater than the number of receive flows in the receive channel's
+ * Navigator Subsystem.  The additional flows must be assigned to the host, or a
+ * subordinate of the host, requesting configuration of the receive channel.
+ *
+ * @rx_pause_on_err: UDMAP receive channel pause on error configuration to be
+ * programmed into the rx_pause_on_err field of the channel's RCHAN_RCFG
+ * register.
+ *
+ * @rx_atype: UDMAP receive channel non Ring Accelerator access pointer
+ * interpretation configuration to be programmed into the rx_atype field of the
+ * channel's RCHAN_RCFG register.
+ *
+ * @rx_chan_type: UDMAP receive channel functional channel type and work passing
+ * mechanism configuration to be programmed into the rx_chan_type field of the
+ * channel's RCHAN_RCFG register.
+ *
+ * @rx_ignore_short: UDMAP receive channel short packet treatment configuration
+ * to be programmed into the rx_ignore_short field of the RCHAN_RCFG register.
+ *
+ * @rx_ignore_long: UDMAP receive channel long packet treatment configuration to
+ * be programmed into the rx_ignore_long field of the RCHAN_RCFG register.
+ */
+struct ti_sci_msg_rm_udmap_rx_ch_cfg_req {
+	struct ti_sci_msg_hdr hdr;
+	u32 valid_params;
+	u16 nav_id;
+	u16 index;
+	u16 rx_fetch_size;
+	u16 rxcq_qnum;
+	u8 rx_priority;
+	u8 rx_qos;
+	u8 rx_orderid;
+	u8 rx_sched_priority;
+	u16 flowid_start;
+	u16 flowid_cnt;
+	u8 rx_pause_on_err;
+	u8 rx_atype;
+	u8 rx_chan_type;
+	u8 rx_ignore_short;
+	u8 rx_ignore_long;
+} __packed;
+
+/**
+ * Response to configuring a UDMAP receive channel.
+ *
+ * @hdr: Standard TISCI header
+ */
+struct ti_sci_msg_rm_udmap_rx_ch_cfg_resp {
+	struct ti_sci_msg_hdr hdr;
+} __packed;
+
+/**
+ * Configures a Navigator Subsystem UDMAP receive flow
+ *
+ * Configures a Navigator Subsystem UDMAP receive flow's registers.
+ * Configuration does not include the flow registers which handle size-based
+ * free descriptor queue routing.
+ *
+ * The flow index must be assigned to the host defined in the TISCI header via
+ * the RM board configuration resource assignment range list.
+ *
+ * @hdr: Standard TISCI header
+ *
+ * @valid_params
+ * Bitfield defining validity of rx flow configuration parameters.  The
+ * rx flow configuration fields are not valid, and will not be used for flow
+ * configuration, if their corresponding valid bit is zero.  Valid bit usage:
+ *     0 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_einfo_present
+ *     1 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_psinfo_present
+ *     2 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_error_handling
+ *     3 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_desc_type
+ *     4 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_sop_offset
+ *     5 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_dest_qnum
+ *     6 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_src_tag_hi
+ *     7 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_src_tag_lo
+ *     8 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_dest_tag_hi
+ *     9 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_dest_tag_lo
+ *    10 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_src_tag_hi_sel
+ *    11 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_src_tag_lo_sel
+ *    12 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_dest_tag_hi_sel
+ *    13 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_dest_tag_lo_sel
+ *    14 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_fdq0_sz0_qnum
+ *    15 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_fdq1_sz0_qnum
+ *    16 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_fdq2_sz0_qnum
+ *    17 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_fdq3_sz0_qnum
+ *    18 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_ps_location
+ *
+ * @nav_id: SoC device ID of Navigator Subsystem from which the receive flow is
+ * allocated
+ *
+ * @flow_index: UDMAP receive flow index for non-optional configuration.
+ *
+ * @rx_einfo_present:
+ * UDMAP receive flow extended packet info present configuration to be
+ * programmed into the rx_einfo_present field of the flow's RFLOW_RFA register.
+ *
+ * @rx_psinfo_present:
+ * UDMAP receive flow PS words present configuration to be programmed into the
+ * rx_psinfo_present field of the flow's RFLOW_RFA register.
+ *
+ * @rx_error_handling:
+ * UDMAP receive flow error handling configuration to be programmed into the
+ * rx_error_handling field of the flow's RFLOW_RFA register.
+ *
+ * @rx_desc_type:
+ * UDMAP receive flow descriptor type configuration to be programmed into the
+ * rx_desc_type field field of the flow's RFLOW_RFA register.
+ *
+ * @rx_sop_offset:
+ * UDMAP receive flow start of packet offset configuration to be programmed
+ * into the rx_sop_offset field of the RFLOW_RFA register.  See the UDMAP
+ * section of the TRM for more information on this setting.  Valid values for
+ * this field are 0-255 bytes.
+ *
+ * @rx_dest_qnum:
+ * UDMAP receive flow destination queue configuration to be programmed into the
+ * rx_dest_qnum field of the flow's RFLOW_RFA register.  The specified
+ * destination queue must be valid within the Navigator Subsystem and must be
+ * owned by the host, or a subordinate of the host, requesting allocation and
+ * configuration of the receive flow.
+ *
+ * @rx_src_tag_hi:
+ * UDMAP receive flow source tag high byte constant configuration to be
+ * programmed into the rx_src_tag_hi field of the flow's RFLOW_RFB register.
+ * See the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_src_tag_lo:
+ * UDMAP receive flow source tag low byte constant configuration to be
+ * programmed into the rx_src_tag_lo field of the flow's RFLOW_RFB register.
+ * See the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_dest_tag_hi:
+ * UDMAP receive flow destination tag high byte constant configuration to be
+ * programmed into the rx_dest_tag_hi field of the flow's RFLOW_RFB register.
+ * See the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_dest_tag_lo:
+ * UDMAP receive flow destination tag low byte constant configuration to be
+ * programmed into the rx_dest_tag_lo field of the flow's RFLOW_RFB register.
+ * See the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_src_tag_hi_sel:
+ * UDMAP receive flow source tag high byte selector configuration to be
+ * programmed into the rx_src_tag_hi_sel field of the RFLOW_RFC register.  See
+ * the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_src_tag_lo_sel:
+ * UDMAP receive flow source tag low byte selector configuration to be
+ * programmed into the rx_src_tag_lo_sel field of the RFLOW_RFC register.  See
+ * the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_dest_tag_hi_sel:
+ * UDMAP receive flow destination tag high byte selector configuration to be
+ * programmed into the rx_dest_tag_hi_sel field of the RFLOW_RFC register.  See
+ * the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_dest_tag_lo_sel:
+ * UDMAP receive flow destination tag low byte selector configuration to be
+ * programmed into the rx_dest_tag_lo_sel field of the RFLOW_RFC register.  See
+ * the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_fdq0_sz0_qnum:
+ * UDMAP receive flow free descriptor queue 0 configuration to be programmed
+ * into the rx_fdq0_sz0_qnum field of the flow's RFLOW_RFD register.  See the
+ * UDMAP section of the TRM for more information on this setting. The specified
+ * free queue must be valid within the Navigator Subsystem and must be owned
+ * by the host, or a subordinate of the host, requesting allocation and
+ * configuration of the receive flow.
+ *
+ * @rx_fdq1_qnum:
+ * UDMAP receive flow free descriptor queue 1 configuration to be programmed
+ * into the rx_fdq1_qnum field of the flow's RFLOW_RFD register.  See the
+ * UDMAP section of the TRM for more information on this setting.  The specified
+ * free queue must be valid within the Navigator Subsystem and must be owned
+ * by the host, or a subordinate of the host, requesting allocation and
+ * configuration of the receive flow.
+ *
+ * @rx_fdq2_qnum:
+ * UDMAP receive flow free descriptor queue 2 configuration to be programmed
+ * into the rx_fdq2_qnum field of the flow's RFLOW_RFE register.  See the
+ * UDMAP section of the TRM for more information on this setting.  The specified
+ * free queue must be valid within the Navigator Subsystem and must be owned
+ * by the host, or a subordinate of the host, requesting allocation and
+ * configuration of the receive flow.
+ *
+ * @rx_fdq3_qnum:
+ * UDMAP receive flow free descriptor queue 3 configuration to be programmed
+ * into the rx_fdq3_qnum field of the flow's RFLOW_RFE register.  See the
+ * UDMAP section of the TRM for more information on this setting.  The specified
+ * free queue must be valid within the Navigator Subsystem and must be owned
+ * by the host, or a subordinate of the host, requesting allocation and
+ * configuration of the receive flow.
+ *
+ * @rx_ps_location:
+ * UDMAP receive flow PS words location configuration to be programmed into the
+ * rx_ps_location field of the flow's RFLOW_RFA register.
+ */
+struct ti_sci_msg_rm_udmap_flow_cfg_req {
+	struct ti_sci_msg_hdr hdr;
+	u32 valid_params;
+	u16 nav_id;
+	u16 flow_index;
+	u8 rx_einfo_present;
+	u8 rx_psinfo_present;
+	u8 rx_error_handling;
+	u8 rx_desc_type;
+	u16 rx_sop_offset;
+	u16 rx_dest_qnum;
+	u8 rx_src_tag_hi;
+	u8 rx_src_tag_lo;
+	u8 rx_dest_tag_hi;
+	u8 rx_dest_tag_lo;
+	u8 rx_src_tag_hi_sel;
+	u8 rx_src_tag_lo_sel;
+	u8 rx_dest_tag_hi_sel;
+	u8 rx_dest_tag_lo_sel;
+	u16 rx_fdq0_sz0_qnum;
+	u16 rx_fdq1_qnum;
+	u16 rx_fdq2_qnum;
+	u16 rx_fdq3_qnum;
+	u8 rx_ps_location;
+} __packed;
+
+/**
+ *  Response to configuring a Navigator Subsystem UDMAP receive flow
+ *
+ * @hdr: Standard TISCI header
+ */
+struct ti_sci_msg_rm_udmap_flow_cfg_resp {
+	struct ti_sci_msg_hdr hdr;
+} __packed;
+
+#define FWL_MAX_PRIVID_SLOTS 3U
+
+/**
+ * struct ti_sci_msg_fwl_set_firewall_region_req - Request for configuring the firewall permissions.
+ *
+ * @hdr:		Generic Header
+ *
+ * @fwl_id:		Firewall ID in question
+ * @region:		Region or channel number to set config info
+ *			This field is unused in case of a simple firewall  and must be initialized
+ *			to zero.  In case of a region based firewall, this field indicates the
+ *			region in question. (index starting from 0) In case of a channel based
+ *			firewall, this field indicates the channel in question (index starting
+ *			from 0)
+ * @n_permission_regs:	Number of permission registers to set
+ * @control:		Contents of the firewall CONTROL register to set
+ * @permissions:	Contents of the firewall PERMISSION register to set
+ * @start_address:	Contents of the firewall START_ADDRESS register to set
+ * @end_address:	Contents of the firewall END_ADDRESS register to set
+ */
+
+struct ti_sci_msg_fwl_set_firewall_region_req {
+	struct ti_sci_msg_hdr	hdr;
+	u16			fwl_id;
+	u16			region;
+	u32			n_permission_regs;
+	u32			control;
+	u32			permissions[FWL_MAX_PRIVID_SLOTS];
+	u64			start_address;
+	u64			end_address;
+} __packed;
+
+/**
+ * struct ti_sci_msg_fwl_get_firewall_region_req - Request for retrieving the firewall permissions
+ *
+ * @hdr:		Generic Header
+ *
+ * @fwl_id:		Firewall ID in question
+ * @region:		Region or channel number to get config info
+ *			This field is unused in case of a simple firewall and must be initialized
+ *			to zero.  In case of a region based firewall, this field indicates the
+ *			region in question (index starting from 0). In case of a channel based
+ *			firewall, this field indicates the channel in question (index starting
+ *			from 0).
+ * @n_permission_regs:	Number of permission registers to retrieve
+ */
+struct ti_sci_msg_fwl_get_firewall_region_req {
+	struct ti_sci_msg_hdr	hdr;
+	u16			fwl_id;
+	u16			region;
+	u32			n_permission_regs;
+} __packed;
+
+/**
+ * struct ti_sci_msg_fwl_get_firewall_region_resp - Response for retrieving the firewall permissions
+ *
+ * @hdr:		Generic Header
+ *
+ * @fwl_id:		Firewall ID in question
+ * @region:		Region or channel number to set config info This field is
+ *			unused in case of a simple firewall  and must be initialized to zero.  In
+ *			case of a region based firewall, this field indicates the region in
+ *			question. (index starting from 0) In case of a channel based firewall, this
+ *			field indicates the channel in question (index starting from 0)
+ * @n_permission_regs:	Number of permission registers retrieved
+ * @control:		Contents of the firewall CONTROL register
+ * @permissions:	Contents of the firewall PERMISSION registers
+ * @start_address:	Contents of the firewall START_ADDRESS register This is not applicable for channelized firewalls.
+ * @end_address:	Contents of the firewall END_ADDRESS register This is not applicable for channelized firewalls.
+ */
+struct ti_sci_msg_fwl_get_firewall_region_resp {
+	struct ti_sci_msg_hdr	hdr;
+	u16			fwl_id;
+	u16			region;
+	u32			n_permission_regs;
+	u32			control;
+	u32			permissions[FWL_MAX_PRIVID_SLOTS];
+	u64			start_address;
+	u64			end_address;
+} __packed;
+
+/**
+ * struct ti_sci_msg_fwl_change_owner_info_req - Request for a firewall owner change
+ *
+ * @hdr:		Generic Header
+ *
+ * @fwl_id:		Firewall ID in question
+ * @region:		Region or channel number if applicable
+ * @owner_index:	New owner index to transfer ownership to
+ */
+struct ti_sci_msg_fwl_change_owner_info_req {
+	struct ti_sci_msg_hdr	hdr;
+	u16			fwl_id;
+	u16			region;
+	u8			owner_index;
+} __packed;
+
+/**
+ * struct ti_sci_msg_fwl_change_owner_info_resp - Response for a firewall owner change
+ *
+ * @hdr:		Generic Header
+ *
+ * @fwl_id:		Firewall ID specified in request
+ * @region:		Region or channel number specified in request
+ * @owner_index:	Owner index specified in request
+ * @owner_privid:	New owner priv-ID returned by DMSC.
+ * @owner_permission_bits:	New owner permission bits returned by DMSC.
+ */
+struct ti_sci_msg_fwl_change_owner_info_resp {
+	struct ti_sci_msg_hdr	hdr;
+	u16			fwl_id;
+	u16			region;
+	u8			owner_index;
+	u8			owner_privid;
+	u16			owner_permission_bits;
+} __packed;
+
+#endif /* __TI_SCI_H */
diff --git a/include/soc/ti/ti_sci_protocol.h b/include/soc/ti/ti_sci_protocol.h
new file mode 100644
index 0000000000..ec69f07b8e
--- /dev/null
+++ b/include/soc/ti/ti_sci_protocol.h
@@ -0,0 +1,657 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Texas Instruments System Control Interface Protocol
+ * Based on include/linux/soc/ti/ti_sci_protocol.h from Linux.
+ *
+ * Copyright (C) 2018 Texas Instruments Incorporated - http://www.ti.com/
+ *	Nishanth Menon
+ *	Lokesh Vutla <lokeshvutla@ti.com>
+ */
+
+#ifndef __TISCI_PROTOCOL_H
+#define __TISCI_PROTOCOL_H
+
+#include <linux/bitops.h>
+#include <linux/err.h>
+
+/**
+ * struct ti_sci_version_info - version information structure
+ * @abi_major:	Major ABI version. Change here implies risk of backward
+ *		compatibility break.
+ * @abi_minor:	Minor ABI version. Change here implies new feature addition,
+ *		or compatible change in ABI.
+ * @firmware_revision:	Firmware revision (not usually used).
+ * @firmware_description: Firmware description (not usually used).
+ */
+struct ti_sci_version_info {
+	u8 abi_major;
+	u8 abi_minor;
+	u16 firmware_revision;
+	char firmware_description[32];
+};
+
+struct ti_sci_handle;
+
+/**
+ * struct ti_sci_board_ops - Board config operations
+ * @board_config: Command to set the board configuration
+ *		  Returns 0 for successful exclusive request, else returns
+ *		  corresponding error message.
+ * @board_config_rm: Command to set the board resource management
+ *		  configuration
+ *		  Returns 0 for successful exclusive request, else returns
+ *		  corresponding error message.
+ * @board_config_security: Command to set the board security configuration
+ *		  Returns 0 for successful exclusive request, else returns
+ *		  corresponding error message.
+ * @board_config_pm: Command to trigger and set the board power and clock
+ *		  management related configuration
+ *		  Returns 0 for successful exclusive request, else returns
+ *		  corresponding error message.
+ */
+struct ti_sci_board_ops {
+	int (*board_config)(const struct ti_sci_handle *handle,
+			    u64 addr, u32 size);
+	int (*board_config_rm)(const struct ti_sci_handle *handle,
+			       u64 addr, u32 size);
+	int (*board_config_security)(const struct ti_sci_handle *handle,
+				     u64 addr, u32 size);
+	int (*board_config_pm)(const struct ti_sci_handle *handle,
+			       u64 addr, u32 size);
+};
+
+/**
+ * struct ti_sci_dev_ops - Device control operations
+ * @get_device: Command to request for device managed by TISCI
+ *		Returns 0 for successful exclusive request, else returns
+ *		corresponding error message.
+ * @idle_device: Command to idle a device managed by TISCI
+ *		Returns 0 for successful exclusive request, else returns
+ *		corresponding error message.
+ * @put_device:	Command to release a device managed by TISCI
+ *		Returns 0 for successful release, else returns corresponding
+ *		error message.
+ * @is_valid:	Check if the device ID is a valid ID.
+ *		Returns 0 if the ID is valid, else returns corresponding error.
+ * @get_context_loss_count: Command to retrieve context loss counter - this
+ *		increments every time the device looses context. Overflow
+ *		is possible.
+ *		- count: pointer to u32 which will retrieve counter
+ *		Returns 0 for successful information request and count has
+ *		proper data, else returns corresponding error message.
+ * @is_idle:	Reports back about device idle state
+ *		- req_state: Returns requested idle state
+ *		Returns 0 for successful information request and req_state and
+ *		current_state has proper data, else returns corresponding error
+ *		message.
+ * @is_stop:	Reports back about device stop state
+ *		- req_state: Returns requested stop state
+ *		- current_state: Returns current stop state
+ *		Returns 0 for successful information request and req_state and
+ *		current_state has proper data, else returns corresponding error
+ *		message.
+ * @is_on:	Reports back about device ON(or active) state
+ *		- req_state: Returns requested ON state
+ *		- current_state: Returns current ON state
+ *		Returns 0 for successful information request and req_state and
+ *		current_state has proper data, else returns corresponding error
+ *		message.
+ * @is_transitioning: Reports back if the device is in the middle of transition
+ *		of state.
+ *		-current_state: Returns 'true' if currently transitioning.
+ * @set_device_resets: Command to configure resets for device managed by TISCI.
+ *		-reset_state: Device specific reset bit field
+ *		Returns 0 for successful request, else returns
+ *		corresponding error message.
+ * @get_device_resets: Command to read state of resets for device managed
+ *		by TISCI.
+ *		-reset_state: pointer to u32 which will retrieve resets
+ *		Returns 0 for successful request, else returns
+ *		corresponding error message.
+ * @release_exclusive_devices: Command to release all the exclusive devices
+ *		attached to this host. This should be used very carefully
+ *		and only at the end of execution of your software.
+ *
+ * NOTE: for all these functions, the following parameters are generic in
+ * nature:
+ * -handle:	Pointer to TISCI handle as retrieved by *ti_sci_get_handle
+ * -id:		Device Identifier
+ *
+ * Request for the device - NOTE: the client MUST maintain integrity of
+ * usage count by balancing get_device with put_device. No refcounting is
+ * managed by driver for that purpose.
+ */
+struct ti_sci_dev_ops {
+	int (*get_device)(const struct ti_sci_handle *handle, u32 id);
+	int (*get_device_exclusive)(const struct ti_sci_handle *handle, u32 id);
+	int (*idle_device)(const struct ti_sci_handle *handle, u32 id);
+	int (*idle_device_exclusive)(const struct ti_sci_handle *handle,
+				     u32 id);
+	int (*put_device)(const struct ti_sci_handle *handle, u32 id);
+	int (*is_valid)(const struct ti_sci_handle *handle, u32 id);
+	int (*get_context_loss_count)(const struct ti_sci_handle *handle,
+				      u32 id, u32 *count);
+	int (*is_idle)(const struct ti_sci_handle *handle, u32 id,
+		       bool *requested_state);
+	int (*is_stop)(const struct ti_sci_handle *handle, u32 id,
+		       bool *req_state, bool *current_state);
+	int (*is_on)(const struct ti_sci_handle *handle, u32 id,
+		     bool *req_state, bool *current_state);
+	int (*is_transitioning)(const struct ti_sci_handle *handle, u32 id,
+				bool *current_state);
+	int (*set_device_resets)(const struct ti_sci_handle *handle, u32 id,
+				 u32 reset_state);
+	int (*get_device_resets)(const struct ti_sci_handle *handle, u32 id,
+				 u32 *reset_state);
+	int (*release_exclusive_devices)(const struct ti_sci_handle *handle);
+};
+
+/**
+ * struct ti_sci_clk_ops - Clock control operations
+ * @get_clock:	Request for activation of clock and manage by processor
+ *		- needs_ssc: 'true' if Spread Spectrum clock is desired.
+ *		- can_change_freq: 'true' if frequency change is desired.
+ *		- enable_input_term: 'true' if input termination is desired.
+ * @idle_clock:	Request for Idling a clock managed by processor
+ * @put_clock:	Release the clock to be auto managed by TISCI
+ * @is_auto:	Is the clock being auto managed
+ *		- req_state: state indicating if the clock is auto managed
+ * @is_on:	Is the clock ON
+ *		- req_state: if the clock is requested to be forced ON
+ *		- current_state: if the clock is currently ON
+ * @is_off:	Is the clock OFF
+ *		- req_state: if the clock is requested to be forced OFF
+ *		- current_state: if the clock is currently Gated
+ * @set_parent:	Set the clock source of a specific device clock
+ *		- parent_id: Parent clock identifier to set.
+ * @get_parent:	Get the current clock source of a specific device clock
+ *		- parent_id: Parent clock identifier which is the parent.
+ * @get_num_parents: Get the number of parents of the current clock source
+ *		- num_parents: returns the number of parent clocks.
+ * @get_best_match_freq: Find a best matching frequency for a frequency
+ *		range.
+ *		- match_freq: Best matching frequency in Hz.
+ * @set_freq:	Set the Clock frequency
+ * @get_freq:	Get the Clock frequency
+ *		- current_freq: Frequency in Hz that the clock is at.
+ *
+ * NOTE: for all these functions, the following parameters are generic in
+ * nature:
+ * -handle:	Pointer to TISCI handle as retrieved by *ti_sci_get_handle
+ * -did:	Device identifier this request is for
+ * -cid:	Clock identifier for the device for this request.
+ *		Each device has it's own set of clock inputs. This indexes
+ *		which clock input to modify.
+ * -min_freq:	The minimum allowable frequency in Hz. This is the minimum
+ *		allowable programmed frequency and does not account for clock
+ *		tolerances and jitter.
+ * -target_freq: The target clock frequency in Hz. A frequency will be
+ *		processed as close to this target frequency as possible.
+ * -max_freq:	The maximum allowable frequency in Hz. This is the maximum
+ *		allowable programmed frequency and does not account for clock
+ *		tolerances and jitter.
+ *
+ * Request for the clock - NOTE: the client MUST maintain integrity of
+ * usage count by balancing get_clock with put_clock. No refcounting is
+ * managed by driver for that purpose.
+ */
+struct ti_sci_clk_ops {
+	int (*get_clock)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+			 bool needs_ssc, bool can_change_freq,
+			 bool enable_input_term);
+	int (*idle_clock)(const struct ti_sci_handle *handle, u32 did, u8 cid);
+	int (*put_clock)(const struct ti_sci_handle *handle, u32 did, u8 cid);
+	int (*is_auto)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+		       bool *req_state);
+	int (*is_on)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+		     bool *req_state, bool *current_state);
+	int (*is_off)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+		      bool *req_state, bool *current_state);
+	int (*set_parent)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+			  u8 parent_id);
+	int (*get_parent)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+			  u8 *parent_id);
+	int (*get_num_parents)(const struct ti_sci_handle *handle, u32 did,
+			       u8 cid, u8 *num_parents);
+	int (*get_best_match_freq)(const struct ti_sci_handle *handle, u32 did,
+				   u8 cid, u64 min_freq, u64 target_freq,
+				   u64 max_freq, u64 *match_freq);
+	int (*set_freq)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+			u64 min_freq, u64 target_freq, u64 max_freq);
+	int (*get_freq)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+			u64 *current_freq);
+};
+
+/**
+ * struct ti_sci_rm_core_ops - Resource management core operations
+ * @get_range:		Get a range of resources belonging to ti sci host.
+ * @get_rage_from_shost:	Get a range of resources belonging to
+ *				specified host id.
+ *			- s_host: Host processing entity to which the
+ *				  resources are allocated
+ *
+ * NOTE: for these functions, all the parameters are consolidated and defined
+ * as below:
+ * - handle:	Pointer to TISCI handle as retrieved by *ti_sci_get_handle
+ * - dev_id:	TISCI device ID.
+ * - subtype:	Resource assignment subtype that is being requested
+ *		from the given device.
+ * - range_start:	Start index of the resource range
+ * - range_end:		Number of resources in the range
+ */
+struct ti_sci_rm_core_ops {
+	int (*get_range)(const struct ti_sci_handle *handle, u32 dev_id,
+			 u8 subtype, u16 *range_start, u16 *range_num);
+	int (*get_range_from_shost)(const struct ti_sci_handle *handle,
+				    u32 dev_id, u8 subtype, u8 s_host,
+				    u16 *range_start, u16 *range_num);
+};
+
+/**
+ * struct ti_sci_core_ops - SoC Core Operations
+ * @reboot_device: Reboot the SoC
+ *		Returns 0 for successful request(ideally should never return),
+ *		else returns corresponding error value.
+ * @query_msmc: Query the size of available msmc
+ *		Return 0 for successful query else appropriate error value.
+ */
+struct ti_sci_core_ops {
+	int (*reboot_device)(const struct ti_sci_handle *handle);
+	int (*query_msmc)(const struct ti_sci_handle *handle,
+			  u64 *msmc_start, u64 *msmc_end);
+};
+
+/**
+ * struct ti_sci_proc_ops - Processor specific operations.
+ *
+ * @proc_request: Request for controlling a physical processor.
+ *		The requesting host should be in the processor access list.
+ * @proc_release: Relinquish a physical processor control
+ * @proc_handover: Handover a physical processor control to another host
+ *		   in the permitted list.
+ * @set_proc_boot_cfg: Base configuration of the processor
+ * @set_proc_boot_ctrl: Setup limited control flags in specific cases.
+ * @proc_auth_boot_image:
+ * @get_proc_boot_status: Get the state of physical processor
+ * @proc_shutdown_no_wait: Shutdown a core without requesting or waiting for a
+ *			   response.
+ *
+ * NOTE: for all these functions, the following parameters are generic in
+ * nature:
+ * -handle:	Pointer to TISCI handle as retrieved by *ti_sci_get_handle
+ * -pid:	Processor ID
+ *
+ */
+struct ti_sci_proc_ops {
+	int (*proc_request)(const struct ti_sci_handle *handle, u8 pid);
+	int (*proc_release)(const struct ti_sci_handle *handle, u8 pid);
+	int (*proc_handover)(const struct ti_sci_handle *handle, u8 pid,
+			     u8 hid);
+	int (*set_proc_boot_cfg)(const struct ti_sci_handle *handle, u8 pid,
+				 u64 bv, u32 cfg_set, u32 cfg_clr);
+	int (*set_proc_boot_ctrl)(const struct ti_sci_handle *handle, u8 pid,
+				  u32 ctrl_set, u32 ctrl_clr);
+	int (*proc_auth_boot_image)(const struct ti_sci_handle *handle,
+				    u64 *image_addr, u32 *image_size);
+	int (*get_proc_boot_status)(const struct ti_sci_handle *handle, u8 pid,
+				    u64 *bv, u32 *cfg_flags, u32 *ctrl_flags,
+				    u32 *sts_flags);
+	int (*proc_shutdown_no_wait)(const struct ti_sci_handle *handle,
+				     u8 pid);
+};
+
+#define TI_SCI_RING_MODE_RING			(0)
+#define TI_SCI_RING_MODE_MESSAGE		(1)
+#define TI_SCI_RING_MODE_CREDENTIALS		(2)
+#define TI_SCI_RING_MODE_QM			(3)
+
+#define TI_SCI_MSG_UNUSED_SECONDARY_HOST TI_SCI_RM_NULL_U8
+
+/* RA config.addr_lo parameter is valid for RM ring configure TI_SCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_ADDR_LO_VALID	BIT(0)
+/* RA config.addr_hi parameter is valid for RM ring configure TI_SCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_ADDR_HI_VALID	BIT(1)
+ /* RA config.count parameter is valid for RM ring configure TI_SCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_COUNT_VALID	BIT(2)
+/* RA config.mode parameter is valid for RM ring configure TI_SCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_MODE_VALID	BIT(3)
+/* RA config.size parameter is valid for RM ring configure TI_SCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_SIZE_VALID	BIT(4)
+/* RA config.order_id parameter is valid for RM ring configure TISCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_ORDER_ID_VALID	BIT(5)
+
+#define TI_SCI_MSG_VALUE_RM_ALL_NO_ORDER \
+	(TI_SCI_MSG_VALUE_RM_RING_ADDR_LO_VALID | \
+	TI_SCI_MSG_VALUE_RM_RING_ADDR_HI_VALID | \
+	TI_SCI_MSG_VALUE_RM_RING_COUNT_VALID | \
+	TI_SCI_MSG_VALUE_RM_RING_MODE_VALID | \
+	TI_SCI_MSG_VALUE_RM_RING_SIZE_VALID)
+
+/**
+ * struct ti_sci_rm_ringacc_ops - Ring Accelerator Management operations
+ * @config: configure the SoC Navigator Subsystem Ring Accelerator ring
+ */
+struct ti_sci_rm_ringacc_ops {
+	int (*config)(const struct ti_sci_handle *handle,
+		      u32 valid_params, u16 nav_id, u16 index,
+		      u32 addr_lo, u32 addr_hi, u32 count, u8 mode,
+		      u8 size, u8 order_id
+	);
+};
+
+/**
+ * struct ti_sci_rm_psil_ops - PSI-L thread operations
+ * @pair: pair PSI-L source thread to a destination thread.
+ *	If the src_thread is mapped to UDMA tchan, the corresponding channel's
+ *	TCHAN_THRD_ID register is updated.
+ *	If the dst_thread is mapped to UDMA rchan, the corresponding channel's
+ *	RCHAN_THRD_ID register is updated.
+ * @unpair: unpair PSI-L source thread from a destination thread.
+ *	If the src_thread is mapped to UDMA tchan, the corresponding channel's
+ *	TCHAN_THRD_ID register is cleared.
+ *	If the dst_thread is mapped to UDMA rchan, the corresponding channel's
+ *	RCHAN_THRD_ID register is cleared.
+ */
+struct ti_sci_rm_psil_ops {
+	int (*pair)(const struct ti_sci_handle *handle, u32 nav_id,
+		    u32 src_thread, u32 dst_thread);
+	int (*unpair)(const struct ti_sci_handle *handle, u32 nav_id,
+		      u32 src_thread, u32 dst_thread);
+};
+
+/* UDMAP channel types */
+#define TI_SCI_RM_UDMAP_CHAN_TYPE_PKT_PBRR		2
+#define TI_SCI_RM_UDMAP_CHAN_TYPE_PKT_PBRR_SB		3	/* RX only */
+#define TI_SCI_RM_UDMAP_CHAN_TYPE_3RDP_PBRR		10
+#define TI_SCI_RM_UDMAP_CHAN_TYPE_3RDP_PBVR		11
+#define TI_SCI_RM_UDMAP_CHAN_TYPE_3RDP_BCOPY_PBRR	12
+#define TI_SCI_RM_UDMAP_CHAN_TYPE_3RDP_BCOPY_PBVR	13
+
+/* UDMAP channel atypes */
+#define TI_SCI_RM_UDMAP_ATYPE_PHYS			0
+#define TI_SCI_RM_UDMAP_ATYPE_INTERMEDIATE		1
+#define TI_SCI_RM_UDMAP_ATYPE_VIRTUAL			2
+
+/* UDMAP channel scheduling priorities */
+#define TI_SCI_RM_UDMAP_SCHED_PRIOR_HIGH		0
+#define TI_SCI_RM_UDMAP_SCHED_PRIOR_MEDHIGH		1
+#define TI_SCI_RM_UDMAP_SCHED_PRIOR_MEDLOW		2
+#define TI_SCI_RM_UDMAP_SCHED_PRIOR_LOW			3
+
+#define TI_SCI_RM_UDMAP_RX_FLOW_DESC_HOST		0
+#define TI_SCI_RM_UDMAP_RX_FLOW_DESC_MONO		2
+
+#define TI_SCI_RM_UDMAP_CHAN_BURST_SIZE_64_BYTES	1
+#define TI_SCI_RM_UDMAP_CHAN_BURST_SIZE_128_BYTES	2
+#define TI_SCI_RM_UDMAP_CHAN_BURST_SIZE_256_BYTES	3
+
+#define TI_SCI_RM_BCDMA_EXTENDED_CH_TYPE_TCHAN		0
+#define TI_SCI_RM_BCDMA_EXTENDED_CH_TYPE_BCHAN		1
+
+/* UDMAP TX/RX channel valid_params common declarations */
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_PAUSE_ON_ERR_VALID		BIT(0)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_ATYPE_VALID                BIT(1)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_CHAN_TYPE_VALID            BIT(2)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_FETCH_SIZE_VALID           BIT(3)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_CQ_QNUM_VALID              BIT(4)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_PRIORITY_VALID             BIT(5)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_QOS_VALID                  BIT(6)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_ORDER_ID_VALID             BIT(7)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_SCHED_PRIORITY_VALID       BIT(8)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_BURST_SIZE_VALID		BIT(14)
+
+/**
+ * Configures a Navigator Subsystem UDMAP transmit channel
+ *
+ * Configures a Navigator Subsystem UDMAP transmit channel registers.
+ * See @ti_sci_msg_rm_udmap_tx_ch_cfg_req
+ */
+struct ti_sci_msg_rm_udmap_tx_ch_cfg {
+	u32 valid_params;
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FILT_EINFO_VALID        BIT(9)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FILT_PSWORDS_VALID      BIT(10)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_SUPR_TDPKT_VALID        BIT(11)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_CREDIT_COUNT_VALID      BIT(12)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FDEPTH_VALID            BIT(13)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_TDTYPE_VALID            BIT(15)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_EXTENDED_CH_TYPE_VALID	BIT(16)
+	u16 nav_id;
+	u16 index;
+	u8 tx_pause_on_err;
+	u8 tx_filt_einfo;
+	u8 tx_filt_pswords;
+	u8 tx_atype;
+	u8 tx_chan_type;
+	u8 tx_supr_tdpkt;
+	u16 tx_fetch_size;
+	u8 tx_credit_count;
+	u16 txcq_qnum;
+	u8 tx_priority;
+	u8 tx_qos;
+	u8 tx_orderid;
+	u16 fdepth;
+	u8 tx_sched_priority;
+	u8 tx_burst_size;
+	u8 tx_tdtype;
+	u8 extended_ch_type;
+};
+
+/**
+ * Configures a Navigator Subsystem UDMAP receive channel
+ *
+ * Configures a Navigator Subsystem UDMAP receive channel registers.
+ * See @ti_sci_msg_rm_udmap_rx_ch_cfg_req
+ */
+struct ti_sci_msg_rm_udmap_rx_ch_cfg {
+	u32 valid_params;
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_FLOWID_START_VALID      BIT(9)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_FLOWID_CNT_VALID        BIT(10)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_IGNORE_SHORT_VALID      BIT(11)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_IGNORE_LONG_VALID       BIT(12)
+	u16 nav_id;
+	u16 index;
+	u16 rx_fetch_size;
+	u16 rxcq_qnum;
+	u8 rx_priority;
+	u8 rx_qos;
+	u8 rx_orderid;
+	u8 rx_sched_priority;
+	u16 flowid_start;
+	u16 flowid_cnt;
+	u8 rx_pause_on_err;
+	u8 rx_atype;
+	u8 rx_chan_type;
+	u8 rx_ignore_short;
+	u8 rx_ignore_long;
+	u8 rx_burst_size;
+};
+
+/**
+ * Configures a Navigator Subsystem UDMAP receive flow
+ *
+ * Configures a Navigator Subsystem UDMAP receive flow's registers.
+ * See @tis_ci_msg_rm_udmap_flow_cfg_req
+ */
+struct ti_sci_msg_rm_udmap_flow_cfg {
+	u32 valid_params;
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_EINFO_PRESENT_VALID	BIT(0)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_PSINFO_PRESENT_VALID     BIT(1)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_ERROR_HANDLING_VALID     BIT(2)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DESC_TYPE_VALID          BIT(3)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SOP_OFFSET_VALID         BIT(4)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_QNUM_VALID          BIT(5)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_HI_VALID         BIT(6)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_LO_VALID         BIT(7)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_HI_VALID        BIT(8)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_LO_VALID        BIT(9)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_HI_SEL_VALID     BIT(10)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_LO_SEL_VALID     BIT(11)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_HI_SEL_VALID    BIT(12)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_LO_SEL_VALID    BIT(13)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ0_SZ0_QNUM_VALID      BIT(14)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ1_QNUM_VALID          BIT(15)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ2_QNUM_VALID          BIT(16)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ3_QNUM_VALID          BIT(17)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_PS_LOCATION_VALID        BIT(18)
+	u16 nav_id;
+	u16 flow_index;
+	u8 rx_einfo_present;
+	u8 rx_psinfo_present;
+	u8 rx_error_handling;
+	u8 rx_desc_type;
+	u16 rx_sop_offset;
+	u16 rx_dest_qnum;
+	u8 rx_src_tag_hi;
+	u8 rx_src_tag_lo;
+	u8 rx_dest_tag_hi;
+	u8 rx_dest_tag_lo;
+	u8 rx_src_tag_hi_sel;
+	u8 rx_src_tag_lo_sel;
+	u8 rx_dest_tag_hi_sel;
+	u8 rx_dest_tag_lo_sel;
+	u16 rx_fdq0_sz0_qnum;
+	u16 rx_fdq1_qnum;
+	u16 rx_fdq2_qnum;
+	u16 rx_fdq3_qnum;
+	u8 rx_ps_location;
+};
+
+/**
+ * struct ti_sci_rm_udmap_ops - UDMA Management operations
+ * @tx_ch_cfg: configure SoC Navigator Subsystem UDMA transmit channel.
+ * @rx_ch_cfg: configure SoC Navigator Subsystem UDMA receive channel.
+ * @rx_flow_cfg: configure SoC Navigator Subsystem UDMA receive flow.
+ */
+struct ti_sci_rm_udmap_ops {
+	int (*tx_ch_cfg)(const struct ti_sci_handle *handle,
+			 const struct ti_sci_msg_rm_udmap_tx_ch_cfg *params);
+	int (*rx_ch_cfg)(const struct ti_sci_handle *handle,
+			 const struct ti_sci_msg_rm_udmap_rx_ch_cfg *params);
+	int (*rx_flow_cfg)(
+		const struct ti_sci_handle *handle,
+		const struct ti_sci_msg_rm_udmap_flow_cfg *params);
+};
+
+/**
+ * struct ti_sci_msg_fwl_region_cfg - Request and Response for firewalls settings
+ *
+ * @fwl_id:		Firewall ID in question
+ * @region:		Region or channel number to set config info
+ *			This field is unused in case of a simple firewall  and must be initialized
+ *			to zero.  In case of a region based firewall, this field indicates the
+ *			region in question. (index starting from 0) In case of a channel based
+ *			firewall, this field indicates the channel in question (index starting
+ *			from 0)
+ * @n_permission_regs:	Number of permission registers to set
+ * @control:		Contents of the firewall CONTROL register to set
+ * @permissions:	Contents of the firewall PERMISSION register to set
+ * @start_address:	Contents of the firewall START_ADDRESS register to set
+ * @end_address:	Contents of the firewall END_ADDRESS register to set
+ */
+struct ti_sci_msg_fwl_region {
+	u16 fwl_id;
+	u16 region;
+	u32 n_permission_regs;
+	u32 control;
+	u32 permissions[3];
+	u64 start_address;
+	u64 end_address;
+} __packed;
+
+/**
+ * \brief Request and Response for firewall owner change
+ *
+ * @fwl_id:		Firewall ID in question
+ * @region:		Region or channel number to set config info
+ *			This field is unused in case of a simple firewall  and must be initialized
+ *			to zero.  In case of a region based firewall, this field indicates the
+ *			region in question. (index starting from 0) In case of a channel based
+ *			firewall, this field indicates the channel in question (index starting
+ *			from 0)
+ * @n_permission_regs:	Number of permission registers <= 3
+ * @control:		Control register value for this region
+ * @owner_index:	New owner index to change to. Owner indexes are setup in DMSC firmware boot configuration data
+ * @owner_privid:	New owner priv-id, used to lookup owner_index is not known, must be set to zero otherwise
+ * @owner_permission_bits: New owner permission bits
+ */
+struct ti_sci_msg_fwl_owner {
+	u16 fwl_id;
+	u16 region;
+	u8 owner_index;
+	u8 owner_privid;
+	u16 owner_permission_bits;
+} __packed;
+
+/**
+ * struct ti_sci_fwl_ops - Firewall specific operations
+ * @set_fwl_region: Request for configuring the firewall permissions.
+ * @get_fwl_region: Request for retrieving the firewall permissions.
+ * @change_fwl_owner: Request for a change of firewall owner.
+ */
+struct ti_sci_fwl_ops {
+	int (*set_fwl_region)(const struct ti_sci_handle *handle, const struct ti_sci_msg_fwl_region *region);
+	int (*get_fwl_region)(const struct ti_sci_handle *handle, struct ti_sci_msg_fwl_region *region);
+	int (*change_fwl_owner)(const struct ti_sci_handle *handle, struct ti_sci_msg_fwl_owner *owner);
+};
+
+/**
+ * struct ti_sci_ops - Function support for TI SCI
+ * @board_ops:	Miscellaneous operations
+ * @dev_ops:	Device specific operations
+ * @clk_ops:	Clock specific operations
+ * @core_ops:	Core specific operations
+ * @proc_ops:	Processor specific operations
+ * @ring_ops: Ring Accelerator Management operations
+ * @fw_ops:	Firewall specific operations
+ */
+struct ti_sci_ops {
+	struct ti_sci_board_ops board_ops;
+	struct ti_sci_dev_ops dev_ops;
+	struct ti_sci_clk_ops clk_ops;
+	struct ti_sci_core_ops core_ops;
+	struct ti_sci_proc_ops proc_ops;
+	struct ti_sci_rm_core_ops rm_core_ops;
+	struct ti_sci_rm_ringacc_ops rm_ring_ops;
+	struct ti_sci_rm_psil_ops rm_psil_ops;
+	struct ti_sci_rm_udmap_ops rm_udmap_ops;
+	struct ti_sci_fwl_ops fwl_ops;
+};
+
+/**
+ * struct ti_sci_handle - Handle returned to TI SCI clients for usage.
+ * @ops:	operations that are made available to TI SCI clients
+ * @version:	structure containing version information
+ */
+struct ti_sci_handle {
+	struct ti_sci_ops ops;
+	struct ti_sci_version_info version;
+};
+
+#define TI_SCI_RESOURCE_NULL	0xffff
+
+/**
+ * struct ti_sci_resource_desc - Description of TI SCI resource instance range.
+ * @start:	Start index of the resource.
+ * @num:	Number of resources.
+ * @res_map:	Bitmap to manage the allocation of these resources.
+ */
+struct ti_sci_resource_desc {
+	u16 start;
+	u16 num;
+	unsigned long *res_map;
+};
+
+/**
+ * struct ti_sci_resource - Structure representing a resource assigned
+ *			    to a device.
+ * @sets:	Number of sets available from this resource type
+ * @desc:	Array of resource descriptors.
+ */
+struct ti_sci_resource {
+	u16 sets;
+	struct ti_sci_resource_desc *desc;
+};
+
+const struct ti_sci_handle *ti_sci_get_handle(struct device *dev);
+
+#endif	/* __TISCI_PROTOCOL_H */
-- 
2.39.2



