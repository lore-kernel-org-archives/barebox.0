Delivery-date: Tue, 21 Feb 2023 09:07:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNgL-00DeeW-6X
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 09:07:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNgJ-00074R-LV
	for lore@pengutronix.de; Tue, 21 Feb 2023 09:07:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=g3LuBXthDn0ctqrPnPijk1f0ItwA5mNyI2z+DTcSNCc=; b=akkCJvct40eBDE/qV6SXTwvyk6
	rFwaLjlCMnzcbTv6oL2EoGecphuS97VI/AI/E1CT/bdOs9dtp8W7ORs+L3ULw3eXU9kd8OviotfCx
	rY8uUrFPAFVRqewiZeSgUOKnvv6lA6PIwlG/ylCl5bGJiYn2FhhSMNn1ozJ3Z9Nk4tnO+CzgAQcMD
	eyzZm2RaTUBQWnIwD0nJcR4DQ14UjfrJ9c54zj71alD/wqYhWLkfXRbPWoWSM7ips3tNNXaGDjXvU
	VzQHD5deoKn2MVT0Z3IyQL5tsNNc1R6K51OaRx7Xqos9U3QjZnGh/JK2VMGHaLfM3/Wbq8ZXlJzXL
	4IHfVnDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNf9-006yiU-4w; Tue, 21 Feb 2023 08:06:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNeW-006yJB-2b
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 08:05:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeT-00063p-8I; Tue, 21 Feb 2023 09:05:29 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeR-006Rjk-E6; Tue, 21 Feb 2023 09:05:28 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeP-002YH1-OR; Tue, 21 Feb 2023 09:05:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de
Date: Tue, 21 Feb 2023 09:05:12 +0100
Message-Id: <20230221080524.607241-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_000532_135458_63EABC5D 
X-CRM114-Status: GOOD (  12.23  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 00/12] ARM64: layerscape: make LS1046 DMA coherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Upstream DT changes /soc of NXP Layerscape LS1046A to be dma-coherent.
This means that:

 1) Linux v6.1 expects bootloader to configure DMA masters to snoop caches
 2) bootloader needs to skip cache maintenance when talking to DMA
    master when it has set snoop bits

This series does that and thereby restores USB functionality when
booting Linux v6.1 with barebox. For older kernels, dma-coherent is
fixed up into kernel DT, so newer barebox versions can boot both
kernels.

This series still needs some more testing, but it's fit for review IMO.

One thing I wasn't sure about is whether I need memory barriers in
dma_sync_single. I don't see the kernel using any though in the same
situation.

Let me know what you think.

Ahmad Fatoum (12):
  usb: dwc3: populate parent of xHCI dev
  usb: xhci: pass physical device to DMA API
  net: rtl8169: pass physical device for DMA API
  firmware: zynqmp-fpga: pass physical device to DMA API
  net: designware: eqos: pass physical device to DMA API
  x86: select OF_DMA_DEFAULT_COHERENT
  dma: define CONFIG_OF_DMA_COHERENCY
  RISC-V: StarFive: J7100: set /soc/dma-noncoherent
  of: populate new device_d::dma_coherent attribute
  dma: fix dma_sync when not all device DMA is equally coherent
  dma: provide of_dma_coherent_fixup helper
  ARM64: layerscape: configure all DMA masters to be cache-coherent

 arch/arm/Kconfig                            |  1 +
 arch/arm/mach-layerscape/Makefile           |  1 +
 arch/arm/mach-layerscape/dma-coherent.c     | 20 +++++++++++
 arch/arm/mach-layerscape/lowlevel-ls1046a.c | 10 +++---
 arch/riscv/Kconfig.socs                     |  1 +
 arch/riscv/dts/jh7100.dtsi                  |  1 +
 arch/x86/Kconfig                            |  1 +
 commands/devinfo.c                          |  5 +++
 drivers/base/resource.c                     |  6 ++--
 drivers/dma/Kconfig                         | 10 ++++++
 drivers/dma/Makefile                        |  1 +
 drivers/dma/map.c                           |  6 ++--
 drivers/dma/of_fixups.c                     | 16 +++++++++
 drivers/firmware/zynqmp-fpga.c              |  7 ++--
 drivers/net/designware_eqos.c               | 13 ++++---
 drivers/net/rtl8169.c                       |  9 ++---
 drivers/of/platform.c                       |  3 ++
 drivers/usb/dwc3/host.c                     |  8 ++---
 drivers/usb/host/xhci-ring.c                |  8 ++---
 drivers/usb/host/xhci.c                     |  6 +++-
 include/driver.h                            | 40 +++++++++++++++++++--
 include/of_address.h                        |  8 +++++
 include/soc/fsl/immap_lsch2.h               |  7 ++++
 23 files changed, 155 insertions(+), 33 deletions(-)
 create mode 100644 arch/arm/mach-layerscape/dma-coherent.c
 create mode 100644 drivers/dma/of_fixups.c

-- 
2.30.2



