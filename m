Delivery-date: Tue, 22 Apr 2025 07:27:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A6-003uqr-0m
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:27:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A5-00049n-2L
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:27:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=REpRmOuJx/XUqYEXWYZ5sKew6JsWO0HvRX3jbnw68Fk=; b=OqQp7r968y6IHD+q6f592OFYpf
	pXn8p0wHniR5YExIJSX8jeM4lDXjB1rPbV9tk3gEyYqHbOV9Ma49EnEx9ENyWX8ngUTgx3DJwe0kS
	0ot0mtXkzzgQZutPm5kXaAQl+vU3EWQRmxi2Ao5JJxsbpsOnGnaAGs3aYwlEhGJvNTel7QIEPfb0L
	VhPygVOdRdipLXJks8sDVd8DnN29bFcgP/F61TN8kJ2dXlJi9bUoUV+QDUj8tetkJHBq9CiioBeGZ
	nMki2h0+bdMroa3aiiof87CNJv3ATsxtPlbKIqdHZ2lb/OWUUfQG/VVc/EZ/HTzX/oOmimKFPJtHn
	xALXPO4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769Z-00000005rBi-0Ppv;
	Tue, 22 Apr 2025 05:26:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769W-00000005r9N-3aaJ
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:26:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-0003io-Ky
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 07:26:37 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-001Uux-1T
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:26:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-00EN4R-1B
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:26:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 07:26:26 +0200
Message-Id: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_222638_899650_150147A1 
X-CRM114-Status: GOOD (  10.91  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] ARM: OMAP: beaglebone: add PBL SD xload support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow for easier BSP integration, add support for generating a MLO
capable of SD-Card boot in the same build as barebox proper

For raw flash boot, the route with the separate config needs to be used.

Ahmad Fatoum (9):
  clocksource: make available in PBL
  clocksource: ti-dm: make available in PBL
  mci: move mci_setup_cmd definition into header
  mci: add common PBL helper for chainloading after BootROM
    initialization
  mci: pbl: add autodetection of BootROM-initialized standard capacity
    cards
  mci: omap_hsmmc: split out common code
  ARM: OMAP: add am33xx_hsmmc_start_image for PBL
  mci: omap_hsmmc: add xload implementation for PBL
  ARM: OMAP: beaglebone: add PBL SD xload support

 arch/arm/boards/beaglebone/lowlevel.c |  10 +-
 arch/arm/mach-omap/Kconfig            |   9 +-
 arch/arm/mach-omap/Makefile           |   1 +
 arch/arm/mach-omap/am33xx_generic.c   |  38 +-
 arch/arm/mach-omap/am33xx_xload.c     |  66 ++++
 common/Makefile                       |   1 +
 common/clock.c                        |   5 +-
 drivers/clocksource/Makefile          |   2 +-
 drivers/clocksource/timer-ti-dm.c     |  19 +-
 drivers/mci/Kconfig                   |   3 +
 drivers/mci/Makefile                  |   4 +-
 drivers/mci/mci-core.c                |  15 -
 drivers/mci/mci-pbl.c                 | 212 +++++++++++
 drivers/mci/omap_hsmmc.c              | 509 +------------------------
 drivers/mci/omap_hsmmc.h              |  17 +
 drivers/mci/omap_hsmmc_common.c       | 530 ++++++++++++++++++++++++++
 drivers/mci/omap_hsmmc_pbl.c          |  32 ++
 images/Makefile.am33xx                |   4 +
 include/mach/omap/am33xx-clock.h      |   3 +
 include/mach/omap/am33xx-generic.h    |   2 +
 include/mach/omap/xload.h             |  14 +
 include/mci.h                         |  16 +
 include/pbl/mci.h                     |  37 ++
 include/sched.h                       |   2 +-
 pbl/Kconfig                           |   3 +
 25 files changed, 1000 insertions(+), 554 deletions(-)
 create mode 100644 arch/arm/mach-omap/am33xx_xload.c
 create mode 100644 drivers/mci/mci-pbl.c
 create mode 100644 drivers/mci/omap_hsmmc.h
 create mode 100644 drivers/mci/omap_hsmmc_common.c
 create mode 100644 drivers/mci/omap_hsmmc_pbl.c
 create mode 100644 include/mach/omap/xload.h
 create mode 100644 include/pbl/mci.h

-- 
2.39.5



