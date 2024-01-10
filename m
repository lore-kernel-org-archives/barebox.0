Delivery-date: Wed, 10 Jan 2024 17:02:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2a-00BoLS-0X
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 17:02:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2Z-0002pt-F2
	for lore@pengutronix.de; Wed, 10 Jan 2024 17:02:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hBwJafboA3mGdIVFh/V9/vEM3xiAuLhld0oBuyuqJA0=; b=aTEpvvLadI2GuBnPi3iiR3wPy2
	WF2R/xYxde6/Se/qhjjZ9K5mSzSne9/1+18PuzYW2jnJnrQ6/mSw8+4THsa1OtW5Stg+UeK7XDU5E
	eJQJF/bj6PIog65eB+n4hlDUBO5vOIMl15sIbSfW2hEmb4r0uI1odBFguMqDlX2TBaprTTkf9SGyF
	5rvhhtsRUYuE434tndJI7+5oJS9NZvJh5mn8HYreFU7rgs5fjQWNpPcQtYMJ2g4qyUPao1gpfjZ8M
	4WAFtnN/WFPSAfTuiFdidMeDyNTllk46DZ4W/NjTHfFCFIpQvxYiXMCGne1hffA5yQrqJf2wdoG2F
	4U7c/3iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1O-00Ckjh-1g;
	Wed, 10 Jan 2024 16:01:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1E-00Ckag-1E
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 16:01:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-0002Bf-1u
	for barebox@lists.infradead.org; Wed, 10 Jan 2024 17:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-001jui-LG
	for barebox@lists.infradead.org; Wed, 10 Jan 2024 17:01:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-00HLtL-1r
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 17:01:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 10 Jan 2024 17:01:02 +0100
Message-Id: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_080128_476224_7A6FB29D 
X-CRM114-Status: GOOD (  10.74  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 00/11] ARM64: layerscape: make LS1046 DMA coherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upstream DT changed /soc of NXP Layerscape LS1046A to be dma-coherent.
This means that:

 1) Linux v6.1 expects bootloader to configure DMA masters to snoop
    caches
 2) bootloader needs to skip cache maintenance when talking to DMA
    master when it has set snoop bits

 This series does that and thereby restores USB functionality when
 booting Linux v6.1 with barebox. For older kernels, dma-coherent
 is fixed up into kernel DT, so newer barebox versions can boot both
 kernels.

This v2 incorporates Sascha's feedback on v1 and fixes bugs that
I noticed after further testing on LS1046A boards. I tested against
Linux v6.6.4.

v1 was here:
https://lore.barebox.org/barebox/20230221080524.607241-1-a.fatoum@pengutronix.de/

Ahmad Fatoum (11):
  dma: rename OF_DMA_DEFAULT_COHERENT to ARCH_DMA_DEFAULT_COHERENT
  dma: select ARCH_DMA_DEFAULT_COHERENT for x86 and sandbox
  dma: introduce CONFIG_OF_DMA_COHERENCY
  RISC-V: StarFive: J7100: set /soc/dma-noncoherent
  ARM: dts: layerscape: add header for barebox DT overrides
  ARM: dts: layerscape: mark ls1046a SoC DMA incoherent in DT
  of: populate new device_d::dma_coherent attribute
  dma: fix dma_sync when not all device DMA is equally coherent
  dma: align barebox DMA coherency setting with kernel's
  ARM: layerscape: configure all DMA masters to be cache-coherent
  ARM: layerscape: enable DWC3 snooping on ls1046a

 arch/Kconfig                                |  7 ++++
 arch/arm/Kconfig                            |  1 +
 arch/arm/dts/fsl-ls1046a-rdb.dts            |  2 +-
 arch/arm/dts/fsl-ls1046a.dtsi               |  7 ++++
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts   |  2 +-
 arch/arm/mach-layerscape/lowlevel-ls1046a.c | 10 +++---
 arch/arm/mach-layerscape/soc.c              | 32 +++++++++++++++++
 arch/riscv/Kconfig                          |  2 +-
 arch/riscv/Kconfig.socs                     |  1 +
 arch/riscv/dts/jh7100.dtsi                  |  1 +
 arch/sandbox/Kconfig                        |  1 +
 arch/x86/Kconfig                            |  1 +
 commands/devinfo.c                          |  4 +++
 drivers/dma/Kconfig                         | 13 +++++++
 drivers/dma/Makefile                        |  1 +
 drivers/dma/map.c                           | 12 ++++---
 drivers/dma/of_fixups.c                     | 40 +++++++++++++++++++++
 drivers/of/Kconfig                          |  4 ---
 drivers/of/platform.c                       | 17 +++++----
 include/driver.h                            | 22 ++++++++++++
 include/soc/fsl/immap_lsch2.h               |  7 ++++
 21 files changed, 165 insertions(+), 22 deletions(-)
 create mode 100644 arch/arm/dts/fsl-ls1046a.dtsi
 create mode 100644 drivers/dma/of_fixups.c

-- 
2.39.2



