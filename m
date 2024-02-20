Delivery-date: Tue, 20 Feb 2024 10:32:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMU2-00Fqkb-01
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 10:32:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMTx-0002qN-SR
	for lore@pengutronix.de; Tue, 20 Feb 2024 10:32:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Q9H1NqH2o4dznBr1vFi8KTnPXrWh2ydzUD6f4XiqoG0=; b=iClh2C0SlltQx1ivjLbeW/Lo+D
	qIqtCWqn9SwHbQFv0xijsMUdveitZuSkZAzmbkFidJUR2Jedb+ff1lJUehyOtJ81SnaNWRUHpjLxv
	VMkEwxCCm+mk2nqY/a4nXr1DX5SOduHzajLbiCDsH+P1E7ZkFNfoUssd+w4Jtzlh+vqRt5GZlh1Pk
	6jCexjotbyMDGBJSeLfkGJ3glGWUxIiqaprhNQy+kviEs/BFPGG0RQvGa7p1UjeCZs83jOEfsjkda
	YNmlxr0sGpa0ZlZzaQwmu7MBTj51iJQWQrUDlqUOM2VZncMtnR1KqbdmX84JNFN6CeFhcHHUuvMQw
	AF5cTAOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMTA-0000000Dzw6-3bBI;
	Tue, 20 Feb 2024 09:31:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMT0-0000000Dzo5-04RX
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 09:31:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-0002Ez-N2; Tue, 20 Feb 2024 10:31:08 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-001ohm-2W; Tue, 20 Feb 2024 10:31:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSx-006TH7-3B;
	Tue, 20 Feb 2024 10:31:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 20 Feb 2024 10:30:46 +0100
Message-Id: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_013110_164213_67DE29A2 
X-CRM114-Status: GOOD (  14.42  )
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
Subject: [PATCH v4 00/14] ARM: at91: skov-arm9cpu (SAM9263) first stage support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SDRAM setup and SD-Card chainloading support were previously added[1]
by Sam as well as a WIP patch to enable them for Skov ARM9CPU.

I reworked his final WIP patch and fixed some smaller and bigger issues
that I ran into. Now barebox can replace at91bootstrap on this platform
when booted from SD.

What didn't work for me were USB and Ethernet, but these didn't work in
Linux either when booted with the same device tree. I suspect this to be
related, but I don't have use for either USB or Ethernet in barebox at
this time, so I am happy with functional SD and nor flash.

v3 -> v4:
  - dropped final patch in v3 (15/15). The problem with the USB hang
    needs to be fixed some other way (Sascha)
  - used defines for PLLA_SETTINGS, PLLB_SETTINGS (Sam)
  - Added Sam's R-b

[1]: https://lore.barebox.org/barebox/20220628203849.2785611-12-sam@ravnborg.org/

Ahmad Fatoum (13):
  mci: atmel_mci: disable power save mode
  mci: atmel_mci: fix zeroing of block length on AT91SAM9263
  ARM: replace ENTRY_FUNCTION_HEAD with ENTRY_FUNCTION_WITHSTACK_HEAD
  ARM: at91: use AT91 header instead of generic barebox ARM's
  ARM: at91: implement SAM9_ENTRY_FUNCTION
  ARM: at91: sam9263_ll: drop PLL charge pump initialization
  ARM: at91: sam9263_ll: pass AT91_PMC_LL_AT91SAM9263 to PMC functions
  ARM: at91: sam9263_ll: refactor MCK switch to PLLA for clarity
  ARM: at91: sam9263_ll: support configuration of PLLB
  ARM: dts: AT91: skov-arm9cpu: remove barebox environment on NOR
  ARM: at91: skov-arm9cpu: configure SMC for NOR flash use
  ARM: at91: skov-arm9cpu: configure more appropriate hostname
  ARM: AT91: skov-arm9cpu: support environment on SD-Card

Sam Ravnborg (1):
  ARM: at91: skov-arm9cpu: Add SD-Card xload support

 arch/arm/boards/at91sam9263ek/lowlevel_init.c |   5 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c       |   5 +-
 arch/arm/boards/skov-arm9cpu/board.c          |  53 +++--
 arch/arm/boards/skov-arm9cpu/lowlevel.c       | 206 +++++++++---------
 arch/arm/dts/at91-skov-arm9cpu.dts            |   9 +-
 arch/arm/include/asm/barebox-arm.h            |  20 +-
 arch/arm/mach-at91/Kconfig                    |   4 +-
 arch/arm/mach-at91/at91_pmc_ll.c              |  11 +
 arch/arm/mach-at91/sam9263_ll.c               |  34 ++-
 drivers/mci/atmel_mci.c                       |   1 +
 drivers/mci/atmel_mci_common.c                |  12 +-
 drivers/mci/atmel_mci_pbl.c                   |   1 +
 images/Makefile.at91                          |   6 +-
 include/mach/at91/at91_pmc.h                  |   2 +
 include/mach/at91/at91_pmc_ll.h               |   1 +
 include/mach/at91/barebox-arm.h               |   7 +-
 include/mach/at91/sam92_ll.h                  |   7 +-
 include/mach/mvebu/barebox-arm-head.h         |   2 +-
 18 files changed, 216 insertions(+), 170 deletions(-)

-- 
2.39.2



