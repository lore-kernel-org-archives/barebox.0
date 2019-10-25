Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr00059.outbound.protection.outlook.com ([40.107.0.59]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNz8A-0000Mm-43
 for barebox@lists.infradead.org; Fri, 25 Oct 2019 12:55:52 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Fri, 25 Oct 2019 12:55:42 +0000
Message-ID: <1572008129-24020-4-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
 <1572008129-24020-1-git-send-email-thomas.haemmerle@wolfvision.net>
In-Reply-To: <1572008129-24020-1-git-send-email-thomas.haemmerle@wolfvision.net>
Content-Language: en-US
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
Subject: [PATCH v2 3/4] firmware: zynqmp-fpga: introduce driver to load
 bitstream to FPGA
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

The driver provides functionalities to check and load a bitstream to FPGA.
A boolean parameter to check if FPGA is already programmed is
added.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
---
 arch/arm/configs/zynqmp_defconfig |   1 +
 drivers/firmware/Kconfig          |   7 +
 drivers/firmware/Makefile         |   1 +
 drivers/firmware/zynqmp-fpga.c    | 359 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 368 insertions(+)
 create mode 100644 drivers/firmware/zynqmp-fpga.c

diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index 4dea964..834212e 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -35,4 +35,5 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_DRIVER_SERIAL_CADENCE=y
 # CONFIG_SPI is not set
+CONFIG_FIRMWARE_ZYNQMP_PL=y
 CONFIG_DIGEST=y
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 710b500..90b4c0a 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -14,4 +14,11 @@ config FIRMWARE_ALTERA_SOCFPGA
 	bool "Altera SoCFPGA fpga loader"
 	depends on ARCH_SOCFPGA
 	select FIRMWARE
+
+config FIRMWARE_ZYNQMP_FPGA
+	bool "Xilinx ZynqMP FPGA loader"
+	depends on ARCH_ZYNQMP
+	select FIRMWARE
+	help
+	  Load a bitstream to the PL of Zynq Ultrascale+
 endmenu
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index c3a3c34..b162b08 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
 obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o
+obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynqmp-fpga.o
diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
new file mode 100644
index 0000000..47862a7
--- /dev/null
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -0,0 +1,359 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Xilinx Zynq MPSoC PL loading
+ *
+ * Copyright (c) 2018 Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
+ *
+ * based on U-Boot zynqmppl code
+ *
+ * (C) Copyright 2015 - 2016, Xilinx, Inc,
+ * Michal Simek <michal.simek@xilinx.com>
+ * Siva Durga Prasad <siva.durga.paladugu@xilinx.com> *
+ */
+
+#include <firmware.h>
+#include <common.h>
+#include <init.h>
+#include <dma.h>
+#include <mach/firmware-zynqmp.h>
+
+#define ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL	BIT(0)
+#define ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED	BIT(1)
+
+#define ZYNQMP_PM_VERSION_1_0_FEATURES	0
+#define ZYNQMP_PM_VERSION_1_1_FEATURES	(ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL | \
+					 ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
+
+#define DUMMY_WORD			0xFFFFFFFF
+#define BUS_WIDTH_WORD_1		0x000000BB
+#define BUS_WIDTH_WORD_2		0x11220044
+#define SYNC_WORD			0xAA995566
+#define SYNC_WORD_OFFS			20
+
+enum xilinx_byte_order {
+	XILINX_BYTE_ORDER_BIT,
+	XILINX_BYTE_ORDER_BIN,
+};
+
+struct fpgamgr {
+	struct firmware_handler fh;
+	struct device_d dev;
+	const struct zynqmp_eemi_ops *eemi_ops;
+	int programmed;
+	char *buf;
+	size_t size;
+	u32 features;
+};
+
+/*
+ * Xilinx KU040 Bitstream Composition:
+ * Bitstream can be provided with an optinal header (`struct bs_header`).
+ * The true bitstream starts with the binary-header composed of 21 words:
+ *
+ *  1: 0xFFFFFFFF (Dummy pad word)
+ *     ...
+ * 16: 0xFFFFFFFF (Dummy pad word)
+ * 17: 0x000000BB (Bus width auto detect word 1)
+ * 18: 0x11220044 (Bus width auto detect word 2)
+ * 19: 0xFFFFFFFF (Dummy pad word)
+ * 20: 0xFFFFFFFF (Dummy pad word)
+ * 21: 0xAA995566 (Sync word)
+ *
+ * Please refer to  Xilinx UG570 (v1.11) September 30 2019,
+ * Chapter 9 Configuration Details - Bitstream Composition
+ * for further details!
+ */
+static const u32 bin_format[] = {
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	BUS_WIDTH_WORD_1,
+	BUS_WIDTH_WORD_2,
+	DUMMY_WORD,
+	DUMMY_WORD,
+	SYNC_WORD,
+};
+
+static void copy_words_swapped(u32 *dst, const u32 *src, size_t size)
+{
+	int i;
+
+	for (i = 0; i < size; i++)
+		dst[i] = __swab32(src[i]);
+}
+
+static int get_byte_order(const u32 *bin_header, size_t size,
+			  enum xilinx_byte_order *byte_order)
+{
+	if (size < sizeof(bin_format))
+		return -EINVAL;
+
+	if (bin_header[SYNC_WORD_OFFS] == SYNC_WORD) {
+		*byte_order = XILINX_BYTE_ORDER_BIT;
+		return 0;
+	}
+
+	if (bin_header[SYNC_WORD_OFFS] == __swab32(SYNC_WORD)) {
+		*byte_order =  XILINX_BYTE_ORDER_BIN;
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+static int is_bin_header_valid(const u32 *bin_header, size_t size,
+			       enum xilinx_byte_order byte_order)
+{
+	int i;
+
+	if (size < ARRAY_SIZE(bin_format))
+		return 0;
+
+	for (i = 0; i < ARRAY_SIZE(bin_format); i++)
+		if (bin_header != (byte_order == XILINX_BYTE_ORDER_BIT) ?
+				  bin_format[i] : __swab32(bin_format[i]))
+			return 0;
+
+	return 1;
+}
+
+static int get_header_length(const char *header, size_t size)
+{
+	u32 *buf_u32;
+	int p;
+
+	for (p = 0; p < size; p++) {
+		buf_u32 = (u32 *)&header[p];
+		if (*buf_u32 == DUMMY_WORD)
+			return p;
+	}
+	return -EINVAL;
+}
+
+static int fpgamgr_program_finish(struct firmware_handler *fh)
+{
+	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
+	char *buf_aligned;
+	u32 *buf_size = NULL;
+	u32 *body;
+	size_t body_length;
+	int header_length = 0;
+	enum xilinx_byte_order byte_order;
+	u64 addr;
+	int status = 0;
+	u8 flags = 0;
+
+	if (!mgr->buf) {
+		status = -ENOBUFS;
+		dev_err(&mgr->dev, "buffer is NULL\n");
+		goto err_free;
+	}
+
+	header_length = get_header_length(mgr->buf, mgr->size);
+	if (header_length < 0) {
+		status = header_length;
+		goto err_free;
+	}
+
+	body = (u32 *)&mgr->buf[header_length];
+	body_length = mgr->size - header_length;
+
+	status = get_byte_order(body, body_length, &byte_order);
+	if (status < 0)
+		goto err_free;
+
+	if (!is_bin_header_valid(body, body_length, byte_order)) {
+		status =  -EINVAL;
+		goto err_free;
+	}
+
+	if (!(mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)) {
+		buf_size = dma_alloc_coherent(sizeof(*buf_size),
+		DMA_ADDRESS_BROKEN);
+		if (!buf_size) {
+			status = -ENOBUFS;
+			goto err_free;
+		}
+		*buf_size = body_length;
+	}
+
+	buf_aligned = dma_alloc_coherent(body_length, DMA_ADDRESS_BROKEN);
+	if (!buf_aligned) {
+		status = -ENOBUFS;
+		goto err_free;
+	}
+
+	if (!(mgr->features & ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL) &&
+	    byte_order == XILINX_BYTE_ORDER_BIN)
+		copy_words_swapped((u32 *)buf_aligned, body,
+				   body_length / sizeof(u32));
+	else
+		memcpy((u32 *)buf_aligned, body, body_length);
+
+	addr = (u64)buf_aligned;
+
+	/* we do not provide a header */
+	flags |= ZYNQMP_FPGA_BIT_ONLY_BIN;
+
+	if (!(mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) && buf_size) {
+		status = mgr->eemi_ops->fpga_load(addr,
+				(u32)(uintptr_t)buf_size,
+				flags);
+		dma_free_coherent(buf_size, 0, sizeof(*buf_size));
+	} else {
+		status = mgr->eemi_ops->fpga_load(addr, (u32)(body_length),
+						  flags);
+	}
+
+	if (status < 0)
+		dev_err(&mgr->dev, "unable to load fpga\n");
+
+	dma_free_coherent(buf_aligned, 0, body_length);
+
+ err_free:
+	free(mgr->buf);
+
+	return status;
+}
+
+static int fpgamgr_program_write_buf(struct firmware_handler *fh,
+		const void *buf, size_t size)
+{
+	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
+
+	/* Since write() is called by copy_file, we only receive chuncks with
+	 * size RW_BUF_SIZE of the bitstream.
+	 * Buffer the chunks here and handle it in close()
+	 */
+
+	mgr->buf = realloc(mgr->buf, mgr->size + size);
+	if (!mgr->buf)
+		return -ENOBUFS;
+
+	memcpy(&(mgr->buf[mgr->size]), buf, size);
+	mgr->size += size;
+
+	return 0;
+}
+
+static int fpgamgr_program_start(struct firmware_handler *fh)
+{
+	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
+
+	mgr->size = 0;
+	mgr->buf = NULL;
+
+	return 0;
+}
+
+static int programmed_get(struct param_d *p, void *priv)
+{
+	struct fpgamgr *mgr = priv;
+	u32 status = 0x00;
+	int ret = 0;
+
+	ret = mgr->eemi_ops->fpga_getstatus(&status);
+	if (ret)
+		return ret;
+
+	mgr->programmed = !!(status & ZYNQMP_PCAP_STATUS_FPGA_DONE);
+
+	return 0;
+}
+
+static int zynqmp_fpga_probe(struct device_d *dev)
+{
+	struct fpgamgr *mgr;
+	struct firmware_handler *fh;
+	const char *alias = of_alias_get(dev->device_node);
+	const char *model = NULL;
+	struct param_d *p;
+	u32 api_version;
+	int ret;
+
+	mgr = xzalloc(sizeof(*mgr));
+	fh = &mgr->fh;
+
+	if (alias)
+		fh->id = xstrdup(alias);
+	else
+		fh->id = xstrdup("zynqmp-fpga-manager");
+
+	fh->open = fpgamgr_program_start;
+	fh->write = fpgamgr_program_write_buf;
+	fh->close = fpgamgr_program_finish;
+	of_property_read_string(dev->device_node, "compatible", &model);
+	if (model)
+		fh->model = xstrdup(model);
+	fh->dev = dev;
+
+	mgr->eemi_ops = zynqmp_pm_get_eemi_ops();
+
+	ret = mgr->eemi_ops->get_api_version(&api_version);
+	if (ret) {
+		dev_err(&mgr->dev, "could not get API version\n");
+		goto out;
+	}
+
+	mgr->features = 0;
+
+	if (api_version >= ZYNQMP_PM_VERSION(1, 1))
+		mgr->features |= ZYNQMP_PM_VERSION_1_1_FEATURES;
+
+	dev_dbg(dev, "Registering ZynqMP FPGA programmer\n");
+	mgr->dev.id = DEVICE_ID_SINGLE;
+	dev_set_name(&mgr->dev, "zynqmp_fpga");
+	mgr->dev.parent = dev;
+	ret = register_device(&mgr->dev);
+	if (ret)
+		goto out;
+
+	p = dev_add_param_bool(&mgr->dev, "programmed", NULL, programmed_get,
+			&mgr->programmed, mgr);
+	if (IS_ERR(p)) {
+		ret = PTR_ERR(p);
+		goto out_unreg;
+	}
+
+	fh->dev = &mgr->dev;
+	ret = firmwaremgr_register(fh);
+	if (ret != 0) {
+		free(mgr);
+		goto out_unreg;
+	}
+
+	return 0;
+out_unreg:
+	unregister_device(&mgr->dev);
+out:
+	free(fh->id);
+	free(mgr);
+
+	return ret;
+}
+
+static struct of_device_id zynqmpp_fpga_id_table[] = {
+	{
+		.compatible = "xlnx,zynqmp-pcap-fpga",
+	},
+};
+
+static struct driver_d zynqmp_fpga_driver = {
+	.name = "zynqmp_fpga_manager",
+	.of_compatible = DRV_OF_COMPAT(zynqmpp_fpga_id_table),
+	.probe = zynqmp_fpga_probe,
+};
+device_platform_driver(zynqmp_fpga_driver);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
