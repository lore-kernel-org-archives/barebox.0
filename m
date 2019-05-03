Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUa2-0003nk-0g
 for barebox@lists.infradead.org; Fri, 03 May 2019 09:34:17 +0000
Received: from [2001:67c:670:c0a8:d4b8:1dff:fe64:e144] (helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZy-00087r-3I
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:06 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZx-0007Fp-KN
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:05 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  3 May 2019 11:33:54 +0200
Message-Id: <49d6a617c19eda8f4e9127970409cc9d3743fdff.1556875750.git-series.s.trumtrar@pengutronix.de>
In-Reply-To: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
References: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
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
Subject: [PATCH 04/10] spi: Extend the core to ease integration of SPI memory
 controllers
To: Barebox List <barebox@lists.infradead.org>

Sync with Linux v5.1-rc1.

This is the barebox adoption of the commit

  commit c36ff266dc82f4ae797a6f3513c6ffa344f7f1c7
  Author: Boris Brezillon <boris.brezillon@bootlin.com>
  Date:   Thu Apr 26 18:18:14 2018 +0200

      spi: Extend the core to ease integration of SPI memory controllers

      Some controllers are exposing high-level interfaces to access various
      kind of SPI memories. Unfortunately they do not fit in the current
      spi_controller model and usually have drivers placed in
      drivers/mtd/spi-nor which are only supporting SPI NORs and not SPI
      memories in general.

      This is an attempt at defining a SPI memory interface which works for
      all kinds of SPI memories (NORs, NANDs, SRAMs).

      Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
      Reviewed-by: Frieder Schrempf <frieder.schrempf@exceet.de>
      Tested-by: Frieder Schrempf <frieder.schrempf@exceet.de>
      Signed-off-by: Mark Brown <broonie@kernel.org>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c |  38 +--
 drivers/spi/Kconfig           |   7 +-
 drivers/spi/Makefile          |   1 +-
 drivers/spi/spi-mem.c         | 524 +++++++++++++++++++++++++++++++++++-
 drivers/spi/spi.c             |  39 +++-
 include/linux/spi/spi-mem.h   | 307 +++++++++++++++++++++-
 include/spi/spi.h             |  55 ++++-
 7 files changed, 948 insertions(+), 23 deletions(-)
 create mode 100644 drivers/spi/spi-mem.c
 create mode 100644 include/linux/spi/spi-mem.h

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 85b55c6982ab..851ac1c33e7f 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -784,7 +784,8 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
 	size_t *retlen, const u_char *buf)
 {
 	struct spi_nor *nor = mtd_to_spi_nor(mtd);
-	u32 page_offset, page_size, i;
+	size_t page_offset, page_remain, i;
+	size_t retval;
 	int ret;
 
 	dev_dbg(nor->dev, "to 0x%08x, len %zd\n", (u32)to, len);
@@ -793,32 +794,23 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
 	if (ret)
 		return ret;
 
-	write_enable(nor);
-
-	page_offset = to & (nor->page_size - 1);
-
-	/* do all the bytes fit onto one page? */
-	if (page_offset + len <= nor->page_size) {
-		nor->write(nor, to, len, retlen, buf);
-	} else {
-		/* the size of data remaining on the first page */
-		page_size = nor->page_size - page_offset;
-		nor->write(nor, to, page_size, retlen, buf);
+	for (i = 0; i < len; ) {
+		ssize_t written;
 
-		/* write everything in nor->page_size chunks */
-		for (i = page_size; i < len; i += page_size) {
-			page_size = len - i;
-			if (page_size > nor->page_size)
-				page_size = nor->page_size;
+		page_offset = (to + i) & (nor->page_size - 1);
+		page_remain = min_t(size_t, nor->page_size - page_offset,
+				    len - i);
 
-			ret = spi_nor_wait_till_ready(nor);
-			if (ret)
-				goto write_err;
+		write_enable(nor);
+		nor->write(nor, to + i, page_remain, &retval, buf + i);
+		written = retval;
 
-			write_enable(nor);
+		ret = spi_nor_wait_till_ready(nor);
+		if (ret)
+			goto write_err;
 
-			nor->write(nor, to + i, page_size, retlen, buf + i);
-		}
+		*retlen += written;
+		i += written;
 	}
 
 	ret = spi_nor_wait_till_ready(nor);
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index fed628c58994..650292541f76 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -6,6 +6,13 @@ config SPI
 
 if SPI
 
+config SPI_MEM
+	bool "SPI memory extension"
+	help
+	  Enable this option if you want to enable the SPI memory extension.
+	  This extension is meant to simplify interaction with SPI memories
+	  by providing a high-level interface to send memory-like commands.
+
 config DRIVER_SPI_ALTERA
 	bool "Altera SPI Master driver"
 	depends on NIOS2
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 2329cbfb8da4..841d67d32651 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_SPI) += spi.o
+obj-$(CONFIG_SPI_MEM) += spi-mem.o
 obj-$(CONFIG_DRIVER_SPI_ATH79) += ath79_spi.o
 obj-$(CONFIG_DRIVER_SPI_GPIO) += gpio_spi.o
 obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
diff --git a/drivers/spi/spi-mem.c b/drivers/spi/spi-mem.c
new file mode 100644
index 000000000000..b438ed3dcc7a
--- /dev/null
+++ b/drivers/spi/spi-mem.c
@@ -0,0 +1,524 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2018 Exceet Electronics GmbH
+ * Copyright (C) 2018 Bootlin
+ *
+ * Author: Boris Brezillon <boris.brezillon@bootlin.com>
+ */
+#include <common.h>
+#include <module.h>
+#include <linux/kernel.h>
+#include <linux/spi/spi-mem.h>
+#include <spi/spi.h>
+
+#define SPI_MEM_MAX_BUSWIDTH		8
+
+static int spi_check_buswidth_req(struct spi_mem *mem, u8 buswidth, bool tx)
+{
+	u32 mode = mem->spi->mode;
+
+	switch (buswidth) {
+	case 1:
+		return 0;
+
+	case 2:
+		if ((tx && (mode & (SPI_TX_DUAL | SPI_TX_QUAD))) ||
+		    (!tx && (mode & (SPI_RX_DUAL | SPI_RX_QUAD))))
+			return 0;
+
+		break;
+
+	case 4:
+		if ((tx && (mode & SPI_TX_QUAD)) ||
+		    (!tx && (mode & SPI_RX_QUAD)))
+			return 0;
+
+		break;
+
+	case 8:
+		if ((tx && (mode & SPI_TX_OCTAL)) ||
+		    (!tx && (mode & SPI_RX_OCTAL)))
+			return 0;
+
+		break;
+
+	default:
+		break;
+	}
+
+	return -ENOTSUPP;
+}
+
+static bool spi_mem_default_supports_op(struct spi_mem *mem,
+					const struct spi_mem_op *op)
+{
+	if (spi_check_buswidth_req(mem, op->cmd.buswidth, true))
+		return false;
+
+	if (op->addr.nbytes &&
+	    spi_check_buswidth_req(mem, op->addr.buswidth, true))
+		return false;
+
+	if (op->dummy.nbytes &&
+	    spi_check_buswidth_req(mem, op->dummy.buswidth, true))
+		return false;
+
+	if (op->data.dir != SPI_MEM_NO_DATA &&
+	    spi_check_buswidth_req(mem, op->data.buswidth,
+				   op->data.dir == SPI_MEM_DATA_OUT))
+		return false;
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(spi_mem_default_supports_op);
+
+static bool spi_mem_buswidth_is_valid(u8 buswidth)
+{
+	if (hweight8(buswidth) > 1 || buswidth > SPI_MEM_MAX_BUSWIDTH)
+		return false;
+
+	return true;
+}
+
+static int spi_mem_check_op(const struct spi_mem_op *op)
+{
+	if (!op->cmd.buswidth)
+		return -EINVAL;
+
+	if ((op->addr.nbytes && !op->addr.buswidth) ||
+	    (op->dummy.nbytes && !op->dummy.buswidth) ||
+	    (op->data.nbytes && !op->data.buswidth))
+		return -EINVAL;
+
+	if (!spi_mem_buswidth_is_valid(op->cmd.buswidth) ||
+	    !spi_mem_buswidth_is_valid(op->addr.buswidth) ||
+	    !spi_mem_buswidth_is_valid(op->dummy.buswidth) ||
+	    !spi_mem_buswidth_is_valid(op->data.buswidth))
+		return -EINVAL;
+
+	return 0;
+}
+
+static bool spi_mem_internal_supports_op(struct spi_mem *mem,
+					 const struct spi_mem_op *op)
+{
+	struct spi_controller *ctlr = mem->spi->controller;
+
+	if (ctlr->mem_ops && ctlr->mem_ops->supports_op)
+		return ctlr->mem_ops->supports_op(mem, op);
+
+	return spi_mem_default_supports_op(mem, op);
+}
+
+/**
+ * spi_mem_supports_op() - Check if a memory device and the controller it is
+ *			   connected to support a specific memory operation
+ * @mem: the SPI memory
+ * @op: the memory operation to check
+ *
+ * Some controllers are only supporting Single or Dual IOs, others might only
+ * support specific opcodes, or it can even be that the controller and device
+ * both support Quad IOs but the hardware prevents you from using it because
+ * only 2 IO lines are connected.
+ *
+ * This function checks whether a specific operation is supported.
+ *
+ * Return: true if @op is supported, false otherwise.
+ */
+bool spi_mem_supports_op(struct spi_mem *mem, const struct spi_mem_op *op)
+{
+	if (spi_mem_check_op(op))
+		return false;
+
+	return spi_mem_internal_supports_op(mem, op);
+}
+EXPORT_SYMBOL_GPL(spi_mem_supports_op);
+
+static int spi_mem_access_start(struct spi_mem *mem)
+{
+	return 0;
+}
+
+static void spi_mem_access_end(struct spi_mem *mem)
+{
+	return;
+}
+
+/**
+ * spi_mem_exec_op() - Execute a memory operation
+ * @mem: the SPI memory
+ * @op: the memory operation to execute
+ *
+ * Executes a memory operation.
+ *
+ * This function first checks that @op is supported and then tries to execute
+ * it.
+ *
+ * Return: 0 in case of success, a negative error code otherwise.
+ */
+int spi_mem_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
+{
+	unsigned int tmpbufsize, xferpos = 0, totalxferlen = 0;
+	struct spi_controller *ctlr = mem->spi->controller;
+	struct spi_transfer xfers[4] = { };
+	struct spi_message msg;
+	u8 *tmpbuf;
+	int ret;
+
+	ret = spi_mem_check_op(op);
+	if (ret)
+		return ret;
+
+	if (!spi_mem_internal_supports_op(mem, op))
+		return -ENOTSUPP;
+
+	if (ctlr->mem_ops) {
+		ret = spi_mem_access_start(mem);
+		if (ret)
+			return ret;
+
+		ret = ctlr->mem_ops->exec_op(mem, op);
+
+		spi_mem_access_end(mem);
+
+		/*
+		 * Some controllers only optimize specific paths (typically the
+		 * read path) and expect the core to use the regular SPI
+		 * interface in other cases.
+		 */
+		if (!ret || ret != -ENOTSUPP)
+			return ret;
+	}
+
+	tmpbufsize = sizeof(op->cmd.opcode) + op->addr.nbytes +
+		     op->dummy.nbytes;
+
+	/*
+	 * Allocate a buffer to transmit the CMD, ADDR cycles with kmalloc() so
+	 * we're guaranteed that this buffer is DMA-able, as required by the
+	 * SPI layer.
+	 */
+	tmpbuf = kzalloc(tmpbufsize, GFP_KERNEL);
+	if (!tmpbuf)
+		return -ENOMEM;
+
+	spi_message_init(&msg);
+
+	tmpbuf[0] = op->cmd.opcode;
+	xfers[xferpos].tx_buf = tmpbuf;
+	xfers[xferpos].len = sizeof(op->cmd.opcode);
+	spi_message_add_tail(&xfers[xferpos], &msg);
+	xferpos++;
+	totalxferlen++;
+
+	if (op->addr.nbytes) {
+		int i;
+
+		for (i = 0; i < op->addr.nbytes; i++)
+			tmpbuf[i + 1] = op->addr.val >>
+					(8 * (op->addr.nbytes - i - 1));
+
+		xfers[xferpos].tx_buf = tmpbuf + 1;
+		xfers[xferpos].len = op->addr.nbytes;
+		spi_message_add_tail(&xfers[xferpos], &msg);
+		xferpos++;
+		totalxferlen += op->addr.nbytes;
+	}
+
+	if (op->dummy.nbytes) {
+		memset(tmpbuf + op->addr.nbytes + 1, 0xff, op->dummy.nbytes);
+		xfers[xferpos].tx_buf = tmpbuf + op->addr.nbytes + 1;
+		xfers[xferpos].len = op->dummy.nbytes;
+		spi_message_add_tail(&xfers[xferpos], &msg);
+		xferpos++;
+		totalxferlen += op->dummy.nbytes;
+	}
+
+	if (op->data.nbytes) {
+		if (op->data.dir == SPI_MEM_DATA_IN)
+			xfers[xferpos].rx_buf = op->data.buf.in;
+		else
+			xfers[xferpos].tx_buf = op->data.buf.out;
+
+		xfers[xferpos].len = op->data.nbytes;
+		spi_message_add_tail(&xfers[xferpos], &msg);
+		xferpos++;
+		totalxferlen += op->data.nbytes;
+	}
+
+	ret = spi_sync(mem->spi, &msg);
+
+	kfree(tmpbuf);
+
+	if (ret)
+		return ret;
+
+	if (msg.actual_length != totalxferlen)
+		return -EIO;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(spi_mem_exec_op);
+
+/**
+ * spi_mem_get_name() - Return the SPI mem device name to be used by the
+ *			upper layer if necessary
+ * @mem: the SPI memory
+ *
+ * This function allows SPI mem users to retrieve the SPI mem device name.
+ * It is useful if the upper layer needs to expose a custom name for
+ * compatibility reasons.
+ *
+ * Return: a string containing the name of the memory device to be used
+ *	   by the SPI mem user
+ */
+const char *spi_mem_get_name(struct spi_mem *mem)
+{
+	return mem->name;
+}
+EXPORT_SYMBOL_GPL(spi_mem_get_name);
+
+/**
+ * spi_mem_adjust_op_size() - Adjust the data size of a SPI mem operation to
+ *			      match controller limitations
+ * @mem: the SPI memory
+ * @op: the operation to adjust
+ *
+ * Some controllers have FIFO limitations and must split a data transfer
+ * operation into multiple ones, others require a specific alignment for
+ * optimized accesses. This function allows SPI mem drivers to split a single
+ * operation into multiple sub-operations when required.
+ *
+ * Return: a negative error code if the controller can't properly adjust @op,
+ *	   0 otherwise. Note that @op->data.nbytes will be updated if @op
+ *	   can't be handled in a single step.
+ */
+int spi_mem_adjust_op_size(struct spi_mem *mem, struct spi_mem_op *op)
+{
+	struct spi_controller *ctlr = mem->spi->controller;
+	size_t len;
+
+	len = sizeof(op->cmd.opcode) + op->addr.nbytes + op->dummy.nbytes;
+
+	if (ctlr->mem_ops && ctlr->mem_ops->adjust_op_size)
+		return ctlr->mem_ops->adjust_op_size(mem, op);
+
+	if (!ctlr->mem_ops || !ctlr->mem_ops->exec_op) {
+		if (len > spi_max_transfer_size(mem->spi))
+			return -EINVAL;
+
+		op->data.nbytes = min3((size_t)op->data.nbytes,
+				      spi_max_transfer_size(mem->spi),
+				      spi_max_message_size(mem->spi) -
+				      len);
+		if (!op->data.nbytes)
+			return -EINVAL;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(spi_mem_adjust_op_size);
+
+static ssize_t spi_mem_no_dirmap_read(struct spi_mem_dirmap_desc *desc,
+				      u64 offs, size_t len, void *buf)
+{
+	struct spi_mem_op op = desc->info.op_tmpl;
+	int ret;
+
+	op.addr.val = desc->info.offset + offs;
+	op.data.buf.in = buf;
+	op.data.nbytes = len;
+	ret = spi_mem_adjust_op_size(desc->mem, &op);
+	if (ret)
+		return ret;
+
+	ret = spi_mem_exec_op(desc->mem, &op);
+	if (ret)
+		return ret;
+
+	return op.data.nbytes;
+}
+
+static ssize_t spi_mem_no_dirmap_write(struct spi_mem_dirmap_desc *desc,
+				       u64 offs, size_t len, const void *buf)
+{
+	struct spi_mem_op op = desc->info.op_tmpl;
+	int ret;
+
+	op.addr.val = desc->info.offset + offs;
+	op.data.buf.out = buf;
+	op.data.nbytes = len;
+	ret = spi_mem_adjust_op_size(desc->mem, &op);
+	if (ret)
+		return ret;
+
+	ret = spi_mem_exec_op(desc->mem, &op);
+	if (ret)
+		return ret;
+
+	return op.data.nbytes;
+}
+
+/**
+ * spi_mem_dirmap_create() - Create a direct mapping descriptor
+ * @mem: SPI mem device this direct mapping should be created for
+ * @info: direct mapping information
+ *
+ * This function is creating a direct mapping descriptor which can then be used
+ * to access the memory using spi_mem_dirmap_read() or spi_mem_dirmap_write().
+ * If the SPI controller driver does not support direct mapping, this function
+ * fallback to an implementation using spi_mem_exec_op(), so that the caller
+ * doesn't have to bother implementing a fallback on his own.
+ *
+ * Return: a valid pointer in case of success, and ERR_PTR() otherwise.
+ */
+struct spi_mem_dirmap_desc *
+spi_mem_dirmap_create(struct spi_mem *mem,
+		      const struct spi_mem_dirmap_info *info)
+{
+	struct spi_controller *ctlr = mem->spi->controller;
+	struct spi_mem_dirmap_desc *desc;
+	int ret = -ENOTSUPP;
+
+	/* Make sure the number of address cycles is between 1 and 8 bytes. */
+	if (!info->op_tmpl.addr.nbytes || info->op_tmpl.addr.nbytes > 8)
+		return ERR_PTR(-EINVAL);
+
+	/* data.dir should either be SPI_MEM_DATA_IN or SPI_MEM_DATA_OUT. */
+	if (info->op_tmpl.data.dir == SPI_MEM_NO_DATA)
+		return ERR_PTR(-EINVAL);
+
+	desc = kzalloc(sizeof(*desc), GFP_KERNEL);
+	if (!desc)
+		return ERR_PTR(-ENOMEM);
+
+	desc->mem = mem;
+	desc->info = *info;
+	if (ctlr->mem_ops && ctlr->mem_ops->dirmap_create)
+		ret = ctlr->mem_ops->dirmap_create(desc);
+
+	if (ret) {
+		desc->nodirmap = true;
+		if (!spi_mem_supports_op(desc->mem, &desc->info.op_tmpl))
+			ret = -ENOTSUPP;
+		else
+			ret = 0;
+	}
+
+	if (ret) {
+		kfree(desc);
+		return ERR_PTR(ret);
+	}
+
+	return desc;
+}
+EXPORT_SYMBOL_GPL(spi_mem_dirmap_create);
+
+/**
+ * spi_mem_dirmap_destroy() - Destroy a direct mapping descriptor
+ * @desc: the direct mapping descriptor to destroy
+ * @info: direct mapping information
+ *
+ * This function destroys a direct mapping descriptor previously created by
+ * spi_mem_dirmap_create().
+ */
+void spi_mem_dirmap_destroy(struct spi_mem_dirmap_desc *desc)
+{
+	struct spi_controller *ctlr = desc->mem->spi->controller;
+
+	if (!desc->nodirmap && ctlr->mem_ops && ctlr->mem_ops->dirmap_destroy)
+		ctlr->mem_ops->dirmap_destroy(desc);
+}
+EXPORT_SYMBOL_GPL(spi_mem_dirmap_destroy);
+
+/**
+ * spi_mem_dirmap_dirmap_read() - Read data through a direct mapping
+ * @desc: direct mapping descriptor
+ * @offs: offset to start reading from. Note that this is not an absolute
+ *	  offset, but the offset within the direct mapping which already has
+ *	  its own offset
+ * @len: length in bytes
+ * @buf: destination buffer. This buffer must be DMA-able
+ *
+ * This function reads data from a memory device using a direct mapping
+ * previously instantiated with spi_mem_dirmap_create().
+ *
+ * Return: the amount of data read from the memory device or a negative error
+ * code. Note that the returned size might be smaller than @len, and the caller
+ * is responsible for calling spi_mem_dirmap_read() again when that happens.
+ */
+ssize_t spi_mem_dirmap_read(struct spi_mem_dirmap_desc *desc,
+			    u64 offs, size_t len, void *buf)
+{
+	struct spi_controller *ctlr = desc->mem->spi->controller;
+	ssize_t ret;
+
+	if (desc->info.op_tmpl.data.dir != SPI_MEM_DATA_IN)
+		return -EINVAL;
+
+	if (!len)
+		return 0;
+
+	if (desc->nodirmap) {
+		ret = spi_mem_no_dirmap_read(desc, offs, len, buf);
+	} else if (ctlr->mem_ops && ctlr->mem_ops->dirmap_read) {
+		ret = spi_mem_access_start(desc->mem);
+		if (ret)
+			return ret;
+
+		ret = ctlr->mem_ops->dirmap_read(desc, offs, len, buf);
+
+		spi_mem_access_end(desc->mem);
+	} else {
+		ret = -ENOTSUPP;
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(spi_mem_dirmap_read);
+
+/**
+ * spi_mem_dirmap_dirmap_write() - Write data through a direct mapping
+ * @desc: direct mapping descriptor
+ * @offs: offset to start writing from. Note that this is not an absolute
+ *	  offset, but the offset within the direct mapping which already has
+ *	  its own offset
+ * @len: length in bytes
+ * @buf: source buffer. This buffer must be DMA-able
+ *
+ * This function writes data to a memory device using a direct mapping
+ * previously instantiated with spi_mem_dirmap_create().
+ *
+ * Return: the amount of data written to the memory device or a negative error
+ * code. Note that the returned size might be smaller than @len, and the caller
+ * is responsible for calling spi_mem_dirmap_write() again when that happens.
+ */
+ssize_t spi_mem_dirmap_write(struct spi_mem_dirmap_desc *desc,
+			     u64 offs, size_t len, const void *buf)
+{
+	struct spi_controller *ctlr = desc->mem->spi->controller;
+	ssize_t ret;
+
+	if (desc->info.op_tmpl.data.dir != SPI_MEM_DATA_OUT)
+		return -EINVAL;
+
+	if (!len)
+		return 0;
+
+	if (desc->nodirmap) {
+		ret = spi_mem_no_dirmap_write(desc, offs, len, buf);
+	} else if (ctlr->mem_ops && ctlr->mem_ops->dirmap_write) {
+		ret = spi_mem_access_start(desc->mem);
+		if (ret)
+			return ret;
+
+		ret = ctlr->mem_ops->dirmap_write(desc, offs, len, buf);
+
+		spi_mem_access_end(desc->mem);
+	} else {
+		ret = -ENOTSUPP;
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(spi_mem_dirmap_write);
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 7756304f1981..d9311d4af508 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -19,6 +19,7 @@
  */
 
 #include <common.h>
+#include <linux/spi/spi-mem.h>
 #include <spi/spi.h>
 #include <xfuncs.h>
 #include <malloc.h>
@@ -58,6 +59,7 @@ struct spi_device *spi_new_device(struct spi_controller *ctrl,
 				  struct spi_board_info *chip)
 {
 	struct spi_device	*proxy;
+	struct spi_mem		*mem;
 	int			status;
 
 	/* Chipselects are numbered 0..max; validate. */
@@ -84,6 +86,15 @@ struct spi_device *spi_new_device(struct spi_controller *ctrl,
 	proxy->dev.parent = ctrl->dev;
 	proxy->master = proxy->controller = ctrl;
 
+	mem = xzalloc(sizeof *mem);
+	mem->spi = proxy;
+
+	if (ctrl->mem_ops && ctrl->mem_ops->get_name)
+		mem->name = ctrl->mem_ops->get_name(mem);
+	else
+		mem->name = dev_name(&proxy->dev);
+	proxy->mem = mem;
+
 	/* drivers may modify this initial i/o setup */
 	status = ctrl->setup(proxy);
 	if (status < 0) {
@@ -194,6 +205,26 @@ static void scan_boardinfo(struct spi_controller *ctrl)
 
 static LIST_HEAD(spi_controller_list);
 
+static int spi_controller_check_ops(struct spi_controller *ctlr)
+{
+	/*
+	 * The controller may implement only the high-level SPI-memory like
+	 * operations if it does not support regular SPI transfers, and this is
+	 * valid use case.
+	 * If ->mem_ops is NULL, we request that at least one of the
+	 * ->transfer_xxx() method be implemented.
+	 */
+	if (ctlr->mem_ops) {
+		if (!ctlr->mem_ops->exec_op)
+			return -EINVAL;
+	} else if (!ctlr->transfer) {
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+
 /**
  * spi_register_ctrl - register SPI ctrl controller
  * @ctrl: initialized ctrl, originally from spi_alloc_ctrl()
@@ -221,6 +252,14 @@ int spi_register_controller(struct spi_controller *ctrl)
 
 	debug("%s: %s:%d\n", __func__, ctrl->dev->name, ctrl->dev->id);
 
+	/*
+	 * Make sure all necessary hooks are implemented before registering
+	 * the SPI controller.
+	 */
+	status = spi_controller_check_ops(ctrl);
+	if (status)
+		return status;
+
 	/* even if it's just one always-selected device, there must
 	 * be at least one chipselect
 	 */
diff --git a/include/linux/spi/spi-mem.h b/include/linux/spi/spi-mem.h
new file mode 100644
index 000000000000..f65104d2d198
--- /dev/null
+++ b/include/linux/spi/spi-mem.h
@@ -0,0 +1,307 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (C) 2018 Exceet Electronics GmbH
+ * Copyright (C) 2018 Bootlin
+ *
+ * Author:
+ *	Peter Pan <peterpandong@micron.com>
+ *	Boris Brezillon <boris.brezillon@bootlin.com>
+ */
+
+#ifndef __LINUX_SPI_MEM_H
+#define __LINUX_SPI_MEM_H
+
+#include <spi/spi.h>
+
+#define SPI_MEM_OP_CMD(__opcode, __buswidth)			\
+	{							\
+		.buswidth = __buswidth,				\
+		.opcode = __opcode,				\
+	}
+
+#define SPI_MEM_OP_ADDR(__nbytes, __val, __buswidth)		\
+	{							\
+		.nbytes = __nbytes,				\
+		.val = __val,					\
+		.buswidth = __buswidth,				\
+	}
+
+#define SPI_MEM_OP_NO_ADDR	{ }
+
+#define SPI_MEM_OP_DUMMY(__nbytes, __buswidth)			\
+	{							\
+		.nbytes = __nbytes,				\
+		.buswidth = __buswidth,				\
+	}
+
+#define SPI_MEM_OP_NO_DUMMY	{ }
+
+#define SPI_MEM_OP_DATA_IN(__nbytes, __buf, __buswidth)		\
+	{							\
+		.dir = SPI_MEM_DATA_IN,				\
+		.nbytes = __nbytes,				\
+		.buf.in = __buf,				\
+		.buswidth = __buswidth,				\
+	}
+
+#define SPI_MEM_OP_DATA_OUT(__nbytes, __buf, __buswidth)	\
+	{							\
+		.dir = SPI_MEM_DATA_OUT,			\
+		.nbytes = __nbytes,				\
+		.buf.out = __buf,				\
+		.buswidth = __buswidth,				\
+	}
+
+#define SPI_MEM_OP_NO_DATA	{ }
+
+/**
+ * enum spi_mem_data_dir - describes the direction of a SPI memory data
+ *			   transfer from the controller perspective
+ * @SPI_MEM_NO_DATA: no data transferred
+ * @SPI_MEM_DATA_IN: data coming from the SPI memory
+ * @SPI_MEM_DATA_OUT: data sent to the SPI memory
+ */
+enum spi_mem_data_dir {
+	SPI_MEM_NO_DATA,
+	SPI_MEM_DATA_IN,
+	SPI_MEM_DATA_OUT,
+};
+
+/**
+ * struct spi_mem_op - describes a SPI memory operation
+ * @cmd.buswidth: number of IO lines used to transmit the command
+ * @cmd.opcode: operation opcode
+ * @addr.nbytes: number of address bytes to send. Can be zero if the operation
+ *		 does not need to send an address
+ * @addr.buswidth: number of IO lines used to transmit the address cycles
+ * @addr.val: address value. This value is always sent MSB first on the bus.
+ *	      Note that only @addr.nbytes are taken into account in this
+ *	      address value, so users should make sure the value fits in the
+ *	      assigned number of bytes.
+ * @dummy.nbytes: number of dummy bytes to send after an opcode or address. Can
+ *		  be zero if the operation does not require dummy bytes
+ * @dummy.buswidth: number of IO lanes used to transmit the dummy bytes
+ * @data.buswidth: number of IO lanes used to send/receive the data
+ * @data.dir: direction of the transfer
+ * @data.nbytes: number of data bytes to send/receive. Can be zero if the
+ *		 operation does not involve transferring data
+ * @data.buf.in: input buffer (must be DMA-able)
+ * @data.buf.out: output buffer (must be DMA-able)
+ */
+struct spi_mem_op {
+	struct {
+		u8 buswidth;
+		u8 opcode;
+	} cmd;
+
+	struct {
+		u8 nbytes;
+		u8 buswidth;
+		u64 val;
+	} addr;
+
+	struct {
+		u8 nbytes;
+		u8 buswidth;
+	} dummy;
+
+	struct {
+		u8 buswidth;
+		enum spi_mem_data_dir dir;
+		unsigned int nbytes;
+		union {
+			void *in;
+			const void *out;
+		} buf;
+	} data;
+};
+
+#define SPI_MEM_OP(__cmd, __addr, __dummy, __data)		\
+	{							\
+		.cmd = __cmd,					\
+		.addr = __addr,					\
+		.dummy = __dummy,				\
+		.data = __data,					\
+	}
+
+/**
+ * struct spi_mem_dirmap_info - Direct mapping information
+ * @op_tmpl: operation template that should be used by the direct mapping when
+ *	     the memory device is accessed
+ * @offset: absolute offset this direct mapping is pointing to
+ * @length: length in byte of this direct mapping
+ *
+ * These information are used by the controller specific implementation to know
+ * the portion of memory that is directly mapped and the spi_mem_op that should
+ * be used to access the device.
+ * A direct mapping is only valid for one direction (read or write) and this
+ * direction is directly encoded in the ->op_tmpl.data.dir field.
+ */
+struct spi_mem_dirmap_info {
+	struct spi_mem_op op_tmpl;
+	u64 offset;
+	u64 length;
+};
+
+/**
+ * struct spi_mem_dirmap_desc - Direct mapping descriptor
+ * @mem: the SPI memory device this direct mapping is attached to
+ * @info: information passed at direct mapping creation time
+ * @nodirmap: set to 1 if the SPI controller does not implement
+ *	      ->mem_ops->dirmap_create() or when this function returned an
+ *	      error. If @nodirmap is true, all spi_mem_dirmap_{read,write}()
+ *	      calls will use spi_mem_exec_op() to access the memory. This is a
+ *	      degraded mode that allows spi_mem drivers to use the same code
+ *	      no matter whether the controller supports direct mapping or not
+ * @priv: field pointing to controller specific data
+ *
+ * Common part of a direct mapping descriptor. This object is created by
+ * spi_mem_dirmap_create() and controller implementation of ->create_dirmap()
+ * can create/attach direct mapping resources to the descriptor in the ->priv
+ * field.
+ */
+struct spi_mem_dirmap_desc {
+	struct spi_mem *mem;
+	struct spi_mem_dirmap_info info;
+	unsigned int nodirmap;
+	void *priv;
+};
+
+/**
+ * struct spi_mem - describes a SPI memory device
+ * @spi: the underlying SPI device
+ * @drvpriv: spi_mem_driver private data
+ * @name: name of the SPI memory device
+ *
+ * Extra information that describe the SPI memory device and may be needed by
+ * the controller to properly handle this device should be placed here.
+ *
+ * One example would be the device size since some controller expose their SPI
+ * mem devices through a io-mapped region.
+ */
+struct spi_mem {
+	struct spi_device *spi;
+	void *drvpriv;
+	const char *name;
+};
+
+/**
+ * struct spi_mem_set_drvdata() - attach driver private data to a SPI mem
+ *				  device
+ * @mem: memory device
+ * @data: data to attach to the memory device
+ */
+static inline void spi_mem_set_drvdata(struct spi_mem *mem, void *data)
+{
+	mem->drvpriv = data;
+}
+
+/**
+ * struct spi_mem_get_drvdata() - get driver private data attached to a SPI mem
+ *				  device
+ * @mem: memory device
+ *
+ * Return: the data attached to the mem device.
+ */
+static inline void *spi_mem_get_drvdata(struct spi_mem *mem)
+{
+	return mem->drvpriv;
+}
+
+/**
+ * struct spi_controller_mem_ops - SPI memory operations
+ * @adjust_op_size: shrink the data xfer of an operation to match controller's
+ *		    limitations (can be alignment of max RX/TX size
+ *		    limitations)
+ * @supports_op: check if an operation is supported by the controller
+ * @exec_op: execute a SPI memory operation
+ * @get_name: get a custom name for the SPI mem device from the controller.
+ *	      This might be needed if the controller driver has been ported
+ *	      to use the SPI mem layer and a custom name is used to keep
+ *	      mtdparts compatible.
+ *	      Note that if the implementation of this function allocates memory
+ *	      dynamically, then it should do so with devm_xxx(), as we don't
+ *	      have a ->free_name() function.
+ * @dirmap_create: create a direct mapping descriptor that can later be used to
+ *		   access the memory device. This method is optional
+ * @dirmap_destroy: destroy a memory descriptor previous created by
+ *		    ->dirmap_create()
+ * @dirmap_read: read data from the memory device using the direct mapping
+ *		 created by ->dirmap_create(). The function can return less
+ *		 data than requested (for example when the request is crossing
+ *		 the currently mapped area), and the caller of
+ *		 spi_mem_dirmap_read() is responsible for calling it again in
+ *		 this case.
+ * @dirmap_write: write data to the memory device using the direct mapping
+ *		  created by ->dirmap_create(). The function can return less
+ *		  data than requested (for example when the request is crossing
+ *		  the currently mapped area), and the caller of
+ *		  spi_mem_dirmap_write() is responsible for calling it again in
+ *		  this case.
+ *
+ * This interface should be implemented by SPI controllers providing an
+ * high-level interface to execute SPI memory operation, which is usually the
+ * case for QSPI controllers.
+ *
+ * Note on ->dirmap_{read,write}(): drivers should avoid accessing the direct
+ * mapping from the CPU because doing that can stall the CPU waiting for the
+ * SPI mem transaction to finish, and this will make real-time maintainers
+ * unhappy and might make your system less reactive. Instead, drivers should
+ * use DMA to access this direct mapping.
+ */
+struct spi_controller_mem_ops {
+	int (*adjust_op_size)(struct spi_mem *mem, struct spi_mem_op *op);
+	bool (*supports_op)(struct spi_mem *mem,
+			    const struct spi_mem_op *op);
+	int (*exec_op)(struct spi_mem *mem,
+		       const struct spi_mem_op *op);
+	const char *(*get_name)(struct spi_mem *mem);
+	int (*dirmap_create)(struct spi_mem_dirmap_desc *desc);
+	void (*dirmap_destroy)(struct spi_mem_dirmap_desc *desc);
+	ssize_t (*dirmap_read)(struct spi_mem_dirmap_desc *desc,
+			       u64 offs, size_t len, void *buf);
+	ssize_t (*dirmap_write)(struct spi_mem_dirmap_desc *desc,
+				u64 offs, size_t len, const void *buf);
+};
+
+/**
+ * struct spi_mem_driver - SPI memory driver
+ * @spidrv: inherit from a SPI driver
+ * @probe: probe a SPI memory. Usually where detection/initialization takes
+ *	   place
+ * @remove: remove a SPI memory
+ *
+ * This is just a thin wrapper around a spi_driver. The core takes care of
+ * allocating the spi_mem object and forwarding the probe/remove
+ * request to the spi_mem_driver. The reason we use this wrapper is because
+ * we might have to stuff more information into the spi_mem struct to let
+ * SPI controllers know more about the SPI memory they interact with, and
+ * having this intermediate layer allows us to do that without adding more
+ * useless fields to the spi_device object.
+ */
+struct spi_mem_driver {
+	struct driver_d spidrv;
+	int (*probe)(struct spi_mem *mem);
+	int (*remove)(struct spi_mem *mem);
+};
+
+int spi_mem_adjust_op_size(struct spi_mem *mem, struct spi_mem_op *op);
+
+bool spi_mem_supports_op(struct spi_mem *mem,
+			 const struct spi_mem_op *op);
+
+int spi_mem_exec_op(struct spi_mem *mem,
+		    const struct spi_mem_op *op);
+
+const char *spi_mem_get_name(struct spi_mem *mem);
+
+struct spi_mem_dirmap_desc *
+spi_mem_dirmap_create(struct spi_mem *mem,
+		      const struct spi_mem_dirmap_info *info);
+void spi_mem_dirmap_destroy(struct spi_mem_dirmap_desc *desc);
+ssize_t spi_mem_dirmap_read(struct spi_mem_dirmap_desc *desc,
+			    u64 offs, size_t len, void *buf);
+ssize_t spi_mem_dirmap_write(struct spi_mem_dirmap_desc *desc,
+			     u64 offs, size_t len, const void *buf);
+
+#endif /* __LINUX_SPI_MEM_H */
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 6eeaf254c713..bdcda0bb603c 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -2,8 +2,12 @@
 #define __INCLUDE_SPI_H
 
 #include <driver.h>
+#include <linux/err.h>
+#include <linux/kernel.h>
 #include <linux/string.h>
 
+struct spi_controller_mem_ops;
+
 struct spi_board_info {
 	char	*name;
 	int 	max_speed_hz;
@@ -62,6 +66,7 @@ struct spi_device {
 	struct device_d		dev;
 	struct spi_controller	*controller;
 	struct spi_controller	*master;	/* compatibility layer */
+	struct spi_mem		*mem;
 	u32			max_speed_hz;
 	u8			chip_select;
 	u8			mode;
@@ -109,6 +114,13 @@ struct spi_message;
  * @dev: device interface to this driver
  * @bus_num: board-specific (and often SOC-specific) identifier for a
  *	given SPI controller.
+ * @mem_ops: optimized/dedicated operations for interactions with SPI
+ *      memory. This field is optional and should only be implemented
+ *      if the controller has native support for memory like operations.
+ * @max_transfer_size: function that returns the max transfer size for
+ *	a &spi_device; may be %NULL, so the default %SIZE_MAX will be used.
+ * @max_message_size: function that returns the max message size for
+ *	a &spi_device; may be %NULL, so the default %SIZE_MAX will be used.
  * @num_chipselect: chipselects are used to distinguish individual
  *	SPI slaves, and are numbered from zero to num_chipselects.
  *	each slave has a chipselect signal, but it's common that not
@@ -144,6 +156,15 @@ struct spi_controller {
 	 */
 	s16			bus_num;
 
+	/* Optimized handlers for SPI memory-like operations */
+	const struct spi_controller_mem_ops *mem_ops;
+	/*
+	 * on some hardware transfer size may be constrained
+	 * the limit may depend on device transfer settings
+	 */
+	size_t (*max_transfer_size)(struct spi_device *spi);
+	size_t (*max_message_size)(struct spi_device *spi);
+
 	/* chipselects will be integral to many controllers; some others
 	 * might use board-specific GPIOs.
 	 */
@@ -180,6 +201,40 @@ struct spi_controller {
 	struct list_head list;
 };
 
+static inline void *spi_controller_get_devdata(struct spi_controller *ctlr)
+{
+	if (ctlr->dev->platform_data)
+		return ctlr->dev->platform_data;
+	else
+		return ERR_PTR(-EINVAL);
+}
+
+static inline void spi_controller_set_devdata(struct spi_controller *ctlr,
+					      void *data)
+{
+	ctlr->dev->platform_data = data;
+}
+
+static inline size_t spi_max_message_size(struct spi_device *spi)
+{
+	struct spi_controller *ctrl = spi->controller;
+	if (!ctrl->max_transfer_size)
+		return SIZE_MAX;
+	return ctrl->max_transfer_size(spi);
+}
+
+static inline size_t spi_max_transfer_size(struct spi_device *spi)
+{
+	struct spi_controller *ctrl = spi->controller;
+	size_t tr_max = SIZE_MAX;
+	size_t msg_max = spi_max_message_size(spi);
+
+	if (ctrl->max_transfer_size)
+		tr_max = ctrl->max_transfer_size(spi);
+
+	return min(tr_max, msg_max);
+}
+
 #define spi_master  			spi_controller
 #define spi_register_master(_ctrl)	spi_register_controller(_ctrl)
 
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
