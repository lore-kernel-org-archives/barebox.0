Delivery-date: Fri, 22 May 2026 13:00:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNc5-002Ztn-1Z
	for lore@lore.pengutronix.de;
	Fri, 22 May 2026 13:00:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNc4-0002N0-H1
	for lore@pengutronix.de; Fri, 22 May 2026 13:00:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Cb4N4S6ZRkV6e1SrmcQXyGtZnwPqCNdAShJRcC5wAfA=; b=4RQO066uxXv1mgneVnlendA0xn
	fOB0WlwlFAPiE15w1JP0dk59K/x0RCwTXgou794TBuqfJdmeUjWbt+h0604pNBVPuBgSFrC5uUYuk
	9KtCABKOHmMaw9pMFwgIJ3Q1MOW4JlEZwQIo5/uFHnwsUFVL9CAMdFWAHhDjYJ+GlnZIU6/5ZVE3w
	ssaX5TaxUL1gckY8bcCnKqwUEhiWo/sgts7FkHY52k3cmWSOcLjUFNiLhCDhOT3MdY3cgctWQvl5X
	b9+05SbGlsmn1IXjAF/cEbD3RWa8yRVPAa3ZIoF9Wf6F5Ez6hw7pRf/zySDWBTenpa6dP5yJW79+u
	4iSVp/iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNan-0000000AZSw-1WcV;
	Fri, 22 May 2026 10:59:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNah-0000000AZOy-2sMa
	for barebox@lists.infradead.org;
	Fri, 22 May 2026 10:58:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNaf-0001tq-VV; Fri, 22 May 2026 12:58:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNaf-001Fn0-19;
	Fri, 22 May 2026 12:58:53 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNaf-0000000BFtq-3UPS;
	Fri, 22 May 2026 12:58:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 May 2026 12:53:06 +0200
Message-ID: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_035855_877598_654A76E4 
X-CRM114-Status: GOOD (  17.40  )
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
Subject: [PATCH master 0/6] ARM: unify pbl and proper malloc area start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the most recent changes to the PBL rockchip code, barebox gained an
additional very early malloc pool:

- very early on, it reserves some space at the end of RAM for extracting
  compressed TF-A/OP-TEE blobs.

- a bit later, but still in PBL, it reserve some space directly under
  the start of the barebox area at end of RAM as before.

- In barebox proper, it reserves a large malloc area that ends also
  at the start of the barebox area at end of RAM.

Nothing allocated in these different pools needs to survive after the
next pool is instantiated, so reusing the memory is fine.

The new pool at the start causes a regression for Rockchip boards with
OP-TEE as the OP-TEE region overlapped that very early malloc area.

The clean resolution of this is if we could just use the same malloc
area used later in barebox proper in PBL, whether very early or just
before barebox proper decompression.

There's a problem though:

 - The end of the malloc region is relative to barebox area, which means
   we must know how big barebox is, which we can't very early on as it
   contains handoff data not yet allocated and may not even be possible
   at all if we have separate first and second stages

- The start of the malloc region is relative to the end of the malloc
  region


This mess has been a fertile ground for bugs, so in interest of avoiding
more bugs in future, this series changes the calculation of the malloc
area on ARM:


 - The end continues to be relative to the barebox area
 - The start of the malloc area is relative to the end of the initial
   memory without regard to the barebox area

For the common case of the malloc area being dynamic anyway, the malloc
area will change in size by few megabytes, which doesn't matter much.

For the uncommon case, CONFIG_MALLOC_OFFSET would need to be set
appropriately. The migration notes are extended to describe how to
determine the value.

An extra benefit is that CONFIG_MALLOC_OFFSET=0 becomes the default now
instead of CONFIG_MALLOC_SIZE=4M, which most boards were overriding
anyway.

A future change that can be built on top of this is saving handoff
_before_ the barebox executable on memory, not before it.

This could further simplify the code. This is not implemented here as
this is meant for master to fix the regression for Rockchip.

This passes the DistroKit pre-release tests and the Github Actions CI.
@Alexander, could you test on your OP-TEE enabled RK35xx?

Ahmad Fatoum (6):
  arch: introduce new CONFIG_ARCH_HAS_MALLOC_SIZE
  ARM: explicitly state CONFIG_MALLOC_SIZE in defconfigs
  arch: introduce CONFIG_MALLOC_OFFSET
  ARM: switch to CONFIG_MALLOC_OFFSET
  ARM: configs: drop CONFIG_MALLOC_SIZE=0x0 as it's now the default
  ARM: place PBL malloc area at start of barebox proper malloc area

 arch/Kconfig                                  | 20 +++++++++
 arch/arm/Kconfig                              |  1 +
 arch/arm/configs/am335x_mlo_defconfig         |  1 -
 .../arm/configs/am35xx_pfc200_xload_defconfig |  1 -
 arch/arm/configs/animeo_ip_defconfig          |  1 +
 arch/arm/configs/at91_multi_defconfig         |  1 -
 arch/arm/configs/at91rm9200ek_defconfig       |  1 +
 arch/arm/configs/at91sam9260ek_defconfig      |  1 +
 .../configs/at91sam9261ek_bootstrap_defconfig |  1 +
 arch/arm/configs/at91sam9261ek_defconfig      |  1 +
 arch/arm/configs/at91sam9g10ek_defconfig      |  1 +
 arch/arm/configs/at91sam9g20ek_defconfig      |  1 +
 arch/arm/configs/at91sam9m10g45ek_defconfig   |  2 +-
 arch/arm/configs/at91sam9m10ihd_defconfig     |  2 +-
 arch/arm/configs/at91sam9n12ek_defconfig      |  2 +-
 arch/arm/configs/clps711x_defconfig           |  1 +
 arch/arm/configs/dss11_defconfig              |  1 +
 arch/arm/configs/efi_v8_defconfig             |  1 -
 arch/arm/configs/haba_knx_lite_defconfig      |  1 +
 arch/arm/configs/imx23_defconfig              |  1 -
 arch/arm/configs/imx28_defconfig              |  1 -
 arch/arm/configs/imx_v7_defconfig             |  1 -
 arch/arm/configs/imx_v8_defconfig             |  1 -
 arch/arm/configs/k3-r5_defconfig              |  1 -
 arch/arm/configs/kindle-gen-6-7_defconfig     |  1 -
 arch/arm/configs/kindle-mx50_defconfig        |  1 -
 arch/arm/configs/layerscape_defconfig         |  1 -
 arch/arm/configs/layerscape_v7_defconfig      |  1 -
 arch/arm/configs/modules32_defconfig          |  1 -
 arch/arm/configs/multi_v5_v6_defconfig        |  1 -
 arch/arm/configs/multi_v7_defconfig           |  1 -
 arch/arm/configs/multi_v8_defconfig           |  1 -
 arch/arm/configs/mvebu_defconfig              |  1 -
 arch/arm/configs/omap_defconfig               |  1 -
 arch/arm/configs/pm9261_defconfig             |  1 +
 arch/arm/configs/pm9263_defconfig             |  1 +
 arch/arm/configs/pm9g45_defconfig             |  1 +
 arch/arm/configs/qil_a9260_defconfig          |  1 +
 arch/arm/configs/qil_a9g20_defconfig          |  1 +
 arch/arm/configs/rockchip_v7a_defconfig       |  1 -
 arch/arm/configs/rockchip_v8_defconfig        |  1 -
 arch/arm/configs/rpi_defconfig                |  1 -
 arch/arm/configs/rpi_v8a_defconfig            |  3 +-
 arch/arm/configs/socfpga-agilex5_defconfig    |  1 -
 arch/arm/configs/socfpga-arria10_defconfig    |  1 -
 arch/arm/configs/socfpga-xload_defconfig      |  1 -
 arch/arm/configs/socfpga_defconfig            |  1 -
 arch/arm/configs/stm32mp_defconfig            |  1 -
 arch/arm/configs/tegra_v7_defconfig           |  1 -
 arch/arm/configs/telit_evk_pro3_defconfig     |  1 +
 arch/arm/configs/tny_a9260_defconfig          |  1 +
 .../arm/configs/tny_a9263_bootstrap_defconfig |  1 +
 arch/arm/configs/tny_a9263_defconfig          |  1 +
 arch/arm/configs/tny_a9g20_defconfig          |  1 +
 arch/arm/configs/usb_a9260_defconfig          |  1 +
 .../arm/configs/usb_a9263_bootstrap_defconfig |  1 +
 arch/arm/configs/usb_a9263_defconfig          |  1 +
 arch/arm/configs/usb_a9g20_defconfig          |  2 +-
 arch/arm/configs/virt32_secure_defconfig      |  1 -
 arch/arm/configs/zii_vf610_dev_defconfig      |  1 -
 arch/arm/configs/zynq_defconfig               |  2 +-
 arch/arm/configs/zynqmp_defconfig             |  1 -
 arch/arm/cpu/common.c                         |  4 +-
 arch/arm/cpu/start.c                          | 14 +------
 arch/arm/cpu/uncompress.c                     |  2 +-
 arch/arm/include/asm/barebox-arm.h            |  6 ++-
 arch/arm/mach-rockchip/atf.c                  |  2 +-
 arch/mips/Kconfig                             |  1 +
 arch/openrisc/Kconfig                         |  1 +
 arch/powerpc/Kconfig                          |  1 +
 arch/riscv/Kconfig                            |  1 +
 arch/sandbox/Kconfig                          |  1 +
 common/Kconfig                                | 41 ++++++++++++++++++-
 include/asm-generic/memory_layout.h           | 20 +++++++++
 74 files changed, 123 insertions(+), 59 deletions(-)

-- 
2.47.3



