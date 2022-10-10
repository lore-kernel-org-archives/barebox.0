Delivery-date: Mon, 10 Oct 2022 08:12:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm25-0033ed-G9
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:12:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm23-00019x-6Z
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:12:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HLC7qzBXn+mSzkYVhwomTR1sEW10Dj/CkeAf/lbNas8=; b=ax2H/mHaKgtFEfIibILR22UZdF
	7UsG3EotNivpnJic06L+ILn7QU7/TlU0YWsNmUQAmfrjCY6MJNDuq4NUyslw1SC/lVAOT31EshBCz
	YMM65xBDbN6oSksjMM5KLl/hCBRi5Yr04uDvt3Xi9+XtqFg18LTK745PqJUdDAGZzu7FQJSt7R/2R
	k6k5B1pHiwI/T1YGy87jrU15U9bySkaIMbG+1AozUJKegk6jAewLwd2kdY/7x67CQNKYA2U3dTyFf
	HDg/ZrxSj1Mk0B2WAG4YcNtkTa8OlDMSJ9O0LELc3yVTN+YjohXnMvuAuOrqBS/BqfM1JLKe4CbZ8
	aEKceEhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0r-00HAd8-5T; Mon, 10 Oct 2022 06:11:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0d-00HAWa-E8
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:11:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0c-0000Xs-7z
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 08:11:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0b-000d9m-GZ
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 08:11:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0a-008kAf-3F
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 08:11:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 10 Oct 2022 08:11:12 +0200
Message-Id: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231127_495050_DC247430 
X-CRM114-Status: GOOD (  11.08  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/10] treewide: misc cleanup for efiloader prep
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The patches have in common that no functional change sould be introduced
and that they resulted during efiloader implementation.

Ahmad Fatoum (10):
  block: have cdev_get_block_device accept const cdev
  treewide: replace errno_str() with %m printf format specifier
  common: misc: remove now unused errno_str
  driver: don't crash when dev_name/dev_id is called with NULL dev
  lds: introduce <asm/barebox.lds.h>
  lds: move OUTPUT_FORMAT/ARCH definition into header
  ARM: lds: define and use BAREBOX_RELOCATION_TABLE
  lib: random: add hwrng_get_crypto_bytes
  common: bootm: factor out FIT parsing code into bootm_open_bit
  common: bootm: use switch-case

 arch/arm/include/asm/barebox.lds.h       |  30 +++++
 arch/arm/lib/pbl.lds.S                   |  24 +---
 arch/arm/lib32/barebox.lds.S             |  14 +--
 arch/arm/lib64/barebox.lds.S             |  14 +--
 arch/arm/mach-at91/boot_test_cmd.c       |   2 +-
 arch/arm/mach-omap/am33xx_bbu_emmc.c     |  15 ++-
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c  |   6 +-
 arch/kvx/cpu/barebox.lds.S               |   2 +-
 arch/kvx/include/asm/barebox.lds.h       |   6 +
 arch/mips/include/asm/barebox.lds.h      |   5 +
 arch/mips/lib/barebox.lds.S              |   4 +-
 arch/mips/lib/pbl.lds.S                  |   4 +-
 arch/mips/pbl/zbarebox.lds.S             |   4 +-
 arch/openrisc/cpu/barebox.lds.S          |   4 +-
 arch/openrisc/include/asm/barebox.lds.h  |   5 +
 arch/powerpc/boards/pcm030/barebox.lds.S |   4 +-
 arch/powerpc/include/asm/barebox.lds.h   |   5 +
 arch/powerpc/mach-mpc85xx/barebox.lds.S  |   4 +-
 arch/riscv/include/asm/barebox.lds.h     |  10 ++
 arch/riscv/lib/barebox.lds.S             |  10 +-
 arch/riscv/lib/pbl.lds.S                 |  10 +-
 arch/sandbox/board/barebox.lds.S         |   2 +-
 arch/sandbox/include/asm/barebox.lds.h   |   3 +
 arch/x86/include/asm/barebox.lds.h       |  11 ++
 arch/x86/mach-efi/elf_ia32_efi.lds.S     |   6 +-
 arch/x86/mach-efi/elf_x86_64_efi.lds.S   |   6 +-
 commands/cat.c                           |   2 +-
 commands/edit.c                          |   4 +-
 commands/flash.c                         |   8 +-
 commands/ls.c                            |   3 +-
 commands/mkdir.c                         |   2 +-
 commands/rm.c                            |   2 +-
 commands/rmdir.c                         |   2 +-
 common/block.c                           |   2 +-
 common/bootm.c                           | 150 ++++++++++++-----------
 common/elf.c                             |  13 +-
 common/envfs-core.c                      |   3 +-
 common/environment.c                     |  11 +-
 common/firmware.c                        |   5 +-
 common/misc.c                            |   8 +-
 common/module.lds.S                      |   2 +-
 common/uimage.c                          |   4 +-
 fs/bpkfs.c                               |   6 +-
 fs/uimagefs.c                            |   4 +-
 include/asm-generic/barebox.lds.h        |   4 -
 include/block.h                          |   4 +-
 include/driver.h                         |   2 +
 include/errno.h                          |   1 -
 include/linux/hw_random.h                |   6 +-
 include/stdlib.h                         |   2 +
 lib/libfile.c                            |   6 +-
 lib/logo/Makefile                        |   2 +-
 lib/random.c                             |  25 ++--
 scripts/Makefile.lib                     |   4 +-
 scripts/gen-dtb-s                        |   2 +-
 55 files changed, 270 insertions(+), 229 deletions(-)
 create mode 100644 arch/arm/include/asm/barebox.lds.h
 create mode 100644 arch/kvx/include/asm/barebox.lds.h
 create mode 100644 arch/mips/include/asm/barebox.lds.h
 create mode 100644 arch/openrisc/include/asm/barebox.lds.h
 create mode 100644 arch/powerpc/include/asm/barebox.lds.h
 create mode 100644 arch/riscv/include/asm/barebox.lds.h
 create mode 100644 arch/sandbox/include/asm/barebox.lds.h
 create mode 100644 arch/x86/include/asm/barebox.lds.h

-- 
2.30.2



