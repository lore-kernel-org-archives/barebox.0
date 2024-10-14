Delivery-date: Mon, 14 Oct 2024 15:57:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZa-004HaX-2D
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:57:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZW-0006fw-OS
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:57:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dH75nLfJMdEgkuTzF/YLpIgSjBE90nKkbK4NsJKtOEQ=; b=FSj3azVkDwIovsTtaHAILSBWPj
	8Z4ldcelord4dIITgW46nvBZLyZmSnT/Jrw/IC6S5gNx0qng+rs2PCTna1sMz+2awwIJ31KfGVIi/
	bM5P0o8eDu/Cfd+DoiIvpfAUEaDjQOL6YmwUWsf/hU87il6uomyr2Lk5ly546PTO05lCBooTUSbHi
	H9lYEuG1CbP3brpu7koYb9qnE9sgTzn8K8hb2jGGDNx4ZZRwNPQECK8F052InoUHgx7FBml+8Etgp
	uuQhm4dDaE7zQbgqR4jzgF5aTOtaeeDtPYRzdSlSkM1iZSX798XhUhnl7WmfSRWZNuLxqmmwumo6G
	Xr5w6wMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LYi-00000005NPr-1R5T;
	Mon, 14 Oct 2024 13:56:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Kes-00000005AcW-1mYm
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:58:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ker-0007LB-7L; Mon, 14 Oct 2024 14:58:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-001nNk-QZ; Mon, 14 Oct 2024 14:58:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-00A8vm-2H;
	Mon, 14 Oct 2024 14:58:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 14:58:43 +0200
Message-Id: <20241014125843.2064532-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
References: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_055847_078599_B20A9235 
X-CRM114-Status: GOOD (  16.98  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] dma: give dma_alloc_coherent a device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dma_alloc_coherent takes a device parameter in Linux, which allows it to
device-specific non-1:1 mapping as well as different coherent DMA mask
and coherency settings.

To enable handling these quirks in future, let's add the device
parameter and set it to DMA_DEVICE_BROKEN for now.

This should introduce no functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c                  | 11 +++++---
 arch/arm/cpu/mmu-common.h                  |  4 ++-
 arch/arm/cpu/mmu_32.c                      |  4 +--
 arch/arm/cpu/mmu_64.c                      |  4 +--
 arch/arm/include/asm/dma.h                 | 13 +++++++---
 arch/kvx/include/asm/dma.h                 |  8 ++++--
 arch/mips/include/asm/dma.h                |  8 ++++--
 arch/riscv/cpu/dma.c                       | 16 +++++++-----
 arch/riscv/include/asm/dma.h               |  6 +++--
 arch/sandbox/include/asm/dma.h             | 13 +++++++---
 arch/x86/include/asm/dma.h                 |  8 ++++--
 commands/smc.c                             |  2 +-
 drivers/ata/ahci.c                         |  6 +++--
 drivers/crypto/caam/caamrng.c              |  3 ++-
 drivers/crypto/caam/jr.c                   |  9 ++++---
 drivers/crypto/caam/pbl-init.c             |  2 +-
 drivers/firmware/qemu_fw_cfg.c             |  3 ++-
 drivers/mci/dw_mmc.c                       |  3 ++-
 drivers/mtd/nand/raw/nand_mxs.c            |  8 +++---
 drivers/net/ag71xx.c                       |  6 +++--
 drivers/net/arc_emac.c                     |  6 +++--
 drivers/net/at91_ether.c                   |  6 +++--
 drivers/net/designware.c                   |  4 +--
 drivers/net/designware_eqos.c              |  9 ++++---
 drivers/net/e1000/main.c                   |  6 +++--
 drivers/net/fec_imx.c                      |  6 +++--
 drivers/net/fsl-fman.c                     | 10 +++++---
 drivers/net/fsl_enetc.c                    |  6 +++--
 drivers/net/macb.c                         | 14 +++++++----
 drivers/net/mvneta.c                       |  6 +++--
 drivers/net/orion-gbe.c                    |  6 +++--
 drivers/net/r8169_main.c                   | 16 +++++++-----
 drivers/net/rtl8139.c                      | 12 ++++++---
 drivers/nvme/host/pci.c                    | 15 +++++++----
 drivers/soc/starfive/jh7100_dma.c          |  6 +++--
 drivers/usb/dwc3/core.c                    |  6 +++--
 drivers/usb/dwc3/gadget.c                  | 24 ++++++++++++------
 drivers/usb/gadget/udc/fsl_udc.c           | 10 +++++---
 drivers/usb/host/ehci-hcd.c                | 29 ++++++++++++++--------
 drivers/usb/host/ohci-hcd.c                |  6 ++---
 drivers/usb/host/xhci-mem.c                |  2 +-
 drivers/video/atmel_lcdfb_core.c           |  6 +++--
 drivers/video/imx-ipu-fb.c                 |  3 ++-
 drivers/video/imx-ipu-v3/ipufb.c           |  3 ++-
 drivers/video/omap.c                       |  9 ++++---
 drivers/video/pxa.c                        |  6 +++--
 drivers/video/ramfb.c                      |  6 +++--
 drivers/video/rockchip/rockchip_drm_vop2.c |  5 ++--
 drivers/video/stm.c                        |  3 ++-
 drivers/video/stm32_ltdc.c                 |  3 ++-
 drivers/virtio/virtio_ring.c               |  4 +--
 include/dma.h                              |  7 +++---
 52 files changed, 258 insertions(+), 139 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index aeaf6c269df6..f3416ae7f7ca 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -22,7 +22,8 @@ void arch_sync_dma_for_cpu(void *vaddr, size_t size,
 		dma_inv_range(vaddr, size);
 }
 
-void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
+void *dma_alloc_map(struct device *dev,
+		    size_t size, dma_addr_t *dma_handle, unsigned flags)
 {
 	void *ret;
 
@@ -39,16 +40,18 @@ void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
 	return ret;
 }
 
-void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+void *dma_alloc_coherent(struct device *dev,
+			 size_t size, dma_addr_t *dma_handle)
 {
 	/*
 	 * FIXME: This function needs a device argument to support non 1:1 mappings
 	 */
 
-	return dma_alloc_map(size, dma_handle, MAP_UNCACHED);
+	return dma_alloc_map(dev, size, dma_handle, MAP_UNCACHED);
 }
 
-void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
+void dma_free_coherent(struct device *dev,
+		       void *mem, dma_addr_t dma_handle, size_t size)
 {
 	size = PAGE_ALIGN(size);
 	remap_range(mem, size, MAP_CACHED);
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index 7a69122ee6fa..ec24f5c89f2b 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -9,9 +9,11 @@
 #include <linux/kernel.h>
 #include <linux/sizes.h>
 
+struct device;
+
 void dma_inv_range(void *ptr, size_t size);
 void dma_flush_range(void *ptr, size_t size);
-void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags);
+void *dma_alloc_map(struct device *dev, size_t size, dma_addr_t *dma_handle, unsigned flags);
 void __mmu_init(bool mmu_on);
 
 static inline void arm_mmu_not_initialized_error(void)
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 24d83d933661..ec6bd27da4e1 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -586,9 +586,9 @@ void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
+void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle)
 {
-	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
+	return dma_alloc_map(dev, size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
 
 void mmu_early_enable(unsigned long membase, unsigned long memsize)
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 7854f71f4cb6..b3fe5bbf2355 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -299,9 +299,9 @@ void dma_flush_range(void *ptr, size_t size)
 	v8_flush_dcache_range(start, end);
 }
 
-void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
+void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle)
 {
-	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
+	return dma_alloc_map(dev, size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
 
 static void init_range(size_t total_level0_tables)
diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index d045f00c67cf..8739607e5196 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -8,9 +8,12 @@
 
 #define DMA_ALIGNMENT	64
 
+struct device;
+
 #ifndef CONFIG_MMU
 #define dma_alloc_coherent dma_alloc_coherent
-static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+static inline void *dma_alloc_coherent(struct device *dev,
+				       size_t size, dma_addr_t *dma_handle)
 {
 	void *ret = xmemalign(4096, size);
 	if (dma_handle)
@@ -22,13 +25,15 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 }
 
 #define dma_alloc_writecombine dma_alloc_writecombine
-static inline void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
+static inline void *dma_alloc_writecombine(struct device *dev,
+					   size_t size, dma_addr_t *dma_handle)
 {
-	return dma_alloc_coherent(size, dma_handle);
+	return dma_alloc_coherent(dev, size, dma_handle);
 }
 
 #define dma_free_coherent dma_free_coherent
-static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
+static inline void dma_free_coherent(struct device *dev,
+				     void *mem, dma_addr_t dma_handle,
 				     size_t size)
 {
 	free(mem);
diff --git a/arch/kvx/include/asm/dma.h b/arch/kvx/include/asm/dma.h
index f1b54afe25f5..42329331fba9 100644
--- a/arch/kvx/include/asm/dma.h
+++ b/arch/kvx/include/asm/dma.h
@@ -10,8 +10,11 @@
 
 #define DMA_ALIGNMENT	64
 
+struct device;
+
 #define dma_alloc_coherent dma_alloc_coherent
-static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+static inline void *dma_alloc_coherent(struct device *dev,
+				       size_t size, dma_addr_t *dma_handle)
 {
 	BUILD_BUG_ON_MSG(1, "dma_alloc_coherent not supported: "
 			"MMU support is required to map uncached pages");
@@ -19,7 +22,8 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 }
 
 #define dma_free_coherent dma_free_coherent
-static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
+static inline void dma_free_coherent(struct device *dev,
+				     void *mem, dma_addr_t dma_handle,
 				     size_t size)
 {
 	free(mem);
diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
index 46fae14ae5aa..2ae75f047bd7 100644
--- a/arch/mips/include/asm/dma.h
+++ b/arch/mips/include/asm/dma.h
@@ -19,8 +19,11 @@
 #define DMA_ALIGNMENT	\
 	max(current_cpu_data.dcache.linesz, current_cpu_data.scache.linesz)
 
+struct device;
+
 #define dma_alloc_coherent dma_alloc_coherent
-static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+static inline void *dma_alloc_coherent(struct device *dev,
+				       size_t size, dma_addr_t *dma_handle)
 {
 	void *ptr;
 	unsigned long virt;
@@ -39,7 +42,8 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 }
 
 #define dma_free_coherent dma_free_coherent
-static inline void dma_free_coherent(void *vaddr, dma_addr_t dma_handle,
+static inline void dma_free_coherent(struct device *dev,
+				     void *vaddr, dma_addr_t dma_handle,
 				     size_t size)
 {
 	if (IS_ENABLED(CONFIG_MMU) && vaddr)
diff --git a/arch/riscv/cpu/dma.c b/arch/riscv/cpu/dma.c
index f3a1a8ec9ac5..b54b2fec1679 100644
--- a/arch/riscv/cpu/dma.c
+++ b/arch/riscv/cpu/dma.c
@@ -9,7 +9,8 @@ static void __dma_flush_range(dma_addr_t start, dma_addr_t end)
 {
 }
 
-static void *__dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+static void *__dma_alloc_coherent(struct device *dev,
+				  size_t size, dma_addr_t *dma_handle)
 {
 	void *ret;
 
@@ -23,7 +24,8 @@ static void *__dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	return ret;
 }
 
-static void __dma_free_coherent(void *vaddr, dma_addr_t dma_handle, size_t size)
+static void __dma_free_coherent(struct device *dev,
+				void *vaddr, dma_addr_t dma_handle, size_t size)
 {
 	free(vaddr);
 }
@@ -37,14 +39,16 @@ static const struct dma_ops coherent_dma_ops = {
 
 static const struct dma_ops *dma_ops = &coherent_dma_ops;
 
-void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+void *dma_alloc_coherent(struct device *dev,
+			 size_t size, dma_addr_t *dma_handle)
 {
-	return dma_ops->alloc_coherent(size, dma_handle);
+	return dma_ops->alloc_coherent(dev, size, dma_handle);
 }
 
-void dma_free_coherent(void *vaddr, dma_addr_t dma_handle, size_t size)
+void dma_free_coherent(struct device *dev,
+		       void *vaddr, dma_addr_t dma_handle, size_t size)
 {
-	dma_ops->free_coherent(vaddr, dma_handle, size);
+	dma_ops->free_coherent(dev, vaddr, dma_handle, size);
 }
 
 void dma_set_ops(const struct dma_ops *ops)
diff --git a/arch/riscv/include/asm/dma.h b/arch/riscv/include/asm/dma.h
index e1829d8c9613..190f8705e2ef 100644
--- a/arch/riscv/include/asm/dma.h
+++ b/arch/riscv/include/asm/dma.h
@@ -4,9 +4,11 @@
 
 #include <linux/types.h>
 
+struct device;
+
 struct dma_ops {
-	void *(*alloc_coherent)(size_t size, dma_addr_t *dma_handle);
-	void (*free_coherent)(void *vaddr, dma_addr_t dma_handle, size_t size);
+	void *(*alloc_coherent)(struct device *dev, size_t size, dma_addr_t *dma_handle);
+	void (*free_coherent)(struct device *dev, void *vaddr, dma_addr_t dma_handle, size_t size);
 
 	void (*flush_range)(dma_addr_t start, dma_addr_t end);
 	void (*inv_range)(dma_addr_t start, dma_addr_t end);
diff --git a/arch/sandbox/include/asm/dma.h b/arch/sandbox/include/asm/dma.h
index 2dbce1ad6c9a..d69cc8fe9f91 100644
--- a/arch/sandbox/include/asm/dma.h
+++ b/arch/sandbox/include/asm/dma.h
@@ -14,8 +14,11 @@
 
 #define DMA_ALIGNMENT	64
 
+struct device;
+
 #define dma_alloc_coherent dma_alloc_coherent
-static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+static inline void *dma_alloc_coherent(struct device *dev,
+				       size_t size, dma_addr_t *dma_handle)
 {
 	void *ret = xmemalign(4096, size);
 	if (dma_handle)
@@ -27,13 +30,15 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 }
 
 #define dma_alloc_writecombine dma_alloc_writecombine
-static inline void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
+static inline void *dma_alloc_writecombine(struct device *dev,
+					   size_t size, dma_addr_t *dma_handle)
 {
-	return dma_alloc_coherent(size, dma_handle);
+	return dma_alloc_coherent(dev, size, dma_handle);
 }
 
 #define dma_free_coherent dma_free_coherent
-static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
+static inline void dma_free_coherent(struct device *dev,
+				     void *mem, dma_addr_t dma_handle,
 				     size_t size)
 {
 	free(mem);
diff --git a/arch/x86/include/asm/dma.h b/arch/x86/include/asm/dma.h
index fe486c687f52..815e1964b184 100644
--- a/arch/x86/include/asm/dma.h
+++ b/arch/x86/include/asm/dma.h
@@ -9,12 +9,15 @@
 #include <xfuncs.h>
 #include <malloc.h>
 
+struct device;
+
 /*
  * x86 is cache coherent, so we need not do anything special here
  */
 
 #define dma_alloc_coherent dma_alloc_coherent
-static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+static inline void *dma_alloc_coherent(struct device *dev,
+				       size_t size, dma_addr_t *dma_handle)
 {
 	void *ret = xmemalign(4096, size);
 	if (dma_handle)
@@ -26,7 +29,8 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 }
 
 #define dma_free_coherent dma_free_coherent
-static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
+static inline void dma_free_coherent(struct device *dev,
+				     void *mem, dma_addr_t dma_handle,
 				     size_t size)
 {
 	free(mem);
diff --git a/commands/smc.c b/commands/smc.c
index 4d9426323520..0c25bd80bbb4 100644
--- a/commands/smc.c
+++ b/commands/smc.c
@@ -117,7 +117,7 @@ static int do_smc(int argc, char *argv[])
 			}
 
 			if (!context)
-				context = dma_alloc_coherent(sizeof(*context),
+				context = dma_alloc_coherent(DMA_DEVICE_BROKEN, sizeof(*context),
 							     DMA_ADDRESS_BROKEN);
 
 			if (!context) {
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index de6748288141..92a2b3c30d30 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -292,7 +292,8 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 		mdelay(500);
 	}
 
-	mem = dma_alloc_coherent(AHCI_PORT_PRIV_DMA_SZ, &mem_dma);
+	mem = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+				 AHCI_PORT_PRIV_DMA_SZ, &mem_dma);
 	if (!mem) {
 		return -ENOMEM;
 	}
@@ -414,7 +415,8 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	ret = -ENODEV;
 
 err_init:
-	dma_free_coherent(mem, mem_dma, AHCI_PORT_PRIV_DMA_SZ);
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  mem, mem_dma, AHCI_PORT_PRIV_DMA_SZ);
 	return ret;
 }
 
diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.c
index ea154913cab6..ab32f9dde745 100644
--- a/drivers/crypto/caam/caamrng.c
+++ b/drivers/crypto/caam/caamrng.c
@@ -209,7 +209,8 @@ static int caam_init_buf(struct caam_rng_ctx *ctx, int buf_id)
 	struct buf_data *bd = &ctx->bufs[buf_id];
 	int err;
 
-	bd->buf = dma_alloc_coherent(RN_BUF_SIZE, &bd->addr);
+	bd->buf = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+				     RN_BUF_SIZE, &bd->addr);
 
 	err = rng_create_job_desc(ctx, buf_id);
 	if (err)
diff --git a/drivers/crypto/caam/jr.c b/drivers/crypto/caam/jr.c
index b5d70b24b380..22bd7aeb2594 100644
--- a/drivers/crypto/caam/jr.c
+++ b/drivers/crypto/caam/jr.c
@@ -250,15 +250,18 @@ static int caam_jr_init(struct device *dev)
 	if (error)
 		return error;
 
-	jrp->inpring = dma_alloc_coherent(sizeof(*jrp->inpring) * JOBR_DEPTH,
+	jrp->inpring = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					  sizeof(*jrp->inpring) * JOBR_DEPTH,
 					  &dma_inpring);
 	if (!jrp->inpring)
 		return -ENOMEM;
 
-	jrp->outring = dma_alloc_coherent(sizeof(*jrp->outring) *
+	jrp->outring = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					  sizeof(*jrp->outring) *
 					  JOBR_DEPTH, &dma_outring);
 	if (!jrp->outring) {
-		dma_free_coherent(jrp->inpring, 0, sizeof(dma_addr_t) * JOBR_DEPTH);
+		dma_free_coherent(DMA_DEVICE_BROKEN,
+				  jrp->inpring, 0, sizeof(dma_addr_t) * JOBR_DEPTH);
 		dev_err(dev, "can't allocate job rings for %d\n", jrp->ridx);
 		return -ENOMEM;
 	}
diff --git a/drivers/crypto/caam/pbl-init.c b/drivers/crypto/caam/pbl-init.c
index 832793031cf8..9e1c966050e0 100644
--- a/drivers/crypto/caam/pbl-init.c
+++ b/drivers/crypto/caam/pbl-init.c
@@ -457,7 +457,7 @@ int early_caam_init(struct caam_ctrl __iomem *_caam, bool is_imx)
 	if (IN_PBL)
 		g_jrdata = &pbl_jrdata;
 	else
-		g_jrdata = dma_alloc_coherent(sizeof(*g_jrdata),
+		g_jrdata = dma_alloc_coherent(DMA_DEVICE_BROKEN, sizeof(*g_jrdata),
 					      DMA_ADDRESS_BROKEN);
 
 	jr = IOMEM(caam) + 0x1000;
diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 71af4d973cd3..4a48ad91520b 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -265,7 +265,8 @@ static int fw_cfg_probe(struct device *dev)
 		goto err;
 	}
 
-	fw_cfg->acc_virt = dma_alloc_coherent(sizeof(*fw_cfg->acc_virt), &fw_cfg->acc_dma);
+	fw_cfg->acc_virt = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					      sizeof(*fw_cfg->acc_virt), &fw_cfg->acc_dma);
 
 	fw_cfg->cdev.name = basprintf("fw_cfg%d", cdev_find_free_index("fw_cfg"));
 	fw_cfg->cdev.flags = DEVFS_IS_CHARACTER_DEV;
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index eec798a12077..30e5d56944b6 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -591,7 +591,8 @@ static int dw_mmc_probe(struct device *dev)
 		return PTR_ERR(iores);
 	host->ioaddr = IOMEM(iores->start);
 
-	host->idmac = dma_alloc_coherent(sizeof(*host->idmac) * DW_MMC_NUM_IDMACS,
+	host->idmac = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					 sizeof(*host->idmac) * DW_MMC_NUM_IDMACS,
 					 &host->idmac_dma);
 	if (!host->idmac)
 		return -ENOMEM;
diff --git a/drivers/mtd/nand/raw/nand_mxs.c b/drivers/mtd/nand/raw/nand_mxs.c
index ca3471a226c7..02f8546b87b3 100644
--- a/drivers/mtd/nand/raw/nand_mxs.c
+++ b/drivers/mtd/nand/raw/nand_mxs.c
@@ -1336,7 +1336,7 @@ static int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
 	const int size = NAND_MAX_PAGESIZE + NAND_MAX_OOBSIZE;
 
 	/* DMA buffers */
-	buf = dma_alloc_coherent(size, DMA_ADDRESS_BROKEN);
+	buf = dma_alloc_coherent(DMA_DEVICE_BROKEN, size, DMA_ADDRESS_BROKEN);
 	if (!buf) {
 		printf("MXS NAND: Error allocating DMA buffers\n");
 		return -ENOMEM;
@@ -1346,7 +1346,8 @@ static int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
 	nand_info->oob_buf = buf + NAND_MAX_PAGESIZE;
 
 	/* Command buffers */
-	nand_info->cmd_buf = dma_alloc_coherent(MXS_NAND_COMMAND_BUFFER_SIZE,
+	nand_info->cmd_buf = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+						MXS_NAND_COMMAND_BUFFER_SIZE,
 						DMA_ADDRESS_BROKEN);
 	if (!nand_info->cmd_buf) {
 		free(buf);
@@ -1368,7 +1369,8 @@ static int mxs_nand_hw_init(struct mxs_nand_info *info)
 	int ret;
 	u32 val;
 
-	info->desc = dma_alloc_coherent(sizeof(struct mxs_dma_cmd) * MXS_NAND_DMA_DESCRIPTOR_COUNT,
+	info->desc = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+				   sizeof(struct mxs_dma_cmd) * MXS_NAND_DMA_DESCRIPTOR_COUNT,
 				   DMA_ADDRESS_BROKEN);
 	if (!info->desc)
 		return -ENOMEM;
diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index a6ca437b0324..2bce142de328 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -637,9 +637,11 @@ static int ag71xx_probe(struct device *dev)
 	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG3, 0x1f00140);
 
 	priv->rx_buffer = xmemalign(PAGE_SIZE, NO_OF_RX_FIFOS * MAX_RBUFF_SZ);
-	priv->fifo_tx = dma_alloc_coherent(NO_OF_TX_FIFOS * sizeof(ag7240_desc_t),
+	priv->fifo_tx = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					   NO_OF_TX_FIFOS * sizeof(ag7240_desc_t),
 					   &priv->addr_tx);
-	priv->fifo_rx = dma_alloc_coherent(NO_OF_RX_FIFOS * sizeof(ag7240_desc_t),
+	priv->fifo_rx = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					   NO_OF_RX_FIFOS * sizeof(ag7240_desc_t),
 					   &priv->addr_rx);
 	priv->next_tx = 0;
 
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index c32b60174cc1..1e4d5ba7afce 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -435,9 +435,11 @@ static int arc_emac_probe(struct device *dev)
 	miibus->parent = dev;
 
 	/* allocate rx/tx descriptors */
-	priv->rxbd = dma_alloc_coherent(RX_BD_NUM * sizeof(struct arc_emac_bd),
+	priv->rxbd = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					RX_BD_NUM * sizeof(struct arc_emac_bd),
 					DMA_ADDRESS_BROKEN);
-	priv->txbd = dma_alloc_coherent(TX_BD_NUM * sizeof(struct arc_emac_bd),
+	priv->txbd = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					TX_BD_NUM * sizeof(struct arc_emac_bd),
 					DMA_ADDRESS_BROKEN);
 	priv->rxbuf = dma_alloc(RX_BD_NUM * PKTSIZE);
 
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 02b3d9622d03..7d20e7994ece 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -315,9 +315,11 @@ static int at91_ether_probe(struct device *dev)
 	edev->halt = at91_ether_halt;
 	edev->get_ethaddr = at91_ether_get_ethaddr;
 	edev->set_ethaddr = at91_ether_set_ethaddr;
-	ether_dev->rbf_framebuf = dma_alloc_coherent(MAX_RX_DESCR * MAX_RBUFF_SZ,
+	ether_dev->rbf_framebuf = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+						     MAX_RX_DESCR * MAX_RBUFF_SZ,
 						     DMA_ADDRESS_BROKEN);
-	ether_dev->rbfdt = dma_alloc_coherent(sizeof(struct rbf_t) * MAX_RX_DESCR,
+	ether_dev->rbfdt = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					      sizeof(struct rbf_t) * MAX_RX_DESCR,
 					      DMA_ADDRESS_BROKEN);
 
 	ether_dev->phy_addr = pdata->phy_addr;
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index e7735a014cf4..449eba5389bf 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -482,14 +482,14 @@ struct dw_eth_dev *dwc_drv_probe(struct device *dev)
 
 	/* [tr]x_mac_descrtable_dev will be used by the [tr]x_dma_addr helpers */
 
-	priv->tx_mac_descrtable_cpu = dma_alloc_coherent(
+	priv->tx_mac_descrtable_cpu = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 		CONFIG_TX_DESCR_NUM * sizeof(struct dmamacdescr),
 		&priv->tx_mac_descrtable_dev);
 
 	if (!priv->tx_mac_descrtable_cpu)
 		return ERR_PTR(-EFAULT);
 
-	priv->rx_mac_descrtable_cpu = dma_alloc_coherent(
+	priv->rx_mac_descrtable_cpu = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 		CONFIG_RX_DESCR_NUM * sizeof(struct dmamacdescr),
 		&priv->rx_mac_descrtable_dev);
 
diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 0140a3872cf9..395f8aeeddd8 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -805,7 +805,8 @@ static int eqos_init_resources(struct eqos *eqos)
 	void *p;
 	int i;
 
-	descs = dma_alloc_coherent(EQOS_DESCRIPTORS_SIZE, DMA_ADDRESS_BROKEN);
+	descs = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+				   EQOS_DESCRIPTORS_SIZE, DMA_ADDRESS_BROKEN);
 	if (!descs)
 		goto err;
 
@@ -837,7 +838,8 @@ static int eqos_init_resources(struct eqos *eqos)
 err_free_rx_bufs:
 	dma_free(phys_to_virt(eqos->rx_descs[0].des0));
 err_free_desc:
-	dma_free_coherent(descs, 0, EQOS_DESCRIPTORS_SIZE);
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  descs, 0, EQOS_DESCRIPTORS_SIZE);
 err:
 
 	return ret;
@@ -947,5 +949,6 @@ void eqos_remove(struct device *dev)
 	mdiobus_unregister(&eqos->miibus);
 
 	dma_free(phys_to_virt(eqos->rx_descs[0].des0));
-	dma_free_coherent(eqos->tx_descs, 0, EQOS_DESCRIPTORS_SIZE);
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  eqos->tx_descs, 0, EQOS_DESCRIPTORS_SIZE);
 }
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 275c9326be70..1f2f6fbe0b57 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3592,8 +3592,10 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 
 	hw = xzalloc(sizeof(*hw));
 
-	hw->tx_base = dma_alloc_coherent(16 * sizeof(*hw->tx_base), &hw->tx_base_phys);
-	hw->rx_base = dma_alloc_coherent(16 * sizeof(*hw->rx_base), &hw->rx_base_phys);
+	hw->tx_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					 16 * sizeof(*hw->tx_base), &hw->tx_base_phys);
+	hw->rx_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					 16 * sizeof(*hw->rx_base), &hw->rx_base_phys);
 
 	edev = &hw->edev;
 
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 3147e62c4199..0598b09704f9 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -863,7 +863,8 @@ static int fec_probe(struct device *dev)
 	 */
 #define FEC_XBD_SIZE ((2 + FEC_RBD_NUM) * sizeof(struct buffer_descriptor))
 
-	base = dma_alloc_coherent(FEC_XBD_SIZE, DMA_ADDRESS_BROKEN);
+	base = dma_alloc_coherent(DMA_DEVICE_BROKEN, FEC_XBD_SIZE,
+				  DMA_ADDRESS_BROKEN);
 	fec->rbd_base = base;
 	base += FEC_RBD_NUM * sizeof(struct buffer_descriptor);
 	fec->tbd_base = base;
@@ -908,7 +909,8 @@ static int fec_probe(struct device *dev)
 free_receive_packets:
 	fec_free_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
 free_xbd:
-	dma_free_coherent(fec->rbd_base, 0, FEC_XBD_SIZE);
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  fec->rbd_base, 0, FEC_XBD_SIZE);
 free_gpio:
 	if (gpio_is_valid(phy_reset))
 		gpio_free(phy_reset);
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 165d44eff806..f205de1929ea 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -614,8 +614,9 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
 	muram_writew(&pram->mrblr, MAX_RXBUF_LOG2);
 
 	/* alloc Rx buffer descriptors from main memory */
-	rx_bd_ring_base = dma_alloc_coherent(sizeof(struct fm_port_bd)
-			* RX_BD_RING_SIZE, DMA_ADDRESS_BROKEN);
+	rx_bd_ring_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+			sizeof(struct fm_port_bd) * RX_BD_RING_SIZE,
+			DMA_ADDRESS_BROKEN);
 	if (!rx_bd_ring_base)
 		return -ENOMEM;
 
@@ -692,8 +693,9 @@ static int fm_eth_tx_port_parameter_init(struct fm_eth *fm_eth)
 	out_be32(&pram->txqd_ptr, pram_page_offset + 0x40);
 
 	/* alloc Tx buffer descriptors from main memory */
-	tx_bd_ring_base = dma_alloc_coherent(sizeof(struct fm_port_bd)
-			* TX_BD_RING_SIZE, DMA_ADDRESS_BROKEN);
+	tx_bd_ring_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+			sizeof(struct fm_port_bd) * TX_BD_RING_SIZE,
+			DMA_ADDRESS_BROKEN);
 	if (!tx_bd_ring_base)
 		return -ENOMEM;
 
diff --git a/drivers/net/fsl_enetc.c b/drivers/net/fsl_enetc.c
index 7895e229e483..df5a9a4c0bf8 100644
--- a/drivers/net/fsl_enetc.c
+++ b/drivers/net/fsl_enetc.c
@@ -536,9 +536,11 @@ static int enetc_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	priv = xzalloc(sizeof(*priv));
 	priv->dev = dev;
 
-	priv->enetc_txbd = dma_alloc_coherent(sizeof(struct enetc_tx_bd) * ENETC_BD_CNT,
+	priv->enetc_txbd = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					      sizeof(struct enetc_tx_bd) * ENETC_BD_CNT,
 					      &priv->enetc_txbd_phys);
-	priv->enetc_rxbd = dma_alloc_coherent(sizeof(union enetc_rx_bd) * ENETC_BD_CNT,
+	priv->enetc_rxbd = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					      sizeof(union enetc_rx_bd) * ENETC_BD_CNT,
 					      &priv->enetc_rxbd_phys);
 
 	if (!priv->enetc_txbd || !priv->enetc_rxbd)
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 03fad3f20bd3..28c2fc860e37 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -466,8 +466,10 @@ static void macb_halt(struct eth_device *edev)
 			 macb->rx_buffer_size * macb->rx_ring_size,
 			 DMA_FROM_DEVICE);
 	free(macb->rx_buffer);
-	dma_free_coherent((void *)macb->rx_ring, macb->rx_ring_phys, RX_RING_BYTES(macb));
-	dma_free_coherent((void *)macb->tx_ring, macb->tx_ring_phys, TX_RING_BYTES);
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  (void *)macb->rx_ring, macb->rx_ring_phys, RX_RING_BYTES(macb));
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  (void *)macb->tx_ring, macb->tx_ring_phys, TX_RING_BYTES);
 }
 
 static int macb_phy_read(struct mii_bus *bus, int addr, int reg)
@@ -900,11 +902,13 @@ static int macb_probe(struct device *dev)
 
 	macb_init_rx_buffer_size(macb, PKTSIZE);
 	macb->rx_buffer = dma_alloc(macb->rx_buffer_size * macb->rx_ring_size);
-	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb), &macb->rx_ring_phys);
-	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES, &macb->tx_ring_phys);
+	macb->rx_ring = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					   RX_RING_BYTES(macb), &macb->rx_ring_phys);
+	macb->tx_ring = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					   TX_RING_BYTES, &macb->tx_ring_phys);
 
 	if (macb->is_gem)
-		macb->gem_q1_descs = dma_alloc_coherent(
+		macb->gem_q1_descs = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 				GEM_Q1_DESC_BYTES, &macb->gem_q1_descs_phys);
 
 	macb->rx_packet_buf = net_alloc_packet();
diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index 128965df738a..3178c6e8867b 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -581,9 +581,11 @@ static void mvneta_setup_tx_rx(struct mvneta_port *priv)
 	u32 val;
 
 	/* Allocate descriptors and buffers */
-	priv->txdesc = dma_alloc_coherent(ALIGN(sizeof(*priv->txdesc), 32),
+	priv->txdesc = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					  ALIGN(sizeof(*priv->txdesc), 32),
 					  DMA_ADDRESS_BROKEN);
-	priv->rxdesc = dma_alloc_coherent(RX_RING_SIZE *
+	priv->rxdesc = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					  RX_RING_SIZE *
 					  ALIGN(sizeof(*priv->rxdesc), 32),
 					  DMA_ADDRESS_BROKEN);
 	priv->rxbuf = dma_alloc(RX_RING_SIZE * ALIGN(PKTSIZE, 8));
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 40f5bd46ddd5..982d6436c9c0 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -402,9 +402,11 @@ static int port_probe(struct device *parent, struct port_priv *port)
 		return PTR_ERR(port->regs);
 
 	/* allocate rx/tx descriptors and buffers */
-	port->txdesc = dma_alloc_coherent(ALIGN(sizeof(*port->txdesc), 16),
+	port->txdesc = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					  ALIGN(sizeof(*port->txdesc), 16),
 					  DMA_ADDRESS_BROKEN);
-	port->rxdesc = dma_alloc_coherent(RX_RING_SIZE *
+	port->rxdesc = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					  RX_RING_SIZE *
 					  ALIGN(sizeof(*port->rxdesc), 16),
 					  DMA_ADDRESS_BROKEN);
 	port->rxbuf = dma_alloc(RX_RING_SIZE * ALIGN(PKTSIZE, 8));
diff --git a/drivers/net/r8169_main.c b/drivers/net/r8169_main.c
index 2d895cf88b43..b74cc43ab064 100644
--- a/drivers/net/r8169_main.c
+++ b/drivers/net/r8169_main.c
@@ -2881,14 +2881,16 @@ static void rtl8169_init_ring(struct rtl8169_private *tp)
 
 	tp->cur_rx = tp->cur_tx = 0;
 
-	tp->TxDescArray = dma_alloc_coherent(NUM_TX_DESC * sizeof(struct TxDesc),
-					   &tp->TxPhyAddr);
+	tp->TxDescArray = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					     NUM_TX_DESC * sizeof(struct TxDesc),
+					     &tp->TxPhyAddr);
 	tp->tx_buf = dma_alloc(NUM_TX_DESC * PKT_BUF_SIZE);
 	tp->tx_buf_phys = dma_map_single(edev->parent, tp->tx_buf,
 					   NUM_TX_DESC * PKT_BUF_SIZE, DMA_TO_DEVICE);
 
-	tp->RxDescArray = dma_alloc_coherent(NUM_RX_DESC * sizeof(struct RxDesc),
-					   &tp->RxPhyAddr);
+	tp->RxDescArray = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					     NUM_RX_DESC * sizeof(struct RxDesc),
+					     &tp->RxPhyAddr);
 	tp->rx_buf = dma_alloc(NUM_RX_DESC * PKT_BUF_SIZE);
 	tp->rx_buf_phys = dma_map_single(edev->parent, tp->rx_buf,
 					   NUM_RX_DESC * PKT_BUF_SIZE, DMA_FROM_DEVICE);
@@ -3097,13 +3099,15 @@ static void rtl8169_eth_halt(struct eth_device *edev)
 	dma_unmap_single(edev->parent, tp->tx_buf_phys, NUM_TX_DESC * PKT_BUF_SIZE,
 			 DMA_TO_DEVICE);
 	free(tp->tx_buf);
-	dma_free_coherent((void *)tp->TxDescArray, tp->TxPhyAddr,
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  (void *)tp->TxDescArray, tp->TxPhyAddr,
 			  NUM_TX_DESC * sizeof(struct TxDesc));
 
 	dma_unmap_single(edev->parent, tp->rx_buf_phys, NUM_RX_DESC * PKT_BUF_SIZE,
 			 DMA_FROM_DEVICE);
 	free(tp->rx_buf);
-	dma_free_coherent((void *)tp->RxDescArray, tp->RxPhyAddr,
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  (void *)tp->RxDescArray, tp->RxPhyAddr,
 			  NUM_RX_DESC * sizeof(struct RxDesc));
 }
 
diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
index b342c67b3693..a1cad520599c 100644
--- a/drivers/net/rtl8139.c
+++ b/drivers/net/rtl8139.c
@@ -382,8 +382,10 @@ static int rtl8139_eth_open(struct eth_device *edev)
 	struct rtl8139_priv *priv = edev->priv;
 	int ret;
 
-	priv->tx_bufs = dma_alloc_coherent(TX_BUF_TOT_LEN, &priv->tx_bufs_dma);
-	priv->rx_ring = dma_alloc_coherent(RX_BUF_TOT_LEN, &priv->rx_ring_dma);
+	priv->tx_bufs = dma_alloc_coherent(DMA_DEVICE_BROKEN, TX_BUF_TOT_LEN,
+					   &priv->tx_bufs_dma);
+	priv->rx_ring = dma_alloc_coherent(DMA_DEVICE_BROKEN, RX_BUF_TOT_LEN,
+					   &priv->rx_ring_dma);
 	priv->tx_flag = (TX_FIFO_THRESH << 11) & 0x003f0000;
 
 	rtl8139_init_ring(priv);
@@ -409,9 +411,11 @@ static void rtl8139_eth_halt(struct eth_device *edev)
 
 	pci_clear_master(priv->pci_dev);
 
-	dma_free_coherent((void *)priv->tx_bufs, priv->tx_bufs_dma,
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  (void *)priv->tx_bufs, priv->tx_bufs_dma,
 			  TX_BUF_TOT_LEN);
-	dma_free_coherent((void *)priv->rx_ring, priv->rx_ring_dma,
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  (void *)priv->rx_ring, priv->rx_ring_dma,
 			  RX_BUF_TOT_LEN);
 
 	/* Green! Put the chip in low-power mode. */
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 68280fe4a8c9..e74a43b9aaf0 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -93,10 +93,12 @@ static int nvme_pci_setup_prps(struct nvme_dev *dev,
 
 	nprps = DIV_ROUND_UP(length, page_size);
 	if (nprps > dev->prp_pool_size) {
-		dma_free_coherent(dev->prp_pool, dev->prp_dma,
+		dma_free_coherent(DMA_DEVICE_BROKEN,
+				  dev->prp_pool, dev->prp_dma,
 				  dev->prp_pool_size * sizeof(u64));
 		dev->prp_pool_size = nprps;
-		dev->prp_pool = dma_alloc_coherent(nprps * sizeof(u64),
+		dev->prp_pool = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+						   nprps * sizeof(u64),
 						   &dev->prp_dma);
 	}
 
@@ -157,12 +159,14 @@ static int nvme_alloc_queue(struct nvme_dev *dev, int qid, int depth)
 	if (dev->ctrl.queue_count > qid)
 		return 0;
 
-	nvmeq->cqes = dma_alloc_coherent(CQ_SIZE(depth),
+	nvmeq->cqes = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					 CQ_SIZE(depth),
 					 &nvmeq->cq_dma_addr);
 	if (!nvmeq->cqes)
 		goto free_nvmeq;
 
-	nvmeq->sq_cmds = dma_alloc_coherent(SQ_SIZE(depth),
+	nvmeq->sq_cmds = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					    SQ_SIZE(depth),
 					    &nvmeq->sq_dma_addr);
 	if (!nvmeq->sq_cmds)
 		goto free_cqdma;
@@ -178,7 +182,8 @@ static int nvme_alloc_queue(struct nvme_dev *dev, int qid, int depth)
 	return 0;
 
  free_cqdma:
-	dma_free_coherent((void *)nvmeq->cqes, nvmeq->cq_dma_addr,
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  (void *)nvmeq->cqes, nvmeq->cq_dma_addr,
 			  CQ_SIZE(depth));
  free_nvmeq:
 	return -ENOMEM;
diff --git a/drivers/soc/starfive/jh7100_dma.c b/drivers/soc/starfive/jh7100_dma.c
index 5f6e78fc3632..1b1cafcba0fe 100644
--- a/drivers/soc/starfive/jh7100_dma.c
+++ b/drivers/soc/starfive/jh7100_dma.c
@@ -10,7 +10,8 @@
 #define SDRAM_CACHED_BASE	0x80000000
 #define SDRAM_UNCACHED_BASE	0x1000000000
 
-static inline void *jh7100_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+static inline void *jh7100_alloc_coherent(struct device *dev,
+					  size_t size, dma_addr_t *dma_handle)
 {
 	dma_addr_t cpu_base;
 	void *ret;
@@ -30,7 +31,8 @@ static inline void *jh7100_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 
 }
 
-static inline void jh7100_free_coherent(void *vaddr, dma_addr_t dma_handle, size_t size)
+static inline void jh7100_free_coherent(struct device *dev,
+					void *vaddr, dma_addr_t dma_handle, size_t size)
 {
 	free((void *)dma_handle);
 }
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 8e6dc59a5d12..881134f3145e 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -227,7 +227,8 @@ static void dwc3_ref_clk_period(struct dwc3 *dwc)
 static void dwc3_free_one_event_buffer(struct dwc3 *dwc,
 		struct dwc3_event_buffer *evt)
 {
-	dma_free_coherent(evt->buf, evt->dma, evt->length);
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  evt->buf, evt->dma, evt->length);
 }
 
 /**
@@ -253,7 +254,8 @@ static struct dwc3_event_buffer *dwc3_alloc_one_event_buffer(struct dwc3 *dwc,
 	if (!evt->cache)
 		return ERR_PTR(-ENOMEM);
 
-	evt->buf	= dma_alloc_coherent(length, &evt->dma);
+	evt->buf	= dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					     length, &evt->dma);
 	if (!evt->buf)
 		return ERR_PTR(-ENOMEM);
 
diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
index 48be74f7e960..8b26a0c1027a 100644
--- a/drivers/usb/dwc3/gadget.c
+++ b/drivers/usb/dwc3/gadget.c
@@ -459,7 +459,8 @@ static int dwc3_alloc_trb_pool(struct dwc3_ep *dep)
 	if (dep->trb_pool)
 		return 0;
 
-	dep->trb_pool = dma_alloc_coherent(sizeof(struct dwc3_trb) * DWC3_TRB_NUM,
+	dep->trb_pool = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					   sizeof(struct dwc3_trb) * DWC3_TRB_NUM,
 					   &dep->trb_pool_dma);
 	if (!dep->trb_pool) {
 		dev_err(dep->dwc->dev, "failed to allocate trb pool for %s\n",
@@ -472,7 +473,8 @@ static int dwc3_alloc_trb_pool(struct dwc3_ep *dep)
 
 static void dwc3_free_trb_pool(struct dwc3_ep *dep)
 {
-	dma_free_coherent(dep->trb_pool, dep->trb_pool_dma,
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  dep->trb_pool, dep->trb_pool_dma,
 			  sizeof(struct dwc3_trb) * DWC3_TRB_NUM);
 
 	dep->trb_pool = NULL;
@@ -4142,7 +4144,8 @@ int dwc3_gadget_init(struct dwc3 *dwc)
 	int ret;
 	struct device *dev;
 
-	dwc->ep0_trb = dma_alloc_coherent(sizeof(*dwc->ep0_trb) * 2,
+	dwc->ep0_trb = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					  sizeof(*dwc->ep0_trb) * 2,
 					  &dwc->ep0_trb_addr);
 	if (!dwc->ep0_trb) {
 		dev_err(dwc->dev, "failed to allocate ep0 trb\n");
@@ -4156,7 +4159,8 @@ int dwc3_gadget_init(struct dwc3 *dwc)
 		goto err1;
 	}
 
-	dwc->bounce = dma_alloc_coherent(DWC3_BOUNCE_SIZE, &dwc->bounce_addr);
+	dwc->bounce = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					 DWC3_BOUNCE_SIZE, &dwc->bounce_addr);
 	if (!dwc->bounce) {
 		ret = -ENOMEM;
 		goto err2;
@@ -4232,13 +4236,15 @@ int dwc3_gadget_init(struct dwc3 *dwc)
 	usb_put_gadget(dwc->gadget);
 	dwc->gadget = NULL;
 err3:
-	dma_free_coherent(dwc->bounce, dwc->bounce_addr, DWC3_BOUNCE_SIZE);
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  dwc->bounce, dwc->bounce_addr, DWC3_BOUNCE_SIZE);
 
 err2:
 	kfree(dwc->setup_buf);
 
 err1:
-	dma_free_coherent(dwc->ep0_trb, dwc->ep0_trb_addr, sizeof(*dwc->ep0_trb) * 2);
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  dwc->ep0_trb, dwc->ep0_trb_addr, sizeof(*dwc->ep0_trb) * 2);
 
 err0:
 	return ret;
@@ -4253,7 +4259,9 @@ void dwc3_gadget_exit(struct dwc3 *dwc)
 
 	usb_del_gadget_udc(dwc->gadget);
 	dwc3_gadget_free_endpoints(dwc);
-	dma_free_coherent(dwc->bounce, dwc->bounce_addr, DWC3_BOUNCE_SIZE);
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  dwc->bounce, dwc->bounce_addr, DWC3_BOUNCE_SIZE);
 	kfree(dwc->setup_buf);
-	dma_free_coherent(dwc->ep0_trb, dwc->ep0_trb_addr, sizeof(*dwc->ep0_trb) * 2);
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  dwc->ep0_trb, dwc->ep0_trb_addr, sizeof(*dwc->ep0_trb) * 2);
 }
diff --git a/drivers/usb/gadget/udc/fsl_udc.c b/drivers/usb/gadget/udc/fsl_udc.c
index 30f4da0c41e7..61861883ef0a 100644
--- a/drivers/usb/gadget/udc/fsl_udc.c
+++ b/drivers/usb/gadget/udc/fsl_udc.c
@@ -194,7 +194,8 @@ static void done(struct fsl_ep *ep, struct fsl_req *req, int status)
 		if (j != req->dtd_count - 1) {
 			next_td = curr_td->next_td_virt;
 		}
-		dma_free_coherent(curr_td, 0, sizeof(struct ep_td_struct));
+		dma_free_coherent(DMA_DEVICE_BROKEN,
+				  curr_td, 0, sizeof(struct ep_td_struct));
 	}
 
 	usb_gadget_unmap_request(&udc->gadget, &req->req, ep_is_in(ep));
@@ -767,8 +768,8 @@ static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req,
 	length = min(req->req.length - req->req.actual,
 			(unsigned)EP_MAX_LENGTH_TRANSFER);
 
-	dtd = dma_alloc_coherent(sizeof(struct ep_td_struct),
-				 dma);
+	dtd = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+				 sizeof(struct ep_td_struct), dma);
 	if (dtd == NULL)
 		return dtd;
 
@@ -1696,7 +1697,8 @@ static int struct_udc_setup(struct fsl_udc *udc,
 		size &= ~(QH_ALIGNMENT - 1);
 	}
 
-	udc->ep_qh = dma_alloc_coherent(size, &udc->ep_qh_dma);
+	udc->ep_qh = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					size, &udc->ep_qh_dma);
 	if (!udc->ep_qh) {
 		ERR("malloc QHs for udc failed\n");
 		kfree(udc->eps);
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 7ae3a285a027..5fde8d2a4abd 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -913,7 +913,7 @@ static int ehci_init(struct usb_host *host)
 		 * dma_alloc_coherent() allocates PAGE_SIZE aligned memory chunks.
 		 * PAGE_SIZE less then 4k will break this code.
 		 */
-		ehci->periodic_list = dma_alloc_coherent(1024 * 4,
+		ehci->periodic_list = dma_alloc_coherent(DMA_DEVICE_BROKEN, 1024 * 4,
 						&ehci->periodic_list_dma);
 	for (i = 0; i < 1024; i++) {
 		ehci->periodic_list[i] = cpu_to_hc32((unsigned long)ehci->periodic_queue_dma
@@ -1131,11 +1131,13 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 	result->elementsize = elementsize;
 	result->queuesize = queuesize;
 	result->pipe = pipe;
-	result->first = dma_alloc_coherent(sizeof(struct QH) * queuesize,
+	result->first = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					   sizeof(struct QH) * queuesize,
 					   &result->first_dma);
 	result->current = result->first;
 	result->last = result->first + queuesize - 1;
-	result->tds = dma_alloc_coherent(sizeof(struct qTD) * queuesize,
+	result->tds = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					 sizeof(struct qTD) * queuesize,
 					 &result->tds_dma);
 
 	for (i = 0; i < queuesize; i++) {
@@ -1210,9 +1212,11 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 	dev_dbg(&dev->dev, "Exit create_int_queue\n");
 	return result;
 fail3:
-	dma_free_coherent(result->tds, result->tds_dma,
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  result->tds, result->tds_dma,
 			  sizeof(struct qTD) * queuesize);
-	dma_free_coherent(result->first, result->first_dma,
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  result->first, result->first_dma,
 			  sizeof(struct QH) * queuesize);
 	free(result);
 	return NULL;
@@ -1288,8 +1292,10 @@ static int ehci_destroy_int_queue(struct usb_device *dev,
 	}
 
 out:
-	dma_free_coherent(queue->tds, 0, sizeof(struct qTD) * queue->queuesize);
-	dma_free_coherent(queue->first, 0, sizeof(struct QH) * queue->queuesize);
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  queue->tds, 0, sizeof(struct qTD) * queue->queuesize);
+	dma_free_coherent(DMA_DEVICE_BROKEN,
+			  queue->first, 0, sizeof(struct QH) * queue->queuesize);
 	free(queue);
 	return result;
 }
@@ -1363,11 +1369,14 @@ struct ehci_host *ehci_register(struct device *dev, struct ehci_data *data)
 	ehci->init = data->init;
 	ehci->post_init = data->post_init;
 
-	ehci->qh_list = dma_alloc_coherent(sizeof(struct QH) * NUM_QH,
+	ehci->qh_list = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					   sizeof(struct QH) * NUM_QH,
 					   &ehci->qh_list_dma);
-	ehci->periodic_queue = dma_alloc_coherent(sizeof(struct QH),
+	ehci->periodic_queue = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+						  sizeof(struct QH),
 						  &ehci->periodic_queue_dma);
-	ehci->td = dma_alloc_coherent(sizeof(struct qTD) * NUM_TD,
+	ehci->td = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+				      sizeof(struct qTD) * NUM_TD,
 				      &ehci->td_dma);
 
 	host->hw_dev = dev;
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index ae4c34e818f9..29118893fa75 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -1747,7 +1747,7 @@ static int ohci_init(struct usb_host *host)
 
 	info("%s\n", __func__);
 
-	ohci->ptd = dma_alloc_coherent(sizeof(struct td) * NUM_TD,
+	ohci->ptd = dma_alloc_coherent(DMA_DEVICE_BROKEN, sizeof(struct td) * NUM_TD,
 				       DMA_ADDRESS_BROKEN);
 	if (!ohci->ptd)
 		return -ENOMEM;
@@ -1791,12 +1791,12 @@ static int ohci_probe(struct device *dev)
 	host->submit_control_msg = submit_control_msg;
 	host->submit_bulk_msg = submit_bulk_msg;
 
-	ohci->hcca = dma_alloc_coherent(sizeof(*ohci->hcca),
+	ohci->hcca = dma_alloc_coherent(DMA_DEVICE_BROKEN, sizeof(*ohci->hcca),
 					DMA_ADDRESS_BROKEN);
 	if (!ohci->hcca)
 		return -ENOMEM;
 
-	ohci->ohci_dev = dma_alloc_coherent(sizeof(*ohci->ohci_dev),
+	ohci->ohci_dev = dma_alloc_coherent(DMA_DEVICE_BROKEN, sizeof(*ohci->ohci_dev),
 					    DMA_ADDRESS_BROKEN);
 	if (!ohci->ohci_dev)
 		return -ENOMEM;
diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index e962bfde3f56..aca3920427f4 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -86,7 +86,7 @@ static void *xhci_malloc(struct xhci_ctrl *ctrl, unsigned int size, dma_addr_t *
 {
 	void *ptr;
 
-	ptr = dma_alloc_coherent(size, dma_addr);
+	ptr = dma_alloc_coherent(DMA_DEVICE_BROKEN, size, dma_addr);
 	if (!ptr)
 		return NULL;
 
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 9d3e6682b66a..964b69867f21 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -194,7 +194,8 @@ static int atmel_lcdfb_alloc_video_memory(struct atmel_lcdfb_info *sinfo)
 		    * ((info->bits_per_pixel + 7) / 8));
 	smem_len = max(smem_len, sinfo->smem_len);
 
-	info->screen_base = dma_alloc_coherent(smem_len, DMA_ADDRESS_BROKEN);
+	info->screen_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					       smem_len, DMA_ADDRESS_BROKEN);
 
 	if (!info->screen_base)
 		return -ENOMEM;
@@ -477,7 +478,8 @@ int atmel_lcdc_register(struct device *dev, struct atmel_lcdfb_devdata *data)
 	atmel_lcdfb_start_clock(sinfo);
 
 	if (data->dma_desc_size)
-		sinfo->dma_desc = dma_alloc_coherent(data->dma_desc_size,
+		sinfo->dma_desc = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+						     data->dma_desc_size,
 						     DMA_ADDRESS_BROKEN);
 
 	info->dev.parent = dev;
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index e2ff01929be2..840155d5cc02 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -1022,7 +1022,8 @@ static int imxfb_probe(struct device *dev)
 		remap_range(fbi->info.screen_base,
 			fbi->info.screen_size, MAP_UNCACHED);
 	} else {
-		fbi->info.screen_base = dma_alloc_coherent(fbi->info.screen_size,
+		fbi->info.screen_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+							   fbi->info.screen_size,
 							   DMA_ADDRESS_BROKEN);
 		if (!fbi->info.screen_base)
 			return -ENOMEM;
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index e4ac988053c6..afc93805c1cf 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -218,7 +218,8 @@ static int ipufb_activate_var(struct fb_info *info)
 	struct ipufb_info *fbi = container_of(info, struct ipufb_info, info);
 
 	info->line_length = info->xres * (info->bits_per_pixel >> 3);
-	fbi->info.screen_base = dma_alloc_writecombine(info->line_length * info->yres,
+	fbi->info.screen_base = dma_alloc_writecombine(DMA_DEVICE_BROKEN,
+						   info->line_length * info->yres,
 						   DMA_ADDRESS_BROKEN);
 	if (!fbi->info.screen_base)
 		return -ENOMEM;
diff --git a/drivers/video/omap.c b/drivers/video/omap.c
index 3b1ec89c3805..08b81b42f2fc 100644
--- a/drivers/video/omap.c
+++ b/drivers/video/omap.c
@@ -113,7 +113,8 @@ static void omapfb_disable(struct fb_info *info)
 		/* free frame buffer; but only when screen is not
 		* preallocated */
 		if (info->screen_base)
-			dma_free_coherent(info->screen_base, 0, fbi->dma_size);
+			dma_free_coherent(DMA_DEVICE_BROKEN,
+					  info->screen_base, 0, fbi->dma_size);
 	}
 
 	info->screen_base = NULL;
@@ -257,13 +258,15 @@ static int omapfb_activate_var(struct fb_info *info)
 
 	/*Free old screen buf*/
 	if (!fbi->prealloc_screen.addr && info->screen_base)
-		dma_free_coherent(info->screen_base, 0, fbi->dma_size);
+		dma_free_coherent(DMA_DEVICE_BROKEN,
+				  info->screen_base, 0, fbi->dma_size);
 
 	fbi->dma_size = PAGE_ALIGN(size);
 
 	if (!fbi->prealloc_screen.addr) {
 		/* case 1: no preallocated screen */
-		info->screen_base = dma_alloc_coherent(size, DMA_ADDRESS_BROKEN);
+		info->screen_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+						       size, DMA_ADDRESS_BROKEN);
 	} else if (fbi->prealloc_screen.size < fbi->dma_size) {
 		/* case 2: preallocated screen, but too small */
 		dev_err(fbi->dev,
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index 561a73fb3234..a9accd537789 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -514,12 +514,14 @@ static int pxafb_probe(struct device *dev)
 		fbi->info.screen_base = pdata->framebuffer;
 	else
 		fbi->info.screen_base =
-			PTR_ALIGN(dma_alloc_coherent(info->xres * info->yres *
+			PTR_ALIGN(dma_alloc_coherent(DMA_DEVICE_BROKEN,
+						     info->xres * info->yres *
 						     (info->bits_per_pixel >> 3) + PAGE_SIZE,
 						     DMA_ADDRESS_BROKEN),
 				  PAGE_SIZE);
 
-	fbi->dma_buff = PTR_ALIGN(dma_alloc_coherent(sizeof(struct pxafb_dma_buff) + 16,
+	fbi->dma_buff = PTR_ALIGN(dma_alloc_coherent(DMA_DEVICE_BROKEN,
+						     sizeof(struct pxafb_dma_buff) + 16,
 				DMA_ADDRESS_BROKEN), 16);
 
 	pxafb_activate_var(fbi);
diff --git a/drivers/video/ramfb.c b/drivers/video/ramfb.c
index 3442e81b9e51..45b75e890c59 100644
--- a/drivers/video/ramfb.c
+++ b/drivers/video/ramfb.c
@@ -83,10 +83,12 @@ static int ramfb_activate_var(struct fb_info *fbi)
 	struct ramfb *ramfb = fbi->priv;
 
 	if (fbi->screen_base)
-		dma_free_coherent(fbi->screen_base, ramfb->screen_dma, fbi->screen_size);
+		dma_free_coherent(DMA_DEVICE_BROKEN,
+				  fbi->screen_base, ramfb->screen_dma, fbi->screen_size);
 
 	fbi->screen_size = fbi->xres * fbi->yres * fbi->bits_per_pixel;
-	fbi->screen_base = dma_alloc_coherent(fbi->screen_size, &ramfb->screen_dma);
+	fbi->screen_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+					      fbi->screen_size, &ramfb->screen_dma);
 
 	return 0;
 }
diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
index 3ab6fe97e0b0..3a1c951ec7e4 100644
--- a/drivers/video/rockchip/rockchip_drm_vop2.c
+++ b/drivers/video/rockchip/rockchip_drm_vop2.c
@@ -1634,8 +1634,9 @@ static int vop2_register_plane(struct vop2_video_port *vp, struct vop2_win *win)
 	win->dst.y2 = info->yres;
 
 	info->line_length = vp->line_length;
-	info->screen_base = dma_alloc_writecombine(vp->line_length * vp->max_yres,
-							&win->dma);
+	info->screen_base = dma_alloc_writecombine(DMA_DEVICE_BROKEN,
+						   vp->line_length * vp->max_yres,
+						   &win->dma);
 	if (!info->screen_base)
 		return -ENOMEM;
 
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index c88b71195eac..86510b939790 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -325,7 +325,8 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 		remap_range(fbi->fixed_screen,
 				fbi->fixed_screen_size, MAP_UNCACHED);
 	} else {
-		fb_info->screen_base = dma_alloc_coherent(size, DMA_ADDRESS_BROKEN);
+		fb_info->screen_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+							  size, DMA_ADDRESS_BROKEN);
 		if (!fb_info->screen_base)
 			return -ENOMEM;
 		fbi->memory_size = size;
diff --git a/drivers/video/stm32_ltdc.c b/drivers/video/stm32_ltdc.c
index d1c36b1f45c6..6b91ee18b962 100644
--- a/drivers/video/stm32_ltdc.c
+++ b/drivers/video/stm32_ltdc.c
@@ -174,7 +174,8 @@ static int ltdc_activate_var(struct fb_info *info)
 {
 	info->line_length = info->xres * (info->bits_per_pixel >> 3);
 
-	info->screen_base = dma_alloc_writecombine(info->line_length * info->yres,
+	info->screen_base = dma_alloc_writecombine(DMA_DEVICE_BROKEN,
+						   info->line_length * info->yres,
 						   DMA_ADDRESS_BROKEN);
 	if (!info->screen_base)
 		return -ENOMEM;
diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index 787b04a766e9..1e5431dd3ee4 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -339,7 +339,7 @@ static void *vring_alloc_queue(struct virtio_device *vdev,
 			       size_t size, dma_addr_t *dma_handle)
 {
 	if (vring_use_dma_api(vdev)) {
-		return dma_alloc_coherent(size, dma_handle);
+		return dma_alloc_coherent(DMA_DEVICE_BROKEN, size, dma_handle);
 	} else {
 		void *queue = memalign(PAGE_SIZE, PAGE_ALIGN(size));
 
@@ -371,7 +371,7 @@ static void vring_free_queue(struct virtio_device *vdev,
 			     size_t size, void *queue, dma_addr_t dma_handle)
 {
 	if (vring_use_dma_api(vdev))
-		dma_free_coherent(queue, dma_handle, size);
+		dma_free_coherent(DMA_DEVICE_BROKEN, queue, dma_handle, size);
 	else
 		free(queue);
 }
diff --git a/include/dma.h b/include/dma.h
index 101116f58466..5a82637e24ac 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -16,6 +16,7 @@
 #include <device.h>
 
 #define DMA_ADDRESS_BROKEN	((dma_addr_t *)NULL)
+#define DMA_DEVICE_BROKEN	((struct device *)NULL)
 
 #ifndef DMA_ALIGNMENT
 #define DMA_ALIGNMENT	32
@@ -120,15 +121,15 @@ void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
 		      size_t size, enum dma_data_direction dir);
 
 #ifndef dma_alloc_coherent
-void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle);
+void *dma_alloc_coherent(struct device *dev, size_t size, dma_addr_t *dma_handle);
 #endif
 
 #ifndef dma_free_coherent
-void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size);
+void dma_free_coherent(struct device *dev, void *mem, dma_addr_t dma_handle, size_t size);
 #endif
 
 #ifndef dma_alloc_writecombine
-void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle);
+void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle);
 #endif
 
 #endif /* __DMA_H */
-- 
2.39.5



