Delivery-date: Mon, 05 May 2025 14:08:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBuca-002S6d-1b
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:08:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBucZ-0007IG-Ql
	for lore@pengutronix.de; Mon, 05 May 2025 14:08:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wEFT9NegCg1xfKSkbz3T75BpuEckLsZ+wBUsQ9h10TU=; b=fVVSRy32rxpKNx8v3COM9PynXE
	qkE6PVEulIdgV0z2CxzM8xx+pl5rN1ywVe+WJePK4XkkqCK+c5HjbvrwTTE9HuPOnKGMZiP2gLJ3y
	eLaAZ3F9+OlB2/SFidkHYTt/MYmjZeCWGZUBw+FX/JmkKlyxJQtOjXy+eapz71fkwG7ZG+Cdx//bG
	bIxPM3a9zxBii+zL1ALrHHyGbPLbeb8hWF0mab4GmVHNPFs5YrpNCvggE+MFuFt91tFHNBLBIgCHr
	tAKIERBoFauPBhxWecwOASQ/rvkKdejfXbdDdOTJ3OeB5tDD/QBQsyhud7STbA2Skt4EI9aeFAZvY
	BwpzI19A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBubu-00000007FkK-3KLo;
	Mon, 05 May 2025 12:07:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBuai-00000007FaB-3X3S
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:06:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-0006RT-9U
	for barebox@lists.infradead.org; Mon, 05 May 2025 14:06:34 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-001Dx9-0J
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 14:06:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-00Fb9X-1V
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  5 May 2025 14:06:03 +0200
Message-Id: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_050636_878631_0DA3E0E2 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/30] mci: imx-esdhc: add HS200 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On my i.MX8MP board this increases sequential read three-fold.

I also got HS400ES running, but it gives me occasional CRC errors, so
this series only concerns itself with HS200 for now.

Ahmad Fatoum (30):
  mci: sdhci: fix SDHCI_TRNS_AUTO_CMD12 definition
  mci: move most recent I/O settings into mci_host::ios
  mci: use struct mci_host::ios inside mci_set_ios
  mci: tuning: fix fallback to DDR52
  mci: sdhci: unmap DMA buffers on timeout
  mci: add MMC_CAP_UHS constants
  mci: rename MMC_CAP_MMC_x_yV_DDR to MMC_CAP_x_yV_DDR as in Linux
  mci: compare host and card caps for supported speeds
  mci: print HS200 capabilities in devinfo
  mci: respect no-1-8-v OF property
  mci: sdhci: add support for struct mci_data::timeout_ns
  mci: imx-esdhc: use unsigned types where appropriate
  mci: imx-esdhc: implement esdhc_poll using sdhci_read32_poll_timeout
  mci: imx-esdhc: drop one extra read of SDHCI_INT_STATUS
  mci: sdhci: add cmd parameter to sdhci_transfer_*
  mci: arasan: introduce mmc_op_tuning helper
  mci: imx-esdhc: flesh out register description
  mci: imx-esdhc: add support for delay/tuning properties in DT
  mci: add mci_set_timing helper
  mci: imx-esdhc: add support for setting drive strength
  mci: sdhci: move SDHCI_MAKE_BLKSZ definition to header
  mci: imx-esdhc: select different pinctrl state depending on frequency
  mci: core: retry MMC_CMD_SET_BLOCKLEN up to 4 times
  mci: imx-esdhc: don't reconfigure clock unless required
  mci: sdhci: fix sdhci_transfer_data MMC_SEND_TUNING compatibility
  mci: core: implement mmc_send_tuning
  mci: imx-esdhc: set burst_length_enable
  mci: imx-esdhc: fixup quirks in standard SDHCI registers
  mci: sdhci: support Linux SDHCI_QUIRK2_BROKEN_HS200 flag
  mci: imx-esdhc: implement HS200 support

 drivers/mci/am654-sdhci.c            |  15 +-
 drivers/mci/arasan-sdhci.c           |  26 +-
 drivers/mci/atmel-sdhci-common.c     |   2 +-
 drivers/mci/atmel_mci.c              |   4 +-
 drivers/mci/dwcmshc-sdhci.c          |   8 +-
 drivers/mci/imx-esdhc-common.c       | 337 +++++++++++++++++++++-----
 drivers/mci/imx-esdhc.c              | 346 +++++++++++++++++++++++++--
 drivers/mci/imx-esdhc.h              |  96 +++++++-
 drivers/mci/mci-bcm2835.c            |   2 +-
 drivers/mci/mci-core.c               | 331 ++++++++++++++++++-------
 drivers/mci/mmci.c                   |  18 +-
 drivers/mci/rockchip-dwcmshc-sdhci.c |  11 +-
 drivers/mci/sdhci.c                  | 155 +++++++++---
 drivers/mci/sdhci.h                  |  28 ++-
 drivers/mci/stm32_sdmmc2.c           |  16 +-
 include/mci.h                        |  47 +++-
 16 files changed, 1190 insertions(+), 252 deletions(-)

-- 
2.39.5



