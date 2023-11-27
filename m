Delivery-date: Mon, 27 Nov 2023 07:41:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VJe-00AeDk-22
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:41:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VJe-0008Jg-Jz
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:41:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w01fF9C8XqU8T7oAvk9qGr7UHaQDiNDmVPduHF7P5J4=; b=0WZY/X988WyopoGMvX24D7DhYg
	sBVYa3UNBug7kpeq7ndVJHJ2etbnNDQokwjgGXBd4JXoQoIPK1wqYeV5LkSST6SfCjlLhTw7F79r3
	iDcFUT3TuD/sKMgKgoC+2KkX5KtRyjiLtPfuSLgwY7RV/8WvhpglThtjiMBBbGlpvX+Z0W3Pjaht2
	mfsmE9ntWVrIXmsAHcXxwyEOD5T2hWdNwoTy9wdph8Dc/12A3QfLWKdZTJmYQ/ygthF5MHHdnawv4
	Wvr1rf0yQw7dbqA4yEXMlwxPmguI0jwgPt+jB/TZWHn+jy2+cX5Vmcs4X9fw5klkCZxid1DMzFbEv
	Y16Qw18w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VIN-001a9a-2s;
	Mon, 27 Nov 2023 06:40:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VIK-001a7V-3D
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:40:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-0007xg-RK
	for barebox@lists.infradead.org; Mon, 27 Nov 2023 07:40:35 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-00BshX-Ex
	for barebox@lists.infradead.org; Mon, 27 Nov 2023 07:40:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-009G6Z-1E
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 07:40:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 27 Nov 2023 07:40:28 +0100
Message-Id: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224037_034689_6968BDD2 
X-CRM114-Status: GOOD (  11.66  )
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
Subject: [PATCH 0/6] firmware: arm_scmi: add OP-TEE transport support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

STM32MP15 in trusted mode and STM32MP13 by default use OP-TEE as secure
monitor and some resets, clocks and voltage regulators are off-limits
to the normal world.

This series syncs barebox SCMI support with v6.6 and adds OP-TEE as
transport alongside SMCCC. This series has been tested on:

  - STM32MP15 + OP-TEE + OP-TEE shm
  - STM32MP13 + OP-TEE + OP-TEE shm
  - STM32MP15 + OP-TEE + CFG_STM32MP1_SCMI_SIP
  - STM32MP15 + TF-A as SCMI provider (no OP-TEE)

This series depends on the OP-TEE infrastructure added in
<M20231127063559.2205776-1-a.fatoum@pengutronix.de>

Ahmad Fatoum (6):
  firmware: arm_scmi: sync with Linux v6.6
  ARM: dts: stm32mp: dk1/2: build SCMI-enabled device tree
  nvmem: bsec: add support for STM32 bsec pseudo TA
  ARM: dts: stm32mp: ev1: build extra device tree with SCMI
  ARM: dts: stm32mp: add dtsi for SMC SiP-based SCMI
  ARM: dts: stm32mp: lxa-mc1: build SCMI-enabled DT

 arch/arm/dts/Makefile                      |    7 +-
 arch/arm/dts/stm32mp1-scmi-smc.dtsi        |   49 +
 arch/arm/dts/stm32mp157a-dk1-scmi.dts      |    4 +
 arch/arm/dts/stm32mp157c-dk2-scmi.dts      |    4 +
 arch/arm/dts/stm32mp157c-ev1-scmi.dts      |   20 +
 arch/arm/dts/stm32mp157c-lxa-mc1-scmi.dts  |   63 +
 drivers/clk/clk-scmi.c                     |  100 +-
 drivers/firmware/Kconfig                   |   12 +-
 drivers/firmware/arm_scmi/Kconfig          |   86 +
 drivers/firmware/arm_scmi/Makefile         |   18 +-
 drivers/firmware/arm_scmi/base.c           |   85 +-
 drivers/firmware/arm_scmi/bus.c            |  356 ++++-
 drivers/firmware/arm_scmi/clock.c          |  292 ++--
 drivers/firmware/arm_scmi/common.h         |  315 ++--
 drivers/firmware/arm_scmi/driver.c         | 1668 +++++++++++++-------
 drivers/firmware/arm_scmi/msg.c            |   93 ++
 drivers/firmware/arm_scmi/optee.c          |  614 +++++++
 drivers/firmware/arm_scmi/power.c          |  229 +++
 drivers/firmware/arm_scmi/protocols.h      |  325 ++++
 drivers/firmware/arm_scmi/reset.c          |   67 +-
 drivers/firmware/arm_scmi/scmi_pm_domain.c |  135 ++
 drivers/firmware/arm_scmi/sensors.c        |  936 +++++++++++
 drivers/firmware/arm_scmi/shmem.c          |   53 +-
 drivers/firmware/arm_scmi/smc.c            |   86 +-
 drivers/firmware/arm_scmi/voltage.c        |  204 ++-
 drivers/nvmem/Kconfig                      |    6 +
 drivers/nvmem/Makefile                     |    1 +
 drivers/nvmem/bsec.c                       |  133 +-
 drivers/nvmem/stm32-bsec-optee-ta.c        |  298 ++++
 drivers/nvmem/stm32-bsec-optee-ta.h        |   85 +
 drivers/regulator/scmi-regulator.c         |   13 +-
 drivers/reset/reset-scmi.c                 |    2 +-
 include/linux/scmi_protocol.h              |   94 +-
 33 files changed, 5216 insertions(+), 1237 deletions(-)
 create mode 100644 arch/arm/dts/stm32mp1-scmi-smc.dtsi
 create mode 100644 arch/arm/dts/stm32mp157a-dk1-scmi.dts
 create mode 100644 arch/arm/dts/stm32mp157c-dk2-scmi.dts
 create mode 100644 arch/arm/dts/stm32mp157c-ev1-scmi.dts
 create mode 100644 arch/arm/dts/stm32mp157c-lxa-mc1-scmi.dts
 create mode 100644 drivers/firmware/arm_scmi/Kconfig
 create mode 100644 drivers/firmware/arm_scmi/msg.c
 create mode 100644 drivers/firmware/arm_scmi/optee.c
 create mode 100644 drivers/firmware/arm_scmi/power.c
 create mode 100644 drivers/firmware/arm_scmi/protocols.h
 create mode 100644 drivers/firmware/arm_scmi/scmi_pm_domain.c
 create mode 100644 drivers/firmware/arm_scmi/sensors.c
 create mode 100644 drivers/nvmem/stm32-bsec-optee-ta.c
 create mode 100644 drivers/nvmem/stm32-bsec-optee-ta.h

-- 
2.39.2



