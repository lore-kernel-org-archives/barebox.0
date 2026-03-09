Delivery-date: Mon, 09 Mar 2026 13:05:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzZMT-009jkr-0e
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 13:05:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzZMT-0000g4-3s
	for lore@pengutronix.de; Mon, 09 Mar 2026 13:05:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cIzM7qg2QPmAJenDId32+hG3uQKuZYQ3UBzRh9pjCvQ=; b=BHpdpEdQlRc4D7
	g0h2IkTp8wvscpVdb1w8PfBXGUIPez+zkRqqBff+xan3rpLG+3ZTyKobWUrmJeefheCzir7zUFwYf
	GsYlg59NxPOIzVTqSttCedcuPMUMhEDignMXxd4XudM0+R+MHwwRUDmXvY3JufUrNwa/R8b3GjeCK
	CE5kiPWlJRUDI1U/9AyT8yUmNLLzXrmI9AMEzUgV0yUC7Jsv80iflzR7zs1StnNg6ciXZ+Ra2PvVc
	vWB40TDgO1nBc6GzGUkDa1StKJsoNpCUGC3Ek4NJ6hh4zsRoQzQDJoMvRzUQL7UU8DIEET0w9dKkg
	yGxKSRQUrL1gHwEGv6aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLs-00000007Fb5-1Dzs;
	Mon, 09 Mar 2026 12:04:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLo-00000007FaD-35k1
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 12:04:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vzZLm-0000K8-PI; Mon, 09 Mar 2026 13:04:42 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 09 Mar 2026 13:04:32 +0100
Message-Id: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-0-fcc1f327acf8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFC3rmkC/5WNTQrCMBCFr1Jm7UgnWvxZeQ/pIibTdECSkNRQK
 b27aW/g7n2Px/sWyJyEM9ybBRIXyRJ8BXVowIzaO0axlUG1qiNFHZYtIRG2OIUoBnMwQ3QatZM
 3zx1mOxrBq71YvhFbc2qhnsXEg8y76NlXHiVPIX13b6Gt/VtRtgERs6aX4uFMj8jefaYUvMxHy
 9Cv6/oDpFk0QeEAAAA=
X-Change-ID: 20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-8d7de91edc30
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_050444_783497_889BACD2 
X-CRM114-Status: UNSURE (   9.14  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/6] mci: cadence: add v6 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Agilex5 apperently has a cadence sdhci host controller in version 6.
Add support for this version, reworking the original driver
significantly.

Tested on Agilex5, sadly HS200-support is currently broken and doesn't
work yet with this driver.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
- sdhci_send_cmd: fix return value
- mci_cmd: add mci_data
- mci_cmd: setup mci_data in mci_core
- mci_cmd: remove mci_data from callers
- mci_cmd: split in separate patch
- cadence_sdhci: remove old driver before adding new one
- Link to v1: https://lore.barebox.org/20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de

---
Steffen Trumtrar (6):
      mci: add data segment to mci_cmd
      mci: sdhci: add sdhci_send_cmd
      mci: sdhci: add set_uhs_signaling callback
      mci: cadence: remove driver
      mci: cadence: add support for version 6
      ARM: socfpga-agilex5_defconfig: enable cadencen-sdhci

 arch/arm/configs/socfpga-agilex5_defconfig |  11 +-
 drivers/mci/Kconfig                        |   2 +-
 drivers/mci/Makefile                       |   1 +
 drivers/mci/am654-sdhci.c                  |   4 +-
 drivers/mci/arasan-sdhci.c                 |   4 +-
 drivers/mci/atmel-sdhci.c                  |   5 +-
 drivers/mci/atmel_mci.c                    |   5 +-
 drivers/mci/atmel_mci_pbl.c                |   5 +-
 drivers/mci/bcm2835-sdhost.c               |   4 +-
 drivers/mci/cadence-sdhci.c                | 713 +++++++++++++----------------
 drivers/mci/cadence-sdhci.h                | 118 +++++
 drivers/mci/cadence-sdhci6.c               | 373 +++++++++++++++
 drivers/mci/dove-sdhci.c                   |   4 +-
 drivers/mci/dw_mmc.c                       |   3 +-
 drivers/mci/dwcmshc-sdhci.c                |   5 +-
 drivers/mci/imx-esdhc.c                    |   5 +-
 drivers/mci/imx.c                          |   4 +-
 drivers/mci/mci-bcm2835.c                  |   5 +-
 drivers/mci/mci-core.c                     | 187 ++++----
 drivers/mci/mci_spi.c                      |   3 +-
 drivers/mci/mmci.c                         |   6 +-
 drivers/mci/mxs.c                          |   7 +-
 drivers/mci/omap_hsmmc.c                   |   5 +-
 drivers/mci/pxamci.c                       |   4 +-
 drivers/mci/rockchip-dwcmshc-sdhci.c       |   4 +-
 drivers/mci/sdhci.c                        | 139 +++++-
 drivers/mci/sdhci.h                        |  22 +
 drivers/mci/stm32_sdmmc2.c                 |   4 +-
 drivers/mci/sunxi-mmc.c                    |   4 +-
 drivers/mci/tegra-sdmmc.c                  |   4 +-
 include/mci.h                              |   6 +-
 31 files changed, 1126 insertions(+), 540 deletions(-)
---
base-commit: 8c9d58cef2c65434e719ccbd3799b23014cb779d
change-id: 20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-8d7de91edc30

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



