Delivery-date: Mon, 14 Oct 2024 15:57:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZJ-004HY0-2W
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:57:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZI-0006T0-LX
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:57:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pF1filYNXEDDxFTNgGgs8yM3RBWQn7RgcErneMqjpGc=; b=tdpyJRXxs6c8SxhPLGRirhI4tq
	bG/0jq1PK1UutLzMYBoqy+h0d0SEPil7YSIQjy+eZ4xVyINk4IHY30CfPp5EIEPGwhTvQkruy9Gwa
	aM2ps5wAu0X82B791b2IFieKvgA16PxjXKsWPLvsX4HuUuw0G9QIMB0iUMUwktBzWzhdofvHCP9Db
	xgrNuKFiSucELKriUY7WtX8tOKKCaxl29E4DiBj1WqN+medR+iXmU3D2cFGrS2uop7NWJ+XCDONSK
	bYVbRn9h408uLx94xb+COyNuhHNZRF766Fx9gu3epTSN680k8kUZymiQdi0jlSJukSOu5kZNF0LBn
	r3rdlYOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LYf-00000005NOi-2DgZ;
	Mon, 14 Oct 2024 13:56:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Kes-00000005AcP-1Dc3
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:58:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ker-0007L4-1M; Mon, 14 Oct 2024 14:58:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-001nNT-Ge; Mon, 14 Oct 2024 14:58:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-00A8vm-1L;
	Mon, 14 Oct 2024 14:58:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>
Date: Mon, 14 Oct 2024 14:58:37 +0200
Message-Id: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_055846_357641_41A2BFE4 
X-CRM114-Status: GOOD (  11.47  )
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
Subject: [PATCH 0/6] dma: give dma_alloc_coherent a device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Devices can be inherently DMA coherent and thus dma_alloc_coherent could
be implemented as a normal allocation.

While using uncached memory in this case isn't wrong, it can lead
to a a very stark performance degradation as identified in this patch[1]
when barebox ran under KVM.

Additionally, devices may have addressing limitations
(dma_set_coherent_mask) or a non-1:1 mapping in the coherent DMA case.

Therefore, let's do what we already do for streaming DMA and give the
coherent/writecombine DMA functions an extra device parameter.

This parameter is currently unused, but in future we can use it to
handle devices that are already DMA coherent specially.

[1]: https://lore.barebox.org/barebox/20241009060511.4121157-6-a.fatoum@pengutronix.de/

Ahmad Fatoum (6):
  dma: make DMA_ADDRESS_BROKEN type-safe
  video: stm: use DMA_ADDRESS_BROKEN instead of NULL
  crypto: caam - pbl-init: use DMA_ADDRESS_BROKEN instead of NULL
  net: designware: don't use dma_mapping_error for non-streaming DMA
  net: macb: fix DMA_ADDRESS_BROKEN in the coherent ring allocations
  dma: give dma_alloc_coherent a device parameter

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
 drivers/crypto/caam/pbl-init.c             |  3 ++-
 drivers/firmware/qemu_fw_cfg.c             |  3 ++-
 drivers/mci/dw_mmc.c                       |  3 ++-
 drivers/mtd/nand/raw/nand_mxs.c            |  8 +++---
 drivers/net/ag71xx.c                       |  6 +++--
 drivers/net/arc_emac.c                     |  6 +++--
 drivers/net/at91_ether.c                   |  6 +++--
 drivers/net/designware.c                   | 10 +++++---
 drivers/net/designware_eqos.c              |  9 ++++---
 drivers/net/e1000/main.c                   |  6 +++--
 drivers/net/fec_imx.c                      |  6 +++--
 drivers/net/fsl-fman.c                     | 10 +++++---
 drivers/net/fsl_enetc.c                    |  6 +++--
 drivers/net/macb.c                         | 25 +++++++++++--------
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
 include/dma.h                              |  9 ++++---
 52 files changed, 270 insertions(+), 147 deletions(-)

-- 
2.39.5



