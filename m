Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oln040092066058.outbound.protection.outlook.com
 ([40.92.66.58] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYPU-0007io-Ik
 for barebox@lists.infradead.org; Thu, 09 Apr 2020 14:44:07 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 9 Apr 2020 14:44:00 +0000
Message-ID: <DB7PR02MB433264C5B656E14124196A6FABC10@DB7PR02MB4332.eurprd02.prod.outlook.com>
Content-Language: de-DE
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
Subject: [PATCH v2 7/7] added-zynq-fpga-manager
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This adds support to programm the PL part of the Zynq SoC,
but only the non-secure way and no partial reconfiguration. It adds the
'zynq_fpga_manager' so we can use

firmwareload -l
firmwareload -t zynq-fpga-manager /mnt/mmc0.0/design_1_wrapper.bit

to programm the PL.

Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
---
 arch/arm/mach-zynq/Makefile                   |   2 +-
 arch/arm/mach-zynq/firmware-zynq.c            | 124 ++++++
 .../mach-zynq/include/mach/firmware-zynq.h    |  55 +++
 drivers/firmware/Kconfig                      |   7 +
 drivers/firmware/Makefile                     |   1 +
 drivers/firmware/zynq-fpga.c                  | 377 ++++++++++++++++++
 6 files changed, 565 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-zynq/firmware-zynq.c
 create mode 100644 arch/arm/mach-zynq/include/mach/firmware-zynq.h
 create mode 100644 drivers/firmware/zynq-fpga.c

diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile
index 06c2ce996..2484abe5c 100644
--- a/arch/arm/mach-zynq/Makefile
+++ b/arch/arm/mach-zynq/Makefile
@@ -1,2 +1,2 @@
-obj-y += zynq.o bootm-zynqimg.o
+obj-y += bootm-zynqimg.o firmware-zynq.o zynq.o
 lwl-y += cpu_init.o
diff --git a/arch/arm/mach-zynq/firmware-zynq.c b/arch/arm/mach-zynq/firmware-zynq.c
new file mode 100644
index 000000000..307b22fe5
--- /dev/null
+++ b/arch/arm/mach-zynq/firmware-zynq.c
@@ -0,0 +1,124 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ */
+#include <common.h>
+#include <init.h>
+#include <linux/iopoll.h>
+#include <mach/firmware-zynq.h>
+
+/*
+ * zynq_devc_fpga_load - Perform the fpga load
+ * @mgr:	FPGA-Manager
+ * @address:	Address to write to
+ * @size:	PL bitstream size
+ * @flags:	Flags - unused
+ *
+ * This function provides access to PCAP to transfer
+ * the required bitstream into PL.
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+static int zynq_devc_fpga_load(struct fpgamgr *mgr, u64 address,
+				u32 size, u32 flags)
+{
+	unsigned long reg;
+
+	if (!address || !size)
+		return -EINVAL;
+
+	/*
+	 * The Programming Seqenze, see ug585 (v.12.2) Juny 1, 2018 Chapter
+	 * 6.4.2 on page 211 Configure the PL via PCAP Bridge Example for
+	 * detailed information to this Sequenze
+	 */
+
+	/* Enable the PCAP bridge and select PCAP for reconfiguration */
+	reg = readl(mgr->regs + CTRL_OFFSET);
+	reg |= ( CTRL_PCAP_PR_MASK | CTRL_PCAP_MODE_MASK );
+	writel(reg, mgr->regs + CTRL_OFFSET);
+
+	/* Clear the Interrupts */
+	writel(0xffffffff, mgr->regs + INT_STS_OFFSET);
+
+	/* Initialize the PL */
+	reg = readl(mgr->regs + CTRL_OFFSET);
+	reg |= CTRL_PCFG_PROG_B_MASK;
+	writel(reg, mgr->regs + CTRL_OFFSET);
+
+	reg = readl(mgr->regs + CTRL_OFFSET);
+	reg &= ~CTRL_PCFG_PROG_B_MASK;
+	writel(reg, mgr->regs + CTRL_OFFSET);
+
+	readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
+			!(reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC);
+
+	reg = readl(mgr->regs + CTRL_OFFSET);
+	reg |= CTRL_PCFG_PROG_B_MASK;
+	writel(reg, mgr->regs + CTRL_OFFSET);
+
+	/* Clear the Interrupts */
+	writel(0xffffffff, mgr->regs + INT_STS_OFFSET);
+
+	/* Ensure that the PL is ready for programming */
+	readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
+			(reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC);
+
+	/* Check that there is room in the Command Queue */
+	readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
+			!(reg & STATUS_DMA_CMD_Q_F_MASK), 100 * USEC_PER_MSEC);
+
+	/* Disable the PCAP loopback */
+	reg = readl(mgr->regs + MCTRL_OFFSET);
+	reg &= ~MCTRL_INT_PCAP_LPBK_MASK;
+	writel(reg, mgr->regs + MCTRL_OFFSET);
+
+	/* Program the PCAP_2x clock divider */
+	reg = readl(mgr->regs + CTRL_OFFSET);
+	reg &= ~CTRL_PCAP_RATE_EN_MASK;
+	writel(reg, mgr->regs + CTRL_OFFSET);
+
+	/* Source Address: Location of bitstream */
+	writel(address, mgr->regs + DMA_SRC_ADDR_OFFSET);
+
+	/* Destination Address: 0xFFFF_FFFF */
+	writel(0xffffffff, mgr->regs + DMA_DST_ADDR_OFFSET);
+
+	/* Source Length: Total number of 32-bit words in the bitstream */
+	writel((size >> 2), mgr->regs + DMA_SRC_LEN_OFFSET);
+
+	/* Destination Length: Total number of 32-bit words in the bitstream */
+	writel((size >> 2), mgr->regs + DMA_DEST_LEN_OFFSET);
+
+	/* Wait for the DMA transfer to be done */
+	readl_poll_timeout(mgr->regs + INT_STS_OFFSET, reg,
+			(reg & INT_STS_D_P_DONE_MASK), 100 * USEC_PER_MSEC);
+
+	/* Check for errors */
+	if(reg & INT_STS_ERROR_FLAGS_MASK) {
+		printf("interrupt status register (0x%04lx)\n", reg);
+		return -EIO;
+	}
+
+	/* Wait for the DMA transfer to be done */
+	readl_poll_timeout(mgr->regs + INT_STS_OFFSET, reg,
+			(reg & INT_STS_DONE_INT_MASK), 100 * USEC_PER_MSEC);
+
+	printf("FPGA config done\n");
+
+	return 0;
+}
+
+static const struct zynq_devc_ops devc_ops = {
+	.fpga_load = zynq_devc_fpga_load,
+};
+
+/**
+ * zynq_get_devc_ops - Get devc ops functions
+ *
+ * Return: Pointer of devc_ops structure
+ */
+const struct zynq_devc_ops *zynq_get_devc_ops(void)
+{
+	return &devc_ops;
+}
+EXPORT_SYMBOL_GPL(zynq_get_devc_ops);
diff --git a/arch/arm/mach-zynq/include/mach/firmware-zynq.h b/arch/arm/mach-zynq/include/mach/firmware-zynq.h
new file mode 100644
index 000000000..3a13d9f7e
--- /dev/null
+++ b/arch/arm/mach-zynq/include/mach/firmware-zynq.h
@@ -0,0 +1,55 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Xilinx Zynq Firmware layer
+ *
+ */
+
+#ifndef FIRMWARE_ZYNQ_H_
+#define FIRMWARE_ZYNQ_H_
+
+#include <firmware.h>
+
+#define CTRL_OFFSET				0x00
+#define LOCK_OFFSET				0x04
+#define INT_STS_OFFSET				0x0c
+#define INT_MASK_OFFSET				0x10
+#define STATUS_OFFSET				0x14
+#define DMA_SRC_ADDR_OFFSET			0x18
+#define DMA_DST_ADDR_OFFSET			0x1c
+#define DMA_SRC_LEN_OFFSET			0x20
+#define DMA_DEST_LEN_OFFSET			0x24
+#define UNLOCK_OFFSET				0x34
+#define MCTRL_OFFSET				0x80
+
+#define CTRL_PCFG_PROG_B_MASK			BIT(30)
+#define CTRL_PCAP_PR_MASK			BIT(27)
+#define CTRL_PCAP_MODE_MASK			BIT(26)
+#define CTRL_PCAP_RATE_EN_MASK			BIT(25)
+
+#define STATUS_DMA_CMD_Q_F_MASK			BIT(31)
+#define STATUS_PCFG_INIT_MASK			BIT(4)
+
+#define INT_STS_D_P_DONE_MASK			BIT(12)
+#define INT_STS_DONE_INT_MASK			BIT(2)
+#define INT_STS_ERROR_FLAGS_MASK		0x00f4c860
+
+#define MCTRL_INT_PCAP_LPBK_MASK		BIT(4)
+
+struct fpgamgr {
+	struct firmware_handler fh;
+	struct device_d dev;
+	void __iomem *regs;
+	const struct zynq_devc_ops *devc_ops;
+	int programmed;
+	char *buf;
+	size_t size;
+	u32 features;
+};
+
+struct zynq_devc_ops {
+	int (*fpga_load)(struct fpgamgr *mgr, u64 address, u32 size, u32 flags);
+};
+
+const struct zynq_devc_ops *zynq_get_devc_ops(void);
+
+#endif /* FIRMWARE_ZYNQ_H_ */
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 90b4c0ab9..14178eaa9 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -15,6 +15,13 @@ config FIRMWARE_ALTERA_SOCFPGA
 	depends on ARCH_SOCFPGA
 	select FIRMWARE

+config FIRMWARE_ZYNQ_FPGA
+	bool "Xilinx Zynq FPGA loader"
+	depends on ARCH_ZYNQ
+	select FIRMWARE
+	help
+	  Load a bitstream to the PL of Zynq
+
 config FIRMWARE_ZYNQMP_FPGA
 	bool "Xilinx ZynqMP FPGA loader"
 	depends on ARCH_ZYNQMP
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index b162b08b0..b3d0fc62b 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
 obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o
+obj-$(CONFIG_FIRMWARE_ZYNQ_FPGA) += zynq-fpga.o
 obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynqmp-fpga.o
diff --git a/drivers/firmware/zynq-fpga.c b/drivers/firmware/zynq-fpga.c
new file mode 100644
index 000000000..2630f4cd3
--- /dev/null
+++ b/drivers/firmware/zynq-fpga.c
@@ -0,0 +1,377 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Xilinx Zynq PL loading
+ *
+ */
+
+#include <firmware.h>
+#include <common.h>
+#include <init.h>
+#include <dma.h>
+#include <mach/firmware-zynq.h>
+#include <mach/zynq7000-regs.h>
+
+#define DEVC_UNLOCK_CODE			0x757bdf0d
+
+#define DUMMY_WORD				0xFFFFFFFF
+#define BUS_WIDTH_AUTO_DETECT1_OFFSET		8
+#define BUS_WIDTH_AUTO_DETECT1			0x000000BB
+#define BUS_WIDTH_AUTO_DETECT2_OFFSET		9
+#define BUS_WIDTH_AUTO_DETECT2			0x11220044
+#define SYNC_WORD_OFFSET			12
+#define SYNC_WORD				0xAA995566
+#define BIN_HEADER_LENGTH			13
+
+/*
+ * Xilinx 7-Series Bitstream Composition:
+ *
+ * Bitstream can be provided with an optinal header (`struct bs_header`).
+ * The true bitstream starts with the binary-header composed of 13 words:
+ *
+ *  0: 0xFFFFFFFF (Dummy pad word)
+ *     ...
+ *  7: 0xFFFFFFFF (Dummy pad word)
+ *  8: 0x000000BB (Bus width auto detect word 1)
+ *  9: 0x11220044 (Bus width auto detect word 2)
+ * 10: 0xFFFFFFFF (Dummy pad word)
+ * 11: 0xFFFFFFFF (Dummy pad word)
+ * 12: 0xAA995566 (Sync word)
+ *
+ * See Xilinx UG470 (v1.13.1) August 20 2018, Chapter 5 "Configuration
+ * Details - Bitstream Composition" for further details.
+ */
+enum xilinx_byte_order {
+	XILINX_BYTE_ORDER_BIT,
+	XILINX_BYTE_ORDER_BIN,
+};
+
+struct bs_header {
+	__be16 length;
+	u8 padding[9];
+	__be16 size;
+	char entries[0];
+} __attribute__ ((packed));
+
+struct bs_header_entry {
+	char type;
+	__be16 length;
+	char data[0];
+} __attribute__ ((packed));
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
+				enum xilinx_byte_order *byte_order)
+{
+	if (size < BIN_HEADER_LENGTH * sizeof(*bin_header))
+		return -EINVAL;
+
+	if (bin_header[SYNC_WORD_OFFSET] == SYNC_WORD) {
+		*byte_order = XILINX_BYTE_ORDER_BIT;
+		return 0;
+	}
+
+	if (bin_header[SYNC_WORD_OFFSET] == __swab32(SYNC_WORD)) {
+		*byte_order = XILINX_BYTE_ORDER_BIN;
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+static bool is_bin_header_valid(const u32 *bin_header, size_t size,
+				enum xilinx_byte_order byte_order)
+{
+	size_t i;
+
+	if (size < BIN_HEADER_LENGTH * sizeof(*bin_header))
+		return false;
+
+	for (i = 0; i < BIN_HEADER_LENGTH; i++, bin_header++) {
+		u32 current;
+		u32 expected;
+
+		if (byte_order == XILINX_BYTE_ORDER_BIT)
+			current = *bin_header;
+		else
+			current = __swab32(*bin_header);
+
+		switch (i) {
+		case BUS_WIDTH_AUTO_DETECT1_OFFSET:
+			expected = BUS_WIDTH_AUTO_DETECT1;
+			break;
+		case BUS_WIDTH_AUTO_DETECT2_OFFSET:
+			expected = BUS_WIDTH_AUTO_DETECT2;
+			break;
+		case SYNC_WORD_OFFSET:
+			expected = SYNC_WORD;
+			break;
+		default:
+			expected = DUMMY_WORD;
+			break;
+		}
+
+		if (current != expected)
+        	return false;
+	}
+
+	return true;
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
+static void zynq_fpga_show_header(const struct device_d *dev,
+					struct bs_header *header, size_t size)
+{
+	struct bs_header_entry *entry;
+	unsigned int i;
+	unsigned int length;
+
+	for (i = 0; i < size - sizeof(*header); i += sizeof(*entry) + length) {
+		entry = (struct bs_header_entry *)&header->entries[i];
+		length = __be16_to_cpu(entry->length);
+
+		switch (entry->type) {
+		case 'a':
+			printf("Design: %s\n", entry->data);
+			break;
+		case 'b':
+			printf("Part number: %s\n", entry->data);
+			break;
+		case 'c':
+			printf("Date: %s\n", entry->data);
+			break;
+		case 'd':
+			printf("Time: %s\n", entry->data);
+			break;
+		case 'e':
+			/* Size entry does not have a length but is be32 int */
+			printf("Size: %d bytes\n",
+				(length << 16) + (entry->data[0] << 8) + entry->data[1]);
+			return;
+		default:
+			dev_warn(dev, "Invalid header entry: %c", entry->type);
+			return;
+		}
+	}
+}
+
+static int fpgamgr_program_finish(struct firmware_handler *fh)
+{
+	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
+	char *buf_aligned;
+	u32 *body;
+	size_t body_length;
+	int header_length = 0;
+	enum xilinx_byte_order byte_order;
+	u64 addr;
+	int status = 0;
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
+	zynq_fpga_show_header(&mgr->dev, (struct bs_header *)mgr->buf,
+				header_length);
+
+	body = (u32 *)&mgr->buf[header_length];
+	body_length = mgr->size - header_length;
+
+	status = get_byte_order(body, body_length, &byte_order);
+	if (status < 0)
+		goto err_free;
+
+	if (!is_bin_header_valid(body, body_length, byte_order)) {
+		dev_err(&mgr->dev, "Invalid bitstream header\n");
+		status =  -EINVAL;
+		goto err_free;
+	}
+
+	buf_aligned = dma_alloc_coherent(body_length, DMA_ADDRESS_BROKEN);
+	if (!buf_aligned) {
+		status = -ENOBUFS;
+		goto err_free;
+	}
+
+	/* UG585 (v1.12.2) July 1, 2018 Chapter 6.4.3
+	 * In all modes, the DMA transactions must be 64-byte aligned to prevent
+	 * accidently crossing a 4K byte boundary.
+	 */
+	if(byte_order == XILINX_BYTE_ORDER_BIN)
+		copy_words_swapped((u32 *)buf_aligned, body, body_length / sizeof(u32));
+	else
+		memcpy((u32 *)buf_aligned, body, body_length);
+
+	addr = (u32)buf_aligned;
+
+	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
+	writel(0x0000000f, ZYNQ_SLCR_BASE + 0x240); // assert FPGA resets
+
+	writel(0x00000000, ZYNQ_SLCR_BASE + 0x900); // disable levelshifter
+	writel(0x0000000a, ZYNQ_SLCR_BASE + 0x900); // enable levelshifter PS-PL
+
+	status = mgr->devc_ops->fpga_load(mgr, addr, (u32)(body_length), 0);
+
+	writel(0x0000000f, ZYNQ_SLCR_BASE + 0x900); // enable all levelshifter
+	writel(0x00000000, ZYNQ_SLCR_BASE + 0x240); // deassert FPGA resets
+
+	writel(0x0000767B, ZYNQ_SLCR_LOCK);
+
+	if (status < 0)
+		dev_err(&mgr->dev, "unable to load fpga\n");
+
+	dma_free_coherent(buf_aligned, 0, body_length);
+
+err_free:
+	free(mgr->buf);
+
+	return status;
+}
+
+static int fpgamgr_program_write_buf(struct firmware_handler *fh,
+					const void *buf, size_t size)
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
+
+	dev_info(&mgr->dev, "%s\n", __func__ );
+
+	return 0;
+}
+
+static int zynq_fpga_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct fpgamgr *mgr;
+	struct firmware_handler *fh;
+	const char *alias = of_alias_get(dev->device_node);
+	const char *model = NULL;
+	struct param_d *p;
+	int ret;
+
+	mgr = xzalloc(sizeof(*mgr));
+	fh = &mgr->fh;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		ret = PTR_ERR(iores);
+		goto out;
+	}
+	mgr->regs = IOMEM(iores->start);
+
+	if (alias)
+		fh->id = xstrdup(alias);
+	else
+		fh->id = xstrdup("zynq-fpga-manager");
+
+	fh->open = fpgamgr_program_start;
+	fh->write = fpgamgr_program_write_buf;
+	fh->close = fpgamgr_program_finish;
+	of_property_read_string(dev->device_node, "compatible", &model);
+	if (model)
+		fh->model = xstrdup(model);
+	fh->dev = dev;
+
+	mgr->devc_ops = zynq_get_devc_ops();
+
+	mgr->features = 0;
+
+	dev_dbg(dev, "Registering Zynq FPGA programmer\n");
+	mgr->dev.id = DEVICE_ID_SINGLE;
+	dev_set_name(&mgr->dev, "zynq_fpga");
+	mgr->dev.parent = dev;
+	ret = register_device(&mgr->dev);
+	if (ret)
+		goto out;
+
+	/* Unlock DevC in case BootROM did not do it */
+	writel(DEVC_UNLOCK_CODE, mgr->regs + UNLOCK_OFFSET);
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
+static struct of_device_id zynq_fpga_id_table[] = {
+	{
+		.compatible = "xlnx,zynq-devcfg-1.0",
+	},
+};
+
+static struct driver_d zynq_fpga_driver = {
+	.name = "zynq_fpga_manager",
+	.of_compatible = DRV_OF_COMPAT(zynq_fpga_id_table),
+	.probe = zynq_fpga_probe,
+};
+device_platform_driver(zynq_fpga_driver);
--
2.17.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
