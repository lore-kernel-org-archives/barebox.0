Delivery-date: Fri, 29 Nov 2024 13:02:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzi1-001qPp-2t
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 13:02:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzhz-0001qa-7u
	for lore@pengutronix.de; Fri, 29 Nov 2024 13:02:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ENcHaSEo7Y6XpMiWftaQ0shZAh02KBbMkXZcOntu1FM=; b=NiMXNndg9rRrV8aox+CGyARo87
	jDWvzaA/PrTpATmKtPAxsON5D+g80+IjM357o3d7DhbXNkpdz4+pu0YtKQULdG0Nn6z+8AWx1CPpU
	T4oUHhkeHMZzrJmQHKvJnp0mwwzqpHS1lewyvSrUMy+cOrTmERxQdmow7kUQXIB/iUjBSARn19jnb
	4EwqXGz94jP+2hL6a0BXqQa2THqxjc9epH9adlxqZs5LOMjEKHGgtOyvk/wKb1pSeaWTBcBd+mfUc
	qpShQrvOXSXYEHY5p1h5irYtzQ8CetOCxZLb0Ciyx0XNHPlssAHPjGlje3t5pb5k2DmF3BuC2WsVk
	V6EYIyyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhN-000000001R5-33GJ;
	Fri, 29 Nov 2024 12:02:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhK-000000001Os-0Na9
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 12:02:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhI-0001MA-RM; Fri, 29 Nov 2024 13:02:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhH-000mLd-2a;
	Fri, 29 Nov 2024 13:02:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-000vyS-2L;
	Fri, 29 Nov 2024 12:44:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Nov 2024 12:44:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241129-k3-r5-v1-14-67c4bb42a5c7@pengutronix.de>
References: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
In-Reply-To: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732880665; l=7683;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3PKl3i62tbmyNhiQFziNBwQi7P8ag5fW/Z03ujvetWA=;
 b=uhjRz0FNAAEYQcdMoiTYuEZrEhNSFn8s5+x1t6dbdI27i8l5KRfnTD9C7slEhUIBenU95JspN
 gu0ftZsxp+6Ao536PoKeDCawR6ezdcZU1lgyERR37k23Z0tEO/GHVkl
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_040210_285622_6E584EAC 
X-CRM114-Status: GOOD (  19.31  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/20] rproc: add K3 system_controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/remoteproc/Kconfig                   |   6 +
 drivers/remoteproc/Makefile                  |   2 +
 drivers/remoteproc/ti_k3_system_controller.c | 214 +++++++++++++++++++++++++++
 3 files changed, 222 insertions(+)

diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
index 94babd28ff..39c1f5869b 100644
--- a/drivers/remoteproc/Kconfig
+++ b/drivers/remoteproc/Kconfig
@@ -31,6 +31,12 @@ config STM32_REMOTEPROC
 
 	  It's safe to say N here.
 
+config REMOTEPROC_TI_K3_ARM64
+	bool
+
+config REMOTEPROC_K3_SYSTEM_CONTROLLER
+	bool
+
 endif # REMOTEPROC
 
 endmenu
diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
index 185e12a7c0..47230cb2a1 100644
--- a/drivers/remoteproc/Makefile
+++ b/drivers/remoteproc/Makefile
@@ -6,3 +6,5 @@
 obj-$(CONFIG_REMOTEPROC)		+= remoteproc_core.o remoteproc_elf_loader.o
 obj-$(CONFIG_IMX_REMOTEPROC)		+= imx_rproc.o
 obj-$(CONFIG_STM32_REMOTEPROC)		+= stm32_rproc.o
+obj-$(CONFIG_REMOTEPROC_TI_K3_ARM64)	+= ti_k3_arm64_rproc.o
+obj-$(CONFIG_REMOTEPROC_K3_SYSTEM_CONTROLLER) += ti_k3_system_controller.o
diff --git a/drivers/remoteproc/ti_k3_system_controller.c b/drivers/remoteproc/ti_k3_system_controller.c
new file mode 100644
index 0000000000..d48de9d18e
--- /dev/null
+++ b/drivers/remoteproc/ti_k3_system_controller.c
@@ -0,0 +1,214 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Texas Instruments' K3 System Controller Driver
+ *
+ * Copyright (C) 2017-2018 Texas Instruments Incorporated - https://www.ti.com/
+ *	Lokesh Vutla <lokeshvutla@ti.com>
+ */
+
+#include <driver.h>
+#include <linux/remoteproc.h>
+#include <linux/printk.h>
+#include <errno.h>
+#include <linux/clk.h>
+#include <linux/reset.h>
+#include <io.h>
+#include <of.h>
+#include <soc/ti/k3-sec-proxy.h>
+#include <mailbox.h>
+
+#define K3_MSG_R5_TO_M3_M3FW			0x8105
+#define K3_MSG_M3_TO_R5_CERT_RESULT		0x8805
+#define K3_MSG_M3_TO_R5_BOOT_NOTIFICATION	0x000A
+
+#define K3_FLAGS_MSG_CERT_AUTH_PASS		0x555555
+#define K3_FLAGS_MSG_CERT_AUTH_FAIL		0xffffff
+
+/**
+ * struct k3_sysctrler_msg_hdr - Generic Header for Messages and responses.
+ * @cmd_id:	Message ID. One of K3_MSG_*
+ * @host_id:	Host ID of the message
+ * @seq_ne:	Message identifier indicating a transfer sequence.
+ * @flags:	Flags for the message.
+ */
+struct k3_sysctrler_msg_hdr {
+	u16 cmd_id;
+	u8 host_id;
+	u8 seq_nr;
+	u32 flags;
+} __packed;
+
+/**
+ * struct k3_sysctrler_load_msg - Message format for Firmware loading
+ * @hdr:		Generic message hdr
+ * @buffer_address:	Address at which firmware is located.
+ * @buffer_size:	Size of the firmware.
+ */
+struct k3_sysctrler_load_msg {
+	struct k3_sysctrler_msg_hdr hdr;
+	u32 buffer_address;
+	u32 buffer_size;
+} __packed;
+
+/**
+ * struct k3_sysctrler_boot_notification_msg - Message format for boot
+ *					       notification
+ * @checksum:		Checksum for the entire message
+ * @reserved:		Reserved for future use.
+ * @hdr:		Generic message hdr
+ */
+struct k3_sysctrler_boot_notification_msg {
+	u16 checksum;
+	u16 reserved;
+	struct k3_sysctrler_msg_hdr hdr;
+} __packed;
+
+/**
+ * struct k3_sysctrler_desc - Description of SoC integration.
+ * @host_id:	Host identifier representing the compute entity
+ * @max_rx_timeout_ms:	Timeout for communication with SoC (in Milliseconds)
+ * @max_msg_size: Maximum size of data per message that can be handled.
+ */
+struct k3_sysctrler_desc {
+	u8 host_id;
+	int max_rx_timeout_us;
+	int max_msg_size;
+};
+
+/**
+ * struct k3_sysctrler_privdata - Structure representing System Controller data.
+ * @chan_tx:	Transmit mailbox channel
+ * @chan_rx:	Receive mailbox channel
+ * @chan_boot_notify:	Boot notification channel
+ * @desc:	SoC description for this instance
+ * @seq_nr:	Counter for number of messages sent.
+ * @has_boot_notify:	Has separate boot notification channel
+ */
+struct k3_sysctrler_privdata {
+	struct device *dev;
+	struct mbox_chan *chan_tx;
+	struct mbox_chan *chan_rx;
+	struct mbox_chan *chan_boot_notify;
+	const struct k3_sysctrler_desc *desc;
+	u32 seq_nr;
+	bool has_boot_notify;
+};
+
+static int k3_sysctrler_boot_notification_response(struct k3_sysctrler_privdata *priv,
+						   void *buf)
+{
+	struct k3_sysctrler_boot_notification_msg *boot = buf;
+
+	/* ToDo: Verify checksum */
+
+	/* Check for proper response ID */
+	if (boot->hdr.cmd_id != K3_MSG_M3_TO_R5_BOOT_NOTIFICATION) {
+		dev_err(priv->dev, "%s: Command expected 0x%x, but received 0x%x\n",
+			__func__, K3_MSG_M3_TO_R5_BOOT_NOTIFICATION,
+			boot->hdr.cmd_id);
+		return -EINVAL;
+	}
+
+	debug("%s: Boot notification received\n", __func__);
+
+	return 0;
+}
+
+/**
+ * k3_sysctrler_start() - Start the remote processor
+ *		Note that while technically the K3 system controller starts up
+ *		automatically after its firmware got loaded we still want to
+ *		utilize the rproc start operation for other startup-related
+ *		tasks.
+ * @dev:	device to operate upon
+ *
+ * Return: 0 if all went ok, else return appropriate error
+ */
+static int k3_sysctrler_start(struct k3_sysctrler_privdata *priv)
+{
+	struct k3_sec_proxy_msg msg;
+	int ret;
+
+	/* Receive the boot notification. Note that it is sent only once. */
+	ret = mbox_recv(priv->has_boot_notify ? priv->chan_boot_notify :
+			priv->chan_rx, &msg, priv->desc->max_rx_timeout_us);
+	if (ret) {
+		dev_err(priv->dev, "%s: Boot Notification response failed. ret = %d\n",
+			__func__, ret);
+		return ret;
+	}
+
+	/* Process the response */
+	ret = k3_sysctrler_boot_notification_response(priv, msg.buf);
+	if (ret)
+		return ret;
+
+	dev_info(priv->dev, "%s: Boot notification received successfully\n",
+	      __func__);
+
+	return 0;
+}
+
+/**
+ * k3_sysctrler_probe() - Basic probe
+ * @dev:	corresponding k3 remote processor device
+ *
+ * Return: 0 if all goes good, else appropriate error message.
+ */
+static int k3_sysctrler_probe(struct device *dev)
+{
+	struct k3_sysctrler_privdata *priv;
+	int ret;
+
+	debug("%s(dev=%p)\n", __func__, dev);
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->dev = dev;
+
+	priv->chan_tx = mbox_request_channel_byname(dev, "tx");
+	if (IS_ERR(priv->chan_tx))
+		return dev_err_probe(dev, PTR_ERR(priv->chan_tx), "No tx mbox\n");
+
+	priv->chan_rx = mbox_request_channel_byname(dev, "rx");
+	if (IS_ERR(priv->chan_rx))
+		return dev_err_probe(dev, PTR_ERR(priv->chan_tx), "No rx mbox\n");
+
+	/* Some SoCs may have a optional channel for boot notification. */
+	priv->has_boot_notify = 1;
+	priv->chan_boot_notify = mbox_request_channel_byname(dev, "boot_notify");
+	if (IS_ERR(priv->chan_boot_notify)) {
+		dev_dbg(dev, "%s: Acquiring optional Boot_notify failed. ret = %d. Using Rx\n",
+			__func__, ret);
+		priv->has_boot_notify = 0;
+	}
+
+	priv->desc = device_get_match_data(dev);
+	priv->seq_nr = 0;
+
+	k3_sysctrler_start(priv);
+
+	return 0;
+}
+
+static const struct k3_sysctrler_desc k3_sysctrler_am654_desc = {
+	.host_id = 4,				/* HOST_ID_R5_1 */
+	.max_rx_timeout_us = 800000,
+	.max_msg_size = 60,
+};
+
+static const struct of_device_id k3_sysctrler_ids[] = {
+	{
+		.compatible = "ti,am654-system-controller",
+		.data = &k3_sysctrler_am654_desc,
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver ti_k3_arm64_rproc_driver = {
+	.name = "ti-k3-systemcontroller",
+	.probe = k3_sysctrler_probe,
+	.of_compatible = k3_sysctrler_ids,
+};
+device_platform_driver(ti_k3_arm64_rproc_driver);

-- 
2.39.5



