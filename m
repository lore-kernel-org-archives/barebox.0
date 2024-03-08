Delivery-date: Fri, 08 Mar 2024 12:18:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFO-00Dd8l-00
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 12:18:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFM-0000UB-C3
	for lore@pengutronix.de; Fri, 08 Mar 2024 12:18:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QuP+7d8GHWEnXyaZ/NFO7l6566FRuH7aDgV2MbSq9UI=; b=0833YubSD+Bm3h
	sY0CJ5riEnMOTxsFdYuiG4c6oGM73XEPY9aoELl6wBOcxUlIV1ZD+SF2rZQF1bpNpLz3jSO/kZXlN
	b1kJBCXtS6igWIm5HX3mSy8Jecw5IkZTdVvyPSUACg5jO8jvp83DS5FiUjzzxFPj8/zkrkIa+PLQZ
	zVyTeKQMO+bQg7ZoU8CTY5BNaFxSspeeQMn/eihkIBkFCnl/7ulmJwjzPGcvpaC8PhtxSs9M7ydOj
	vlODAgM9NqJYfp5u2pp1oEZfjcX+YnuAAEp/IvByJ006I3nXg+2IqLDLOgiDP93Wv+wFceXJ6rhaY
	y+xAYnx5xbcA0d7XLD9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYEj-00000008vVw-1tms;
	Fri, 08 Mar 2024 11:18:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYEd-00000008vPu-3PR9
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 11:17:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1riYEY-0007Id-64; Fri, 08 Mar 2024 12:17:50 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 08 Mar 2024 12:16:58 +0100
Message-Id: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKrz6mUC/x2NMQ6DMAwAv4I815IJqGr7laqDk5riJYlsiioh/
 t7AdrfcbeBiKg6PbgOTVV1LbtJfOkgz54+gvptDoDDSQDdcD0IKSLiUqgnZ2Dnj7IEI/VtrsQX
 7mIYpXuN4Z4bWqiaT/s7P87Xvf2/GPOV3AAAA
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1636;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=c8B//CDkR4V1icaUgiYTDJnYfFELRhvWLPcNs8mQgiI=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJffd68duO3Gc8sBN/1rjsXy+nP4dhisT7cTVThC0vhK
 /bGdfEfO0pZGMS4GGTFFFki1x7S2Cz8WefL8fMMMHNYmUCGMHBxCsBEhB8w/C+U8pipPPd7ebYN
 a3stw4q100p+HreZMJ1Z44YKc/GieaaMDBf+ufyz0rv8/YRG0/JVIldEThn4vW/9/jL443L5hw0
 XmNgB
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_031756_027484_A0DDC546 
X-CRM114-Status: UNSURE (   6.44  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/12] mci: add HS200 support for eMMCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds support for HS200 mode to mci-core and sdhci.
As the host driver also needs to handle clock setup, pin control and
host specific tuning, this series only adds HS200 support to the Arasan
SDHCI driver.

Tested on: ZynqMP.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Steffen Trumtrar (12):
      ARM: zynqmp: add sd_dll_reset call
      zynqmp: firmware: add functions to set tap delay
      mci: arasan: implement 25MHz quirk for zynqmp
      mci: arasan: read clk phases from DT
      mci: arasan: register sdcard/sampleclk
      include: mci: sync mci_timing with linux
      include: mci: add more EXT_CSD_CARD_TYPE_*
      mci: core: parse more host capabilities from DT
      mci: mci-core: add HS200 support
      mci: sdhci: add tuning support
      mci: arasan-sdhci: add HS200 tuning support on ZynqMP
      mci: arasan: use sdhci_wait_idle2

 arch/arm/mach-zynqmp/firmware-zynqmp.c |  59 ++++
 drivers/mci/Kconfig                    |   7 +
 drivers/mci/arasan-sdhci.c             | 516 ++++++++++++++++++++++++++++++++-
 drivers/mci/mci-core.c                 | 290 +++++++++++++++++-
 drivers/mci/sdhci.c                    | 269 ++++++++++++++++-
 drivers/mci/sdhci.h                    |  25 ++
 include/mach/zynqmp/firmware-zynqmp.h  |  23 ++
 include/mci.h                          | 114 +++++++-
 8 files changed, 1270 insertions(+), 33 deletions(-)
---
base-commit: ed7c14536d521793199abf0597164a46ba68e8e5
change-id: 20240308-v2024-02-0-topic-arasan-hs200-support-1bc3fb6b49aa

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



