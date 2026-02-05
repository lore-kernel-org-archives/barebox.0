Delivery-date: Thu, 05 Feb 2026 16:45:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo1YJ-009AVF-10
	for lore@lore.pengutronix.de;
	Thu, 05 Feb 2026 16:45:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo1YI-0006dJ-5z
	for lore@pengutronix.de; Thu, 05 Feb 2026 16:45:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pWrcqjll85iQ0dW6z2G/zuqUiAuq8UitZuwXOktBBFU=; b=EbnVF4Sg6fQHPp
	IeA6WH3XMZQvdyYgqg8hBePB3LFTmTk9FUbXUC19BVB2G6XWrvjQwujJm87BN67vBxmLqEeS92ojN
	WjfNbafeQ0IevqMYC8Cn+/mW99gjQa62i8+s7u++IWH1+2SzqdVrveQtbJZ+M/TGSLL3xdUEU9dzc
	4kUYmmD5nONsv9yT9MfIQwi3lXuH5Uw2P5CBIfVkO95bg97O5aGgtne2VKt8PHRAEi0XQxqIFokHU
	GPn0d4+E7BjOUqcDqcPMed9fOpvQRQ4OirQ4HClp+WFO7rWItC/5c/D8EJ8G4F9S1BQhYxxU0lMBD
	6G2Wfld/UW1B7L3qAnnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1Xn-0000000A9q8-1K8g;
	Thu, 05 Feb 2026 15:45:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1Xf-0000000A9lt-1Pwj
	for barebox@lists.infradead.org;
	Thu, 05 Feb 2026 15:45:21 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vo1Xc-0006IY-5o; Thu, 05 Feb 2026 16:45:12 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 05 Feb 2026 16:45:02 +0100
Message-Id: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP66hGkC/x2NwQrCMBAFf6Xs2YVN1Bz8FfEQ0pe6YBrJ1lIp/
 XeDx2FgZidDUxjdhp0aVjWtcwd3Gig94zyBdexMXnwQL1deS7QFjdPHllrQjF/QFCdUtm83xQU
 RzsGfvQDjxWXqrXdD1u3/uT+O4wfYkuKFdwAAAA==
X-Change-ID: 20260205-vmaster-customers-leicageo-system1600-f62320eed41f
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_074515_380317_95CD3646 
X-CRM114-Status: UNSURE (   9.29  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] Hexagon Geosystems GS05 Board Support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

this series adds the support for the Hexagon Geosystems GS05 product
[1]. The GS05 is part of a larger product family from SW pov, therefore
most logic is implemented below 'common/boards/hgs'.

The board support was added before the new security-profiles made it
into barebox mainline, therefore security-profiles aren't used yet but
maybe in the future.

Further products will be send mainline as well, once this basic support
got merged.

Patch1-2 were also sent here [2] in parallel.

Regards,
  Marco

[1] https://leica-geosystems.com/de-de/products/gnss-systems/smart-antennas/leica-gs05
[2] https://lore.kernel.org/barebox/20260204151645.1426068-1-m.felsch@pengutronix.de/

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Marco Felsch (5):
      ARM: i.MX8MM: add MX8MM_PAD_CTL defines
      lib: hexdump: make use of pr_print
      mfd: Add Hexagon EFI driver
      watchdog: Add Hexagon EFI watchdog driver
      ARM: i.MX8MM: add Hexagon Geosystems GS05

 arch/arm/boards/Makefile                          |    1 +
 arch/arm/boards/hgs-gs05/Makefile                 |    6 +
 arch/arm/boards/hgs-gs05/board.c                  |  237 +++++
 arch/arm/boards/hgs-gs05/flash-header-gs05.imxcfg |   12 +
 arch/arm/boards/hgs-gs05/lowlevel.c               |  128 +++
 arch/arm/boards/hgs-gs05/lpddr4-timing.c          | 1118 +++++++++++++++++++++
 arch/arm/dts/Makefile                             |    1 +
 arch/arm/dts/imx8m-hgs-common.dtsi                |   80 ++
 arch/arm/dts/imx8mm-hgs-gs05.dts                  |  320 ++++++
 arch/arm/mach-imx/Kconfig                         |    8 +
 commands/ethlog.c                                 |    4 +-
 common/boards/Kconfig                             |   12 +
 common/boards/Makefile                            |    1 +
 common/boards/hgs/Makefile                        |    7 +
 common/boards/hgs/common.c                        |  627 ++++++++++++
 common/boards/hgs/lib.c                           |   73 ++
 common/boards/hgs/pbl.c                           |  100 ++
 drivers/mfd/Kconfig                               |    8 +
 drivers/mfd/Makefile                              |    1 +
 drivers/mfd/hgs-efi.c                             |  473 +++++++++
 drivers/mtd/ubi/attach.c                          |    2 +-
 drivers/watchdog/Kconfig                          |    9 +
 drivers/watchdog/Makefile                         |    1 +
 drivers/watchdog/hgs_efi_wdt.c                    |   88 ++
 fs/ubifs/debug.c                                  |    4 +-
 images/Makefile.imx                               |    2 +
 include/boards/hgs/common.h                       |   84 ++
 include/linux/printk.h                            |    4 +-
 include/mach/imx/iomux-mx8mm.h                    |   10 +
 include/mfd/hgs-efi.h                             |   46 +
 include/printf.h                                  |    2 +-
 include/soc/ti/cppi5.h                            |    2 +-
 lib/hexdump.c                                     |   13 +-
 33 files changed, 3467 insertions(+), 17 deletions(-)
---
base-commit: 8781fc641fc147df639c9e767a89aa3277d2c9be
change-id: 20260205-vmaster-customers-leicageo-system1600-f62320eed41f

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



