Delivery-date: Thu, 15 Jan 2026 13:08:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9Q-001aIH-0h
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:08:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9O-0002dW-M2
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:08:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zO8jpnrajBWVwuSffarc+gXLyHtcRGnqZRnYgrFsf2w=; b=0aXEF8sp57xcDxSIG7D4pswBnT
	W3vMcAx/O8fEUbDLC017555wPzkAwCUUfuJz5pC7seIQ6UYUcA+d3dft6c8/SoJexrbPPx63FNgyx
	9HFiF0BpfOlD/j3H0RZQiJk1SCeXyfTLZ1lQ+WyQNrrlaQ06MMb7271aw8Y9hpQlFGeJQSg/llCY9
	NdtwIKrdq6LUNwo952DGjsjj8S6RfQrCGCYt+LAa1MMFNvS51bC0nXOKnp0Zd7SGmDiAlDtRMpyrF
	of9Xv10YMHqhSP16ClXpm9JFAKq7HIFdL/QIWLs3HNmwjfKqTKVBP/u0mmHKI9p/llKhyNDLTuE7O
	b95pHmDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8v-0000000CIdF-1lim;
	Thu, 15 Jan 2026 12:08:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8u-0000000CIbO-0nCo
	for barebox@bombadil.infradead.org;
	Thu, 15 Jan 2026 12:08:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=zO8jpnrajBWVwuSffarc+gXLyHtcRGnqZRnYgrFsf2w=; b=AbVz/MpHEXrDE9beO7kph/PlEW
	8B/iTPSsPAGKnP5MhIu83TEV+u4d0H9YGBOom9SCTOaqdmjvLZTs0i4dk6wnMX9vby/KNAku2DUiG
	UOZwmsvMlub01c/W+LLSimkfcHG1+eLodQoGhDhkqDWC7oX6U81fm4FbbSF5CVnqLXVZpErbmVp68
	PX2HH3ruN4n+sf3imAKyHgVBOSVw3Y9kOHlAld+mZWpPWXFiMa7k0DXisH+hbpVUD/uWx23z08qtb
	LE9L6RLZUqqTiHcemZuWDd21PuOkmopYULzHsB9M92ACcBawSIwq9PaW02ewYgw3dVO9HjCM19sDw
	EXIJ9V/w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8o-00000006hz0-0SXn
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:07:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM8l-0002HG-Fy; Thu, 15 Jan 2026 13:07:51 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 13:06:13 +0100
Message-ID: <20260115120748.3433463-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115120748.3433463-1-a.fatoum@barebox.org>
References: <20260115120748.3433463-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_120755_998504_CF2FEE19 
X-CRM114-Status: GOOD (  24.16  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] firmware: qemu_fw_cfg: add proper DMA and PIO bidirectional operating modes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a strange hodgepodge of DMA and PIO right now: We write always
via DMA, but we read via PIO, except that we skip leading bytes to reach
the intended offset via the DMA API.

This doesn't make much sense, because if DMA is unavailable, all of it
is. Rework this by checking the feature flag and either using DMA all
the way if possible or PIO as fallback.

For added flexibility, it's possible to switch between DMA and PIO at
runtime using the fw_cfg.pio device parameter.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/firmware/qemu_fw_cfg.c | 231 ++++++++++++++++++++++++---------
 1 file changed, 169 insertions(+), 62 deletions(-)

diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 33cc5bc54ce9..7a699539d672 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -35,11 +35,12 @@ struct fw_cfg {
 	void __iomem *reg_data;
 	void __iomem *reg_dma;
 	struct cdev cdev;
-	loff_t next_read_offset;
 	u32 sel;
 	bool is_mmio;
 	struct fw_cfg_dma_access __iomem *acc_virt;
 	dma_addr_t acc_dma;
+	u32 rev;
+	int use_pio;
 };
 
 static struct fw_cfg *to_fw_cfg(struct cdev *cdev)
@@ -70,7 +71,6 @@ static int fw_cfg_ioctl(struct cdev *cdev, unsigned int request, void *buf)
 	switch (request) {
 	case FW_CFG_SELECT:
 		fw_cfg->sel = *(u16 *)buf;
-		fw_cfg->next_read_offset = 0;
 		break;
 	default:
 		ret = -ENOTTY;
@@ -79,6 +79,105 @@ static int fw_cfg_ioctl(struct cdev *cdev, unsigned int request, void *buf)
 	return 0;
 }
 
+static inline bool fw_cfg_dma_enabled(struct fw_cfg *fw_cfg)
+{
+	return (fw_cfg->rev & FW_CFG_VERSION_DMA) && fw_cfg->reg_dma;
+}
+
+/* qemu fw_cfg device is sync today, but spec says it may become async */
+static void fw_cfg_wait_for_control(struct fw_cfg_dma_access *d)
+{
+	for (;;) {
+		u32 ctrl = be32_to_cpu(READ_ONCE(d->control));
+
+		/* do not reorder the read to d->control */
+		/* rmb(); */
+		if ((ctrl & ~FW_CFG_DMA_CTL_ERROR) == 0)
+			return;
+
+		cpu_relax();
+	}
+}
+
+static ssize_t fw_cfg_dma_transfer(struct fw_cfg *fw_cfg,
+				   void *address, u32 length, u32 control)
+{
+	phys_addr_t dma;
+	struct fw_cfg_dma_access *d = NULL;
+	ssize_t ret = length;
+
+	d = dma_alloc(sizeof(*d));
+	if (!d) {
+		ret = -ENOMEM;
+		goto end;
+	}
+
+	/* fw_cfg device does not need IOMMU protection, so use physical addresses */
+	*d = (struct fw_cfg_dma_access) {
+		.address = cpu_to_be64(address ? virt_to_phys(address) : 0),
+		.length = cpu_to_be32(length),
+		.control = cpu_to_be32(control)
+	};
+
+	dma = virt_to_phys(d);
+
+	iowrite32be((u64)dma >> 32, fw_cfg->reg_dma);
+	/* force memory to sync before notifying device via MMIO */
+	/* wmb(); */
+	iowrite32be(dma, fw_cfg->reg_dma + 4);
+
+	fw_cfg_wait_for_control(d);
+
+	if (be32_to_cpu(READ_ONCE(d->control)) & FW_CFG_DMA_CTL_ERROR) {
+		ret = -EIO;
+	}
+
+end:
+	dma_free(d);
+
+	return ret;
+}
+
+static ssize_t fw_cfg_dma_transfer_at(struct fw_cfg *fw_cfg,
+				      void *buf, u32 count, loff_t pos,
+				      u32 direction)
+{
+	int ret;
+
+	if (pos == 0) {
+		ret = fw_cfg_dma_transfer(fw_cfg, buf, count,
+					  fw_cfg->sel << 16 |
+					  FW_CFG_DMA_CTL_SELECT | direction);
+	} else {
+		fw_cfg_select(fw_cfg);
+		ret = fw_cfg_dma_transfer(fw_cfg, NULL, pos, FW_CFG_DMA_CTL_SKIP);
+		if (ret >= 0)
+			ret = fw_cfg_dma_transfer(fw_cfg, buf, count, direction);
+	}
+
+	return ret;
+}
+
+static ssize_t fw_cfg_dma_read(struct cdev *cdev, void *buf,
+			       size_t count, loff_t pos, unsigned long flags)
+{
+	return fw_cfg_dma_transfer_at(to_fw_cfg(cdev), buf, count, pos,
+				      FW_CFG_DMA_CTL_READ);
+}
+
+static ssize_t fw_cfg_dma_write(struct cdev *cdev, const void *buf,
+				size_t count, loff_t pos, unsigned long flags)
+{
+	return fw_cfg_dma_transfer_at(to_fw_cfg(cdev), (void *)buf, count, pos,
+				      FW_CFG_DMA_CTL_WRITE);
+}
+
+static struct cdev_operations fw_cfg_dma_ops = {
+	.read = fw_cfg_dma_read,
+	.write = fw_cfg_dma_write,
+	.ioctl = fw_cfg_ioctl,
+};
+
 static void reads_n(const void __iomem *src, void *dst,
 		   resource_size_t count, int rwsize)
 {
@@ -104,83 +203,72 @@ static void ins_n(unsigned long src, void *dst,
 	}
 }
 
-static void fw_cfg_do_dma(struct fw_cfg *fw_cfg, dma_addr_t address,
-			  u32 count, u32 control)
-{
-	struct fw_cfg_dma_access __iomem *acc = fw_cfg->acc_virt;
-
-	acc->address = cpu_to_be64(address);
-	acc->length = cpu_to_be32(count);
-	acc->control = cpu_to_be32(control);
-
-	iowrite64be(fw_cfg->acc_dma, fw_cfg->reg_dma);
-
-	while (ioread32be(&acc->control) & ~FW_CFG_DMA_CTL_ERROR)
-		;
-}
-
-static ssize_t fw_cfg_read(struct cdev *cdev, void *buf, size_t count,
-			   loff_t pos, unsigned long flags)
+static ssize_t fw_cfg_pio_read(struct cdev *cdev, void *buf, size_t count,
+			       loff_t pos, unsigned long flags)
 {
 	struct fw_cfg *fw_cfg = to_fw_cfg(cdev);
 	unsigned rdsize = FIELD_GET(O_RWSIZE_MASK, flags) ?: 8;
 
-	if (!pos || pos != fw_cfg->next_read_offset) {
-		fw_cfg_select(fw_cfg);
-		fw_cfg->next_read_offset = 0;
-	}
-
 	if (!IS_ALIGNED(pos, rdsize) || !IS_ALIGNED(count, rdsize))
 		rdsize = 1;
 
+	fw_cfg_select(fw_cfg);
+	while (pos-- > 0)
+		ioread8(fw_cfg->reg_data);
+
 	if (fw_cfg->is_mmio)
 		reads_n(fw_cfg->reg_data, buf, count, rdsize);
 	else
 		ins_n((ulong)fw_cfg->reg_data, buf, count, rdsize);
 
-	fw_cfg->next_read_offset += count;
 	return count;
 }
 
-static ssize_t fw_cfg_write(struct cdev *cdev, const void *buf, size_t count,
-			    loff_t pos, unsigned long flags)
+static void writes_n(void __iomem *dst, const void *src,
+		   resource_size_t count, int rwsize)
 {
-	struct fw_cfg *fw_cfg = to_fw_cfg(cdev);
-	struct device *dev = cdev->dev;
-	void *dma_buf;
-	dma_addr_t mapping;
-	int ret = 0;
-
-	dma_buf = dma_alloc(count);
-	if (!dma_buf)
-		return -ENOMEM;
-
-	memcpy(dma_buf, buf, count);
-
-	mapping = dma_map_single(dev, dma_buf, count, DMA_TO_DEVICE);
-	if (dma_mapping_error(dev, mapping)) {
-		ret = -EFAULT;
-		goto free_buf;
+	switch (rwsize) {
+	case 1: writesb(dst, src, count / 1); break;
+	case 2: writesw(dst, src, count / 2); break;
+	case 4: writesl(dst, src, count / 4); break;
+#ifdef CONFIG_64BIT
+	case 8: writesq(dst, src, count / 8); break;
+#endif
 	}
-
-	fw_cfg->next_read_offset = 0;
-
-	fw_cfg_do_dma(fw_cfg, DMA_ERROR_CODE, pos, FW_CFG_DMA_CTL_SKIP |
-		      FW_CFG_DMA_CTL_SELECT | fw_cfg->sel << 16);
-
-	fw_cfg_do_dma(fw_cfg, mapping, count, FW_CFG_DMA_CTL_WRITE |
-		      FW_CFG_DMA_CTL_SELECT | fw_cfg->sel << 16);
-
-	dma_unmap_single(dev, mapping, count, DMA_FROM_DEVICE);
-free_buf:
-	dma_free(dma_buf);
-
-	return ret ?: count;
 }
 
-static struct cdev_operations fw_cfg_ops = {
-	.read = fw_cfg_read,
-	.write = fw_cfg_write,
+static void outs_n(unsigned long dst, const void *src,
+		  resource_size_t count, int rwsize)
+{
+	switch (rwsize) {
+	case 1: outsb(dst, src, count / 1); break;
+	case 2: outsw(dst, src, count / 2); break;
+	case 4: outsl(dst, src, count / 4); break;
+	/* No insq, so just do 32-bit accesses */
+	case 8: outsl(dst, src, count / 4); break;
+	}
+}
+
+static ssize_t fw_cfg_pio_write(struct cdev *cdev, const void *buf, size_t count,
+			       loff_t pos, unsigned long flags)
+{
+	struct fw_cfg *fw_cfg = to_fw_cfg(cdev);
+	unsigned wrsize = FIELD_GET(O_RWSIZE_MASK, flags) ?: 8;
+
+	if (!IS_ALIGNED(pos, wrsize) || !IS_ALIGNED(count, wrsize))
+		wrsize = 1;
+
+	if (fw_cfg->is_mmio)
+		writes_n(fw_cfg->reg_data, buf, count, wrsize);
+	else
+		outs_n((ulong)fw_cfg->reg_data, buf, count, wrsize);
+
+	return count;
+}
+
+static struct cdev_operations fw_cfg_pio_ops = {
+	.read = fw_cfg_pio_read,
+	.write = fw_cfg_pio_write,
 	.ioctl = fw_cfg_ioctl,
 };
 
@@ -191,12 +279,20 @@ static int fw_cfg_param_select(struct param_d *p, void *priv)
 	return fw_cfg->sel <= U16_MAX ? 0 : -EINVAL;
 }
 
+static int fw_cfg_param_use_pio(struct param_d *p, void *priv)
+{
+	struct fw_cfg *fw_cfg = priv;
+	fw_cfg->cdev.ops = fw_cfg->use_pio ? &fw_cfg_pio_ops : &fw_cfg_dma_ops;
+	return 0;
+}
+
 static int fw_cfg_probe(struct device *dev)
 {
 	struct device_node *np = dev_of_node(dev);
 	struct resource *parent_res, *iores;
 	char sig[FW_CFG_SIG_SIZE];
 	struct fw_cfg *fw_cfg;
+	__le32 rev;
 	int ret;
 
 	fw_cfg = xzalloc(sizeof(*fw_cfg));
@@ -225,20 +321,28 @@ static int fw_cfg_probe(struct device *dev)
 
 	/* verify fw_cfg device signature */
 	fw_cfg->sel = FW_CFG_SIGNATURE;
-	fw_cfg_read(&fw_cfg->cdev, sig, FW_CFG_SIG_SIZE, 0, 0);
+	fw_cfg_pio_read(&fw_cfg->cdev, sig, FW_CFG_SIG_SIZE, 0, 0);
 
 	if (memcmp(sig, "QEMU", FW_CFG_SIG_SIZE) != 0) {
 		ret = np ? -EILSEQ : -ENODEV;
 		goto err;
 	}
 
+	fw_cfg->sel = FW_CFG_ID;
+	ret = fw_cfg_pio_read(&fw_cfg->cdev, &rev, sizeof(rev), 0, 0);
+	if (ret < 0)
+		goto err;
+
+	fw_cfg->rev = le32_to_cpu(rev);
+	fw_cfg->use_pio = !fw_cfg_dma_enabled(fw_cfg);
+
 	fw_cfg->acc_virt = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 					      sizeof(*fw_cfg->acc_virt), &fw_cfg->acc_dma);
 
 	fw_cfg->cdev.name = "fw_cfg";
 	fw_cfg->cdev.flags = DEVFS_IS_CHARACTER_DEV;
 	fw_cfg->cdev.size = 0;
-	fw_cfg->cdev.ops = &fw_cfg_ops;
+	fw_cfg->cdev.ops = fw_cfg->use_pio ? &fw_cfg_pio_ops : &fw_cfg_dma_ops;
 	fw_cfg->cdev.dev = dev;
 	fw_cfg->cdev.filetype = filetype_qemu_fw_cfg;
 
@@ -255,6 +359,9 @@ static int fw_cfg_probe(struct device *dev)
 	dev_add_param_uint32(dev, "selector", fw_cfg_param_select,
 			     NULL, &fw_cfg->sel, "%u", fw_cfg);
 
+	dev_add_param_bool(dev, "pio", fw_cfg_param_use_pio, NULL,
+			   &fw_cfg->use_pio, fw_cfg);
+
 	dev->priv = fw_cfg;
 
 	return 0;
-- 
2.47.3



