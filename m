Delivery-date: Thu, 12 Jun 2025 15:21:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPhs5-006WPl-1O
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 15:21:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPhs3-0005mE-8F
	for lore@pengutronix.de; Thu, 12 Jun 2025 15:21:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xGZdvlPEHUp2+EApn5LP7EP7wOOPmGeFwafJrA3PcYE=; b=ycZXlJfxUbDgjCZpoJ4sfJ1LYO
	JhbVgiDTvDKELFe8jKxbjieXS2KFUtLPII2WjHE8khp1kGjreYlXbBOrtbN8XkTQKq1HeOahdg8xZ
	Ef6V4PDCP0YA4X3q30Zn6bAcLcLio5/RSX5sHJNJ9O6CHb7SLnxDdw/FEndHgkGBeIY9e/SpAYoHo
	tSKuiPD6CQWsa/JwZw5fgSl2OPeb19AerzlhWBVxP3quuGkOB/enSYGiDo/5YI34weAJn2KInVtLf
	gwENdUwb/TAc316v3tOW0MlvRwdrjx1yUjaHsH2YrTg5nwR4BOrh3VIDv4YyQ13pwcUOL21tKxuJ3
	LR86jXVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhrP-0000000DPhw-1wFA;
	Thu, 12 Jun 2025 13:20:51 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPh9p-0000000DGrP-3KY7
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 12:35:51 +0000
Received: from fedora ([178.24.249.19]) by mrelayeu.kundenserver.de (mreue106
 [213.165.67.113]) with ESMTPSA (Nemesis) id 1MvJo7-1uhMSm0XDN-014sn2; Thu, 12
 Jun 2025 14:35:37 +0200
From: Johannes Roith <johannes@gnu-linux.rocks>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	michael.graichen@hotmail.com,
	a.fatoum@barebox.org,
	m.tretter@pengutronix.de,
	Johannes Roith <johannes@gnu-linux.rocks>
Date: Thu, 12 Jun 2025 14:35:12 +0200
Message-ID: <20250612123512.38091-1-johannes@gnu-linux.rocks>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:5aQFGybHKpdToB8qw4b7B+e7aiaF35JH8aF8FYB4SkU792LlG67
 BLXyqAEOkwNRGUiLq94kRh2pWG7fqgAs5MKRGdCV+vTpdWZgK5XtursFXQQZku03SC8eqhk
 X6VY+BWAXrY94ntjPDIuFr4Rs63JtnaPrkL18+OYAbaaUq6n17TMeoiC1gQxgU5GEc7ljHf
 FcBwIEShnhjs/HEPZM9FQ==
UI-OutboundReport: notjunk:1;M01:P0:c8paWTijhs8=;GWl63lYz83mgtjQYNrkyKavXwtK
 pE9RoWQOWL9CfWyw4WqbTZAzFXrPakS97OdVrrHzlNoGdtOulZ9Zv/fgbcQCCZHKqKG+6k5ta
 4tK56X7a02ANX0lwW9PAtTGc1M6eK+oEHoY/tJrV5ecmP5QahRxhcIq8K/XUQ1vpzlgNGijou
 /ZfUotZnXty6i8z6W0X6dABpKPiK36wjxJVnx4HzRMRgQFzdHnyqZM8dDIn+tYyIXLnam8fJ2
 N4I+PaH1oUX7zCrvs5UvdMe8HIbw+JbndYpbDRA7u6m58lrcpefDXKjXkLGjzNLO9GYemjWCO
 Zh5dIwCTUb/70lVzSue0VIQCBByCBxZjb1pToyli7vqeNfaa/GIPoF0nS0CtCgcoz65efWYKm
 9cc9q0dFrrzcqsiefNRhUkvpI3d8qkgSQl5XMC8VO+CXpgk1kc/xKe/310TuagSA7SWKdkE9Q
 D+PRXKn3W+YD3GrXOKLzMipSgEOz5dSwHy/gRT4PIWbFiKwpqn0A0e14TLhk3se/rxHW1QqSB
 JmiTrP3cl8ImwPv6XYAzAbT6c5hL/V9j8FGVXgp/BKlnD4h8ZAyj80r9mvZT/jv3tJCkFVsBP
 p2eIgaBDJoVcsdbLw4QH1w90ydcVed1wf7fOMdVQYiul+Zyk8sxLnbfYyNY6cKPBRUQ9rDqTQ
 6nBaVBf1+VHgoDmhbWKUru3thpCXIeSFPDrgw3+9j7F5uwN8lBLWkvAJRgTJH5pS21QLZnT+Z
 miXZ1ZxnlXK9TA0RDFVbPYt0FEOz4W1I4v/+aw+iLFT9ocf4utHPv/2ySSe85hg4m3cYSPkUA
 qGaUTZ0HxkkpoLIWSdPhf1ZDHOw0gpq8JGVqN+L2nvdZJtCwSq+kxm9hS/VYrlvFjhn82JIIc
 6NDHtgv8TP5zkyal/kwc7fneT9JK4v529Q9zDsyTrJ7hkf0vs7U6VN4gLkSJm5B5bQVt6Hy+H
 1X6lzWorprzw2+tZ49zpmgx4dmqv9Mr5yxKpeljz437oibxEO0U1KbfDar0ehETwWq39fxzWB
 Dq3kv5fPLfangcePxygFxXU8PPlllwxBpmLMJc6B8eiOMciS40eIiDJHZgcHIru3xhQ87a99D
 itOviEQGjcS70VMRZLhK+RL5LKWQZyX1BysvWKyn1r9vKA+MveeYwN8eKXp4mAxjA0QiDNXXx
 +APdRKfe4SI08x9Ke7YCcxCcZlfhHkvSRcTbSEBT5P4bTRrDCq3BDQmLdN1j4zdujPAH03CU3
 KpiixxelD0pPvTx4EnwpiGVw05/B4fpdjQWRGQhXsl3KItquxLVT8zBV8wViZty8UQ62o7Edp
 5dSrHgGWTJIFbRdlKMHL6Gm3iel9zzW7Ae2c79f3WYbVb4Q1blqKX6xtWn/fHC6J+EzM5aAnB
 RzotS1qdHZ5JNzMkfbjq9dXnq8PLnikYbzOJ7M61cuo5R2In3sRK3E/ycD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_053550_298644_5463DBCF 
X-CRM114-Status: GOOD (  30.56  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] Added support for Zynq 7000 FPGA firmware loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch adds support for loading the FPGA firmware to the PL of the
Zynq 7000 over barebox. It adds a new driver xilinx-fpga.c which uses
the code of the former zynqmp-firmware.c driver but supports loading the
PL on the Zynq 7000 and the ZynqMP SoC.

Signed-off-by: Johannes Roith <johannes@gnu-linux.rocks>
---
 arch/arm/configs/zynq_defconfig   |   1 +
 drivers/firmware/Kconfig          |  16 ++
 drivers/firmware/Makefile         |   2 +
 drivers/firmware/xilinx-fpga.c    | 372 +++++++++++++++++++++++++++
 drivers/firmware/zynq-fpga.c      | 162 ++++++++++++
 drivers/firmware/zynqmp-fpga.c    | 407 +++---------------------------
 include/mach/zynq/zynq-pcap.h     |  64 +++++
 include/mach/zynqmp/zynqmp-pcap.h |  41 +++
 include/xilinx-firmware.h         |  54 ++++
 9 files changed, 742 insertions(+), 377 deletions(-)
 create mode 100644 drivers/firmware/xilinx-fpga.c
 create mode 100644 drivers/firmware/zynq-fpga.c
 create mode 100644 include/mach/zynq/zynq-pcap.h
 create mode 100644 include/mach/zynqmp/zynqmp-pcap.h
 create mode 100644 include/xilinx-firmware.h

diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
index 1a1378d3e0..c95bea1d10 100644
--- a/arch/arm/configs/zynq_defconfig
+++ b/arch/arm/configs/zynq_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_ZYNQ=y
 CONFIG_MACH_ZEDBOARD=y
+CONFIG_FIRMWARE_ZYNQ7000_FPGA=y
 CONFIG_AEABI=y
 CONFIG_ARM_UNWIND=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 264f7b2a5a..649b80ac28 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -20,13 +20,29 @@ config FIRMWARE_ALTERA_SOCFPGA
 	depends on ARCH_SOCFPGA
 	select FIRMWARE
 
+config FIRMWARE_XILINX_FPGA
+	bool "Xilinx Zynq7000/ZynqMP FPGA loader"
+	depends on ARCH_ZYNQMP || ARCH_ZYNQ
+	select FIRMWARE
+	help
+	  Load a bitstream to the PL of Zynq 7000 or Zynq  Ultrascale+
+
 config FIRMWARE_ZYNQMP_FPGA
 	bool "Xilinx ZynqMP FPGA loader"
 	depends on ARCH_ZYNQMP
 	select FIRMWARE
+	select FIRMWARE_XILINX_FPGA
 	help
 	  Load a bitstream to the PL of Zynq Ultrascale+
 
+config FIRMWARE_ZYNQ7000_FPGA
+	bool "Xilinx Zynq FPGA loader"
+	depends on ARCH_ZYNQ
+	select FIRMWARE
+	select FIRMWARE_XILINX_FPGA
+	help
+	  Load a bitstream to the PL of Zynq 7000
+
 config QEMU_FW_CFG
 	bool "QEMU FW CFG interface"
 	help
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index d0ebe663ea..89856bd975 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -3,6 +3,8 @@ obj-$(CONFIG_SEMIHOSTING) += semihosting.o
 obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
 obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o socfpga_sdr.o
 obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynqmp-fpga.o
+obj-$(CONFIG_FIRMWARE_ZYNQ7000_FPGA) += zynq-fpga.o
+obj-$(CONFIG_FIRMWARE_XILINX_FPGA) += xilinx-fpga.o
 obj-$(CONFIG_QEMU_FW_CFG) += qemu_fw_cfg.o
 obj-$(CONFIG_TI_SCI_PROTOCOL) += ti_sci.o
 obj-y += arm_scmi/
diff --git a/drivers/firmware/xilinx-fpga.c b/drivers/firmware/xilinx-fpga.c
new file mode 100644
index 0000000000..18d4e62ed1
--- /dev/null
+++ b/drivers/firmware/xilinx-fpga.c
@@ -0,0 +1,372 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Xilinx Zynq MPSoC PL loading
+ *
+ * Copyright (c) 2018 Thomas Haemmerle <thomas.haemmerle at wolfvision.net>
+ *
+ * based on U-Boot zynqmppl code
+ *
+ * (C) Copyright 2015 - 2016, Xilinx, Inc,
+ * Michal Simek <michal.simek at xilinx.com>
+ * Siva Durga Prasad <siva.durga.paladugu at xilinx.com> *
+ */
+
+#include <firmware.h>
+#include <xilinx-firmware.h>
+#include <common.h>
+#include <init.h>
+#include <dma.h>
+#include <mach/zynqmp/zynqmp-pcap.h>
+#include <mach/zynq/zynq-pcap.h>
+
+struct xilinx_fpga_devdata zynqmp_devdata = {
+	.bus_width_auto_detect1_offset = ZYNQMP_BUS_WIDTH_AUTO_DETECT1_OFFSET,
+	.bus_width_auto_detect2_offset = ZYNQMP_BUS_WIDTH_AUTO_DETECT2_OFFSET,
+	.sync_word_offset = ZYNQMP_SYNC_WORD_OFFSET,
+	.bin_header_length = ZYNQMP_BIN_HEADER_LENGTH,
+	.dev_init = zynqmp_init,
+	.dev_programmed_get = zynqmp_programmed_get,
+	.dev_fpga_load = zynqmp_fpga_load,
+};
+
+static struct xilinx_fpga_devdata zynq_devdata = {
+	.bus_width_auto_detect1_offset = ZYNQ_BUS_WIDTH_AUTO_DETECT1_OFFSET,
+	.bus_width_auto_detect2_offset = ZYNQ_BUS_WIDTH_AUTO_DETECT2_OFFSET,
+	.sync_word_offset = ZYNQ_SYNC_WORD_OFFSET,
+	.bin_header_length = ZYNQ_BIN_HEADER_LENGTH,
+	.dev_init = zynq_init,
+	.dev_programmed_get = zynq_programmed_get,
+	.dev_fpga_load = zynq_fpga_load,
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
+static int get_byte_order(const struct xilinx_fpga_devdata *devdata,
+			  const u32 *bin_header, size_t size,
+			  enum xilinx_byte_order *byte_order)
+{
+	if (size < devdata->bin_header_length * sizeof(*bin_header))
+		return -EINVAL;
+
+	if (bin_header[devdata->sync_word_offset] == SYNC_WORD) {
+		*byte_order = XILINX_BYTE_ORDER_BIT;
+		return 0;
+	}
+
+	if (bin_header[devdata->sync_word_offset] == __swab32(SYNC_WORD)) {
+		*byte_order = XILINX_BYTE_ORDER_BIN;
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+static bool is_bin_header_valid(const struct xilinx_fpga_devdata *devdata,
+				const u32 *bin_header, size_t size,
+				enum xilinx_byte_order byte_order)
+{
+	size_t i;
+
+	if (size < devdata->bin_header_length * sizeof(*bin_header))
+		return false;
+
+	for (i = 0; i < devdata->bin_header_length; i++, bin_header++) {
+		u32 current;
+		u32 expected;
+
+		if (byte_order == XILINX_BYTE_ORDER_BIT)
+			current = *bin_header;
+		else
+			current = __swab32(*bin_header);
+
+		if (i == devdata->bus_width_auto_detect1_offset)
+			expected = BUS_WIDTH_AUTO_DETECT1;
+		else if (i == devdata->bus_width_auto_detect2_offset)
+			expected = BUS_WIDTH_AUTO_DETECT2;
+		else if (i == devdata->sync_word_offset)
+			expected = SYNC_WORD;
+		else
+			expected = DUMMY_WORD;
+
+		if (current != expected)
+			return false;
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
+static void xilinx_fpga_show_header(const struct device *dev,
+				    struct bs_header *header, size_t size)
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
+			      (length << 16) + (entry->data[0] << 8)
+			      + entry->data[1]);
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
+	struct device *hw_dev = mgr->dev.parent;
+	u32 *buf_aligned;
+	u32 buf_size;
+	u32 *body;
+	size_t body_length;
+	int header_length = 0;
+	enum xilinx_byte_order byte_order;
+	dma_addr_t addr;
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
+	xilinx_fpga_show_header(&mgr->dev,
+			      (struct bs_header *)mgr->buf, header_length);
+
+	body = (u32 *)&mgr->buf[header_length];
+	body_length = mgr->size - header_length;
+
+	status = get_byte_order(mgr->devdata, body, body_length, &byte_order);
+	if (status < 0)
+		goto err_free;
+
+	if (!is_bin_header_valid(mgr->devdata, body, body_length, byte_order)) {
+		dev_err(&mgr->dev, "Invalid bitstream header\n");
+		status =  -EINVAL;
+		goto err_free;
+	}
+
+	/*
+	 * The PMU FW variants without the ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED
+	 * feature expect a pointer to the bitstream size, which is stored in
+	 * memory. Allocate extra space at the end of the buffer for the
+	 * bitstream size.
+	 */
+	buf_aligned = dma_alloc(body_length + sizeof(buf_size));
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
+	buf_aligned[body_length / sizeof(*buf_aligned)] = body_length;
+
+	addr = dma_map_single(hw_dev, buf_aligned,
+			      body_length + sizeof(buf_size), DMA_TO_DEVICE);
+	if (dma_mapping_error(hw_dev, addr)) {
+		status = -EFAULT;
+		goto err_free_dma;
+	}
+
+	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
+		buf_size = body_length;
+	else
+		buf_size = addr + body_length;
+
+	status = mgr->devdata->dev_fpga_load(mgr, addr, buf_size, flags);
+	dma_unmap_single(hw_dev, addr, body_length + sizeof(buf_size),
+			 DMA_TO_DEVICE);
+	if (status < 0)
+		dev_err(&mgr->dev, "unable to load fpga\n");
+
+err_free_dma:
+	dma_free(buf_aligned);
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
+
+	return mgr->devdata->dev_programmed_get(mgr);
+}
+
+static int xilinx_fpga_probe(struct device *dev)
+{
+	struct fpgamgr *mgr;
+	struct firmware_handler *fh;
+	const char *alias = of_alias_get(dev->of_node);
+	const char *model = NULL;
+	struct param_d *p;
+	int ret;
+
+	mgr = xzalloc(sizeof(*mgr));
+
+	fh = &mgr->fh;
+
+	if (alias)
+		fh->id = xstrdup(alias);
+	else
+		fh->id = xstrdup("xilinx-fpga-manager");
+
+	fh->open = fpgamgr_program_start;
+	fh->write = fpgamgr_program_write_buf;
+	fh->close = fpgamgr_program_finish;
+	of_property_read_string(dev->of_node, "compatible", &model);
+	if (model)
+		fh->model = xstrdup(model);
+	fh->dev = dev;
+
+	mgr->devdata = device_get_match_data(dev);
+	if (!mgr->devdata) {
+		dev_err(dev, "could not get device data\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	ret = mgr->devdata->dev_init(mgr, dev);
+	if (ret) {
+		dev_err(dev, "could not init device\n");
+		goto out;
+	}
+
+	dev_dbg(dev, "Registering Xilinx FPGA programmer\n");
+	mgr->dev.id = DEVICE_ID_SINGLE;
+	dev_set_name(&mgr->dev, "xilinx_fpga");
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
+	fh->device_node = dev->of_node;
+
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
+	if (mgr->private)
+		free(mgr->private);
+	free(mgr);
+
+	return ret;
+}
+
+static struct of_device_id xilinx_fpga_id_table[] = {
+	{
+		.compatible = "xlnx,zynqmp-pcap-fpga",
+		.data = &zynqmp_devdata,
+	},
+	{
+		.compatible = "xlnx,zynq-devcfg-1.0",
+		.data = &zynq_devdata,
+	},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, xilinx_fpga_id_table);
+
+static struct driver xilinx_fpga_driver = {
+	.name = "xilinx_fpga_manager",
+	.of_compatible = DRV_OF_COMPAT(xilinx_fpga_id_table),
+	.probe = xilinx_fpga_probe,
+};
+device_platform_driver(xilinx_fpga_driver);
diff --git a/drivers/firmware/zynq-fpga.c b/drivers/firmware/zynq-fpga.c
new file mode 100644
index 0000000000..89bde41de3
--- /dev/null
+++ b/drivers/firmware/zynq-fpga.c
@@ -0,0 +1,162 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <mach/zynq/zynq-pcap.h>
+#include <linux/iopoll.h>
+
+struct zynq_private {
+	void __iomem *base_addr;
+};
+
+int zynq_init(struct fpgamgr *mgr, struct device *dev)
+{
+	struct resource *iores;
+	struct zynq_private *priv;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	priv = xzalloc(sizeof(struct zynq_private));
+
+	if (!priv)
+		return -ENOMEM;
+
+	mgr->private = priv;
+	mgr->features = ZYNQ_PM_FEATURE_SIZE_NOT_NEEDED;
+
+	priv->base_addr = IOMEM(iores->start);
+
+	/* Unlock DevC in case BootROM did not do it */
+	writel(DEVC_UNLOCK_CODE, priv->base_addr + UNLOCK_OFFSET);
+
+	return 0;
+}
+
+int zynq_programmed_get(struct fpgamgr *mgr)
+{
+	struct zynq_private *priv = (struct zynq_private *) mgr->private;
+
+	mgr->programmed = (readl(priv->base_addr + INT_STS_OFFSET)
+				& INT_STS_DONE_INT_MASK) > 0;
+
+	return 0;
+}
+
+int zynq_fpga_load(struct fpgamgr *mgr, u64 addr, u32 buf_size, u8 flags)
+{
+	int ret;
+	unsigned long reg;
+	struct zynq_private *priv = (struct zynq_private *) mgr->private;
+
+	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
+	writel(0x0000000f, ZYNQ_SLCR_BASE + 0x240); // assert FPGA resets
+
+	writel(0x00000000, ZYNQ_SLCR_BASE + 0x900); // disable levelshifter
+	writel(0x0000000a, ZYNQ_SLCR_BASE + 0x900); // enable levelshifter PS-PL
+
+	/*
+	 * The Programming Seqenze, see ug585 (v.12.2) Juny 1, 2018 Chapter
+	 * 6.4.2 on page 211 Configure the PL via PCAP Bridge Example for
+	 * detailed information to this Sequenze
+	 */
+
+	/* Enable the PCAP bridge and select PCAP for reconfiguration */
+	reg = readl(priv->base_addr + CTRL_OFFSET);
+	reg |= (CTRL_PCAP_PR_MASK | CTRL_PCAP_MODE_MASK);
+	writel(reg, priv->base_addr + CTRL_OFFSET);
+
+	/* Clear the Interrupts */
+	writel(0xffffffff, priv->base_addr + INT_STS_OFFSET);
+
+	/* Initialize the PL */
+	reg = readl(priv->base_addr + CTRL_OFFSET);
+	reg |= CTRL_PCFG_PROG_B_MASK;
+	writel(reg, priv->base_addr + CTRL_OFFSET);
+
+	reg = readl(priv->base_addr + CTRL_OFFSET);
+	reg &= ~CTRL_PCFG_PROG_B_MASK;
+	writel(reg, priv->base_addr + CTRL_OFFSET);
+
+	ret = readl_poll_timeout(priv->base_addr + STATUS_OFFSET, reg,
+			!(reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC);
+	if (ret < 0) {
+		dev_err(&mgr->dev, "Timeout 1");
+		return ret;
+	}
+
+	reg = readl(priv->base_addr + CTRL_OFFSET);
+	reg |= CTRL_PCFG_PROG_B_MASK;
+	writel(reg, priv->base_addr + CTRL_OFFSET);
+
+	/* Clear the Interrupts */
+	writel(0xffffffff, priv->base_addr + INT_STS_OFFSET);
+
+	/* Ensure that the PL is ready for programming */
+	ret = readl_poll_timeout(priv->base_addr + STATUS_OFFSET, reg,
+			(reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC);
+	if (ret < 0) {
+		dev_err(&mgr->dev, "Timeout 2");
+		return ret;
+	}
+
+	/* Check that there is room in the Command Queue */
+	ret = readl_poll_timeout(priv->base_addr + STATUS_OFFSET, reg,
+			!(reg & STATUS_DMA_CMD_Q_F_MASK), 100 * USEC_PER_MSEC);
+	if (ret < 0) {
+		dev_err(&mgr->dev, "Timeout 3");
+		return ret;
+	}
+
+	/* Disable the PCAP loopback */
+	reg = readl(priv->base_addr + MCTRL_OFFSET);
+	reg &= ~MCTRL_INT_PCAP_LPBK_MASK;
+	writel(reg, priv->base_addr + MCTRL_OFFSET);
+
+	/* Program the PCAP_2x clock divider */
+	reg = readl(priv->base_addr + CTRL_OFFSET);
+	reg &= ~CTRL_PCAP_RATE_EN_MASK;
+	writel(reg, priv->base_addr + CTRL_OFFSET);
+
+	/* Source Address: Location of bitstream */
+	writel(addr, priv->base_addr + DMA_SRC_ADDR_OFFSET);
+
+	/* Destination Address: 0xFFFF_FFFF */
+	writel(0xffffffff, priv->base_addr + DMA_DST_ADDR_OFFSET);
+
+	/* Source Length: Total number of 32-bit words in the bitstream */
+	writel((buf_size >> 2), priv->base_addr + DMA_SRC_LEN_OFFSET);
+
+	/* Destination Length: Total number of 32-bit words in the bitstream */
+	writel((buf_size >> 2), priv->base_addr + DMA_DEST_LEN_OFFSET);
+
+	/* Wait for the DMA transfer to be done */
+	ret = readl_poll_timeout(priv->base_addr + INT_STS_OFFSET, reg,
+			(reg & INT_STS_D_P_DONE_MASK), 100 * USEC_PER_MSEC);
+	if (ret < 0) {
+		dev_err(&mgr->dev, "Timeout 4: reg: 0x%lx\n", reg);
+		return ret;
+	}
+
+	/* Check for errors */
+	if (reg & INT_STS_ERROR_FLAGS_MASK) {
+		dev_err(&mgr->dev, "interrupt status register (0x%04lx)\n",
+			reg);
+		return -EIO;
+	}
+
+	/* Wait for the DMA transfer to be done */
+	ret = readl_poll_timeout(priv->base_addr + INT_STS_OFFSET, reg,
+			(reg & INT_STS_DONE_INT_MASK), 100 * USEC_PER_MSEC);
+	if (ret < 0) {
+		dev_err(&mgr->dev, "Timeout 5");
+		return ret;
+	}
+
+	dev_info(&mgr->dev, "FPGA config done\n");
+
+	writel(0x0000000f, ZYNQ_SLCR_BASE + 0x900); // enable all levelshifter
+	writel(0x00000000, ZYNQ_SLCR_BASE + 0x240); // deassert FPGA resets
+
+	writel(0x0000767B, ZYNQ_SLCR_LOCK);
+
+	return 0;
+}
diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 1a9a5c1b2c..348a196d7c 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -11,351 +11,26 @@
  * Siva Durga Prasad <siva.durga.paladugu@xilinx.com> *
  */
 
-#include <firmware.h>
-#include <common.h>
-#include <init.h>
-#include <dma.h>
+#include <mach/zynqmp/zynqmp-pcap.h>
 #include <mach/zynqmp/firmware-zynqmp.h>
+#include <common.h>
 
-#define ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL	BIT(0)
-#define ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED	BIT(1)
-
-#define ZYNQMP_PM_VERSION_1_0_FEATURES	0
-#define ZYNQMP_PM_VERSION_1_1_FEATURES	(ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL | \
-					 ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
-
-/*
- * Xilinx KU040 Bitstream Composition:
- *
- * Bitstream can be provided with an optinal header (`struct bs_header`).
- * The true bitstream starts with the binary-header composed of 21 words:
- *
- *  0: 0xFFFFFFFF (Dummy pad word)
- *     ...
- * 15: 0xFFFFFFFF (Dummy pad word)
- * 16: 0x000000BB (Bus width auto detect word 1)
- * 17: 0x11220044 (Bus width auto detect word 2)
- * 18: 0xFFFFFFFF (Dummy pad word)
- * 19: 0xFFFFFFFF (Dummy pad word)
- * 20: 0xAA995566 (Sync word)
- *
- * See Xilinx UG570 (v1.11) September 30 2019, Chapter 9 "Configuration
- * Details - Bitstream Composition" for further details.
- */
-#define DUMMY_WORD			0xFFFFFFFF
-#define BUS_WIDTH_AUTO_DETECT1_OFFSET	16
-#define BUS_WIDTH_AUTO_DETECT1		0x000000BB
-#define BUS_WIDTH_AUTO_DETECT2_OFFSET	17
-#define BUS_WIDTH_AUTO_DETECT2		0x11220044
-#define SYNC_WORD_OFFSET		20
-#define SYNC_WORD			0xAA995566
-#define BIN_HEADER_LENGTH		21
-
-enum xilinx_byte_order {
-	XILINX_BYTE_ORDER_BIT,
-	XILINX_BYTE_ORDER_BIN,
-};
-
-struct fpgamgr {
-	struct firmware_handler fh;
-	struct device dev;
+struct zynqmp_private {
 	const struct zynqmp_eemi_ops *eemi_ops;
-	int programmed;
-	char *buf;
-	size_t size;
-	u32 features;
 };
 
-struct bs_header {
-	__be16 length;
-	u8 padding[9];
-	__be16 size;
-	char entries[0];
-} __attribute__ ((packed));
-
-struct bs_header_entry {
-	char type;
-	__be16 length;
-	char data[0];
-} __attribute__ ((packed));
-
-static void copy_words_swapped(u32 *dst, const u32 *src, size_t size)
+int zynqmp_init(struct fpgamgr *mgr, struct device *dev)
 {
-	int i;
-
-	for (i = 0; i < size; i++)
-		dst[i] = __swab32(src[i]);
-}
-
-static int get_byte_order(const u32 *bin_header, size_t size,
-			  enum xilinx_byte_order *byte_order)
-{
-	if (size < BIN_HEADER_LENGTH * sizeof(*bin_header))
-		return -EINVAL;
-
-	if (bin_header[SYNC_WORD_OFFSET] == SYNC_WORD) {
-		*byte_order = XILINX_BYTE_ORDER_BIT;
-		return 0;
-	}
-
-	if (bin_header[SYNC_WORD_OFFSET] == __swab32(SYNC_WORD)) {
-		*byte_order = XILINX_BYTE_ORDER_BIN;
-		return 0;
-	}
-
-	return -EINVAL;
-}
-
-static bool is_bin_header_valid(const u32 *bin_header, size_t size,
-				enum xilinx_byte_order byte_order)
-{
-	size_t i;
-
-	if (size < BIN_HEADER_LENGTH * sizeof(*bin_header))
-		return false;
-
-	for (i = 0; i < BIN_HEADER_LENGTH; i++, bin_header++) {
-		u32 current;
-		u32 expected;
-
-		if (byte_order == XILINX_BYTE_ORDER_BIT)
-			current = *bin_header;
-		else
-			current = __swab32(*bin_header);
-
-		switch (i) {
-		case BUS_WIDTH_AUTO_DETECT1_OFFSET:
-			expected = BUS_WIDTH_AUTO_DETECT1;
-			break;
-		case BUS_WIDTH_AUTO_DETECT2_OFFSET:
-			expected = BUS_WIDTH_AUTO_DETECT2;
-			break;
-		case SYNC_WORD_OFFSET:
-			expected = SYNC_WORD;
-			break;
-		default:
-			expected = DUMMY_WORD;
-			break;
-		}
-
-		if (current != expected)
-			return false;
-	}
-
-	return true;
-}
-
-static int get_header_length(const char *header, size_t size)
-{
-	u32 *buf_u32;
-	int p;
-
-	for (p = 0; p < size; p++) {
-		buf_u32 = (u32 *)&header[p];
-		if (*buf_u32 == DUMMY_WORD)
-			return p;
-	}
-	return -EINVAL;
-}
-
-static void zynqmp_fpga_show_header(const struct device *dev,
-				    struct bs_header *header, size_t size)
-{
-	struct bs_header_entry *entry;
-	unsigned int i;
-	unsigned int length;
-
-	for (i = 0; i < size - sizeof(*header); i += sizeof(*entry) + length) {
-		entry = (struct bs_header_entry *)&header->entries[i];
-		length = __be16_to_cpu(entry->length);
-
-		switch (entry->type) {
-		case 'a':
-			printf("Design: %s\n", entry->data);
-			break;
-		case 'b':
-			printf("Part number: %s\n", entry->data);
-			break;
-		case 'c':
-			printf("Date: %s\n", entry->data);
-			break;
-		case 'd':
-			printf("Time: %s\n", entry->data);
-			break;
-		case 'e':
-			/* Size entry does not have a length but is be32 int */
-			printf("Size: %d bytes\n",
-			       (length << 16) + (entry->data[0] << 8) + entry->data[1]);
-			return;
-		default:
-			dev_warn(dev, "Invalid header entry: %c", entry->type);
-			return;
-		}
-	}
-}
-
-static int fpgamgr_program_finish(struct firmware_handler *fh)
-{
-	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
-	struct device *hw_dev = mgr->dev.parent;
-	u32 *buf_aligned;
-	u32 buf_size;
-	u32 *body;
-	size_t body_length;
-	int header_length = 0;
-	enum xilinx_byte_order byte_order;
-	dma_addr_t addr;
-	int status = 0;
-	u8 flags = 0;
-
-	if (!mgr->buf) {
-		status = -ENOBUFS;
-		dev_err(&mgr->dev, "buffer is NULL\n");
-		goto err_free;
-	}
-
-	header_length = get_header_length(mgr->buf, mgr->size);
-	if (header_length < 0) {
-		status = header_length;
-		goto err_free;
-	}
-	zynqmp_fpga_show_header(&mgr->dev,
-			      (struct bs_header *)mgr->buf, header_length);
-
-	body = (u32 *)&mgr->buf[header_length];
-	body_length = mgr->size - header_length;
-
-	status = get_byte_order(body, body_length, &byte_order);
-	if (status < 0)
-		goto err_free;
-
-	if (!is_bin_header_valid(body, body_length, byte_order)) {
-		dev_err(&mgr->dev, "Invalid bitstream header\n");
-		status =  -EINVAL;
-		goto err_free;
-	}
-
-	/*
-	 * The PMU FW variants without the ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED
-	 * feature expect a pointer to the bitstream size, which is stored in
-	 * memory. Allocate extra space at the end of the buffer for the
-	 * bitstream size.
-	 */
-	buf_aligned = dma_alloc(body_length + sizeof(buf_size));
-	if (!buf_aligned) {
-		status = -ENOBUFS;
-		goto err_free;
-	}
-
-	if (!(mgr->features & ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL) &&
-	    byte_order == XILINX_BYTE_ORDER_BIN)
-		copy_words_swapped((u32 *)buf_aligned, body,
-				   body_length / sizeof(u32));
-	else
-		memcpy((u32 *)buf_aligned, body, body_length);
-	buf_aligned[body_length / sizeof(*buf_aligned)] = body_length;
-
-	addr = dma_map_single(hw_dev, buf_aligned,
-			      body_length + sizeof(buf_size), DMA_TO_DEVICE);
-	if (dma_mapping_error(hw_dev, addr)) {
-		status = -EFAULT;
-		goto err_free_dma;
-	}
-
-	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
-		buf_size = body_length;
-	else
-		buf_size = addr + body_length;
-
-	status = mgr->eemi_ops->fpga_load((u64)addr, buf_size, flags);
-	dma_unmap_single(hw_dev, addr, body_length + sizeof(buf_size),
-			 DMA_TO_DEVICE);
-	if (status < 0)
-		dev_err(&mgr->dev, "unable to load fpga\n");
-
-err_free_dma:
-	dma_free(buf_aligned);
-
- err_free:
-	free(mgr->buf);
-
-	return status;
-}
-
-static int fpgamgr_program_write_buf(struct firmware_handler *fh,
-		const void *buf, size_t size)
-{
-	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
-
-	/* Since write() is called by copy_file, we only receive chuncks with
-	 * size RW_BUF_SIZE of the bitstream.
-	 * Buffer the chunks here and handle it in close()
-	 */
-
-	mgr->buf = realloc(mgr->buf, mgr->size + size);
-	if (!mgr->buf)
-		return -ENOBUFS;
-
-	memcpy(&(mgr->buf[mgr->size]), buf, size);
-	mgr->size += size;
-
-	return 0;
-}
-
-static int fpgamgr_program_start(struct firmware_handler *fh)
-{
-	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
-
-	mgr->size = 0;
-	mgr->buf = NULL;
-
-	return 0;
-}
-
-static int programmed_get(struct param_d *p, void *priv)
-{
-	struct fpgamgr *mgr = priv;
-	u32 status = 0x00;
-	int ret = 0;
-
-	ret = mgr->eemi_ops->fpga_getstatus(&status);
-	if (ret)
-		return ret;
-
-	mgr->programmed = !!(status & ZYNQMP_PCAP_STATUS_FPGA_DONE);
-
-	return 0;
-}
-
-static int zynqmp_fpga_probe(struct device *dev)
-{
-	struct fpgamgr *mgr;
-	struct firmware_handler *fh;
-	const char *alias = of_alias_get(dev->of_node);
-	const char *model = NULL;
-	struct param_d *p;
+	struct zynqmp_private *priv;
 	u32 api_version;
 	int ret;
+	priv = xzalloc(sizeof(struct zynqmp_private));
+	if (!priv)
+		return -ENOMEM;
 
-	mgr = xzalloc(sizeof(*mgr));
-	fh = &mgr->fh;
+	priv->eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	if (alias)
-		fh->id = xstrdup(alias);
-	else
-		fh->id = xstrdup("zynqmp-fpga-manager");
-
-	fh->open = fpgamgr_program_start;
-	fh->write = fpgamgr_program_write_buf;
-	fh->close = fpgamgr_program_finish;
-	of_property_read_string(dev->of_node, "compatible", &model);
-	if (model)
-		fh->model = xstrdup(model);
-	fh->dev = dev;
-
-	mgr->eemi_ops = zynqmp_pm_get_eemi_ops();
-
-	ret = mgr->eemi_ops->get_api_version(&api_version);
+	ret = priv->eemi_ops->get_api_version(&api_version);
 	if (ret) {
 		dev_err(&mgr->dev, "could not get API version\n");
 		goto out;
@@ -366,51 +41,29 @@ static int zynqmp_fpga_probe(struct device *dev)
 	if (api_version >= ZYNQMP_PM_VERSION(1, 1))
 		mgr->features |= ZYNQMP_PM_VERSION_1_1_FEATURES;
 
-	dev_dbg(dev, "Registering ZynqMP FPGA programmer\n");
-	mgr->dev.id = DEVICE_ID_SINGLE;
-	dev_set_name(&mgr->dev, "zynqmp_fpga");
-	mgr->dev.parent = dev;
-	ret = register_device(&mgr->dev);
-	if (ret)
-		goto out;
-
-	p = dev_add_param_bool(&mgr->dev, "programmed", NULL, programmed_get,
-			&mgr->programmed, mgr);
-	if (IS_ERR(p)) {
-		ret = PTR_ERR(p);
-		goto out_unreg;
-	}
-
-	fh->dev = &mgr->dev;
-	fh->device_node = dev->of_node;
-
-	ret = firmwaremgr_register(fh);
-	if (ret != 0) {
-		free(mgr);
-		goto out_unreg;
-	}
-
 	return 0;
-out_unreg:
-	unregister_device(&mgr->dev);
 out:
-	free(fh->id);
-	free(mgr);
-
+	free(priv);
+	mgr->private = NULL;
 	return ret;
 }
 
-static struct of_device_id zynqmpp_fpga_id_table[] = {
-	{
-		.compatible = "xlnx,zynqmp-pcap-fpga",
-	},
-	{ /* sentinel */ }
-};
-MODULE_DEVICE_TABLE(of, zynqmpp_fpga_id_table);
+int zynqmp_programmed_get(struct fpgamgr *mgr)
+{
+	struct zynqmp_private *priv = (struct zynqmp_private *) mgr->private;
+	u32 status = 0x00;
+	int ret = 0;
+
+	ret = priv->eemi_ops->fpga_getstatus(&status);
+	if (ret)
+		return ret;
 
-static struct driver zynqmp_fpga_driver = {
-	.name = "zynqmp_fpga_manager",
-	.of_compatible = DRV_OF_COMPAT(zynqmpp_fpga_id_table),
-	.probe = zynqmp_fpga_probe,
-};
-device_platform_driver(zynqmp_fpga_driver);
+	return 0;
+}
+
+int zynqmp_fpga_load(struct fpgamgr *mgr, u64 addr, u32 buf_size, u8 flags)
+{
+	struct zynqmp_private *priv = (struct zynqmp_private *) mgr->private;
+
+	return priv->eemi_ops->fpga_load((u64)addr, buf_size, flags);
+}
diff --git a/include/mach/zynq/zynq-pcap.h b/include/mach/zynq/zynq-pcap.h
new file mode 100644
index 0000000000..5982d6cae8
--- /dev/null
+++ b/include/mach/zynq/zynq-pcap.h
@@ -0,0 +1,64 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Xilinx Zynq Firmware layer
+ */
+
+#ifndef ZYNQ_PCAP_H_
+#define ZYNQ_PCAP_H_
+
+#include <xilinx-firmware.h>
+
+#define ZYNQ_BUS_WIDTH_AUTO_DETECT1_OFFSET	8
+#define ZYNQ_BUS_WIDTH_AUTO_DETECT2_OFFSET	9
+#define ZYNQ_SYNC_WORD_OFFSET			12
+#define ZYNQ_BIN_HEADER_LENGTH			13
+
+#define ZYNQ_PM_FEATURE_SIZE_NOT_NEEDED		BIT(1)
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
+#define DEVC_UNLOCK_CODE			0x757bdf0d
+
+#if defined(CONFIG_FIRMWARE_ZYNQ7000_FPGA)
+int zynq_init(struct fpgamgr *mgr, struct device *dev);
+int zynq_programmed_get(struct fpgamgr *mgr);
+int zynq_fpga_load(struct fpgamgr *mgr, u64 addr, u32 buf_size, u8 flags);
+#else
+static inline int zynq_init(struct fpgamgr *mgr, struct device *dev)
+{
+	return -ENOSYS;
+}
+static inline int zynq_programmed_get(struct fpgamgr *mgr)
+{
+	return -ENOSYS;
+}
+static inline int zynq_fpga_load(struct fpgamgr *mgr, u64 addr, u32 buf_size, u8 flags)
+{
+	return -ENOSYS;
+}
+#endif
+
+#endif /* ZYNQ_PCAP_H_ */
diff --git a/include/mach/zynqmp/zynqmp-pcap.h b/include/mach/zynqmp/zynqmp-pcap.h
new file mode 100644
index 0000000000..775806d9fa
--- /dev/null
+++ b/include/mach/zynqmp/zynqmp-pcap.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Xilinx ZynqMP PL loading layer
+ */
+
+#ifndef ZYNQMP_PCAP_H_
+#define ZYNQMP_PCAP_H_
+
+#include <xilinx-firmware.h>
+
+#define ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL	BIT(0)
+#define ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED	BIT(1)
+
+#define ZYNQMP_PM_VERSION_1_0_FEATURES	0
+#define ZYNQMP_PM_VERSION_1_1_FEATURES	(ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL | \
+					 ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
+
+#define ZYNQMP_BUS_WIDTH_AUTO_DETECT1_OFFSET	16
+#define ZYNQMP_BUS_WIDTH_AUTO_DETECT2_OFFSET	17
+#define ZYNQMP_SYNC_WORD_OFFSET			20
+#define ZYNQMP_BIN_HEADER_LENGTH		21
+
+#if defined(CONFIG_FIRMWARE_ZYNQMP_FPGA)
+int zynqmp_init(struct fpgamgr *mgr, struct device *dev);
+int zynqmp_programmed_get(struct fpgamgr *mgr);
+int zynqmp_fpga_load(struct fpgamgr *mgr, u64 addr, u32 buf_size, u8 flags);
+#else
+static inline int zynqmp_init(struct fpgamgr *mgr, struct device *dev)
+{
+	return -ENOSYS;
+}
+static inline int zynqmp_programmed_get(struct fpgamgr *mgr)
+{
+	return -ENOSYS;
+}
+static inline int zynqmp_fpga_load(struct fpgamgr *mgr, u64 addr, u32 buf_size, u8 flags)
+{
+	return -ENOSYS;
+}
+#endif
+#endif /* ZYNQMP_PCAP_H_ */
diff --git a/include/xilinx-firmware.h b/include/xilinx-firmware.h
new file mode 100644
index 0000000000..c8928b6c4b
--- /dev/null
+++ b/include/xilinx-firmware.h
@@ -0,0 +1,54 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef XILINX_FIRMWARE_H
+#define XILINX_FIRMWARE_H
+
+#include <firmware.h>
+
+#define DUMMY_WORD			0xFFFFFFFF
+#define BUS_WIDTH_AUTO_DETECT1		0x000000BB
+#define BUS_WIDTH_AUTO_DETECT2		0x11220044
+#define SYNC_WORD			0xAA995566
+
+enum xilinx_byte_order {
+	XILINX_BYTE_ORDER_BIT,
+	XILINX_BYTE_ORDER_BIN,
+};
+
+struct fpgamgr;
+
+struct xilinx_fpga_devdata {
+	u8 bus_width_auto_detect1_offset;
+	u8 bus_width_auto_detect2_offset;
+	u8 sync_word_offset;
+	u8 bin_header_length;
+	int (*dev_init)(struct fpgamgr *, struct device *);
+	int (*dev_programmed_get)(struct fpgamgr *);
+	int (*dev_fpga_load)(struct fpgamgr *mgr, u64 addr, u32 buf_size, u8 flags);
+};
+
+struct fpgamgr {
+	struct firmware_handler fh;
+	struct device dev;
+	void *private;
+	int programmed;
+	char *buf;
+	size_t size;
+	u32 features;
+	const struct xilinx_fpga_devdata *devdata;
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
+#endif /* XILINX_FIRMWARE_H */
-- 
2.39.5



