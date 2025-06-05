Delivery-date: Thu, 05 Jun 2025 23:15:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHvg-0049Ud-11
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 23:15:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHvU-0006mO-EC
	for lore@pengutronix.de; Thu, 05 Jun 2025 23:15:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LaTJeWH0nYAnvVEjI8ROXV9TOlSdvHVXnq1zM1Fi+yY=; b=SQSYLgZYoD4lWNRz7FfJSCLsFV
	eqJms3xatoHBlbJ11qknhT9L0jHBNl/EyOkohF4OLfd9kIlrN+5gci/j774GCVkxUcUrtAlVwnzvf
	iAoMsmYd/3INVhQLxwAhn8l44xavV0NsIzzcQzz17W1xuUFofOKJe2f/OARv3YjJrvHDtEuVE2/s2
	BR0DDkcXn3eFuEGJpQdv3sgGv/ivd8PcO2Hngv156s/CnWNred5Dxgs6UbGL+UeqwQQumBif9fOuI
	XVJjED0vt7zpoIt8m7a6X9U5ojKtwOyNFrAbC/+2uTcRSJMpqXavwC8cIaAPCmG0FBhy1t1CtVrXC
	Cv9oQypw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHuJ-0000000Geyy-3ddZ;
	Thu, 05 Jun 2025 21:13:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHoB-0000000GeGW-2Wjd
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 21:07:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNHoA-00079B-9s; Thu, 05 Jun 2025 23:07:30 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  5 Jun 2025 23:07:22 +0200
Message-Id: <20250605210726.1916656-13-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605210726.1916656-1-a.fatoum@barebox.org>
References: <20250605210726.1916656-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140732_153293_DB64450C 
X-CRM114-Status: GOOD (  34.91  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/16] video: add base MIPI DSI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The generic MIPI DSI support is very straight forward and is mostly
helper functions to talk with a panel as well as a mipi-dsi bus to
connect hosts with panels. Import the support from Linux v6.15.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/Kconfig    |    7 +
 drivers/video/Makefile   |    1 +
 drivers/video/mipi_dsi.c | 1730 ++++++++++++++++++++++++++++++++++++++
 include/video/mipi_dsi.h |  618 ++++++++++++++
 4 files changed, 2356 insertions(+)
 create mode 100644 drivers/video/mipi_dsi.c
 create mode 100644 include/video/mipi_dsi.h

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index ef19948219f3..4ad7cd6b25d4 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -119,6 +119,13 @@ config DRIVER_VIDEO_EDID
 config DRIVER_VIDEO_MIPI_DBI
 	bool
 
+config DRIVER_VIDEO_MIPI_DSI
+	bool
+	help
+	  Support MIPI DSI interface for driving a MIPI compatible device.
+	  The MIPI Display Serial Interface (MIPI DSI) defines a high-speed
+	  serial interface between a host processor and a display module.
+
 config DRIVER_VIDEO_BACKLIGHT
 	bool "Add backlight support"
 	help
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index dde1da1bb98b..9a222fb370aa 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_DRIVER_VIDEO_MTL017) += mtl017.o
 obj-$(CONFIG_DRIVER_VIDEO_TC358767) += tc358767.o
 obj-$(CONFIG_DRIVER_VIDEO_SIMPLE_PANEL) += simple-panel.o
 obj-$(CONFIG_DRIVER_VIDEO_MIPI_DBI) += mipi_dbi.o
+obj-$(CONFIG_DRIVER_VIDEO_MIPI_DSI) += mipi_dsi.o
 obj-$(CONFIG_DRIVER_VIDEO_PANEL_ILITEK_ILI9341) += panel-ilitek-ili9341.o
 obj-$(CONFIG_DRIVER_VIDEO_PANEL_MIPI_DBI) += panel-mipi-dbi.o
 obj-$(CONFIG_DRIVER_VIDEO_PANEL_SITRONIX_ST7789V) += panel-sitronix-st7789v.o
diff --git a/drivers/video/mipi_dsi.c b/drivers/video/mipi_dsi.c
new file mode 100644
index 000000000000..91dcd5b10fc0
--- /dev/null
+++ b/drivers/video/mipi_dsi.c
@@ -0,0 +1,1730 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * MIPI DSI Bus
+ *
+ * Copyright (C) 2012-2013, Samsung Electronics, Co., Ltd.
+ * Copyright (C) 2019 STMicroelectronics - All Rights Reserved
+ * Andrzej Hajda <a.hajda@samsung.com>
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the
+ * "Software"), to deal in the Software without restriction, including
+ * without limitation the rights to use, copy, modify, merge, publish,
+ * distribute, sub license, and/or sell copies of the Software, and to
+ * permit persons to whom the Software is furnished to do so, subject to
+ * the following conditions:
+ *
+ * The above copyright notice and this permission notice (including the
+ * next paragraph) shall be included in all copies or substantial portions
+ * of the Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL
+ * THE COPYRIGHT HOLDERS, AUTHORS AND/OR ITS SUPPLIERS BE LIABLE FOR ANY CLAIM,
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
+ * USE OR OTHER DEALINGS IN THE SOFTWARE.
+ *
+ * Mipi_dsi.c contains a set of dsi helpers.
+ * This file is inspired from the drm helper file drivers/gpu/drm/drm_mipi_dsi.c
+ * (kernel linux).
+ *
+ */
+
+#include <video/mipi_display.h>
+#include <video/mipi_dsi.h>
+#include <linux/export.h>
+#include <of_device.h>
+
+/**
+ * DOC: dsi helpers
+ *
+ * These functions contain some common logic and helpers to deal with MIPI DSI
+ * peripherals.
+ *
+ * Helpers are provided for a number of standard MIPI DSI command as well as a
+ * subset of the MIPI DCS command set.
+ */
+
+static int mipi_dsi_device_match(struct device *dev, const struct device_driver *drv)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(dev);
+
+	/* attempt OF style match */
+	if (of_driver_match_device(dev, drv))
+		return 1;
+
+	/* compare DSI device and driver names */
+	if (!strcmp(dsi->name, drv->name))
+		return 1;
+
+	return 0;
+}
+
+struct bus_type mipi_dsi_bus_type = {
+	.name = "mipi-dsi",
+	.match = mipi_dsi_device_match,
+};
+
+/**
+ * of_find_mipi_dsi_device_by_node() - find the MIPI DSI device matching a
+ *    device tree node
+ * @np: device tree node
+ *
+ * Return: A pointer to the MIPI DSI device corresponding to @np or NULL if no
+ *    such device exists (or has not been registered yet).
+ */
+struct mipi_dsi_device *of_find_mipi_dsi_device_by_node(struct device_node *np)
+{
+	struct device *dev;
+
+	dev = bus_find_device_by_of_node(&mipi_dsi_bus_type, np);
+
+	return dev ? to_mipi_dsi_device(dev) : NULL;
+}
+EXPORT_SYMBOL(of_find_mipi_dsi_device_by_node);
+
+static struct mipi_dsi_device *mipi_dsi_device_alloc(struct mipi_dsi_host *host)
+{
+	struct mipi_dsi_device *dsi;
+
+	dsi = calloc(sizeof(*dsi), 1);
+	if (!dsi)
+		return ERR_PTR(-ENOMEM);
+
+	dsi->host = host;
+	dsi->dev.bus = &mipi_dsi_bus_type;
+	dsi->dev.parent = host->dev;
+
+	return dsi;
+}
+
+static int mipi_dsi_device_add(struct mipi_dsi_device *dsi)
+{
+	dsi->dev.id = DEVICE_ID_SINGLE;
+	dev_set_name(&dsi->dev, "%s", dsi->name);
+
+	return register_device(&dsi->dev);
+}
+
+#if IS_ENABLED(CONFIG_OF)
+static struct mipi_dsi_device *
+of_mipi_dsi_device_add(struct mipi_dsi_host *host, struct device_node *node)
+{
+	struct mipi_dsi_device_info info = { };
+	int ret;
+	u32 reg;
+
+	if (of_alias_from_compatible(node, info.type, sizeof(info.type)) < 0) {
+		dev_err(host->dev, "modalias failure on %pOF\n", node);
+		return ERR_PTR(-EINVAL);
+	}
+
+	ret = of_property_read_u32(node, "reg", &reg);
+	if (ret) {
+		dev_err(host->dev, "device node %pOF has no valid reg property: %d\n",
+			node, ret);
+		return ERR_PTR(-EINVAL);
+	}
+
+	info.channel = reg;
+	info.node = of_node_get(node);
+
+	return mipi_dsi_device_register_full(host, &info);
+}
+#else
+static struct mipi_dsi_device *
+of_mipi_dsi_device_add(struct mipi_dsi_host *host, struct device_node *node)
+{
+	return ERR_PTR(-ENODEV);
+}
+#endif
+
+/**
+ * mipi_dsi_device_register_full - create a MIPI DSI device
+ * @host: DSI host to which this device is connected
+ * @info: pointer to template containing DSI device information
+ *
+ * Create a MIPI DSI device by using the device information provided by
+ * mipi_dsi_device_info template
+ *
+ * Returns:
+ * A pointer to the newly created MIPI DSI device, or, a pointer encoded
+ * with an error
+ */
+struct mipi_dsi_device *
+mipi_dsi_device_register_full(struct mipi_dsi_host *host,
+			      const struct mipi_dsi_device_info *info)
+{
+	struct mipi_dsi_device *dsi;
+	int ret;
+
+	if (!info) {
+		dev_err(host->dev, "invalid mipi_dsi_device_info pointer\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	if (info->channel > 3) {
+		dev_err(host->dev, "invalid virtual channel: %u\n", info->channel);
+		return ERR_PTR(-EINVAL);
+	}
+
+	dsi = mipi_dsi_device_alloc(host);
+	if (IS_ERR(dsi)) {
+		dev_err(host->dev, "failed to allocate DSI device %ld\n",
+			PTR_ERR(dsi));
+		return dsi;
+	}
+
+	dsi->dev.of_node = info->node;
+	dsi->channel = info->channel;
+	strscpy(dsi->name, info->type, sizeof(dsi->name));
+
+	ret = mipi_dsi_device_add(dsi);
+	if (ret) {
+		dev_err(host->dev, "failed to add DSI device %d\n", ret);
+		kfree(dsi);
+		return ERR_PTR(ret);
+	}
+
+	return dsi;
+}
+EXPORT_SYMBOL(mipi_dsi_device_register_full);
+
+static LIST_HEAD(host_list);
+
+/**
+ * of_find_mipi_dsi_host_by_node() - find the MIPI DSI host matching a
+ *				     device tree node
+ * @node: device tree node
+ *
+ * Returns:
+ * A pointer to the MIPI DSI host corresponding to @node or NULL if no
+ * such device exists (or has not been registered yet).
+ */
+struct mipi_dsi_host *of_find_mipi_dsi_host_by_node(struct device_node *node)
+{
+	struct mipi_dsi_host *host;
+
+	list_for_each_entry(host, &host_list, list) {
+		if (host->dev->of_node == node) {
+			return host;
+		}
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(of_find_mipi_dsi_host_by_node);
+
+int mipi_dsi_host_register(struct mipi_dsi_host *host)
+{
+	struct device_node *node;
+
+	for_each_available_child_of_node(host->dev->of_node, node) {
+		/* skip nodes without reg property */
+		if (!of_property_present(node, "reg"))
+			continue;
+		of_mipi_dsi_device_add(host, node);
+	}
+
+	list_add_tail(&host->list, &host_list);
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_host_register);
+
+/**
+ * mipi_dsi_attach - attach a DSI device to its DSI host
+ * @dsi: DSI peripheral
+ */
+int mipi_dsi_attach(struct mipi_dsi_device *dsi)
+{
+	const struct mipi_dsi_host_ops *ops = dsi->host->ops;
+	int ret;
+
+	if (!ops || !ops->attach)
+		return -ENOSYS;
+
+	ret = ops->attach(dsi->host, dsi);
+	if (ret)
+		return ret;
+
+	dsi->attached = true;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_attach);
+
+/**
+ * mipi_dsi_detach - detach a DSI device from its DSI host
+ * @dsi: DSI peripheral
+ */
+int mipi_dsi_detach(struct mipi_dsi_device *dsi)
+{
+	const struct mipi_dsi_host_ops *ops = dsi->host->ops;
+
+	if (WARN_ON(!dsi->attached))
+		return -EINVAL;
+
+	if (!ops || !ops->detach)
+		return -ENOSYS;
+
+	dsi->attached = false;
+
+	return ops->detach(dsi->host, dsi);
+}
+EXPORT_SYMBOL(mipi_dsi_detach);
+
+/**
+ * mipi_dsi_device_transfer - transfer message to a DSI device
+ * @dsi: DSI peripheral
+ * @msg: message
+ */
+static ssize_t mipi_dsi_device_transfer(struct mipi_dsi_device *dsi,
+					struct mipi_dsi_msg *msg)
+{
+	const struct mipi_dsi_host_ops *ops = dsi->host->ops;
+
+	if (!ops || !ops->transfer)
+		return -ENOSYS;
+
+	if (dsi->mode_flags & MIPI_DSI_MODE_LPM)
+		msg->flags |= MIPI_DSI_MSG_USE_LPM;
+
+	return ops->transfer(dsi->host, msg);
+}
+
+/**
+ * mipi_dsi_packet_format_is_short - check if a packet is of the short format
+ * @type: MIPI DSI data type of the packet
+ *
+ * Return: true if the packet for the given data type is a short packet, false
+ * otherwise.
+ */
+bool mipi_dsi_packet_format_is_short(u8 type)
+{
+	switch (type) {
+	case MIPI_DSI_V_SYNC_START:
+	case MIPI_DSI_V_SYNC_END:
+	case MIPI_DSI_H_SYNC_START:
+	case MIPI_DSI_H_SYNC_END:
+	case MIPI_DSI_COMPRESSION_MODE:
+	case MIPI_DSI_END_OF_TRANSMISSION:
+	case MIPI_DSI_COLOR_MODE_OFF:
+	case MIPI_DSI_COLOR_MODE_ON:
+	case MIPI_DSI_SHUTDOWN_PERIPHERAL:
+	case MIPI_DSI_TURN_ON_PERIPHERAL:
+	case MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM:
+	case MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM:
+	case MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM:
+	case MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM:
+	case MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM:
+	case MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM:
+	case MIPI_DSI_DCS_SHORT_WRITE:
+	case MIPI_DSI_DCS_SHORT_WRITE_PARAM:
+	case MIPI_DSI_DCS_READ:
+	case MIPI_DSI_EXECUTE_QUEUE:
+	case MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE:
+		return true;
+	}
+
+	return false;
+}
+EXPORT_SYMBOL(mipi_dsi_packet_format_is_short);
+
+/**
+ * mipi_dsi_packet_format_is_long - check if a packet is of the long format
+ * @type: MIPI DSI data type of the packet
+ *
+ * Return: true if the packet for the given data type is a long packet, false
+ * otherwise.
+ */
+bool mipi_dsi_packet_format_is_long(u8 type)
+{
+	switch (type) {
+	case MIPI_DSI_NULL_PACKET:
+	case MIPI_DSI_BLANKING_PACKET:
+	case MIPI_DSI_GENERIC_LONG_WRITE:
+	case MIPI_DSI_DCS_LONG_WRITE:
+	case MIPI_DSI_PICTURE_PARAMETER_SET:
+	case MIPI_DSI_COMPRESSED_PIXEL_STREAM:
+	case MIPI_DSI_LOOSELY_PACKED_PIXEL_STREAM_YCBCR20:
+	case MIPI_DSI_PACKED_PIXEL_STREAM_YCBCR24:
+	case MIPI_DSI_PACKED_PIXEL_STREAM_YCBCR16:
+	case MIPI_DSI_PACKED_PIXEL_STREAM_30:
+	case MIPI_DSI_PACKED_PIXEL_STREAM_36:
+	case MIPI_DSI_PACKED_PIXEL_STREAM_YCBCR12:
+	case MIPI_DSI_PACKED_PIXEL_STREAM_16:
+	case MIPI_DSI_PACKED_PIXEL_STREAM_18:
+	case MIPI_DSI_PIXEL_STREAM_3BYTE_18:
+	case MIPI_DSI_PACKED_PIXEL_STREAM_24:
+		return true;
+	}
+
+	return false;
+}
+EXPORT_SYMBOL(mipi_dsi_packet_format_is_long);
+
+/**
+ * mipi_dsi_create_packet - create a packet from a message according to the
+ *     DSI protocol
+ * @packet: pointer to a DSI packet structure
+ * @msg: message to translate into a packet
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_create_packet(struct mipi_dsi_packet *packet,
+			   const struct mipi_dsi_msg *msg)
+{
+	if (!packet || !msg)
+		return -EINVAL;
+
+	/* do some minimum sanity checking */
+	if (!mipi_dsi_packet_format_is_short(msg->type) &&
+	    !mipi_dsi_packet_format_is_long(msg->type))
+		return -EINVAL;
+
+	if (msg->channel > 3)
+		return -EINVAL;
+
+	memset(packet, 0, sizeof(*packet));
+	packet->header[0] = ((msg->channel & 0x3) << 6) | (msg->type & 0x3f);
+
+	/* TODO: compute ECC if hardware support is not available */
+
+	/*
+	 * Long write packets contain the word count in header bytes 1 and 2.
+	 * The payload follows the header and is word count bytes long.
+	 *
+	 * Short write packets encode up to two parameters in header bytes 1
+	 * and 2.
+	 */
+	if (mipi_dsi_packet_format_is_long(msg->type)) {
+		packet->header[1] = (msg->tx_len >> 0) & 0xff;
+		packet->header[2] = (msg->tx_len >> 8) & 0xff;
+
+		packet->payload_length = msg->tx_len;
+		packet->payload = msg->tx_buf;
+	} else {
+		const u8 *tx = msg->tx_buf;
+
+		packet->header[1] = (msg->tx_len > 0) ? tx[0] : 0;
+		packet->header[2] = (msg->tx_len > 1) ? tx[1] : 0;
+	}
+
+	packet->size = sizeof(packet->header) + packet->payload_length;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_create_packet);
+
+/**
+ * mipi_dsi_shutdown_peripheral() - sends a Shutdown Peripheral command
+ * @dsi: DSI peripheral device
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_shutdown_peripheral(struct mipi_dsi_device *dsi)
+{
+	struct mipi_dsi_msg msg = {
+		.channel = dsi->channel,
+		.type = MIPI_DSI_SHUTDOWN_PERIPHERAL,
+		.tx_buf = (u8 [2]) { 0, 0 },
+		.tx_len = 2,
+	};
+	int ret = mipi_dsi_device_transfer(dsi, &msg);
+
+	return (ret < 0) ? ret : 0;
+}
+EXPORT_SYMBOL(mipi_dsi_shutdown_peripheral);
+
+/**
+ * mipi_dsi_turn_on_peripheral() - sends a Turn On Peripheral command
+ * @dsi: DSI peripheral device
+ *
+ * This function is deprecated. Use mipi_dsi_turn_on_peripheral_multi() instead.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_turn_on_peripheral(struct mipi_dsi_device *dsi)
+{
+	struct mipi_dsi_msg msg = {
+		.channel = dsi->channel,
+		.type = MIPI_DSI_TURN_ON_PERIPHERAL,
+		.tx_buf = (u8 [2]) { 0, 0 },
+		.tx_len = 2,
+	};
+	int ret = mipi_dsi_device_transfer(dsi, &msg);
+
+	return (ret < 0) ? ret : 0;
+}
+EXPORT_SYMBOL(mipi_dsi_turn_on_peripheral);
+
+/*
+ * mipi_dsi_set_maximum_return_packet_size() - specify the maximum size of
+ *    the payload in a long packet transmitted from the peripheral back to the
+ *    host processor
+ * @dsi: DSI peripheral device
+ * @value: the maximum size of the payload
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_set_maximum_return_packet_size(struct mipi_dsi_device *dsi,
+					    u16 value)
+{
+	u8 tx[2] = { value & 0xff, value >> 8 };
+	struct mipi_dsi_msg msg = {
+		.channel = dsi->channel,
+		.type = MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE,
+		.tx_len = sizeof(tx),
+		.tx_buf = tx,
+	};
+	int ret = mipi_dsi_device_transfer(dsi, &msg);
+
+	return (ret < 0) ? ret : 0;
+}
+EXPORT_SYMBOL(mipi_dsi_set_maximum_return_packet_size);
+
+/**
+ * mipi_dsi_compression_mode_ext() - enable/disable DSC on the peripheral
+ * @dsi: DSI peripheral device
+ * @enable: Whether to enable or disable the DSC
+ * @algo: Selected compression algorithm
+ * @pps_selector: Select PPS from the table of pre-stored or uploaded PPS entries
+ *
+ * Enable or disable Display Stream Compression on the peripheral.
+ * This function is deprecated. Use mipi_dsi_compression_mode_ext_multi() instead.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_compression_mode_ext(struct mipi_dsi_device *dsi, bool enable,
+				  enum mipi_dsi_compression_algo algo,
+				  unsigned int pps_selector)
+{
+	u8 tx[2] = { };
+	struct mipi_dsi_msg msg = {
+		.channel = dsi->channel,
+		.type = MIPI_DSI_COMPRESSION_MODE,
+		.tx_len = sizeof(tx),
+		.tx_buf = tx,
+	};
+	int ret;
+
+	if (algo > 3 || pps_selector > 3)
+		return -EINVAL;
+
+	tx[0] = (enable << 0) |
+		(algo << 1) |
+		(pps_selector << 4);
+
+	ret = mipi_dsi_device_transfer(dsi, &msg);
+
+	return (ret < 0) ? ret : 0;
+}
+EXPORT_SYMBOL(mipi_dsi_compression_mode_ext);
+
+/**
+ * mipi_dsi_compression_mode() - enable/disable DSC on the peripheral
+ * @dsi: DSI peripheral device
+ * @enable: Whether to enable or disable the DSC
+ *
+ * Enable or disable Display Stream Compression on the peripheral using the
+ * default Picture Parameter Set and VESA DSC 1.1 algorithm.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable)
+{
+	return mipi_dsi_compression_mode_ext(dsi, enable, MIPI_DSI_COMPRESSION_DSC, 0);
+}
+EXPORT_SYMBOL(mipi_dsi_compression_mode);
+
+/**
+ * mipi_dsi_generic_write() - transmit data using a generic write packet
+ * @dsi: DSI peripheral device
+ * @payload: buffer containing the payload
+ * @size: size of payload buffer
+ *
+ * This function will automatically choose the right data type depending on
+ * the payload length.
+ *
+ * Return: The number of bytes transmitted on success or a negative error code
+ * on failure.
+ */
+ssize_t mipi_dsi_generic_write(struct mipi_dsi_device *dsi, const void *payload,
+			       size_t size)
+{
+	struct mipi_dsi_msg msg = {
+		.channel = dsi->channel,
+		.tx_buf = payload,
+		.tx_len = size
+	};
+
+	switch (size) {
+	case 0:
+		msg.type = MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM;
+		break;
+
+	case 1:
+		msg.type = MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM;
+		break;
+
+	case 2:
+		msg.type = MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM;
+		break;
+
+	default:
+		msg.type = MIPI_DSI_GENERIC_LONG_WRITE;
+		break;
+	}
+
+	return mipi_dsi_device_transfer(dsi, &msg);
+}
+EXPORT_SYMBOL(mipi_dsi_generic_write);
+
+/**
+ * mipi_dsi_generic_write_chatty() - mipi_dsi_generic_write() w/ an error log
+ * @dsi: DSI peripheral device
+ * @payload: buffer containing the payload
+ * @size: size of payload buffer
+ *
+ * Like mipi_dsi_generic_write() but includes a dev_err()
+ * call for you and returns 0 upon success, not the number of bytes sent.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_generic_write_chatty(struct mipi_dsi_device *dsi,
+				  const void *payload, size_t size)
+{
+	struct device *dev = &dsi->dev;
+	ssize_t ret;
+
+	ret = mipi_dsi_generic_write(dsi, payload, size);
+	if (ret < 0) {
+		dev_err(dev, "sending generic data %*ph failed: %zd\n",
+			(int)size, payload, ret);
+		return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_generic_write_chatty);
+
+/**
+ * mipi_dsi_generic_write_multi() - mipi_dsi_generic_write_chatty() w/ accum_err
+ * @ctx: Context for multiple DSI transactions
+ * @payload: buffer containing the payload
+ * @size: size of payload buffer
+ *
+ * Like mipi_dsi_generic_write_chatty() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_generic_write_multi(struct mipi_dsi_multi_context *ctx,
+				  const void *payload, size_t size)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	ssize_t ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_generic_write(dsi, payload, size);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "sending generic data %*ph failed: %d\n",
+			(int)size, payload, ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_generic_write_multi);
+
+/**
+ * mipi_dsi_generic_read() - receive data using a generic read packet
+ * @dsi: DSI peripheral device
+ * @params: buffer containing the request parameters
+ * @num_params: number of request parameters
+ * @data: buffer in which to return the received data
+ * @size: size of receive buffer
+ *
+ * This function will automatically choose the right data type depending on
+ * the number of parameters passed in.
+ *
+ * Return: The number of bytes successfully read or a negative error code on
+ * failure.
+ */
+ssize_t mipi_dsi_generic_read(struct mipi_dsi_device *dsi, const void *params,
+			      size_t num_params, void *data, size_t size)
+{
+	struct mipi_dsi_msg msg = {
+		.channel = dsi->channel,
+		.tx_len = num_params,
+		.tx_buf = params,
+		.rx_len = size,
+		.rx_buf = data
+	};
+
+	switch (num_params) {
+	case 0:
+		msg.type = MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM;
+		break;
+
+	case 1:
+		msg.type = MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM;
+		break;
+
+	case 2:
+		msg.type = MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM;
+		break;
+
+	default:
+		return -EINVAL;
+	}
+
+	return mipi_dsi_device_transfer(dsi, &msg);
+}
+EXPORT_SYMBOL(mipi_dsi_generic_read);
+
+/**
+ * mipi_dsi_dcs_write_buffer() - transmit a DCS command with payload
+ * @dsi: DSI peripheral device
+ * @data: buffer containing data to be transmitted
+ * @len: size of transmission buffer
+ *
+ * This function will automatically choose the right data type depending on
+ * the command payload length.
+ *
+ * Return: The number of bytes successfully transmitted or a negative error
+ * code on failure.
+ */
+ssize_t mipi_dsi_dcs_write_buffer(struct mipi_dsi_device *dsi,
+				  const void *data, size_t len)
+{
+	struct mipi_dsi_msg msg = {
+		.channel = dsi->channel,
+		.tx_buf = data,
+		.tx_len = len
+	};
+
+	switch (len) {
+	case 0:
+		return -EINVAL;
+
+	case 1:
+		msg.type = MIPI_DSI_DCS_SHORT_WRITE;
+		break;
+
+	case 2:
+		msg.type = MIPI_DSI_DCS_SHORT_WRITE_PARAM;
+		break;
+
+	default:
+		msg.type = MIPI_DSI_DCS_LONG_WRITE;
+		break;
+	}
+
+	return mipi_dsi_device_transfer(dsi, &msg);
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_write_buffer);
+
+/**
+ * mipi_dsi_dcs_write_buffer_chatty - mipi_dsi_dcs_write_buffer() w/ an error log
+ * @dsi: DSI peripheral device
+ * @data: buffer containing data to be transmitted
+ * @len: size of transmission buffer
+ *
+ * Like mipi_dsi_dcs_write_buffer() but includes a dev_err()
+ * call for you and returns 0 upon success, not the number of bytes sent.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_write_buffer_chatty(struct mipi_dsi_device *dsi,
+				     const void *data, size_t len)
+{
+	struct device *dev = &dsi->dev;
+	ssize_t ret;
+
+	ret = mipi_dsi_dcs_write_buffer(dsi, data, len);
+	if (ret < 0) {
+		dev_err(dev, "sending dcs data %*ph failed: %zd\n",
+			(int)len, data, ret);
+		return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_write_buffer_chatty);
+
+/**
+ * mipi_dsi_dcs_write_buffer_multi - mipi_dsi_dcs_write_buffer_chatty() w/ accum_err
+ * @ctx: Context for multiple DSI transactions
+ * @data: buffer containing data to be transmitted
+ * @len: size of transmission buffer
+ *
+ * Like mipi_dsi_dcs_write_buffer_chatty() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_write_buffer_multi(struct mipi_dsi_multi_context *ctx,
+				     const void *data, size_t len)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	ssize_t ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_write_buffer(dsi, data, len);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "sending dcs data %*ph failed: %d\n",
+			(int)len, data, ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_write_buffer_multi);
+
+/**
+ * mipi_dsi_dcs_write() - send DCS write command
+ * @dsi: DSI peripheral device
+ * @cmd: DCS command
+ * @data: buffer containing the command payload
+ * @len: command payload length
+ *
+ * This function will automatically choose the right data type depending on
+ * the command payload length.
+ *
+ * Return: The number of bytes successfully transmitted or a negative error
+ * code on failure.
+ */
+ssize_t mipi_dsi_dcs_write(struct mipi_dsi_device *dsi, u8 cmd,
+			   const void *data, size_t len)
+{
+	ssize_t err;
+	size_t size;
+	u8 stack_tx[8];
+	u8 *tx;
+
+	size = 1 + len;
+	if (len > ARRAY_SIZE(stack_tx) - 1) {
+		tx = kmalloc(size, GFP_KERNEL);
+		if (!tx)
+			return -ENOMEM;
+	} else {
+		tx = stack_tx;
+	}
+
+	/* concatenate the DCS command byte and the payload */
+	tx[0] = cmd;
+	if (data)
+		memcpy(&tx[1], data, len);
+
+	err = mipi_dsi_dcs_write_buffer(dsi, tx, size);
+
+	if (tx != stack_tx)
+		kfree(tx);
+
+	return err;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_write);
+
+/**
+ * mipi_dsi_dcs_read() - send DCS read request command
+ * @dsi: DSI peripheral device
+ * @cmd: DCS command
+ * @data: buffer in which to receive data
+ * @len: size of receive buffer
+ *
+ * Return: The number of bytes read or a negative error code on failure.
+ */
+ssize_t mipi_dsi_dcs_read(struct mipi_dsi_device *dsi, u8 cmd, void *data,
+			  size_t len)
+{
+	struct mipi_dsi_msg msg = {
+		.channel = dsi->channel,
+		.type = MIPI_DSI_DCS_READ,
+		.tx_buf = &cmd,
+		.tx_len = 1,
+		.rx_buf = data,
+		.rx_len = len
+	};
+
+	return mipi_dsi_device_transfer(dsi, &msg);
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_read);
+
+/**
+ * mipi_dsi_dcs_nop() - send DCS nop packet
+ * @dsi: DSI peripheral device
+ *
+ * This function is deprecated. Use mipi_dsi_dcs_nop_multi() instead.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_nop(struct mipi_dsi_device *dsi)
+{
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_NOP, NULL, 0);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_nop);
+
+/**
+ * mipi_dsi_dcs_soft_reset() - perform a software reset of the display module
+ * @dsi: DSI peripheral device
+ *
+ * This function is deprecated. Use mipi_dsi_dcs_soft_reset_multi() instead.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_soft_reset(struct mipi_dsi_device *dsi)
+{
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SOFT_RESET, NULL, 0);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_soft_reset);
+
+/**
+ * mipi_dsi_dcs_get_power_mode() - query the display module's current power
+ *    mode
+ * @dsi: DSI peripheral device
+ * @mode: return location for the current power mode
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_get_power_mode(struct mipi_dsi_device *dsi, u8 *mode)
+{
+	ssize_t err;
+
+	err = mipi_dsi_dcs_read(dsi, MIPI_DCS_GET_POWER_MODE, mode,
+				sizeof(*mode));
+	if (err <= 0) {
+		if (err == 0)
+			err = -ENODATA;
+
+		return err;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_get_power_mode);
+
+/**
+ * mipi_dsi_dcs_get_pixel_format() - gets the pixel format for the RGB image
+ *    data used by the interface
+ * @dsi: DSI peripheral device
+ * @format: return location for the pixel format
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_get_pixel_format(struct mipi_dsi_device *dsi, u8 *format)
+{
+	ssize_t err;
+
+	err = mipi_dsi_dcs_read(dsi, MIPI_DCS_GET_PIXEL_FORMAT, format,
+				sizeof(*format));
+	if (err <= 0) {
+		if (err == 0)
+			err = -ENODATA;
+
+		return err;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_get_pixel_format);
+
+/**
+ * mipi_dsi_dcs_enter_sleep_mode() - disable all unnecessary blocks inside the
+ *    display module except interface communication
+ * @dsi: DSI peripheral device
+ *
+ * This function is deprecated. Use mipi_dsi_dcs_enter_sleep_mode_multi() instead.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_enter_sleep_mode(struct mipi_dsi_device *dsi)
+{
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_ENTER_SLEEP_MODE, NULL, 0);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_enter_sleep_mode);
+
+/**
+ * mipi_dsi_dcs_exit_sleep_mode() - enable all blocks inside the display
+ *    module
+ * @dsi: DSI peripheral device
+ *
+ * This function is deprecated. Use mipi_dsi_dcs_exit_sleep_mode_multi() instead.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_exit_sleep_mode(struct mipi_dsi_device *dsi)
+{
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_EXIT_SLEEP_MODE, NULL, 0);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_exit_sleep_mode);
+
+/**
+ * mipi_dsi_dcs_set_display_off() - stop displaying the image data on the
+ *    display device
+ * @dsi: DSI peripheral device
+ *
+ * This function is deprecated. Use mipi_dsi_dcs_set_display_off_multi() instead.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_set_display_off(struct mipi_dsi_device *dsi)
+{
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_DISPLAY_OFF, NULL, 0);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_display_off);
+
+/**
+ * mipi_dsi_dcs_set_display_on() - start displaying the image data on the
+ *    display device
+ * @dsi: DSI peripheral device
+ *
+ * This function is deprecated. Use mipi_dsi_dcs_set_display_on_multi() instead.
+ *
+ * Return: 0 on success or a negative error code on failure
+ */
+int mipi_dsi_dcs_set_display_on(struct mipi_dsi_device *dsi)
+{
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_DISPLAY_ON, NULL, 0);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_display_on);
+
+/**
+ * mipi_dsi_dcs_set_column_address() - define the column extent of the frame
+ *    memory accessed by the host processor
+ * @dsi: DSI peripheral device
+ * @start: first column of frame memory
+ * @end: last column of frame memory
+ *
+ * This function is deprecated. Use mipi_dsi_dcs_set_column_address_multi()
+ * instead.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_set_column_address(struct mipi_dsi_device *dsi, u16 start,
+				    u16 end)
+{
+	u8 payload[4] = { start >> 8, start & 0xff, end >> 8, end & 0xff };
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_COLUMN_ADDRESS, payload,
+				 sizeof(payload));
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_column_address);
+
+/**
+ * mipi_dsi_dcs_set_page_address() - define the page extent of the frame
+ *    memory accessed by the host processor
+ * @dsi: DSI peripheral device
+ * @start: first page of frame memory
+ * @end: last page of frame memory
+ *
+ * This function is deprecated. Use mipi_dsi_dcs_set_page_address_multi()
+ * instead.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_set_page_address(struct mipi_dsi_device *dsi, u16 start,
+				  u16 end)
+{
+	u8 payload[4] = { start >> 8, start & 0xff, end >> 8, end & 0xff };
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_PAGE_ADDRESS, payload,
+				 sizeof(payload));
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_page_address);
+
+/**
+ * mipi_dsi_dcs_set_tear_on() - turn on the display module's Tearing Effect
+ *    output signal on the TE signal line.
+ * @dsi: DSI peripheral device
+ * @mode: the Tearing Effect Output Line mode
+ *
+ * This function is deprecated. Use mipi_dsi_dcs_set_tear_on_multi() instead.
+ *
+ * Return: 0 on success or a negative error code on failure
+ */
+int mipi_dsi_dcs_set_tear_on(struct mipi_dsi_device *dsi,
+			     enum mipi_dsi_dcs_tear_mode mode)
+{
+	u8 value = mode;
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_TEAR_ON, &value,
+				 sizeof(value));
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_tear_on);
+
+/**
+ * mipi_dsi_dcs_set_pixel_format() - sets the pixel format for the RGB image
+ *    data used by the interface
+ * @dsi: DSI peripheral device
+ * @format: pixel format
+ *
+ * This function is deprecated. Use mipi_dsi_dcs_set_pixel_format_multi()
+ * instead.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_set_pixel_format(struct mipi_dsi_device *dsi, u8 format)
+{
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_PIXEL_FORMAT, &format,
+				 sizeof(format));
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_pixel_format);
+
+/**
+ * mipi_dsi_dcs_set_tear_scanline() - set the scanline to use as trigger for
+ *    the Tearing Effect output signal of the display module
+ * @dsi: DSI peripheral device
+ * @scanline: scanline to use as trigger
+ *
+ * This function is deprecated. Use mipi_dsi_dcs_set_tear_scanline_multi()
+ * instead.
+ *
+ * Return: 0 on success or a negative error code on failure
+ */
+int mipi_dsi_dcs_set_tear_scanline(struct mipi_dsi_device *dsi, u16 scanline)
+{
+	u8 payload[2] = { scanline >> 8, scanline & 0xff };
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_TEAR_SCANLINE, payload,
+				 sizeof(payload));
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_tear_scanline);
+
+/**
+ * mipi_dsi_dcs_set_display_brightness() - sets the brightness value of the
+ *    display
+ * @dsi: DSI peripheral device
+ * @brightness: brightness value
+ *
+ * This function is deprecated. Use mipi_dsi_dcs_set_display_brightness_multi()
+ * instead.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_set_display_brightness(struct mipi_dsi_device *dsi,
+					u16 brightness)
+{
+	u8 payload[2] = { brightness & 0xff, brightness >> 8 };
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,
+				 payload, sizeof(payload));
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_display_brightness);
+
+/**
+ * mipi_dsi_dcs_get_display_brightness() - gets the current brightness value
+ *    of the display
+ * @dsi: DSI peripheral device
+ * @brightness: brightness value
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_get_display_brightness(struct mipi_dsi_device *dsi,
+					u16 *brightness)
+{
+	ssize_t err;
+
+	err = mipi_dsi_dcs_read(dsi, MIPI_DCS_GET_DISPLAY_BRIGHTNESS,
+				brightness, sizeof(*brightness));
+	if (err <= 0) {
+		if (err == 0)
+			err = -ENODATA;
+
+		return err;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_get_display_brightness);
+
+/**
+ * mipi_dsi_dcs_set_display_brightness_large() - sets the 16-bit brightness value
+ *    of the display
+ * @dsi: DSI peripheral device
+ * @brightness: brightness value
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_set_display_brightness_large(struct mipi_dsi_device *dsi,
+					     u16 brightness)
+{
+	u8 payload[2] = { brightness >> 8, brightness & 0xff };
+	ssize_t err;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,
+				 payload, sizeof(payload));
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_display_brightness_large);
+
+/**
+ * mipi_dsi_dcs_get_display_brightness_large() - gets the current 16-bit
+ *    brightness value of the display
+ * @dsi: DSI peripheral device
+ * @brightness: brightness value
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_get_display_brightness_large(struct mipi_dsi_device *dsi,
+					     u16 *brightness)
+{
+	u8 brightness_be[2];
+	ssize_t err;
+
+	err = mipi_dsi_dcs_read(dsi, MIPI_DCS_GET_DISPLAY_BRIGHTNESS,
+				brightness_be, sizeof(brightness_be));
+	if (err <= 0) {
+		if (err == 0)
+			err = -ENODATA;
+
+		return err;
+	}
+
+	*brightness = (brightness_be[0] << 8) | brightness_be[1];
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_get_display_brightness_large);
+
+/**
+ * mipi_dsi_compression_mode_ext_multi() - enable/disable DSC on the peripheral
+ * @ctx: Context for multiple DSI transactions
+ * @enable: Whether to enable or disable the DSC
+ * @algo: Selected compression algorithm
+ * @pps_selector: Select PPS from the table of pre-stored or uploaded PPS entries
+ *
+ * Like mipi_dsi_compression_mode_ext() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_compression_mode_ext_multi(struct mipi_dsi_multi_context *ctx,
+					 bool enable,
+					 enum mipi_dsi_compression_algo algo,
+					 unsigned int pps_selector)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	ssize_t ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_compression_mode_ext(dsi, enable, algo, pps_selector);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "sending COMPRESSION_MODE failed: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_compression_mode_ext_multi);
+
+/**
+ * mipi_dsi_compression_mode_multi() - enable/disable DSC on the peripheral
+ * @ctx: Context for multiple DSI transactions
+ * @enable: Whether to enable or disable the DSC
+ *
+ * Enable or disable Display Stream Compression on the peripheral using the
+ * default Picture Parameter Set and VESA DSC 1.1 algorithm.
+ */
+void mipi_dsi_compression_mode_multi(struct mipi_dsi_multi_context *ctx,
+				     bool enable)
+{
+	return mipi_dsi_compression_mode_ext_multi(ctx, enable,
+						   MIPI_DSI_COMPRESSION_DSC, 0);
+}
+EXPORT_SYMBOL(mipi_dsi_compression_mode_multi);
+
+/**
+ * mipi_dsi_dcs_nop_multi() - send DCS NOP packet
+ * @ctx: Context for multiple DSI transactions
+ *
+ * Like mipi_dsi_dcs_nop() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_nop_multi(struct mipi_dsi_multi_context *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	ssize_t ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_nop(dsi);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "sending DCS NOP failed: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_nop_multi);
+
+/**
+ * mipi_dsi_dcs_enter_sleep_mode_multi() - send DCS ENTER_SLEEP_MODE  packet
+ * @ctx: Context for multiple DSI transactions
+ *
+ * Like mipi_dsi_dcs_enter_sleep_mode() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_enter_sleep_mode_multi(struct mipi_dsi_multi_context *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	ssize_t ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "sending DCS ENTER_SLEEP_MODE failed: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_enter_sleep_mode_multi);
+
+/**
+ * mipi_dsi_dcs_exit_sleep_mode_multi() - send DCS EXIT_SLEEP_MODE packet
+ * @ctx: Context for multiple DSI transactions
+ *
+ * Like mipi_dsi_dcs_exit_sleep_mode() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_exit_sleep_mode_multi(struct mipi_dsi_multi_context *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	ssize_t ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_exit_sleep_mode(dsi);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "sending DCS EXIT_SLEEP_MODE failed: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_exit_sleep_mode_multi);
+
+/**
+ * mipi_dsi_dcs_set_display_off_multi() - send DCS SET_DISPLAY_OFF packet
+ * @ctx: Context for multiple DSI transactions
+ *
+ * Like mipi_dsi_dcs_set_display_off() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_set_display_off_multi(struct mipi_dsi_multi_context *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	ssize_t ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_set_display_off(dsi);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "sending DCS SET_DISPLAY_OFF failed: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_display_off_multi);
+
+/**
+ * mipi_dsi_dcs_set_display_on_multi() - send DCS SET_DISPLAY_ON packet
+ * @ctx: Context for multiple DSI transactions
+ *
+ * Like mipi_dsi_dcs_set_display_on() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_set_display_on_multi(struct mipi_dsi_multi_context *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	ssize_t ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_set_display_on(dsi);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "sending DCS SET_DISPLAY_ON failed: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_display_on_multi);
+
+/**
+ * mipi_dsi_dcs_set_tear_on_multi() - send DCS SET_TEAR_ON packet
+ * @ctx: Context for multiple DSI transactions
+ * @mode: the Tearing Effect Output Line mode
+ *
+ * Like mipi_dsi_dcs_set_tear_on() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_set_tear_on_multi(struct mipi_dsi_multi_context *ctx,
+				    enum mipi_dsi_dcs_tear_mode mode)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	ssize_t ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_set_tear_on(dsi, mode);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "sending DCS SET_TEAR_ON failed: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_tear_on_multi);
+
+/**
+ * mipi_dsi_turn_on_peripheral_multi() - sends a Turn On Peripheral command
+ * @ctx: Context for multiple DSI transactions
+ *
+ * Like mipi_dsi_turn_on_peripheral() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_turn_on_peripheral_multi(struct mipi_dsi_multi_context *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	int ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_turn_on_peripheral(dsi);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "Failed to turn on peripheral: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_turn_on_peripheral_multi);
+
+/**
+ * mipi_dsi_dcs_set_tear_off_multi() - turn off the display module's Tearing Effect
+ *    output signal on the TE signal line
+ * @ctx: Context for multiple DSI transactions
+ */
+void mipi_dsi_dcs_set_tear_off_multi(struct mipi_dsi_multi_context *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	ssize_t err;
+
+	if (ctx->accum_err)
+		return;
+
+	err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_TEAR_OFF, NULL, 0);
+	if (err < 0) {
+		ctx->accum_err = err;
+		dev_err(dev, "Failed to set tear off: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_tear_off_multi);
+
+/**
+ * mipi_dsi_dcs_soft_reset_multi() - perform a software reset of the display module
+ * @ctx: Context for multiple DSI transactions
+ *
+ * Like mipi_dsi_dcs_soft_reset() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_soft_reset_multi(struct mipi_dsi_multi_context *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	int ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_soft_reset(dsi);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "Failed to mipi_dsi_dcs_soft_reset: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_soft_reset_multi);
+
+/**
+ * mipi_dsi_dcs_set_display_brightness_multi() - sets the brightness value of
+ *	the display
+ * @ctx: Context for multiple DSI transactions
+ * @brightness: brightness value
+ *
+ * Like mipi_dsi_dcs_set_display_brightness() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_set_display_brightness_multi(struct mipi_dsi_multi_context *ctx,
+					       u16 brightness)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	int ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_set_display_brightness(dsi, brightness);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "Failed to write display brightness: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_display_brightness_multi);
+
+/**
+ * mipi_dsi_dcs_set_pixel_format_multi() - sets the pixel format for the RGB image
+ *	data used by the interface
+ * @ctx: Context for multiple DSI transactions
+ * @format: pixel format
+ *
+ * Like mipi_dsi_dcs_set_pixel_format() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_set_pixel_format_multi(struct mipi_dsi_multi_context *ctx,
+					 u8 format)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	int ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_set_pixel_format(dsi, format);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "Failed to set pixel format: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_pixel_format_multi);
+
+/**
+ * mipi_dsi_dcs_set_column_address_multi() - define the column extent of the
+ *	frame memory accessed by the host processor
+ * @ctx: Context for multiple DSI transactions
+ * @start: first column of frame memory
+ * @end: last column of frame memory
+ *
+ * Like mipi_dsi_dcs_set_column_address() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_set_column_address_multi(struct mipi_dsi_multi_context *ctx,
+					   u16 start, u16 end)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	int ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_set_column_address(dsi, start, end);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "Failed to set column address: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_column_address_multi);
+
+/**
+ * mipi_dsi_dcs_set_page_address_multi() - define the page extent of the
+ *	frame memory accessed by the host processor
+ * @ctx: Context for multiple DSI transactions
+ * @start: first page of frame memory
+ * @end: last page of frame memory
+ *
+ * Like mipi_dsi_dcs_set_page_address() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_set_page_address_multi(struct mipi_dsi_multi_context *ctx,
+					 u16 start, u16 end)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	int ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_set_page_address(dsi, start, end);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "Failed to set page address: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_page_address_multi);
+
+/**
+ * mipi_dsi_dcs_set_tear_scanline_multi() - set the scanline to use as trigger for
+ *    the Tearing Effect output signal of the display module
+ * @ctx: Context for multiple DSI transactions
+ * @scanline: scanline to use as trigger
+ *
+ * Like mipi_dsi_dcs_set_tear_scanline() but deals with errors in a way that
+ * makes it convenient to make several calls in a row.
+ */
+void mipi_dsi_dcs_set_tear_scanline_multi(struct mipi_dsi_multi_context *ctx,
+					  u16 scanline)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	int ret;
+
+	if (ctx->accum_err)
+		return;
+
+	ret = mipi_dsi_dcs_set_tear_scanline(dsi, scanline);
+	if (ret < 0) {
+		ctx->accum_err = ret;
+		dev_err(dev, "Failed to set tear scanline: %d\n",
+			ctx->accum_err);
+	}
+}
+EXPORT_SYMBOL(mipi_dsi_dcs_set_tear_scanline_multi);
+
+static int mipi_dsi_drv_probe(struct device *dev)
+{
+	struct mipi_dsi_driver *drv = to_mipi_dsi_driver(dev->driver);
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(dev);
+
+	return drv->probe(dsi);
+}
+
+static void mipi_dsi_drv_remove(struct device *dev)
+{
+	struct mipi_dsi_driver *drv = to_mipi_dsi_driver(dev->driver);
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(dev);
+
+	drv->remove(dsi);
+}
+
+/**
+ * mipi_dsi_driver_register() - register a driver for DSI devices
+ * @drv: DSI driver structure
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_driver_register(struct mipi_dsi_driver *drv)
+{
+	drv->driver.bus = &mipi_dsi_bus_type;
+
+	if (drv->probe)
+		drv->driver.probe = mipi_dsi_drv_probe;
+	if (drv->remove)
+		drv->driver.remove = mipi_dsi_drv_remove;
+
+	return driver_register(&drv->driver);
+}
+EXPORT_SYMBOL(mipi_dsi_driver_register_full);
+
+/**
+ * mipi_dsi_driver_unregister() - unregister a driver for DSI devices
+ * @drv: DSI driver structure
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+void mipi_dsi_driver_unregister(struct mipi_dsi_driver *drv)
+{
+	driver_unregister(&drv->driver);
+}
+EXPORT_SYMBOL(mipi_dsi_driver_unregister);
+
+static int __init mipi_dsi_bus_init(void)
+{
+	return bus_register(&mipi_dsi_bus_type);
+}
+postcore_initcall(mipi_dsi_bus_init);
+
+MODULE_AUTHOR("Andrzej Hajda <a.hajda@samsung.com>");
+MODULE_DESCRIPTION("MIPI DSI Bus");
+MODULE_LICENSE("GPL and additional rights");
diff --git a/include/video/mipi_dsi.h b/include/video/mipi_dsi.h
new file mode 100644
index 000000000000..24dadd49b40c
--- /dev/null
+++ b/include/video/mipi_dsi.h
@@ -0,0 +1,618 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * MIPI DSI Bus
+ *
+ * Copyright (C) 2012-2013, Samsung Electronics, Co., Ltd.
+ * Copyright (C) 2018 STMicroelectronics - All Rights Reserved
+ * Author(s): Andrzej Hajda <a.hajda@samsung.com>
+ *            Yannick Fertre <yannick.fertre@st.com>
+ *            Philippe Cornu <philippe.cornu@st.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#ifndef MIPI_DSI_H
+#define MIPI_DSI_H
+
+#include <video/mipi_display.h>
+#include <linux/container_of.h>
+#include <linux/bitops.h>
+#include <linux/device.h>
+#include <linux/errno.h>
+
+struct mipi_dsi_host;
+struct mipi_dsi_device;
+struct drm_display_mode;
+
+/* request ACK from peripheral */
+#define MIPI_DSI_MSG_REQ_ACK	BIT(0)
+/* use Low Power Mode to transmit message */
+#define MIPI_DSI_MSG_USE_LPM	BIT(1)
+
+/**
+ * struct mipi_dsi_msg - read/write DSI buffer
+ * @channel: virtual channel id
+ * @type: payload data type
+ * @flags: flags controlling this message transmission
+ * @tx_len: length of @tx_buf
+ * @tx_buf: data to be written
+ * @rx_len: length of @rx_buf
+ * @rx_buf: data to be read, or NULL
+ */
+struct mipi_dsi_msg {
+	u8 channel;
+	u8 type;
+	u16 flags;
+
+	size_t tx_len;
+	const void *tx_buf;
+
+	size_t rx_len;
+	void *rx_buf;
+};
+
+bool mipi_dsi_packet_format_is_short(u8 type);
+bool mipi_dsi_packet_format_is_long(u8 type);
+
+/**
+ * struct mipi_dsi_packet - represents a MIPI DSI packet in protocol format
+ * @size: size (in bytes) of the packet
+ * @header: the four bytes that make up the header (Data ID, Word Count or
+ *     Packet Data, and ECC)
+ * @payload_length: number of bytes in the payload
+ * @payload: a pointer to a buffer containing the payload, if any
+ */
+struct mipi_dsi_packet {
+	size_t size;
+	u8 header[4];
+	size_t payload_length;
+	const u8 *payload;
+};
+
+int mipi_dsi_create_packet(struct mipi_dsi_packet *packet,
+			   const struct mipi_dsi_msg *msg);
+
+/**
+ * struct mipi_dsi_host_ops - DSI bus operations
+ * @attach: attach DSI device to DSI host
+ * @detach: detach DSI device from DSI host
+ * @transfer: transmit a DSI packet
+ *
+ * DSI packets transmitted by .transfer() are passed in as mipi_dsi_msg
+ * structures. This structure contains information about the type of packet
+ * being transmitted as well as the transmit and receive buffers. When an
+ * error is encountered during transmission, this function will return a
+ * negative error code. On success it shall return the number of bytes
+ * transmitted for write packets or the number of bytes received for read
+ * packets.
+ *
+ * Note that typically DSI packet transmission is atomic, so the .transfer()
+ * function will seldomly return anything other than the number of bytes
+ * contained in the transmit buffer on success.
+ */
+struct mipi_dsi_host_ops {
+	int (*attach)(struct mipi_dsi_host *host,
+		      struct mipi_dsi_device *dsi);
+	int (*detach)(struct mipi_dsi_host *host,
+		      struct mipi_dsi_device *dsi);
+	ssize_t (*transfer)(struct mipi_dsi_host *host,
+			    const struct mipi_dsi_msg *msg);
+};
+
+/**
+ * struct mipi_dsi_host - DSI host device
+ * @dev: driver model device node for this DSI host
+ * @ops: DSI host operations
+ * @list: list management
+ */
+struct mipi_dsi_host {
+	struct device *dev;
+	const struct mipi_dsi_host_ops *ops;
+	struct list_head list;
+};
+
+int mipi_dsi_host_register(struct mipi_dsi_host *host);
+struct mipi_dsi_host *of_find_mipi_dsi_host_by_node(struct device_node *node);
+
+/* DSI mode flags */
+
+/* video mode */
+#define MIPI_DSI_MODE_VIDEO		BIT(0)
+/* video burst mode */
+#define MIPI_DSI_MODE_VIDEO_BURST	BIT(1)
+/* video pulse mode */
+#define MIPI_DSI_MODE_VIDEO_SYNC_PULSE	BIT(2)
+/* enable auto vertical count mode */
+#define MIPI_DSI_MODE_VIDEO_AUTO_VERT	BIT(3)
+/* enable hsync-end packets in vsync-pulse and v-porch area */
+#define MIPI_DSI_MODE_VIDEO_HSE		BIT(4)
+/* disable hfront-porch area */
+#define MIPI_DSI_MODE_VIDEO_HFP		BIT(5)
+/* disable hback-porch area */
+#define MIPI_DSI_MODE_VIDEO_HBP		BIT(6)
+/* disable hsync-active area */
+#define MIPI_DSI_MODE_VIDEO_HSA		BIT(7)
+/* flush display FIFO on vsync pulse */
+#define MIPI_DSI_MODE_VSYNC_FLUSH	BIT(8)
+/* disable EoT packets in HS mode */
+#define MIPI_DSI_MODE_NO_EOT_PACKET	BIT(9)
+/* device supports non-continuous clock behavior (DSI spec 5.6.1) */
+#define MIPI_DSI_CLOCK_NON_CONTINUOUS	BIT(10)
+/* transmit data in low power */
+#define MIPI_DSI_MODE_LPM		BIT(11)
+
+enum mipi_dsi_pixel_format {
+	MIPI_DSI_FMT_RGB888,
+	MIPI_DSI_FMT_RGB666,
+	MIPI_DSI_FMT_RGB666_PACKED,
+	MIPI_DSI_FMT_RGB565,
+};
+
+#define DSI_DEV_NAME_SIZE		20
+
+/**
+ * struct mipi_dsi_device_info - template for creating a mipi_dsi_device
+ * @type: DSI peripheral chip type
+ * @channel: DSI virtual channel assigned to peripheral
+ * @node: pointer to OF device node or NULL
+ *
+ * This is populated and passed to mipi_dsi_device_new to create a new
+ * DSI device
+ */
+struct mipi_dsi_device_info {
+	char type[DSI_DEV_NAME_SIZE];
+	u32 channel;
+	struct device_node *node;
+};
+
+/**
+ * struct mipi_dsi_device - DSI peripheral device
+ * @host: DSI host for this peripheral
+ * @dev: driver model device node for this peripheral
+ * @attached: the DSI device has been successfully attached
+ * @name: DSI peripheral chip type
+ * @channel: virtual channel assigned to the peripheral
+ * @format: pixel format for video mode
+ * @lanes: number of active data lanes
+ * @mode_flags: DSI operation mode related flags
+ */
+struct mipi_dsi_device {
+	struct mipi_dsi_host *host;
+	struct device dev;
+	bool attached;
+
+	char name[DSI_DEV_NAME_SIZE];
+	unsigned int channel;
+	unsigned int lanes;
+	enum mipi_dsi_pixel_format format;
+	unsigned long mode_flags;
+};
+
+/**
+ * struct mipi_dsi_multi_context - Context to call multiple MIPI DSI funcs in a row
+ */
+struct mipi_dsi_multi_context {
+	/**
+	 * @dsi: Pointer to the MIPI DSI device
+	 */
+	struct mipi_dsi_device *dsi;
+
+	/**
+	 * @accum_err: Storage for the accumulated error over the multiple calls
+	 *
+	 * Init to 0. If a function encounters an error then the error code
+	 * will be stored here. If you call a function and this points to a
+	 * non-zero value then the function will be a noop. This allows calling
+	 * a function many times in a row and just checking the error at the
+	 * end to see if any of them failed.
+	 */
+	int accum_err;
+};
+
+#define to_mipi_dsi_device(__dev)	container_of_const(__dev, struct mipi_dsi_device, dev)
+
+/**
+ * mipi_dsi_pixel_format_to_bpp - obtain the number of bits per pixel for any
+ *                                given pixel format defined by the MIPI DSI
+ *                                specification
+ * @fmt: MIPI DSI pixel format
+ *
+ * Returns: The number of bits per pixel of the given pixel format.
+ */
+static inline int mipi_dsi_pixel_format_to_bpp(enum mipi_dsi_pixel_format fmt)
+{
+	switch (fmt) {
+	case MIPI_DSI_FMT_RGB888:
+	case MIPI_DSI_FMT_RGB666:
+		return 24;
+
+	case MIPI_DSI_FMT_RGB666_PACKED:
+		return 18;
+
+	case MIPI_DSI_FMT_RGB565:
+		return 16;
+	}
+
+	return -EINVAL;
+}
+
+enum mipi_dsi_compression_algo {
+	MIPI_DSI_COMPRESSION_DSC = 0,
+	MIPI_DSI_COMPRESSION_VENDOR = 3,
+	/* other two values are reserved, DSI 1.3 */
+};
+
+struct mipi_dsi_device *
+mipi_dsi_device_register_full(struct mipi_dsi_host *host,
+			      const struct mipi_dsi_device_info *info);
+void mipi_dsi_device_unregister(struct mipi_dsi_device *dsi);
+struct mipi_dsi_device *of_find_mipi_dsi_device_by_node(struct device_node *np);
+
+/**
+ * mipi_dsi_attach - attach a DSI device to its DSI host
+ * @dsi: DSI peripheral
+ */
+int mipi_dsi_attach(struct mipi_dsi_device *dsi);
+
+/**
+ * mipi_dsi_detach - detach a DSI device from its DSI host
+ * @dsi: DSI peripheral
+ */
+int mipi_dsi_detach(struct mipi_dsi_device *dsi);
+int mipi_dsi_shutdown_peripheral(struct mipi_dsi_device *dsi);
+int mipi_dsi_turn_on_peripheral(struct mipi_dsi_device *dsi);
+int mipi_dsi_set_maximum_return_packet_size(struct mipi_dsi_device *dsi,
+					    u16 value);
+
+int mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable);
+int mipi_dsi_compression_mode_ext(struct mipi_dsi_device *dsi, bool enable,
+				  enum mipi_dsi_compression_algo algo,
+				  unsigned int pps_selector);
+
+void mipi_dsi_compression_mode_ext_multi(struct mipi_dsi_multi_context *ctx,
+					 bool enable,
+					 enum mipi_dsi_compression_algo algo,
+					 unsigned int pps_selector);
+void mipi_dsi_compression_mode_multi(struct mipi_dsi_multi_context *ctx,
+				     bool enable);
+
+ssize_t mipi_dsi_generic_write(struct mipi_dsi_device *dsi, const void *payload,
+			       size_t size);
+int mipi_dsi_generic_write_chatty(struct mipi_dsi_device *dsi,
+				  const void *payload, size_t size);
+void mipi_dsi_generic_write_multi(struct mipi_dsi_multi_context *ctx,
+				  const void *payload, size_t size);
+ssize_t mipi_dsi_generic_read(struct mipi_dsi_device *dsi, const void *params,
+			      size_t num_params, void *data, size_t size);
+#define mipi_dsi_mdelay(ctx, delay)	\
+	do {				\
+		if (!(ctx)->accum_err)	\
+			mdelay(delay);	\
+	} while (0)
+
+#define mipi_dsi_udelay_range(ctx, min, max)	\
+	do {					\
+		(void)(max);			\
+		if (!(ctx)->accum_err)		\
+			udelay(min);		\
+	} while (0)
+
+
+
+/**
+ * enum mipi_dsi_dcs_tear_mode - Tearing Effect Output Line mode
+ * @MIPI_DSI_DCS_TEAR_MODE_VBLANK: the TE output line consists of V-Blanking
+ *    information only
+ * @MIPI_DSI_DCS_TEAR_MODE_VHBLANK : the TE output line consists of both
+ *    V-Blanking and H-Blanking information
+ */
+enum mipi_dsi_dcs_tear_mode {
+	MIPI_DSI_DCS_TEAR_MODE_VBLANK,
+	MIPI_DSI_DCS_TEAR_MODE_VHBLANK,
+};
+
+#define MIPI_DSI_DCS_POWER_MODE_DISPLAY BIT(2)
+#define MIPI_DSI_DCS_POWER_MODE_NORMAL  BIT(3)
+#define MIPI_DSI_DCS_POWER_MODE_SLEEP   BIT(4)
+#define MIPI_DSI_DCS_POWER_MODE_PARTIAL BIT(5)
+#define MIPI_DSI_DCS_POWER_MODE_IDLE    BIT(6)
+
+/**
+ * mipi_dsi_dcs_write_buffer() - transmit a DCS command with payload
+ * @dsi: DSI peripheral device
+ * @data: buffer containing data to be transmitted
+ * @len: size of transmission buffer
+ *
+ * This function will automatically choose the right data type depending on
+ * the command payload length.
+ *
+ * Return: The number of bytes successfully transmitted or a negative error
+ * code on failure.
+ */
+ssize_t mipi_dsi_dcs_write_buffer(struct mipi_dsi_device *dsi,
+				  const void *data, size_t len);
+
+int mipi_dsi_dcs_write_buffer_chatty(struct mipi_dsi_device *dsi,
+				     const void *data, size_t len);
+void mipi_dsi_dcs_write_buffer_multi(struct mipi_dsi_multi_context *ctx,
+				     const void *data, size_t len);
+
+/**
+ * mipi_dsi_dcs_write() - send DCS write command
+ * @dsi: DSI peripheral device
+ * @cmd: DCS command
+ * @data: buffer containing the command payload
+ * @len: command payload length
+ *
+ * This function will automatically choose the right data type depending on
+ * the command payload length.
+
+ * code on failure.
+ */
+ssize_t mipi_dsi_dcs_write(struct mipi_dsi_device *dsi, u8 cmd,
+			   const void *data, size_t len);
+
+/**
+ * mipi_dsi_dcs_read() - send DCS read request command
+ * @dsi: DSI peripheral device
+ * @cmd: DCS command
+ * @data: buffer in which to receive data
+ * @len: size of receive buffer
+ *
+ * Return: The number of bytes read or a negative error code on failure.
+ */
+ssize_t mipi_dsi_dcs_read(struct mipi_dsi_device *dsi, u8 cmd, void *data,
+			  size_t len);
+
+/**
+ * mipi_dsi_dcs_nop() - send DCS nop packet
+ * @dsi: DSI peripheral device
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_nop(struct mipi_dsi_device *dsi);
+
+/**
+ * mipi_dsi_dcs_soft_reset() - perform a software reset of the display module
+ * @dsi: DSI peripheral device
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_soft_reset(struct mipi_dsi_device *dsi);
+
+/**
+ * mipi_dsi_dcs_get_power_mode() - query the display module's current power
+ *    mode
+ * @dsi: DSI peripheral device
+ * @mode: return location for the current power mode
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_get_power_mode(struct mipi_dsi_device *dsi, u8 *mode);
+
+/**
+ * mipi_dsi_dcs_get_pixel_format() - gets the pixel format for the RGB image
+ *    data used by the interface
+ * @dsi: DSI peripheral device
+ * @format: return location for the pixel format
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_get_pixel_format(struct mipi_dsi_device *dsi, u8 *format);
+
+/**
+ * mipi_dsi_dcs_enter_sleep_mode() - disable all unnecessary blocks inside the
+ *    display module except interface communication
+ * @dsi: DSI peripheral device
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_enter_sleep_mode(struct mipi_dsi_device *dsi);
+
+/**
+ * mipi_dsi_dcs_exit_sleep_mode() - enable all blocks inside the display
+ *    module
+ * @dsi: DSI peripheral device
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_exit_sleep_mode(struct mipi_dsi_device *dsi);
+
+/**
+ * mipi_dsi_dcs_set_display_off() - stop displaying the image data on the
+ *    display device
+ * @dsi: DSI peripheral device
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_set_display_off(struct mipi_dsi_device *dsi);
+
+/**
+ * mipi_dsi_dcs_set_display_on() - start displaying the image data on the
+ *    display device
+ * @dsi: DSI peripheral device
+ *
+ * Return: 0 on success or a negative error code on failure
+ */
+int mipi_dsi_dcs_set_display_on(struct mipi_dsi_device *dsi);
+
+/**
+ * mipi_dsi_dcs_set_column_address() - define the column extent of the frame
+ *    memory accessed by the host processor
+ * @dsi: DSI peripheral device
+ * @start: first column of frame memory
+ * @end: last column of frame memory
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_set_column_address(struct mipi_dsi_device *dsi, u16 start,
+				    u16 end);
+/**
+ * mipi_dsi_dcs_set_page_address() - define the page extent of the frame
+ *    memory accessed by the host processor
+ * @dsi: DSI peripheral device
+ * @start: first page of frame memory
+ * @end: last page of frame memory
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_set_page_address(struct mipi_dsi_device *dsi, u16 start,
+				  u16 end);
+
+/**
+ * mipi_dsi_dcs_set_tear_off() - turn off the display module's Tearing Effect
+ *    output signal on the TE signal line
+ * @dsi: DSI peripheral device
+ *
+ * Return: 0 on success or a negative error code on failure
+ */
+int mipi_dsi_dcs_set_tear_off(struct mipi_dsi_device *dsi);
+
+/**
+ * mipi_dsi_dcs_set_tear_on() - turn on the display module's Tearing Effect
+ *    output signal on the TE signal line.
+ * @dsi: DSI peripheral device
+ * @mode: the Tearing Effect Output Line mode
+ *
+ * Return: 0 on success or a negative error code on failure
+ */
+int mipi_dsi_dcs_set_tear_on(struct mipi_dsi_device *dsi,
+			     enum mipi_dsi_dcs_tear_mode mode);
+
+/**
+ * mipi_dsi_dcs_set_pixel_format() - sets the pixel format for the RGB image
+ *    data used by the interface
+ * @dsi: DSI peripheral device
+ * @format: pixel format
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_set_pixel_format(struct mipi_dsi_device *dsi, u8 format);
+
+/**
+ * mipi_dsi_dcs_set_tear_scanline() - set the scanline to use as trigger for
+ *    the Tearing Effect output signal of the display module
+ * @dsi: DSI peripheral device
+ * @scanline: scanline to use as trigger
+ *
+ * Return: 0 on success or a negative error code on failure
+ */
+int mipi_dsi_dcs_set_tear_scanline(struct mipi_dsi_device *dsi, u16 scanline);
+
+/**
+ * mipi_dsi_dcs_set_display_brightness() - sets the brightness value of the
+ *    display
+ * @dsi: DSI peripheral device
+ * @brightness: brightness value
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_set_display_brightness(struct mipi_dsi_device *dsi,
+					u16 brightness);
+
+/**
+ * mipi_dsi_dcs_get_display_brightness() - gets the current brightness value
+ *    of the display
+ * @dsi: DSI peripheral device
+ * @brightness: brightness value
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_dcs_get_display_brightness(struct mipi_dsi_device *dsi,
+					u16 *brightness);
+int mipi_dsi_dcs_set_display_brightness_large(struct mipi_dsi_device *dsi,
+					     u16 brightness);
+int mipi_dsi_dcs_get_display_brightness_large(struct mipi_dsi_device *dsi,
+					     u16 *brightness);
+
+void mipi_dsi_dcs_nop_multi(struct mipi_dsi_multi_context *ctx);
+void mipi_dsi_dcs_enter_sleep_mode_multi(struct mipi_dsi_multi_context *ctx);
+void mipi_dsi_dcs_exit_sleep_mode_multi(struct mipi_dsi_multi_context *ctx);
+void mipi_dsi_dcs_set_display_off_multi(struct mipi_dsi_multi_context *ctx);
+void mipi_dsi_dcs_set_display_on_multi(struct mipi_dsi_multi_context *ctx);
+void mipi_dsi_dcs_set_tear_on_multi(struct mipi_dsi_multi_context *ctx,
+				    enum mipi_dsi_dcs_tear_mode mode);
+void mipi_dsi_turn_on_peripheral_multi(struct mipi_dsi_multi_context *ctx);
+void mipi_dsi_dcs_soft_reset_multi(struct mipi_dsi_multi_context *ctx);
+void mipi_dsi_dcs_set_display_brightness_multi(struct mipi_dsi_multi_context *ctx,
+					       u16 brightness);
+void mipi_dsi_dcs_set_pixel_format_multi(struct mipi_dsi_multi_context *ctx,
+					 u8 format);
+void mipi_dsi_dcs_set_column_address_multi(struct mipi_dsi_multi_context *ctx,
+					   u16 start, u16 end);
+void mipi_dsi_dcs_set_page_address_multi(struct mipi_dsi_multi_context *ctx,
+					 u16 start, u16 end);
+void mipi_dsi_dcs_set_tear_scanline_multi(struct mipi_dsi_multi_context *ctx,
+					  u16 scanline);
+void mipi_dsi_dcs_set_tear_off_multi(struct mipi_dsi_multi_context *ctx);
+
+/**
+ * mipi_dsi_generic_write_seq_multi - transmit data using a generic write packet
+ *
+ * This macro will print errors for you and error handling is optimized for
+ * callers that call this multiple times in a row.
+ *
+ * @ctx: Context for multiple DSI transactions
+ * @seq: buffer containing the payload
+ */
+#define mipi_dsi_generic_write_seq_multi(ctx, seq...)                \
+	do {                                                         \
+		static const u8 d[] = { seq };                       \
+		mipi_dsi_generic_write_multi(ctx, d, ARRAY_SIZE(d)); \
+	} while (0)
+
+/**
+ * mipi_dsi_dcs_write_seq_multi - transmit a DCS command with payload
+ *
+ * This macro will print errors for you and error handling is optimized for
+ * callers that call this multiple times in a row.
+ *
+ * @ctx: Context for multiple DSI transactions
+ * @cmd: Command
+ * @seq: buffer containing data to be transmitted
+ */
+#define mipi_dsi_dcs_write_seq_multi(ctx, cmd, seq...)                  \
+	do {                                                            \
+		static const u8 d[] = { cmd, seq };                     \
+		mipi_dsi_dcs_write_buffer_multi(ctx, d, ARRAY_SIZE(d)); \
+	} while (0)
+
+/**
+ * struct mipi_dsi_driver - DSI driver
+ * @driver: device driver model driver
+ * @probe: callback for device binding
+ * @remove: callback for device unbinding
+ */
+struct mipi_dsi_driver {
+	struct device_driver driver;
+	int(*probe)(struct mipi_dsi_device *dsi);
+	void (*remove)(struct mipi_dsi_device *dsi);
+};
+
+static inline struct mipi_dsi_driver *
+to_mipi_dsi_driver(struct device_driver *driver)
+{
+	return container_of(driver, struct mipi_dsi_driver, driver);
+}
+
+static inline void *mipi_dsi_get_drvdata(const struct mipi_dsi_device *dsi)
+{
+	return dev_get_drvdata(&dsi->dev);
+}
+
+static inline void mipi_dsi_set_drvdata(struct mipi_dsi_device *dsi, void *data)
+{
+	dev_set_drvdata(&dsi->dev, data);
+}
+
+int mipi_dsi_driver_register(struct mipi_dsi_driver *driver);
+void mipi_dsi_driver_unregister(struct mipi_dsi_driver *driver);
+
+#define module_mipi_dsi_driver(__mipi_dsi_driver) \
+	module_driver(__mipi_dsi_driver, mipi_dsi_driver_register, \
+			mipi_dsi_driver_unregister)
+
+extern struct bus_type mipi_dsi_bus_type;
+
+#endif /* MIPI_DSI_H */
-- 
2.39.5



