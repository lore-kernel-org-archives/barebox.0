Delivery-date: Thu, 12 Feb 2026 23:03:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem4-0012CT-0B
	for lore@lore.pengutronix.de;
	Thu, 12 Feb 2026 23:03:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem3-0008Pp-Tm
	for lore@pengutronix.de; Thu, 12 Feb 2026 23:03:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1FUZm/m62CwiSys1zxJUfCc26wzZaRaaZ2Os7XU4mvs=; b=Pu5k5hLdPMylWO
	SCdj/i2znWc3lW5NH8dZs7uspiJ/WV7qRoZguqd9ZR6MtbMqqp4IyoTvIZ4ZuwYWNKatpVP/BRiTU
	t+2jxZAkfullAYWMvwArnrRgua01+NBnv4C06aoIv8YwPRSJGRKDj670MV8M6NPjaG5pqhfi2HnEF
	7rLCbeSnmVKEF1O6l9ywaRIoXEYUx86soJ9uhGi8HClsyV0ba5ZtdfoYB0lP0cDl0QG5SMm0JkUra
	bragOpSn5O/vXANUy9wa23F1aeWEsT2AB+UsZIJ8E13p4/zOdyiXGlFWnTexQiToobhFDMVNiTU69
	5OtPAC4IdjqdciR0rj0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelS-00000002g09-1vul;
	Thu, 12 Feb 2026 22:02:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelQ-00000002fxF-28ZH
	for barebox@lists.infradead.org;
	Thu, 12 Feb 2026 22:02:21 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqelG-000855-Ut; Thu, 12 Feb 2026 23:02:10 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 12 Feb 2026 23:02:02 +0100
Message-Id: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANpNjmkC/5WNQQqDMBBFryJZd8pktFK66j2KizSOOlATSTQo4
 t2beoMu3//8/3YVOQhH9Sh2FThJFO8y0KVQdjCuZ5A2syKkGglvkEYTZw5glzj7kUOED4s1PXu
 IW25GXSNCV1NJyNxWulP5awrcyXp6Xk3mQfI6bKc26V/6ryFpQDB3fFNZWdZGPyd2/TIH72S9t
 qya4zi+mlcPHN8AAAA=
X-Change-ID: 20260205-vmaster-customers-leicageo-system1600-f62320eed41f
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_140220_565309_835A9697 
X-CRM114-Status: GOOD (  12.04  )
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
Subject: [PATCH v2 0/7] Hexagon Geosystems GS05 Board Support
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

Regards,
  Marco

[1] https://leica-geosystems.com/de-de/products/gnss-systems/smart-antennas/leica-gs05
[2] https://lore.kernel.org/barebox/20260204151645.1426068-1-m.felsch@pengutronix.de/

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changes in v2:
- Link to v1: https://lore.barebox.org/20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de
- Add serdev cleanup patches (Sascha)
- Add Ahmad's a-b
- s/device_d/device/ (Ahmad)
- s/driver_d/driver/ (Ahmad)
- EFI: Provide more information about the EFI acronym (Sascha)
- EFI: Make use of pr_fmt (Sascha)
- EFI: Add EFI CPU_RDY gpio handling (Ahmad)
- EFI: Drop useless error checks afer xfuncs (Ahmad)
- EFI: Simplify message encoding, make use sprintf (Sascha)
- EFI: Add buf[0] check to decode routine (Sascha)
- EFI: Make use of strchr instead of strstr (Ahmad)
- EFI: Fix typos (Sascha)
- EFI: Add proper probe() error cleanup (Sascha)
- EFI-WDG: make use of ping() hook (Ahmad)
- EFI-WDG: Provide initial wdd->running state (Ahmad)
- Add run_command() variadic support (Sascha)
- GS05: Fix DCO (add Johannes Schneider s-o-b) (Ahmad)
- GS05: Replace sentinel iter with ARRAY_SIZE() (Sascha)
- GS05: Add missing static statements (Sascha)
- GS05: Drop pp4_gpio handling, now handled by EFI driver (Ahmad)
- GS05-DTS: Drop odd gpio1 mux, now part of mcu node (Ahmad)
- GS05-DTS: Add no-sdio, no-sd to eMMC node (Ahmad)
- GS05-Kconfig: Drop "select HABV4" (Ahmad)
- HGS-LIB: Replace sentinel iter with ARRAY_SIZE() (Sascha)
- HGS-LIB: Make use of new run_command() variadic (Sascha)
- HGS-LIB: Bundle postenvironment_initcall() into one (Sascha)
- HGS-LIB: Rework hgs_notify_pp4() to pull CPU_RDY gpio
- HGS-LIB: Fix array out of bound access for hgs_revision_table (Sascha)
- HGS-LIB: Drop hgs_get_last_variant_entry in favor of ARRAY_SIZE() (Sascha)

---
Marco Felsch (7):
      serdev: add proper error cleanup to serdev_device_open()
      serdev: add serdev_device_close
      mfd: Add Hexagon EFI driver
      watchdog: Add Hexagon EFI watchdog driver
      commands: make run_command variadic
      treewide: make use of new run_command variadic
      ARM: i.MX8MM: add Hexagon Geosystems GS05

 arch/arm/boards/Makefile                          |    1 +
 arch/arm/boards/hgs-gs05/Makefile                 |    6 +
 arch/arm/boards/hgs-gs05/board.c                  |  240 +++++
 arch/arm/boards/hgs-gs05/flash-header-gs05.imxcfg |   12 +
 arch/arm/boards/hgs-gs05/lowlevel.c               |  128 +++
 arch/arm/boards/hgs-gs05/lpddr4-timing.c          | 1118 +++++++++++++++++++++
 arch/arm/dts/Makefile                             |    1 +
 arch/arm/dts/imx8m-hgs-common.dtsi                |   80 ++
 arch/arm/dts/imx8mm-hgs-gs05.dts                  |  320 ++++++
 arch/arm/mach-imx/Kconfig                         |    8 +
 common/boards/Kconfig                             |   10 +
 common/boards/Makefile                            |    1 +
 common/boards/hgs/Makefile                        |    7 +
 common/boards/hgs/common.c                        |  654 ++++++++++++
 common/boards/hgs/lib.c                           |   61 ++
 common/boards/hgs/pbl.c                           |  100 ++
 common/hush.c                                     |   23 +-
 common/parser.c                                   |   24 +-
 common/serdev.c                                   |   41 +-
 common/startup.c                                  |    5 +-
 drivers/mfd/Kconfig                               |    9 +
 drivers/mfd/Makefile                              |    1 +
 drivers/mfd/hgs-efi.c                             |  514 ++++++++++
 drivers/watchdog/Kconfig                          |    9 +
 drivers/watchdog/Makefile                         |    1 +
 drivers/watchdog/hgs_efi_wdt.c                    |  102 ++
 images/Makefile.imx                               |    2 +
 include/boards/hgs/common.h                       |   82 ++
 include/command.h                                 |    4 +-
 include/mfd/hgs-efi.h                             |   46 +
 include/serdev.h                                  |    4 +
 net/ifup.c                                        |   10 +-
 32 files changed, 3604 insertions(+), 20 deletions(-)
---
base-commit: 2ba60c77c1cb1351080d1a409a1115315dc092ba
change-id: 20260205-vmaster-customers-leicageo-system1600-f62320eed41f

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



