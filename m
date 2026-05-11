Delivery-date: Mon, 11 May 2026 14:09:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPSL-000XpX-2a
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 14:09:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPSG-0007JN-Oe
	for lore@pengutronix.de; Mon, 11 May 2026 14:09:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eW1+p4Phn3QJRJvIuEu4cla9hbzA3ZPj4akaGzf2m6Q=; b=fUMG99RbkOIubSFE4setwZuHds
	kVBhjVmO2TRpUFk/+J9dwTRVQtQy7ATzHvDPlsiNcF6ubqH2zcx/mJr6gqO5gSswQHqqNhRcSHwGL
	yi5RSPFRvL/M1aVdYZ3QAd0Lm9LOdbncdjOsABMhP7WO5ZbbZvYOygLeV4Bjlgu4TQFpU5A9czRX0
	C2vcWemsL0Br1ibCa/6HF8fMAFysLBq/S/zeOQIrxL8L2lmTTBM/HiDcHRg4kcLXXeYkUYs4T05QY
	KfvI0J9l+F9cRKcD/RHgl+q8Gfgy1u4htIuBgXI6MIPwvD9bN9+u8U+7zWK35WDd9yd8Yogi1XPI7
	g6NRFjsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPQq-0000000DSwu-16Rj;
	Mon, 11 May 2026 12:08:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPQm-0000000DStd-1AVI
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 12:08:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-0006b8-Qh; Mon, 11 May 2026 14:08:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQb-000FTJ-27;
	Mon, 11 May 2026 14:08:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-00000008pO6-13ak;
	Mon, 11 May 2026 14:08:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 May 2026 14:07:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-rockchip-emmc-hs400-v1-3-515fb6d20e12@pengutronix.de>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778501286; l=9961;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=PwX4vgXIWSHIFf6H4iByl0knzT8RshtzVaW51zlKFdI=;
 b=OSRH5hIQupWFYCBtB2+akXizEo1FVpvwG59g/QGGS3L25MWFtY2fbKiGTtQVWyS7hirwPV6jV
 xDm63VbfKT0D7oOWQr8AUO1IniwNwQJnR2hPHyhes4qtZ1EwLJupjYq
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_050817_233428_50A3DB07 
X-CRM114-Status: GOOD (  26.05  )
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
Cc: "Claude Opus 4.7" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/10] mci: sdhci: add ADMA2 descriptor helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add reusable ADMA2 (32-bit and 64-bit) support to the SDHCI core so
drivers can opt in to ADMA without each having to reimplement descriptor
table management.

A driver enables ADMA by calling sdhci_setup_adma() after
sdhci_setup_host(). The helper allocates a DMA-coherent descriptor
table sized for SDHCI_DEFAULT_ADMA_DESCS entries (drivers can override
adma_table_cnt before calling), picks the descriptor format based on
SDHCI_USE_64_BIT_DMA, sets SDHCI_USE_ADMA in host->flags and caps
mci->max_req_size so the MCI core splits requests to fit. From there,
sdhci_setup_data_dma() builds an ADMA2 descriptor chain for the
contiguous transfer buffer (one descriptor per up-to-64 KiB chunk plus
a terminating nop/end entry) and programs SDHCI_ADMA_ADDRESS instead
of the SDMA address. sdhci_config_dma() now selects ADMA32/ADMA64 in
HOST_CONTROL accordingly.

If sdhci_setup_adma() fails (no SDHCI_CAN_DO_ADMA2, no memory, or
unaligned table), the host transparently falls back to the existing
SDMA path.

Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/sdhci.c | 154 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 drivers/mci/sdhci.h |  59 ++++++++++++++++++++
 2 files changed, 212 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index f7172347e1..0c3ca69e9a 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -585,6 +585,13 @@ static void sdhci_config_dma(struct sdhci *host)
 	ctrl = sdhci_read8(host, SDHCI_HOST_CONTROL);
 	/* Note if DMA Select is zero then SDMA is selected */
 	ctrl &= ~SDHCI_CTRL_DMA_MASK;
+
+	if (host->flags & SDHCI_USE_ADMA) {
+		ctrl |= SDHCI_CTRL_ADMA32;
+		if (host->flags & SDHCI_USE_64_BIT_DMA && !host->v4_mode)
+			ctrl |= SDHCI_CTRL_ADMA64;
+	}
+
 	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
 
 	if (host->flags & SDHCI_USE_64_BIT_DMA) {
@@ -601,11 +608,67 @@ static void sdhci_config_dma(struct sdhci *host)
 	}
 }
 
+static void sdhci_adma_write_desc(struct sdhci *host, void **desc,
+				  dma_addr_t addr, int len, unsigned int cmd)
+{
+	struct sdhci_adma2_64_desc *dma_desc = *desc;
+
+	/* 32-bit and 64-bit descriptors share these fields. */
+	dma_desc->cmd = cpu_to_le16(cmd);
+	dma_desc->len = cpu_to_le16(len);
+	dma_desc->addr_lo = cpu_to_le32(lower_32_bits(addr));
+
+	if (host->flags & SDHCI_USE_64_BIT_DMA)
+		dma_desc->addr_hi = cpu_to_le32(upper_32_bits(addr));
+
+	*desc += host->desc_sz;
+}
+EXPORT_SYMBOL_GPL(sdhci_adma_write_desc);
+
+/*
+ * Build the ADMA2 descriptor table for a single contiguous DMA buffer.
+ * Each entry of the table covers up to SDHCI_ADMA2_MAX_LEN bytes; longer
+ * transfers are split across multiple descriptors.
+ */
+static int sdhci_adma_build_table(struct sdhci *host, dma_addr_t addr,
+				  unsigned int len)
+{
+	void *desc = host->adma_table;
+	void *desc_end = host->adma_table + host->adma_table_sz;
+
+	while (len) {
+		unsigned int chunk = min_t(unsigned int, len,
+					   SDHCI_ADMA2_MAX_LEN);
+
+		if (desc + host->desc_sz > desc_end)
+			return -ENOSPC;
+
+		/*
+		 * The length field is 16-bit; a length of 0 encodes
+		 * SDHCI_ADMA2_MAX_LEN bytes per the SD Host Controller
+		 * specification.
+		 */
+		sdhci_adma_write_desc(host, &desc, addr, chunk & 0xffff,
+				      ADMA2_TRAN_VALID);
+		addr += chunk;
+		len -= chunk;
+	}
+
+	if (desc + host->desc_sz > desc_end)
+		return -ENOSPC;
+
+	/* Append a terminating descriptor (nop, end, valid). */
+	sdhci_adma_write_desc(host, &desc, 0, 0, ADMA2_NOP_END_VALID);
+
+	return 0;
+}
+
 void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			  dma_addr_t *dma)
 {
 	struct device *dev = sdhci_dev(sdhci);
 	int nbytes;
+	int ret;
 
 	if (!data) {
 		if (dma)
@@ -633,7 +696,22 @@ void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 	}
 
 	sdhci_config_dma(sdhci);
-	sdhci_set_sdma_addr(sdhci, *dma);
+
+	if (sdhci->flags & SDHCI_USE_ADMA) {
+		ret = sdhci_adma_build_table(sdhci, *dma, nbytes);
+		if (ret) {
+			dev_err(dev, "ADMA table build failed: %pe\n",
+				ERR_PTR(ret));
+			dma_unmap_single(dev, *dma, nbytes,
+					 (data->flags & MMC_DATA_READ) ?
+					 DMA_FROM_DEVICE : DMA_TO_DEVICE);
+			*dma = SDHCI_NO_DMA;
+			return;
+		}
+		sdhci_set_adma_addr(sdhci, sdhci->adma_addr);
+	} else {
+		sdhci_set_sdma_addr(sdhci, *dma);
+	}
 }
 
 void sdhci_teardown_data(struct sdhci *sdhci,
@@ -1213,3 +1291,77 @@ int sdhci_setup_host(struct sdhci *host)
 
 	return 0;
 }
+
+/**
+ * sdhci_setup_adma() - allocate ADMA descriptor table and enable ADMA
+ * @host: sdhci host
+ *
+ * Allocate a DMA-coherent ADMA2 descriptor table and mark the host as
+ * ADMA-capable so subsequent calls to sdhci_setup_data_dma() use ADMA
+ * instead of SDMA. Drivers must call this after sdhci_setup_host() since
+ * it relies on the SDHCI_USE_64_BIT_DMA flag established there.
+ *
+ * The descriptor count defaults to SDHCI_DEFAULT_ADMA_DESCS, which caps
+ * the largest single transfer at SDHCI_DEFAULT_ADMA_DESCS *
+ * SDHCI_ADMA2_MAX_LEN bytes. Drivers can override host->adma_table_cnt
+ * before calling to allocate a different size.
+ *
+ * Returns 0 on success or a negative error code on failure. On failure
+ * the host falls back to SDMA.
+ */
+int sdhci_setup_adma(struct sdhci *host)
+{
+	struct device *dev = sdhci_dev(host);
+	struct mci_host *mci = host->mci;
+	dma_addr_t dma;
+	void *buf;
+
+	BUG_ON(!mci);
+
+	/*
+	 * Without a controller capability bit ADMA2 cannot be used. Don't
+	 * fail loudly: the driver may have called us speculatively, just
+	 * leave SDMA as the fallback.
+	 */
+	if (!(host->caps & SDHCI_CAN_DO_ADMA2))
+		return -ENOTSUPP;
+
+	if (host->flags & SDHCI_USE_64_BIT_DMA)
+		host->desc_sz = SDHCI_ADMA2_64_DESC_SZ(host);
+	else
+		host->desc_sz = SDHCI_ADMA2_32_DESC_SZ;
+
+	if (!host->adma_table_cnt)
+		host->adma_table_cnt = SDHCI_DEFAULT_ADMA_DESCS;
+
+	host->adma_table_sz = host->adma_table_cnt * host->desc_sz;
+
+	buf = dma_alloc_coherent(dev, host->adma_table_sz, &dma);
+	if (!buf)
+		return -ENOMEM;
+
+	host->adma_table = buf;
+	host->adma_addr = dma;
+	host->flags |= SDHCI_USE_ADMA;
+
+	/*
+	 * One descriptor handles up to SDHCI_ADMA2_MAX_LEN bytes; the last
+	 * one is reserved for the terminating entry.
+	 */
+	mci->max_req_size = (host->adma_table_cnt - 1) * SDHCI_ADMA2_MAX_LEN;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(sdhci_setup_adma);
+
+void sdhci_release_adma(struct sdhci *host)
+{
+	if (!(host->flags & SDHCI_USE_ADMA))
+		return;
+
+	dma_free_coherent(sdhci_dev(host), host->adma_table, host->adma_addr,
+			  host->adma_table_sz);
+	host->adma_table = NULL;
+	host->flags &= ~SDHCI_USE_ADMA;
+}
+EXPORT_SYMBOL_GPL(sdhci_release_adma);
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index a04eb5b7ed..ab1cbbe3fd 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -222,6 +222,56 @@
 #define SDHCI_ADMA_ADDRESS					0x58
 #define SDHCI_ADMA_ADDRESS_HI					0x5c
 
+/* ADMA2 32-bit DMA descriptor size */
+#define SDHCI_ADMA2_32_DESC_SZ	8
+
+/* ADMA2 32-bit descriptor */
+struct sdhci_adma2_32_desc {
+	__le16	cmd;
+	__le16	len;
+	__le32	addr;
+} __packed __aligned(4);
+
+/*
+ * ADMA2 64-bit DMA descriptor size
+ * According to SD Host Controller spec v4.10, there are two kinds of
+ * descriptors for 64-bit addressing mode: 96-bit Descriptor and 128-bit
+ * Descriptor, if Host Version 4 Enable is set in the Host Control 2
+ * register, 128-bit Descriptor will be selected.
+ */
+#define SDHCI_ADMA2_64_DESC_SZ(host)	((host)->v4_mode ? 16 : 12)
+
+/*
+ * ADMA2 64-bit descriptor. Note 12-byte descriptor can't always be 8-byte
+ * aligned.
+ */
+struct sdhci_adma2_64_desc {
+	__le16	cmd;
+	__le16	len;
+	__le32	addr_lo;
+	__le32	addr_hi;
+} __packed __aligned(4);
+
+#define ADMA2_TRAN_VALID	0x21
+#define ADMA2_NOP_END_VALID	0x3
+#define ADMA2_END		0x2
+
+/*
+ * ADMA descriptor alignment.  Some controllers (e.g. Intel) require 8 byte
+ * alignment for the descriptor table even in 32-bit DMA mode.
+ */
+#define SDHCI_ADMA2_DESC_ALIGN	8
+
+/*
+ * Maximum length per ADMA2 descriptor. The length field in the descriptor
+ * is 16-bit wide; a value of 0 encodes 65536 bytes per the SD spec, so the
+ * effective per-descriptor maximum is 64 KiB.
+ */
+#define SDHCI_ADMA2_MAX_LEN	SZ_64K
+
+/* Default number of ADMA descriptors allocated by sdhci_setup_adma() */
+#define SDHCI_DEFAULT_ADMA_DESCS	128
+
 #define SDHCI_MMC_BOOT						0xC4
 
 #define SDHCI_SLOT_INT_STATUS	0xFC
@@ -279,6 +329,13 @@ struct sdhci {
 	bool read_caps;	/* Capability flags have been read */
 	u32 sdma_boundary;
 
+	/* ADMA descriptor table (allocated via sdhci_setup_adma()) */
+	void		*adma_table;
+	dma_addr_t	adma_addr;
+	unsigned int	adma_table_sz;	/* size of the descriptor table in bytes */
+	unsigned int	desc_sz;	/* per-descriptor size in bytes */
+	unsigned int	adma_table_cnt;	/* number of descriptor entries */
+
 	unsigned int		tuning_count;	/* Timer count for re-tuning */
 	unsigned int		tuning_mode;	/* Re-tuning mode supported by host */
 	unsigned int		tuning_err;	/* Error code for re-tuning */
@@ -364,6 +421,8 @@ int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_cmd *cmd,
 int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_cmd *cmd,
 			    struct mci_data *data, dma_addr_t dma);
 int sdhci_reset(struct sdhci *sdhci, u8 mask);
+int sdhci_setup_adma(struct sdhci *host);
+void sdhci_release_adma(struct sdhci *host);
 u16 sdhci_calc_clk(struct sdhci *host, unsigned int clock,
 		   unsigned int *actual_clock, unsigned int input_clock);
 void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_clock);

-- 
2.47.3



