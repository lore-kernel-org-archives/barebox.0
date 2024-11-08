Delivery-date: Fri, 08 Nov 2024 14:16:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9OqH-006KoO-0R
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 14:16:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9OqD-0003wS-UH
	for lore@pengutronix.de; Fri, 08 Nov 2024 14:16:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OQRoHFFXjqcyJCKWfmZD/bGnylhPOaTzblWpKeqZa2Q=; b=N9mIYEdYJWRTVEbndX7MLwijEv
	15za8TPq3CUjdUglucGSsV40zNMhR9kfmm3Zur+CsiyP7aA8yokO+/Hn5m0waIbIPnKNN4h9u9LFq
	z5dXT6zL/HInD83pz76ml9UzReroyRyNaEul1ED96+4q//nqFcXsluinisNhiFeoTpwFiDGTbqfth
	Gi8s+kEUZcvq6qTaHqLbfyNG/Rg7vYEL05LAtmbjS9mxFA1o6ZgN0JfLPCII+af+otZmaW5PEiehs
	AR60qKuuPW/28P+IuPVSCBLNz9d5aYpiuoXHoDQkzAtZCUfnhY+C+JxHrEGzRbVwJbBRUoZNvt85w
	Uy/gdPvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Opb-0000000Adqe-0IoQ;
	Fri, 08 Nov 2024 13:15:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9OpS-0000000AdjF-1VvM
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 13:15:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpJ-0003X6-5r; Fri, 08 Nov 2024 14:15:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-002cw3-2t;
	Fri, 08 Nov 2024 14:15:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-00AFXY-2c;
	Fri, 08 Nov 2024 14:15:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 08 Nov 2024 14:15:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241108-network-k3-v1-4-ee71bff15eb7@pengutronix.de>
References: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
In-Reply-To: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731071700; l=12306;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=5BTUXaQNycMzmGzV4vEFLIuagLY17PwBht7NnToCN04=;
 b=wgjzUqiNgt+NEes2nhAW+W1LCKbvcXcyI0r2rOd6I4FyIRao6DHYssciu8jNPOndCdN54WRUG
 9k7VkG5JrCYB1T6kEOmlcn41s5iEgjMUjbO7t7TJFUTrZuDU02LTmzx
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_051510_937959_85C0D041 
X-CRM114-Status: GOOD (  28.09  )
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
Subject: [PATCH 4/7] dma: add dma-devices support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for dma-devices (on Linux aka dmaengines) to barebox.
The code is based on U-Boot-2025.01-rc1.

The code consists of a shim wrapper layer around a struct dma_ops and
helper functions to retrieve the suitable dma_ops instance from the
devices tree based on standard dma properties.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/Kconfig       |  10 +++
 drivers/dma/Makefile      |   1 +
 drivers/dma/dma-devices.c | 210 ++++++++++++++++++++++++++++++++++++++++++++++
 include/dma-devices.h     | 172 +++++++++++++++++++++++++++++++++++++
 4 files changed, 393 insertions(+)

diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index e7516466d9..0f55b0a895 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -1,6 +1,16 @@
 # SPDX-License-Identifier: GPL-2.0-only
 menu "DMA support"
 
+config DMADEVICES
+	bool "DMA device support"
+	help
+	  Add support for DMA devices. DMA devices can do asynchronous data
+	  transfers without involving the host CPU.
+
+if DMADEVICES
+comment "DMA Devices"
+endif
+
 config MXS_APBH_DMA
 	tristate "MXS APBH DMA ENGINE"
 	depends on ARCH_IMX23 || ARCH_IMX28 || ARCH_IMX6 || ARCH_IMX7
diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index 77bd8abba5..28dcf98b4f 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_DMADEVICES)	+= dma-devices.o
 obj-$(CONFIG_HAS_DMA)		+= map.o
 obj-$(CONFIG_DMA_API_DEBUG)	+= debug.o
 obj-$(CONFIG_MXS_APBH_DMA)	+= apbh_dma.o
diff --git a/drivers/dma/dma-devices.c b/drivers/dma/dma-devices.c
new file mode 100644
index 0000000000..a8b8086d5f
--- /dev/null
+++ b/drivers/dma/dma-devices.c
@@ -0,0 +1,210 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Direct Memory Access U-Class driver
+ *
+ * Copyright (C) 2018 Álvaro Fernández Rojas <noltari@gmail.com>
+ * Copyright (C) 2015 - 2018 Texas Instruments Incorporated <www.ti.com>
+ * Written by Mugunthan V N <mugunthanvnm@ti.com>
+ *
+ * Author: Mugunthan V N <mugunthanvnm@ti.com>
+ */
+
+#include <driver.h>
+#include <dma.h>
+#include <dma-devices.h>
+
+static LIST_HEAD(dma_devices);
+
+static int dma_of_xlate_default(struct dma *dma,
+				struct of_phandle_args *args)
+{
+	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
+
+	if (args->args_count > 1) {
+		pr_err("Invalid args_count: %d\n", args->args_count);
+		return -EINVAL;
+	}
+
+	if (args->args_count)
+		dma->id = args->args[0];
+	else
+		dma->id = 0;
+
+	return 0;
+}
+
+static int dma_request(struct device *dev, struct dma *dma)
+{
+	const struct dma_ops *ops = dma->dmad->ops;
+
+	dev_dbg(dma->dev, "%s(dev=%p, dma=%p)\n", __func__, dev, dma);
+
+	if (!ops->request)
+		return 0;
+
+	return ops->request(dma);
+}
+
+static struct dma_device *dma_find_by_node(struct device_node *np)
+{
+	struct dma_device *dmad;
+
+	list_for_each_entry(dmad, &dma_devices, list) {
+		if (dmad->dev->of_node == np)
+			return dmad;
+	}
+
+	return NULL;
+}
+
+struct dma *dma_get_by_index(struct device *dev, int index)
+{
+	int ret;
+	struct of_phandle_args args;
+	const struct dma_ops *ops;
+	struct dma *dma;
+	struct dma_device *dmad;
+
+	dev_dbg(dev, "%s index=%d)\n", __func__, index);
+
+	ret = of_parse_phandle_with_args(dev->of_node, "dmas", "#dma-cells", index,
+					 &args);
+	if (ret) {
+		dev_err(dev, "%s: dev_read_phandle_with_args failed: %pe\n",
+		       __func__, ERR_PTR(ret));
+		return ERR_PTR(ret);
+	}
+
+	dmad = dma_find_by_node(args.np);
+	if (!dmad)
+		return ERR_PTR(-ENODEV);
+
+	dma = xzalloc(sizeof(*dma));
+
+	dma->dmad = dmad;
+	dma->dev = dmad->dev;
+
+	ops = dmad->ops;
+
+	if (ops->of_xlate)
+		ret = ops->of_xlate(dma, &args);
+	else
+		ret = dma_of_xlate_default(dma, &args);
+	if (ret) {
+		dev_err(dma->dev, "of_xlate() failed: %pe\n", ERR_PTR(ret));
+		return ERR_PTR(ret);
+	}
+
+	ret = dma_request(dmad->dev, dma);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return dma;
+}
+
+struct dma *dma_get_by_name(struct device *dev, const char *name)
+{
+	int index;
+
+	dev_dbg(dev, "%s(dev=%p, name=%s)\n", __func__, dev, name);
+
+	index = of_property_match_string(dev->of_node, "dma-names", name);
+	if (index < 0) {
+		dev_err(dev, "dev_read_stringlist_search() failed: %pe\n",
+			ERR_PTR(index));
+		return ERR_PTR(index);
+	}
+
+	return dma_get_by_index(dev, index);
+}
+
+int dma_release(struct dma *dma)
+{
+	const struct dma_ops *ops = dma->dmad->ops;
+
+	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
+
+	if (!ops->rfree)
+		return 0;
+
+	return ops->rfree(dma);
+}
+
+int dma_enable(struct dma *dma)
+{
+	const struct dma_ops *ops = dma->dmad->ops;
+
+	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
+
+	if (!ops->enable)
+		return -ENOSYS;
+
+	return ops->enable(dma);
+}
+
+int dma_disable(struct dma *dma)
+{
+	const struct dma_ops *ops = dma->dmad->ops;
+
+	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
+
+	if (!ops->disable)
+		return -ENOSYS;
+
+	return ops->disable(dma);
+}
+
+int dma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size)
+{
+	const struct dma_ops *ops = dma->dmad->ops;
+
+	dev_vdbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
+
+	if (!ops->prepare_rcv_buf)
+		return -1;
+
+	return ops->prepare_rcv_buf(dma, dst, size);
+}
+
+int dma_receive(struct dma *dma, dma_addr_t *dst, void *metadata)
+{
+	const struct dma_ops *ops = dma->dmad->ops;
+
+	dev_vdbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
+
+	if (!ops->receive)
+		return -ENOSYS;
+
+	return ops->receive(dma, dst, metadata);
+}
+
+int dma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata)
+{
+	const struct dma_ops *ops = dma->dmad->ops;
+
+	dev_vdbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
+
+	if (!ops->send)
+		return -ENOSYS;
+
+	return ops->send(dma, src, len, metadata);
+}
+
+int dma_get_cfg(struct dma *dma, u32 cfg_id, void **cfg_data)
+{
+	const struct dma_ops *ops = dma->dmad->ops;
+
+	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
+
+	if (!ops->get_cfg)
+		return -ENOSYS;
+
+	return ops->get_cfg(dma, cfg_id, cfg_data);
+}
+
+int dma_device_register(struct dma_device *dmad)
+{
+	list_add_tail(&dmad->list, &dma_devices);
+
+	return 0;
+}
diff --git a/include/dma-devices.h b/include/dma-devices.h
new file mode 100644
index 0000000000..dbc6759496
--- /dev/null
+++ b/include/dma-devices.h
@@ -0,0 +1,172 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef __DMA_DEVICES_H
+#define __DMA_DEVICES_H
+
+/**
+ * enum dma_transfer_direction - dma transfer mode and direction indicator
+ * @DMA_MEM_TO_MEM: Async/Memcpy mode
+ * @DMA_MEM_TO_DEV: Slave mode & From Memory to Device
+ * @DMA_DEV_TO_MEM: Slave mode & From Device to Memory
+ * @DMA_DEV_TO_DEV: Slave mode & From Device to Device
+ */
+enum dma_transfer_direction {
+	DMA_MEM_TO_MEM,
+	DMA_MEM_TO_DEV,
+	DMA_DEV_TO_MEM,
+	DMA_DEV_TO_DEV,
+	DMA_TRANS_NONE,
+};
+
+struct dma_device;
+
+struct dma {
+	struct device *dev;
+	/*
+	 * Written by of_xlate. We assume a single id is enough for now. In the
+	 * future, we might add more fields here.
+	 */
+	unsigned long id;
+
+	struct dma_device *dmad;
+};
+
+struct of_phandle_args;
+
+/*
+ * struct dma_ops - Driver model DMA operations
+ *
+ * The uclass interface is implemented by all DMA devices which use
+ * driver model.
+ */
+struct dma_ops {
+	/**
+	 * of_xlate - Translate a client's device-tree (OF) DMA specifier.
+	 *
+	 * The DMA core calls this function as the first step in implementing
+	 * a client's dma_get_by_*() call.
+	 *
+	 * If this function pointer is set to NULL, the DMA core will use a
+	 * default implementation, which assumes #dma-cells = <1>, and that
+	 * the DT cell contains a simple integer DMA Channel.
+	 *
+	 * At present, the DMA API solely supports device-tree. If this
+	 * changes, other xxx_xlate() functions may be added to support those
+	 * other mechanisms.
+	 *
+	 * @dma: The dma struct to hold the translation result.
+	 * @args:	The dma specifier values from device tree.
+	 * @return 0 if OK, or a negative error code.
+	 */
+	int (*of_xlate)(struct dma *dma,
+			struct of_phandle_args *args);
+	/**
+	 * request - Request a translated DMA.
+	 *
+	 * The DMA core calls this function as the second step in
+	 * implementing a client's dma_get_by_*() call, following a successful
+	 * xxx_xlate() call, or as the only step in implementing a client's
+	 * dma_request() call.
+	 *
+	 * @dma: The DMA struct to request; this has been filled in by
+	 *   a previoux xxx_xlate() function call, or by the caller of
+	 *   dma_request().
+	 * @return 0 if OK, or a negative error code.
+	 */
+	int (*request)(struct dma *dma);
+	/**
+	 * rfree - Free a previously requested dma.
+	 *
+	 * This is the implementation of the client dma_free() API.
+	 *
+	 * @dma: The DMA to free.
+	 * @return 0 if OK, or a negative error code.
+	 */
+	int (*rfree)(struct dma *dma);
+	/**
+	 * enable() - Enable a DMA Channel.
+	 *
+	 * @dma: The DMA Channel to manipulate.
+	 * @return zero on success, or -ve error code.
+	 */
+	int (*enable)(struct dma *dma);
+	/**
+	 * disable() - Disable a DMA Channel.
+	 *
+	 * @dma: The DMA Channel to manipulate.
+	 * @return zero on success, or -ve error code.
+	 */
+	int (*disable)(struct dma *dma);
+	/**
+	 * prepare_rcv_buf() - Prepare/Add receive DMA buffer.
+	 *
+	 * @dma: The DMA Channel to manipulate.
+	 * @dst: The receive buffer pointer.
+	 * @size: The receive buffer size
+	 * @return zero on success, or -ve error code.
+	 */
+	int (*prepare_rcv_buf)(struct dma *dma, dma_addr_t dst, size_t size);
+	/**
+	 * receive() - Receive a DMA transfer.
+	 *
+	 * @dma: The DMA Channel to manipulate.
+	 * @dst: The destination pointer.
+	 * @metadata: DMA driver's specific data
+	 * @return zero on success, or -ve error code.
+	 */
+	int (*receive)(struct dma *dma, dma_addr_t *dst, void *metadata);
+	/**
+	 * send() - Send a DMA transfer.
+	 *
+	 * @dma: The DMA Channel to manipulate.
+	 * @src: The source pointer.
+	 * @len: Length of the data to be sent (number of bytes).
+	 * @metadata: DMA driver's specific data
+	 * @return zero on success, or -ve error code.
+	 */
+	int (*send)(struct dma *dma, dma_addr_t src, size_t len, void *metadata);
+	/**
+	 * get_cfg() - Get DMA channel configuration for client's use
+	 *
+	 * @dma:    The DMA Channel to manipulate
+	 * @cfg_id: DMA provider specific ID to identify what
+	 *          configuration data client needs
+	 * @data:   Pointer to store pointer to DMA driver specific
+	 *          configuration data for the given cfg_id (output param)
+	 * @return zero on success, or -ve error code.
+	 */
+	int (*get_cfg)(struct dma *dma, u32 cfg_id, void **data);
+	/**
+	 * transfer() - Issue a DMA transfer. The implementation must
+	 *   wait until the transfer is done.
+	 *
+	 * @dev: The DMA device
+	 * @direction: direction of data transfer (should be one from
+	 *   enum dma_direction)
+	 * @dst: The destination pointer.
+	 * @src: The source pointer.
+	 * @len: Length of the data to be copied (number of bytes).
+	 * @return zero on success, or -ve error code.
+	 */
+	int (*transfer)(struct device *dev, int direction, dma_addr_t dst,
+			dma_addr_t src, size_t len);
+};
+
+struct dma_device {
+	struct device *dev;
+	const struct dma_ops *ops;
+	struct list_head list;
+};
+
+int dma_device_register(struct dma_device *dmad);
+
+struct dma *dma_get_by_index(struct device *dev, int index);
+struct dma *dma_get_by_name(struct device *dev, const char *name);
+int dma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size);
+int dma_enable(struct dma *dma);
+int dma_disable(struct dma *dma);
+int dma_get_cfg(struct dma *dma, u32 cfg_id, void **cfg_data);
+int dma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata);
+int dma_receive(struct dma *dma, dma_addr_t *dst, void *metadata);
+int dma_release(struct dma *dma);
+
+#endif /* __DMA_DEVICES_H */

-- 
2.39.5



