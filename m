Delivery-date: Mon, 27 Nov 2023 07:51:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSr-00Aetf-35
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:51:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSr-0001At-OY
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:51:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bGNKKY8TUjf5H929ZEduW2BAe0dCuUpZteEV9cu9ZyU=; b=J72arjTMTSWmyV9NMLLihf8HBk
	gPNlE4osmaCBjU/WOEivylt2E6VSArPWYS1DExAnlK0xI3mnDiAEoVEI+lNY1pz73dG0OAyw0JEx/
	a0uvpoBS5SoMAdh8ndYftp8FwDdUWb5Muby18eSs78JZZEoDncRigOQ4VkJ9n7xV3wbFwZUBuUEGT
	3cKMmudDenxKsMAfFS1yMs8iNdinTxcCjsfaTGkAS5Plu7akvTQdzlkU59Pbl27JDcNzpz/UX+ho1
	rhkIUW5PKHqYerQxnkYEHAzi0G9NhHbQCwP+hvwDPbf7FPGDRau2oU/2CRJvd9PKHPpemmX/8Z4AG
	OdMrV3tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRW-001bbZ-1r;
	Mon, 27 Nov 2023 06:50:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRL-001bWC-1T
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:49:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-0000dB-4I
	for barebox@lists.infradead.org; Mon, 27 Nov 2023 07:49:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-00Bsij-OC
	for barebox@lists.infradead.org; Mon, 27 Nov 2023 07:49:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-009GPh-2A
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 07:49:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 27 Nov 2023 07:49:34 +0100
Message-Id: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224955_676250_E21208D9 
X-CRM114-Status: GOOD (  17.24  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/13] ARM: stm32mp: add full STM32MP13 support with OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We only had rudimentary STM32MP13 support, because proper control of the
clocks and resets required communicating with OP-TEE as the RCC
peripheral was restricted to the secure world on that SoC.

Back when STM32MP13 support was added, this limitation was worked around
by defining placeholder fixed clocks and skipping resets for the MMC and
other hardware that was known to be initialized by previous boot stages.

When the upstream kernel device tree dropped the fixed clocks in favor
of describing the actual setup with SCMI-over-OPTEE providing access to
the root clocks, barebox support for the STM32MP13 was broken.

This series restores barebox compatibility with the Linux device tree,
so barebox can once again startup and Linux can be booted.

Notably missing is Ethernet support, which doesn't yet exist in the
mainline kernel. USB on the DK also uses a STM32 MCU as Type C
controller and I haven't investigated how much of this barebox needs to
know about to get OTG working. USB host works fine however.

Once enabled, it's possible to use the same barebox binary for both
STM32MP13 and STM32MP15 and only changing the BL32 device tree in the
FIP. STM32MP13 support is not yet enabled in the device tree as setting
CONFIG_OPTEE_SIZE to 48M as expected by the STM32MP13-DK firmware will
take away 48M of memory from Linux, even on the STM32MP15 board.

We'll want to fix that before enabling it in the defconfig, but this
shouldn't keep us from fixing STM32MP13 support in general.

This series depends on enabling use of OP-TEE as SCMI transport, added
in <20231127064034.2206788-2-a.fatoum@pengutronix.de>

Ahmad Fatoum (13):
  clk: stm32mp1: build only when STM32MP15 support is enabled
  clk: factor out clk_hw_get_parent_index
  include: add initial <linux/clk-provider.h>
  clk: divider: implement CLK_DIVIDER_ALLOW_ZERO
  clk: divider: implement divider_[ro_]round_rate_parent
  clk: implement clk clk_hw_get_parent_by_index
  clk: add struct clk_init_data::parent_hws
  clk: implement clk_hw_reparent
  clk: add STM32MP13 clock and reset drivers
  pinctrl: stm32: match st,stm32mp135-pinctrl DT compatible
  aiodev: stm32: add STM32MP13x support
  ARM: stm32mp: 135-DK: enable environment, bbu handler and deep probe
  ARM: stm32mp: remove STM32MP13 .stm32 image

 arch/arm/boards/stm32mp13xx-dk/Makefile   |    2 +-
 arch/arm/boards/stm32mp13xx-dk/board.c    |   25 +
 arch/arm/boards/stm32mp13xx-dk/lowlevel.c |   19 -
 arch/arm/dts/stm32mp135f-dk.dts           |    9 +
 drivers/aiodev/stm32-adc.c                |   14 +
 drivers/clk/Kconfig                       |   10 +
 drivers/clk/Makefile                      |    3 +-
 drivers/clk/clk-divider.c                 |   41 +-
 drivers/clk/clk.c                         |  139 +-
 drivers/clk/stm32/Makefile                |    1 +
 drivers/clk/stm32/clk-stm32-core.c        |  680 ++++++++
 drivers/clk/stm32/clk-stm32-core.h        |  188 +++
 drivers/clk/stm32/clk-stm32mp13.c         | 1611 +++++++++++++++++++
 drivers/clk/stm32/reset-stm32.c           |  122 ++
 drivers/clk/stm32/reset-stm32.h           |    8 +
 drivers/clk/stm32/stm32mp13_rcc.h         | 1748 +++++++++++++++++++++
 drivers/pinctrl/pinctrl-stm32.c           |    1 +
 images/Makefile.stm32mp                   |    1 -
 include/linux/clk-provider.h              |  185 +++
 include/linux/clk.h                       |   21 +
 20 files changed, 4776 insertions(+), 52 deletions(-)
 create mode 100644 arch/arm/boards/stm32mp13xx-dk/board.c
 delete mode 100644 arch/arm/boards/stm32mp13xx-dk/lowlevel.c
 create mode 100644 drivers/clk/stm32/Makefile
 create mode 100644 drivers/clk/stm32/clk-stm32-core.c
 create mode 100644 drivers/clk/stm32/clk-stm32-core.h
 create mode 100644 drivers/clk/stm32/clk-stm32mp13.c
 create mode 100644 drivers/clk/stm32/reset-stm32.c
 create mode 100644 drivers/clk/stm32/reset-stm32.h
 create mode 100644 drivers/clk/stm32/stm32mp13_rcc.h
 create mode 100644 include/linux/clk-provider.h

-- 
2.39.2



