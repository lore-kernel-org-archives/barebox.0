Delivery-date: Mon, 12 Jun 2023 15:03:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCs-003qYy-NP
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCq-0000al-9f
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8vdw0LKKt26jg6RWZbQGVYXt+Req/ixAalMJFSPpIN0=; b=gsWTeTtRE53QmXq/RMuXzDFAir
	SjETJBH7CTVRKwbNJHRwhNra2QX8P0SwGS4Q2ZZZtL7N0+BTdNvG30muz3aIL4pNWMsW07IjCrRBt
	OZe3YuOitIxXJTMgDkek+UBXLtDxKroyKwXCSBkROgEJ+u8UARpbLivA7plqUqnczqXf6GLfuiy6S
	H03n23V37BcDaGPA5EnslqAhgWx9icUY3omy84mFn1iMtLMwG6Brt7IPXRBf6OJKgVHFE6mwkr9Yl
	wXKv3Ti/G3oxTgtg9A5wmPLU1d1XsUpkWWdhgXENRy0oihutzvwih1z3cHobYU4VpGqNja1vCy8FR
	4mHeGAEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCA-0047Gs-1c;
	Mon, 12 Jun 2023 13:02:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hC6-0047CF-21
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:02:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC5-0008KS-24
	for barebox@lists.infradead.org; Mon, 12 Jun 2023 15:02:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC4-006tVG-6h
	for barebox@lists.infradead.org; Mon, 12 Jun 2023 15:02:48 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aJ4-3o
	for barebox@lists.infradead.org; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Jun 2023 15:02:21 +0200
Message-Id: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060250_690175_A51417D6 
X-CRM114-Status: UNSURE (   9.68  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/19] misc fixes building sandbox 64-bit allyesconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Eventually, I want to run static analysis against the configuration,
but this series fixed build warnings/errors just compiling it normally
with GCC 13 and clang 14.

The critical parts were factored into their own series, so this can go
into next first.

Ahmad Fatoum (19):
  clk: always define clk_prepare_enable/disable
  clk: define clk_get_parent stub
  pci: disable building CONFIG_PCI when CONFIG_COMPILE_TEST
  mci: tegra: fix base address constant to be hexadecimal
  ata: ide-sff: fix warnings when compiling as 64-bit
  video: bochs: remove dependency on PCI header in common part
  commands: ubsan: hide pointer provenance used to trigger UB
  test: self: printf: silence clang warnings
  crypto: caam - fix pointer to u32 casts
  crypto: imx-scc: fix u32 to pointer casts
  mci: sdhci: dove: fix pointer to u32 casts
  lib: make_directory: return -ENOMEM on allocation failure
  include <linux/idr.h>: handle OOM gracefully inside idr_alloc_one
  mci: tegra: use correct types for mmio and DMA address
  mtd: spi-nor: cadence: fix types
  video: simplefb-fixup: warn on framebuffers >= 4G
  watchdog: imx28: use correct constant for computing timeout_max
  firmware: mark firmware sections as having non-executable stack
  phy: stm32: usb: depend on COMMON_CLK

 commands/ubsan.c                      |  2 ++
 drivers/ata/ide-sff.c                 |  8 ++++----
 drivers/crypto/caam/jr.c              |  2 +-
 drivers/crypto/caam/rng_self_test.c   |  2 +-
 drivers/crypto/imx-scc/scc.c          |  6 +++---
 drivers/mci/dove-sdhci.c              | 20 +++++++++++++-------
 drivers/mci/tegra-sdmmc.c             | 11 ++++++-----
 drivers/mtd/spi-nor/cadence-quadspi.c |  8 +++-----
 drivers/pci/Kconfig                   |  2 +-
 drivers/phy/Kconfig                   |  1 +
 drivers/video/bochs/bochs_hw.c        |  1 -
 drivers/video/simplefb-fixup.c        | 10 +++++++---
 drivers/watchdog/im28wd.c             |  2 +-
 firmware/Makefile                     |  1 +
 include/linux/clk.h                   | 11 +++++++++--
 include/linux/idr.h                   |  2 ++
 lib/make_directory.c                  |  3 +++
 test/self/Makefile                    |  2 +-
 18 files changed, 59 insertions(+), 35 deletions(-)

-- 
2.39.2



