Delivery-date: Tue, 26 Mar 2024 11:08:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jl-0051ls-2c
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:08:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jk-0002vG-JR
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:08:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5b8NgoDJTmlmAgJje03GB/vQoz3LTdOWEQTZpvQOEXc=; b=apV2uT/bWmtdTNmK1y8Cut9oGP
	krn/dHbZW4F1hoxbEEW0rM0p3agdq+W75Sl5+bSCWfo81V/5DmOw3o5HuqZwM1RWo7TFvOGSOgSEU
	h+TOa3VSaCwLyfxRSE5Gh66UP5X80SkckfNiNj9NSta8GkyI4TyavUiiap8YNr1TKyuceONN2FyeD
	AYAyW/rQhi12NTn35CmouG525NJLa7jC8WhyXcYNnSJMCPNmRS7CfZ+aPqKi6jYFzqRJESpa0830N
	uBt+qhHpInPFBt/cEOAA1uTrQrlG17br8ObeD+JRHVCTxBGihPVvSsuJePCnuQJYymrE4GgYBHwvS
	Lwk8wLyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3iq-00000003xZk-3kpI;
	Tue, 26 Mar 2024 10:08:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3ih-00000003xRi-42og
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:07:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-0002Fs-CQ; Tue, 26 Mar 2024 11:07:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-008b0Q-03; Tue, 26 Mar 2024 11:07:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3ic-00202A-2t;
	Tue, 26 Mar 2024 11:07:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:30 +0100
Message-Id: <20240326100746.471532-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_030752_059051_A807B3FB 
X-CRM114-Status: GOOD (  13.39  )
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
Subject: [PATCH 00/16] PCI: support non 1:1 mappings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series evolved from getting PCIe to work on a RK3568 based board.
The device tree PCIe ranges property uses non 1:1 mappings between CPU
and PCI bus which this series adds support for. With this series we
parse the ranges property into struct resource_entry windows like done
in Linux. With this we get pcibios_resource_to_bus() and
pcibios_bus_to_resource() to translate between the PCI/CPU address
spaces. Additionally we have some cleanup for the pcie-designware driver
and we can remove the quirk we already introduced for the rk3588 Rock5b
board in which we have overwritten the ranges property.

Sascha Hauer (16):
  net: phy: realtek: add phy for RTL8168 internal phy
  pci: add 'self' member to struct pci_bus
  pci: rename parent_bus to parent
  add support for resource lists
  pci: pcie-designware: remove unused variable
  pci: dwc: Drop support for config space in 'ranges'
  pci: add pci_controller_init()
  pci: support non 1:1 mappings
  pci: pcie-designware: Speed up waiting for link
  pci: pcie-dw-rockchip: wait for link
  pci: drop resources from struct pci_bus
  pci: add of_pci_bridge_init()
  pci: pcie-designware: drop duplicate resource assigning
  pci: pcie-designware: remove dra7xx quirks
  pci: pcie-designware: iterate over windows
  ARM: dts: rk3588-rock-5b: remove pci ranges quirks

 arch/arm/dts/rk3588-rock-5b.dts    |  15 -----
 arch/mips/mach-malta/pci.c         |   2 +
 common/resource.c                  |  16 +++++
 drivers/net/phy/realtek.c          |   7 ++
 drivers/pci/Makefile               |   3 +-
 drivers/pci/bus.c                  |  23 +++++++
 drivers/pci/host-bridge.c          |  76 +++++++++++++++++++++
 drivers/pci/of.c                   | 102 +++++++++++++++++++++++++++++
 drivers/pci/pci-ecam-generic.c     |   2 +
 drivers/pci/pci-efi.c              |   4 +-
 drivers/pci/pci-layerscape.c       |   2 +-
 drivers/pci/pci-mvebu.c            |   3 +
 drivers/pci/pci-tegra.c            |   4 +-
 drivers/pci/pci.c                  |  67 +++++++++++--------
 drivers/pci/pcie-designware-host.c |  95 ++++++++-------------------
 drivers/pci/pcie-designware.c      |   8 ++-
 drivers/pci/pcie-designware.h      |   9 ---
 drivers/pci/pcie-dw-rockchip.c     |   2 +
 include/linux/pci.h                |  37 ++++++++++-
 include/linux/resource_ext.h       |  81 +++++++++++++++++++++++
 20 files changed, 426 insertions(+), 132 deletions(-)
 create mode 100644 drivers/pci/host-bridge.c
 create mode 100644 drivers/pci/of.c
 create mode 100644 include/linux/resource_ext.h

-- 
2.39.2



