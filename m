Delivery-date: Thu, 26 Jun 2025 16:46:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUnrh-00BIlu-2g
	for lore@lore.pengutronix.de;
	Thu, 26 Jun 2025 16:46:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUnrg-00084t-U5
	for lore@pengutronix.de; Thu, 26 Jun 2025 16:46:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5DdEwN5GD8g0hTAnfCYENHDTr0/OX/U/WkrP1NaYkAg=; b=aj+7+hNMoOtbJ6BptuRw5f3pa/
	doMtfvxHw2+/rFmVYjEWoyuL92j1War7+S34yEm0tDbAUhU9Q4opJjqU6TncbMRMwh9xMTsmj7ORu
	C51B6ZBuomVo7O02hJ4hQ+slVZG0eapGIlIjxA9qsRj8m2iERUtOGpNufzUmXLVRGmhfU6fAl5cvK
	ZTd0SdlJ66HRx6nj9vFKNAsJNprV/Yim2pJZlE6pBXiuyvRXkxDDFeDcqBPqz3PjHAM2ffHvNIfIt
	xaVsVOPZnZ4ueUO8ez8+EW8is6evOtYCaP5fFUPEkKma3hZgHBWJDt/1rw3pER3AAwFOo//sYnWKc
	UXeJpfog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnrD-0000000ByU3-2gFb;
	Thu, 26 Jun 2025 14:45:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnr8-0000000ByPp-0F1f
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 14:45:40 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uUnr4-0006pw-Qz
	for barebox@lists.infradead.org; Thu, 26 Jun 2025 16:45:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 26 Jun 2025 16:45:21 +0200
Message-Id: <20250626144527.416697-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_074538_166507_936E06F6 
X-CRM114-Status: GOOD (  15.52  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/6] i.MX6Q TZASC and OP-TEE early helpers                   
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

the series combines the previous separate send patches [1] and [2].

The problem
-----------

Currently all upstream boards which do have OP-TEE support:
 - TQMA6ULX [3],
 - Webasto CCBV2 [4],
 - i.MX8M* based boards [5],
configure the TZASC (TZC-380) [6] region0 to secure+non-secure R/W
access.

Region0 is the default region which covers the address space:
 - 0x0...AXI_ADDRESS_MSB
and is secure RW access only per default.

The TZASC is not memory alias aware and OP-TEE configures only the
'real' physical available memory regions at the moment.

This can lead into systems where the OP-TEE core memory _IS_ accessible
from non-secure world if the access is done via memory aliases, because
barebox configured region0 to be RW for non-secure and secure world.

All i.MX8M boards are affected by the memory alias access bug as well as
i.MX6 boards which do have a one common DCD to cover multiple RAM
configurations.

On i.MX6 the main reason for the RW region0 setup is to pass OP-TEE
created device-tree-overlays between OP-TEE and barebox [7,8].

On i.MX8M the main reason for now is the USB-Download mechanism [8].

The solution
------------

To solve this issue barebox shouldn't reconfigure region0 and keep it as
RW secure-only. In that case all memory alias non-secure world access is
prohibited.

To still allow passing data between OP-TEE and barebox or to allow other
masters (USB) to access the memory barebox needs to setup an early
region1 which covers the complete physical available RAM. The memory
must be marked as non-secure to avoid manual cache maintenance:
 step-1) barebox-pbl is in secure mode
 step-2) optee is in secure mode (exchange data is mapped as non-secure, MMU
         enabled)
 step-3) barebox is in non-secure mode

Barebox still has RW access during step-1 to the non-secure world
marked memory, because the security inversion [10] isn't enabled.

This patchset
-------------

The following patches do add the base set of helpers to configure a
non-secure region1 for the TZC380.

In addition, for the i.MX6 a few more helpers are added.

[1] https://lore.kernel.org/barebox/20250626090109.cf6oatzpdu5x76wl@pengutronix.de/T/#u
[2] https://lore.kernel.org/barebox/20250619152857.3750132-1-m.felsch@pengutronix.de/T/#u
[3] https://elixir.bootlin.com/barebox/v2025.06.1/source/arch/arm/boards/tqma6ulx/lowlevel.c#L80
[4] https://elixir.bootlin.com/barebox/v2025.06.1/source/arch/arm/boards/webasto-ccbv2/lowlevel.c#L40
[5] https://elixir.bootlin.com/barebox/v2025.06.1/source/arch/arm/mach-imx/tzasc.c#L44
[6] https://developer.arm.com/documentation/ddi0431/c/introduction/about-the-tzasc
[7] https://elixir.bootlin.com/barebox/v2025.06.1/source/arch/arm/boards/tqma6ulx/board.c#L41
[8] https://elixir.bootlin.com/barebox/v2025.06.1/source/arch/arm/boards/webasto-ccbv2/board.c#L33
[9] https://elixir.bootlin.com/barebox/v2025.06.1/source/arch/arm/mach-imx/tzasc.c#L41
[10] https://developer.arm.com/documentation/ddi0431/c/functional-description/functional-operation/region-security-permissions?lang=en

Marco Felsch (6):
  ARM: i.MX6QDL: add imxcfg helper to configure the TZASC1/2
  ARM: i.MX6Q: add imx6_get_mmdc_sdram_size
  ARM: mach-imx: tzasc: add region configure helpers
  ARM: mach-imx: tzasc: add imx6q_tzc380_early_ns_region1()
  ARM: mach-imx: tzasc: add imx6q_tzc380_is_enabled
  ARM: optee-early: add mx6_start_optee_early helper

 Documentation/user/optee.rst   |  19 ++-
 arch/arm/lib32/optee-early.c   |  30 ++++
 arch/arm/mach-imx/Makefile     |   2 +-
 arch/arm/mach-imx/esdctl.c     |   5 +
 arch/arm/mach-imx/tzasc.c      | 295 +++++++++++++++++++++++++++++++++
 include/mach/imx/esdctl.h      |   1 +
 include/mach/imx/imx6q-tzasc.h |   8 +
 include/mach/imx/tzasc.h       |   2 +
 include/tee/optee.h            |   2 +
 9 files changed, 356 insertions(+), 8 deletions(-)
 create mode 100644 include/mach/imx/imx6q-tzasc.h

-- 
2.39.5



