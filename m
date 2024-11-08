Delivery-date: Fri, 08 Nov 2024 14:16:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9OqJ-006Kok-0G
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 14:16:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9OqG-0003xO-9H
	for lore@pengutronix.de; Fri, 08 Nov 2024 14:16:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wE9Es3nrf46wHDgvLeISRDPvpLfovzRb/SHKzebYRvU=; b=B3cIzGW0iiifi/iefjhUMv3sKs
	6Ts1q4owQmYtY0D7sdszBPEDcBGbiAOu8ZTJC57yJTGcl8DVL8RsQW7cSHm3UmSIFvf+aiDqHKRz1
	OVptP26pePLV5svJA7avmuNog6NzkKGLBv6zcD231zMOu7fIo8h3fdlP+sX28pSFIXkAoSE4BC32E
	1CK0GC6thgxvoAoUlJMigbLaq2x4OuCcKSnO1FmW775RQXDxFzt5gFuvxEySiuzENa8j1BGJ1Q9GB
	wgM4kqHMN/ul/dXRbhIaDgGil3Wn5AOkbkZFxgu6nvC+brN6FW8KuYU+UbM8RoiFTtfTlAH3/0BRH
	w9JdEVYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Opc-0000000AdrW-2BPl;
	Fri, 08 Nov 2024 13:15:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9OpS-0000000AdjN-2FCu
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 13:15:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpJ-0003XC-98; Fri, 08 Nov 2024 14:15:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-002cw1-2x;
	Fri, 08 Nov 2024 14:15:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-00AFXY-2a;
	Fri, 08 Nov 2024 14:15:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 08 Nov 2024 14:15:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241108-network-k3-v1-2-ee71bff15eb7@pengutronix.de>
References: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
In-Reply-To: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731071700; l=13810;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ZWLy+CefPZha7u51rYKZqMmyhFVkfnNYGuDpRYvP1KM=;
 b=G/5pUaA0nZTpIZvUgfvjin/qe6I1mXz5X28HelrU2OZ24kUkaWN38gtwRfu82NTrQnYwXZFU1
 06W7sRNs/zGCJikryPWwX5/eoLEwK1gi9zPdt9XyxiYyc/ch7A8wgr9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_051511_076421_E626F4AC 
X-CRM114-Status: GOOD (  29.06  )
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
Subject: [PATCH 2/7] firmware: ti_sci: update from U-Boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This imports some U-Boot changes into the ti_sci driver. For upcoming
k3-udma driver we'll need ti_sci_get_by_phandle() and
devm_ti_sci_get_of_resource().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/firmware/ti_sci.c        | 276 ++++++++++++++++++++++++++++++++-------
 drivers/firmware/ti_sci.h        |   2 +-
 include/soc/ti/ti_sci_protocol.h |  38 +++++-
 3 files changed, 264 insertions(+), 52 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index c81e8aa1e7..9047f84434 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -3,18 +3,22 @@
  * Texas Instruments System Control Interface Protocol Driver
  * Based on drivers/firmware/ti_sci.c from Linux.
  *
- * Copyright (C) 2018 Texas Instruments Incorporated - http://www.ti.com/
+ * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com/
  *	Lokesh Vutla <lokeshvutla@ti.com>
  */
 
-#include <common.h>
 #include <mailbox.h>
-#include <restart.h>
+#include <driver.h>
 #include <soc/ti/k3-sec-proxy.h>
 #include <soc/ti/ti_sci_protocol.h>
+#include <linux/slab.h>
+#include <linux/device.h>
 
 #include "ti_sci.h"
 
+/* List of all TI SCI devices active in system */
+static LIST_HEAD(ti_sci_list);
+
 /**
  * struct ti_sci_xfer - Structure representing a message flow
  * @tx_message:	Transmit message
@@ -126,7 +130,6 @@ static struct ti_sci_xfer *ti_sci_setup_one_xfer(struct ti_sci_info *info,
 		return ERR_PTR(-ERANGE);
 	}
 
-
 	info->seq = ~info->seq;
 	xfer->tx_message.buf = buf;
 	xfer->tx_message.len = tx_message_size;
@@ -223,21 +226,27 @@ static int ti_sci_do_xfer(struct ti_sci_info *info,
 {
 	struct k3_sec_proxy_msg *msg = &xfer->tx_message;
 	u8 secure_buf[info->desc->max_msg_size];
-	struct ti_sci_secure_msg_hdr secure_hdr;
+	struct ti_sci_secure_msg_hdr *secure_hdr = (struct ti_sci_secure_msg_hdr *)secure_buf;
 	int ret;
 
+	/*
+	 * The reason why we need the is_secure code is because of boot R5.
+	 * boot R5 starts off in "secure mode" when it hands off from Boot
+	 * ROM over to the Secondary bootloader. The initial set of calls
+	 * we have to make need to be on a secure pipe.
+	 */
 	if (info->is_secure) {
 		/* ToDo: get checksum of the entire message */
-		secure_hdr.checksum = 0;
-		secure_hdr.reserved = 0;
-		memcpy(&secure_buf[sizeof(secure_hdr)], xfer->tx_message.buf,
+		secure_hdr->checksum = 0;
+		secure_hdr->reserved = 0;
+		memcpy(&secure_buf[sizeof(*secure_hdr)], xfer->tx_message.buf,
 		       xfer->tx_message.len);
 
 		xfer->tx_message.buf = (u32 *)secure_buf;
-		xfer->tx_message.len += sizeof(secure_hdr);
+		xfer->tx_message.len += sizeof(*secure_hdr);
 
 		if (xfer->rx_len)
-			xfer->rx_len += sizeof(secure_hdr);
+			xfer->rx_len += sizeof(*secure_hdr);
 	}
 
 	/* Send the message */
@@ -2558,13 +2567,6 @@ static int ti_sci_cmd_change_fwl_owner(const struct ti_sci_handle *handle,
 	return ret;
 }
 
-static struct ti_sci_handle *g_handle;
-
-const struct ti_sci_handle *ti_sci_get_handle(struct device *dev)
-{
-	return g_handle;
-}
-
 /*
  * ti_sci_setup_ops() - Setup the operations structures
  * @info:	pointer to TISCI pointer
@@ -2648,57 +2650,231 @@ static void ti_sci_setup_ops(struct ti_sci_info *info)
 	fwl_ops->change_fwl_owner = ti_sci_cmd_change_fwl_owner;
 }
 
-static void ti_sci_reset(struct restart_handler *unused)
+/**
+ * ti_sci_get_handle_from_sysfw() - Get the TI SCI handle of the SYSFW
+ * @dev:	Pointer to the SYSFW device
+ *
+ * Return: pointer to handle if successful, else EINVAL if invalid conditions
+ *         are encountered.
+ */
+const
+struct ti_sci_handle *ti_sci_get_handle_from_sysfw(struct device *sci_dev)
 {
-	ti_sci_cmd_core_reboot(g_handle);
+	struct ti_sci_info *info;
+	int ret;
+
+	if (!sci_dev)
+		return ERR_PTR(-EINVAL);
+
+	info = dev_get_priv(sci_dev);
+	if (!info)
+		return ERR_PTR(-EINVAL);
+
+	ret = ti_sci_cmd_get_revision(&info->handle);
+	if (ret)
+		return ERR_PTR(-EINVAL);
+
+	return &info->handle;
 }
 
-static int ti_sci_probe(struct device *dev)
+/**
+ * ti_sci_get_handle() - Get the TI SCI handle for a device
+ * @dev:	Pointer to device for which we want SCI handle
+ *
+ * Return: pointer to handle if successful, else EINVAL if invalid conditions
+ *         are encountered.
+ */
+const struct ti_sci_handle *ti_sci_get_handle(struct device *dev)
 {
-	struct ti_sci_info *info;
-	const void *data;
-	int ret;
+	struct device *sci_dev;
 
-	if (g_handle)
-		return 0;
+	if (!dev)
+		return ERR_PTR(-EINVAL);
 
-	ret = dev_get_drvdata(dev, &data);
-        if (ret)
-                return ret;
+	sci_dev = dev->parent;
 
-	info = xzalloc(sizeof(*info));
+	return ti_sci_get_handle_from_sysfw(sci_dev);
+}
 
-	info->chan_rx = mbox_request_channel_byname(dev, "rx");
-	if (IS_ERR(info->chan_rx))
-		return PTR_ERR(info->chan_rx);
+/**
+ * ti_sci_get_by_phandle() - Get the TI SCI handle using DT phandle
+ * @dev:	device node
+ * @propname:	property name containing phandle on TISCI node
+ *
+ * Return: pointer to handle if successful, else appropriate error value.
+ */
+const struct ti_sci_handle *ti_sci_get_by_phandle(struct device *dev,
+						  const char *property)
+{
+	struct ti_sci_info *entry, *info = NULL;
+	struct device_node *np;
+
+	np = of_parse_phandle(dev->of_node, property, 0);
+	if (!np)
+		return ERR_PTR(-EINVAL);
+
+	of_device_ensure_probed(np);
+
+	list_for_each_entry(entry, &ti_sci_list, list)
+		if (dev_of_node(entry->dev) == np) {
+			info = entry;
+			break;
+		}
 
+	if (!info)
+		return ERR_PTR(-ENODEV);
+
+	return &info->handle;
+}
+
+/**
+ * ti_sci_of_to_info() - generate private data from device tree
+ * @dev:	corresponding system controller interface device
+ * @info:	pointer to driver specific private data
+ *
+ * Return: 0 if all goes good, else appropriate error message.
+ */
+static int ti_sci_of_to_info(struct device *dev, struct ti_sci_info *info)
+{
 	info->chan_tx = mbox_request_channel_byname(dev, "tx");
-	if (IS_ERR(info->chan_tx))
+	if (IS_ERR(info->chan_tx)) {
+		dev_err(dev, "%s: Acquiring Tx channel failed: %pe\n",
+			__func__, info->chan_tx);
 		return PTR_ERR(info->chan_tx);
+	}
+
+	info->chan_rx = mbox_request_channel_byname(dev, "rx");
+	if (IS_ERR(info->chan_rx)) {
+		dev_err(dev, "%s: Acquiring Rx channel failed: %pe\n",
+			__func__, info->chan_rx);
+		return PTR_ERR(info->chan_rx);
+	}
+
+	/* Notify channel is optional. Enable only if populated */
+	info->chan_notify = mbox_request_channel_byname(dev, "notify");
+	if (IS_ERR(info->chan_notify)) {
+		dev_dbg(dev, "%s: Acquiring notify channel failed: %pe\n",
+			__func__, info->chan_notify);
+	}
 
-	info->desc = data;
 	info->host_id = info->desc->default_host_id;
 	of_property_read_u32(dev->of_node, "ti,host-id", &info->host_id);
 
-        info->is_secure = of_property_read_bool(dev->of_node, "ti,secure-host");
+	info->is_secure = of_property_read_bool(dev->of_node, "ti,secure-host");
+
+	return 0;
+}
+
+/**
+ * ti_sci_probe() - Basic probe
+ * @dev:	corresponding system controller interface device
+ *
+ * Return: 0 if all goes good, else appropriate error message.
+ */
+static int ti_sci_probe(struct device *dev)
+{
+	struct ti_sci_info *info;
+	int ret;
+
+	info = xzalloc(sizeof(*info));
+	info->desc = device_get_match_data(dev);
+
+	ret = ti_sci_of_to_info(dev, info);
+	if (ret) {
+		dev_err(dev, "%s: Probe failed with error %d\n", __func__, ret);
+		return ret;
+	}
 
+	dev->priv = info;
 	info->dev = dev;
-	info->seq = 0xA;
-	INIT_LIST_HEAD(&info->dev_list);
+	info->seq = 0xa;
 
+	list_add_tail(&info->list, &ti_sci_list);
 	ti_sci_setup_ops(info);
 
-	ret = ti_sci_cmd_get_revision(&info->handle);
+	INIT_LIST_HEAD(&info->dev_list);
+
+	return 0;
+}
+
+/**
+ * devm_ti_sci_get_of_resource() - Get a TISCI resource assigned to a device
+ * @handle:	TISCI handle
+ * @dev:	Device pointer to which the resource is assigned
+ * @of_prop:	property name by which the resource are represented
+ *
+ * Note: This function expects of_prop to be in the form of tuples
+ *	<type, subtype>. Allocates and initializes ti_sci_resource structure
+ *	for each of_prop. Client driver can directly call
+ *	ti_sci_(get_free, release)_resource apis for handling the resource.
+ *
+ * Return: Pointer to ti_sci_resource if all went well else appropriate
+ *	   error pointer.
+ */
+struct ti_sci_resource *
+devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
+			    struct device *dev, u32 dev_id, char *of_prop)
+{
+	u32 resource_subtype;
+	struct ti_sci_resource *res;
+	bool valid_set = false;
+	int sets, i, ret;
+	u32 *temp;
+	const void *pp;
+
+	res = devm_kzalloc(dev, sizeof(*res), GFP_KERNEL);
+	if (!res)
+		return ERR_PTR(-ENOMEM);
+
+	pp = of_get_property(dev->of_node, of_prop, &sets);
+	if (!pp) {
+		dev_err(dev, "%s resource type ids not available\n", of_prop);
+		return ERR_PTR(sets);
+	}
+	temp = malloc(sets);
+	sets /= sizeof(u32);
+	res->sets = sets;
+
+	res->desc = devm_kcalloc(dev, res->sets, sizeof(*res->desc),
+				 GFP_KERNEL);
+	if (!res->desc)
+		return ERR_PTR(-ENOMEM);
+
+	ret = of_property_read_u32_array(dev->of_node, of_prop, temp, res->sets);
 	if (ret)
-		return ret;
+		return ERR_PTR(-EINVAL);
+
+	for (i = 0; i < res->sets; i++) {
+		resource_subtype = temp[i];
+		ret = handle->ops.rm_core_ops.get_range(handle, dev_id,
+							resource_subtype,
+							&res->desc[i].start,
+							&res->desc[i].num);
+		if (ret) {
+			dev_dbg(dev, "type %d subtype %d not allocated for host %d\n",
+				dev_id, resource_subtype,
+				handle_to_ti_sci_info(handle)->host_id);
+			res->desc[i].start = 0;
+			res->desc[i].num = 0;
+			continue;
+		}
 
-	g_handle = &info->handle;
+		valid_set = true;
+		dev_dbg(dev, "res type = %d, subtype = %d, start = %d, num = %d\n",
+			dev_id, resource_subtype, res->desc[i].start,
+			res->desc[i].num);
 
-	of_platform_populate(dev->of_node, NULL, NULL);
+		res->desc[i].res_map =
+			devm_kzalloc(dev, BITS_TO_LONGS(res->desc[i].num) *
+				     sizeof(*res->desc[i].res_map), GFP_KERNEL);
+		if (!res->desc[i].res_map)
+			return ERR_PTR(-ENOMEM);
+	}
 
-	restart_handler_register_fn("ti-sci", ti_sci_reset);
+	if (valid_set)
+		return res;
 
-	return 0;
+	return ERR_PTR(-EINVAL);
 }
 
 /* Description for K2G */
@@ -2721,7 +2897,7 @@ static const struct ti_sci_desc ti_sci_pmmc_am654_desc = {
 	.max_msg_size = 60,
 };
 
-static const struct of_device_id ti_sci_of_match[] = {
+static const struct of_device_id of_ti_sci_ids[] = {
 	{
 		.compatible = "ti,k2g-sci",
 		.data = &ti_sci_pmmc_k2g_desc
@@ -2729,14 +2905,14 @@ static const struct of_device_id ti_sci_of_match[] = {
 		.compatible = "ti,am654-sci",
 		.data = &ti_sci_pmmc_am654_desc
 	}, {
-		/* sentinel */
-	}
+		/* Sentinel */
+	},
 };
-MODULE_DEVICE_TABLE(of, ti_sci_of_match);
 
 static struct driver ti_sci_driver = {
-        .name   = "ti-sci",
-        .probe  = ti_sci_probe,
-        .of_compatible = DRV_OF_COMPAT(ti_sci_of_match),
+	.probe  = ti_sci_probe,
+	.name   = "ti_sci",
+	.of_compatible = of_ti_sci_ids,
 };
+
 core_platform_driver(ti_sci_driver);
diff --git a/drivers/firmware/ti_sci.h b/drivers/firmware/ti_sci.h
index 101210eb21..bb8bc7beea 100644
--- a/drivers/firmware/ti_sci.h
+++ b/drivers/firmware/ti_sci.h
@@ -6,7 +6,7 @@
  * The system works in a message response protocol
  * See: http://processors.wiki.ti.com/index.php/TISCI for details
  *
- * Copyright (C)  2018 Texas Instruments Incorporated - http://www.ti.com/
+ * Copyright (C)  2018 Texas Instruments Incorporated - https://www.ti.com/
  * Based on drivers/firmware/ti_sci.h from Linux.
  *
  */
diff --git a/include/soc/ti/ti_sci_protocol.h b/include/soc/ti/ti_sci_protocol.h
index ec69f07b8e..f41ed82b91 100644
--- a/include/soc/ti/ti_sci_protocol.h
+++ b/include/soc/ti/ti_sci_protocol.h
@@ -3,7 +3,7 @@
  * Texas Instruments System Control Interface Protocol
  * Based on include/linux/soc/ti/ti_sci_protocol.h from Linux.
  *
- * Copyright (C) 2018 Texas Instruments Incorporated - http://www.ti.com/
+ * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com/
  *	Nishanth Menon
  *	Lokesh Vutla <lokeshvutla@ti.com>
  */
@@ -652,6 +652,42 @@ struct ti_sci_resource {
 	struct ti_sci_resource_desc *desc;
 };
 
+#if IS_ENABLED(CONFIG_TI_SCI_PROTOCOL)
+
+const struct ti_sci_handle *ti_sci_get_handle_from_sysfw(struct device *dev);
 const struct ti_sci_handle *ti_sci_get_handle(struct device *dev);
+const struct ti_sci_handle *ti_sci_get_by_phandle(struct device *dev,
+						  const char *property);
+struct ti_sci_resource *
+devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
+			    struct device *dev, u32 dev_id, char *of_prop);
+#else	/* CONFIG_TI_SCI_PROTOCOL */
+
+static inline
+const struct ti_sci_handle *ti_sci_get_handle_from_sysfw(struct device *dev)
+{
+	return ERR_PTR(-EINVAL);
+}
+
+static inline const struct ti_sci_handle *ti_sci_get_handle(struct device *dev)
+{
+	return ERR_PTR(-EINVAL);
+}
+
+static inline
+const struct ti_sci_handle *ti_sci_get_by_phandle(struct device *dev,
+						  const char *property)
+{
+	return ERR_PTR(-EINVAL);
+}
+
+static inline struct ti_sci_resource *
+devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
+			    struct device *dev, u32 dev_id, char *of_prop)
+{
+	return ERR_PTR(-EINVAL);
+}
+
+#endif	/* CONFIG_TI_SCI_PROTOCOL */
 
 #endif	/* __TISCI_PROTOCOL_H */

-- 
2.39.5



