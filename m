Delivery-date: Fri, 11 Apr 2025 09:31:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38rD-00B9mU-0R
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:31:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38rC-0002lV-AE
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:31:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u12uy/06SFwKGyOklM+pflhVvYzV0EgFpuC4wpOvbYA=; b=d9ld8ohnld9I/E93hqm7HaUQjJ
	KMwzyoWyQN+MeUO84yS3W+9Kjs721tqaKgTpnAe959P8U8Srhqt9Edoaze4UmFHKb8hD4SFOB7iae
	HAuXqWh7ZwBBK8ryNsGQVyY6AbP7ITrnpibF7BBSIW3UJshpx8hqE1Bh8kqVMhzljdytV8ht9nSn4
	aPZfBuWdG6q3yuqHzI9CJnonk6ObOxCyTLuJ3mgfgn3BboX9krQY5RvOS+MODBUUGrn4QVN0K+K+d
	jj5QAalY/d9m63AetZUSaA5Lx3RejZfp/YLworZ/666U3IlueIeo5XA4wuNoJgADT3axauhOxGj7C
	96qEOGyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38qi-0000000CsS1-2nhB;
	Fri, 11 Apr 2025 07:30:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38no-0000000CrMF-2cod
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:27:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u38nn-0001Xa-EP
	for barebox@lists.infradead.org; Fri, 11 Apr 2025 09:27:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u38nn-004OcN-0o
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 09:27:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u38nn-008TCU-0V
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 09:27:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Apr 2025 09:27:45 +0200
Message-Id: <20250411072748.2017367-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_002752_662240_AF23F1B1 
X-CRM114-Status: GOOD (  10.06  )
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
Subject: [PATCH 0/3] ARM: stm32mp: add Linux Automation TAC/FairyTux2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both boards are built around an Octavo Systems OSD32 SiP
with a STM32MP15x SoC inside.

Ahmad Fatoum (2):
  ARM: stm32mp: drop all images with legacy STM32 header
  ARM: stm32mp: add Linux Automation TAC board

Leonard Göhrs (1):
  ARM: stm32mp: add Linux Automation FairyTux 2

 Documentation/boards/stm32mp.rst              |  90 ++----
 Documentation/devel/porting.rst               |   8 +-
 arch/arm/boards/Makefile                      |   2 +
 arch/arm/boards/lxa-fairytux2/Makefile        |   2 +
 arch/arm/boards/lxa-fairytux2/board.c         |  32 ++
 arch/arm/boards/lxa-fairytux2/lowlevel.c      |  71 +++++
 arch/arm/boards/lxa-mc1/Makefile              |   1 -
 arch/arm/boards/lxa-mc1/lowlevel.c            |  26 --
 arch/arm/boards/lxa-tac/Makefile              |   2 +
 arch/arm/boards/lxa-tac/board.c               |  33 ++
 arch/arm/boards/lxa-tac/lowlevel.c            |  71 +++++
 .../boards/phytec-phycore-stm32mp1/Makefile   |   2 +-
 .../boards/phytec-phycore-stm32mp1/lowlevel.c |  19 --
 arch/arm/boards/protonic-stm32mp1/Makefile    |   1 -
 arch/arm/boards/protonic-stm32mp1/lowlevel.c  | 102 -------
 arch/arm/boards/protonic-stm32mp13/Makefile   |   1 -
 arch/arm/boards/protonic-stm32mp13/lowlevel.c |  36 ---
 arch/arm/boards/seeed-odyssey/Makefile        |   1 -
 arch/arm/boards/seeed-odyssey/lowlevel.c      |  19 --
 arch/arm/boards/stm32mp15x-ev1/Makefile       |   1 -
 arch/arm/boards/stm32mp15x-ev1/lowlevel.c     |  26 --
 arch/arm/configs/multi_v7_defconfig           |   2 +
 arch/arm/configs/stm32mp_defconfig            |   2 +
 arch/arm/dts/Makefile                         |   3 +
 .../dts/stm32mp153c-lxa-fairytux2-gen1.dts    |   7 +
 .../dts/stm32mp153c-lxa-fairytux2-gen2.dts    |  26 ++
 arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi   | 103 +++++++
 arch/arm/dts/stm32mp153c-lxa-tac-gen3.dts     |  38 +++
 arch/arm/dts/stm32mp157c-lxa-tac-gen1.dts     |   7 +
 arch/arm/dts/stm32mp157c-lxa-tac-gen2.dts     |  38 +++
 arch/arm/dts/stm32mp15xc-lxa-tac.dtsi         | 134 +++++++++
 arch/arm/mach-stm32mp/Kconfig                 |   8 +
 arch/arm/mach-stm32mp/Makefile                |   1 -
 arch/arm/mach-stm32mp/stm32image.c            |  54 ----
 images/Makefile.stm32mp                       |  50 ++--
 include/mach/stm32mp/stm32.h                  |   3 +
 scripts/.gitignore                            |   1 -
 scripts/Kconfig                               |   7 -
 scripts/Makefile                              |   1 -
 scripts/Makefile.lib                          |   3 -
 scripts/stm32image.c                          | 281 ------------------
 41 files changed, 629 insertions(+), 686 deletions(-)
 create mode 100644 arch/arm/boards/lxa-fairytux2/Makefile
 create mode 100644 arch/arm/boards/lxa-fairytux2/board.c
 create mode 100644 arch/arm/boards/lxa-fairytux2/lowlevel.c
 delete mode 100644 arch/arm/boards/lxa-mc1/lowlevel.c
 create mode 100644 arch/arm/boards/lxa-tac/Makefile
 create mode 100644 arch/arm/boards/lxa-tac/board.c
 create mode 100644 arch/arm/boards/lxa-tac/lowlevel.c
 delete mode 100644 arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
 delete mode 100644 arch/arm/boards/protonic-stm32mp1/lowlevel.c
 delete mode 100644 arch/arm/boards/protonic-stm32mp13/lowlevel.c
 delete mode 100644 arch/arm/boards/seeed-odyssey/lowlevel.c
 delete mode 100644 arch/arm/boards/stm32mp15x-ev1/lowlevel.c
 create mode 100644 arch/arm/dts/stm32mp153c-lxa-fairytux2-gen1.dts
 create mode 100644 arch/arm/dts/stm32mp153c-lxa-fairytux2-gen2.dts
 create mode 100644 arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
 create mode 100644 arch/arm/dts/stm32mp153c-lxa-tac-gen3.dts
 create mode 100644 arch/arm/dts/stm32mp157c-lxa-tac-gen1.dts
 create mode 100644 arch/arm/dts/stm32mp157c-lxa-tac-gen2.dts
 create mode 100644 arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
 delete mode 100644 arch/arm/mach-stm32mp/stm32image.c
 delete mode 100644 scripts/stm32image.c

-- 
2.39.5



