Delivery-date: Mon, 18 Mar 2024 11:23:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmA9R-00CDJS-08
	for lore@lore.pengutronix.de;
	Mon, 18 Mar 2024 11:23:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmA9P-0001MT-3R
	for lore@pengutronix.de; Mon, 18 Mar 2024 11:23:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZaKHiqRNGTT7YXb6zR4Xo7E7uMgq7wPyCf1xQoJYaQY=; b=k8Ay13iHgZrOEt
	146ESIdXx+o4i3J8FgzwfOaR8Txutd1iHgDg0kecEpncV6+ap9z4OSssJt3TijJgmkWGPMhTLfifQ
	lNhWG1RSUpXMTeJHsNRFxa9Ra24uPZaMiMf+3TtW5HVQChSdfB5ox3ePgI4Jc10zBl8E2gq9oF/VI
	2CjCGkConDtcCtXB0qKPuSCQQT1lkWKuviLVhT4M01HCFLEcxOi7saAhEunXhJFNbBzg0HZfpeoy5
	UjCP6AZ6PoNHH4HCXfmhYWkcAaUNZTMDZCcMLYIsFcvSt3m2ZbeZew+HJ26bdA6bVVp0R9goUcM/1
	fSd4qlfTjr1NXjqTCFsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA8W-000000087n3-1k3U;
	Mon, 18 Mar 2024 10:22:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA8K-000000087Jb-2s3c
	for barebox@lists.infradead.org;
	Mon, 18 Mar 2024 10:22:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rmA5N-0006MJ-IM; Mon, 18 Mar 2024 11:19:17 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 18 Mar 2024 11:18:14 +0100
Message-Id: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOYU+GUC/5WNQQ7CIBBFr2JYO2YKlLauvIdxQSm0bIBAS2pM7
 y51ZaIL3c2fl7z3IElHqxM5Hx4k6myT9a4MfjwQNUk3arBD2YQi5ciwhbxfgBQQZh+sAhllkg6
 mRBEhLSH4OEPVK2Z60fNOSlJcIWpj11fneit7smn28f7K5mr//lvIVeFiqFF1yNvasEvQblzm6
 J1dT4MmeybTN3XFf1XvHFkrFG2MFvV3NXtX17+qWeGDoaJV1PAOmw/1tm1Pnw6LtpUBAAA=
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3196;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=nuiDWH40imzehjgQeiWxe295SeeSSLf1NY5LZwH1A00=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJ/iLzZcTBxC+d6v5K9E+zEi3+G6IocLd/bnbJRJXTZm
 tLtc/OWd5SyMIhxMciKKbJErj2ksVn4s86X4+cZYOawMoEMYeDiFICJzORhZLh3v2eW4ZnzVVEZ
 u1Si0vXeZSzbcurtje88DirmCqaPQs8wMnzZxpR6q/a71MQITUnPq7wPhS7odWdn9D2btNT6mfG
 SWkYA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_032220_887090_B19B4F4D 
X-CRM114-Status: UNSURE (   9.75  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 00/15] mci: add HS200 support for eMMCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds support for HS200 mode to mci-core and sdhci.
As the host driver also needs to handle clock setup, pin control and
host specific tuning, this series only adds HS200 support to the Arasan
SDHCI driver.

Tested on: ZynqMP
Compile tested: for ZynqMP with/without CONFIG_MCI_TUNING

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v4:
- add a fix for arasan dma support patch
- Link to v3: https://lore.barebox.org/20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de

Changes in v3:
- rebased onto v2024.03.0
- cherry-picked and rebased onto b80c0e1ec64c "mci: arasan: add dma support"
- Link to v2: https://lore.barebox.org/20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de

Changes in v2:
- added Reviewed-bys
- small style fixes
- return host->actual_clock in arasan_zynqmp_sampleclk_recalc_rate
- return host->actual_clock in arasan_zynqmp_sdcardeclk_recalc_rate
- move DT property parsing into IS_ENABLED
- port mci_switch_status from linux
- remove the #ifdef CONFIG_MCI_TUNING; functions get called in
  IS_ENABLED context
- mci_mmc_select_hs_ddr: set max_dtr to mci->tran_speed; matches
  the calculation linux does here
- move platform_execute_tuning from mci_host -> sdhci
- port sdhci_reset_for_reason from linux
- Link to v1: https://lore.barebox.org/20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de

---
Steffen Trumtrar (15):
      mci: arasan: fix dma support
      ARM: zynqmp: add sd_dll_reset call
      zynqmp: firmware: add functions to set tap delay
      mci: arasan: implement 25MHz quirk for zynqmp
      include: mci: sync mci_timing with linux
      mci: arasan: read clk phases from DT
      mci: core: save the set clock as actual_clock
      mci: arasan: register sdcard/sampleclk
      include: mci: add more EXT_CSD_CARD_TYPE_*
      mci: core: parse more host capabilities from DT
      mci: mci-core: add HS200 support
      mci: mci-core: replace value with define
      mci: sdhci: add tuning support
      mci: arasan-sdhci: add HS200 tuning support on ZynqMP
      mci: sdhci: replace sdhci_wait_idle

 arch/arm/mach-zynqmp/firmware-zynqmp.c |  59 ++++
 drivers/mci/Kconfig                    |   7 +
 drivers/mci/am654-sdhci.c              |   2 +-
 drivers/mci/arasan-sdhci.c             | 529 ++++++++++++++++++++++++++++++++-
 drivers/mci/atmel-sdhci-common.c       |   4 +-
 drivers/mci/dove-sdhci.c               |   2 +-
 drivers/mci/mci-bcm2835.c              |   2 +-
 drivers/mci/mci-core.c                 | 297 ++++++++++++++++--
 drivers/mci/rockchip-dwcmshc-sdhci.c   |   2 +-
 drivers/mci/sdhci.c                    | 304 ++++++++++++++++++-
 drivers/mci/sdhci.h                    |  30 +-
 include/mach/zynqmp/firmware-zynqmp.h  |  23 ++
 include/mci.h                          | 104 ++++++-
 13 files changed, 1321 insertions(+), 44 deletions(-)
---
base-commit: ec014c92f8ec31da8a062f6083a0d10dbcfe97ce
change-id: 20240308-v2024-02-0-topic-arasan-hs200-support-1bc3fb6b49aa

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



