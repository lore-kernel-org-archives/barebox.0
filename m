Delivery-date: Wed, 24 Feb 2021 09:49:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEprr-0004f0-A0
	for lore@lore.pengutronix.de; Wed, 24 Feb 2021 09:49:59 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEprp-0007ZS-Lu
	for lore@pengutronix.de; Wed, 24 Feb 2021 09:49:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZrnhIK1QC79O5GikiQW+ePGI2PNy6PqdbWK1y62GM6w=; b=S4O3mKPpsVaO2qeKYNeXArJCvr
	3vqnmqeLxoZr6inSjrS+6Q4kNsk9pdPPlTobOTkkZfkbqIozA/ugJTsrfRoz9N739QUp+ukKQuMcG
	vIjXecIgUsS0OM+coJDFlvcJMv46DuhRV/99iRTAZda6pTlzVNNOsSTh1QiwysZhii+r97WKn7W6P
	h9LdWnUvDxoviTy+yRvWx5XI0zBz8ut9YJv187BNsKkhBKaB7pcIBUO/t1gNBR0mSUDgp/Z5lT2ew
	qZa6zvwZNgAmDgsUXHYbHnPJKI7MNp24MnaqW/3Wwx+TVWFWWYvusCyw8Wb4QyTmWkwg6aqUvz8jF
	PCE+Mw/w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEpqh-0006Ez-VJ; Wed, 24 Feb 2021 08:48:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEpqe-0006EZ-0V
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 08:48:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpqc-0007Pi-SI; Wed, 24 Feb 2021 09:48:42 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpqc-0008QY-4R; Wed, 24 Feb 2021 09:48:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 24 Feb 2021 09:48:38 +0100
Message-Id: <20210224084840.32241-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_034844_294755_FF7B40BC 
X-CRM114-Status: GOOD (  11.28  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/2] Remove NIOS2 and openrisc architectures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I am sending this once again, I forgot to add some hunks last time.

Sascha

Sascha Hauer (2):
  nios2: Remove architecture
  openrisc: Remove architecture

 Documentation/boards/openrisc.rst             |  57 --
 Documentation/user/barebox.rst                |   2 -
 arch/nios2/Kconfig                            |  29 -
 arch/nios2/Makefile                           |  27 -
 arch/nios2/boards/generic/Makefile            |   2 -
 arch/nios2/boards/generic/config.h            |  63 --
 .../boards/generic/defaultenv-generic/config  |  20 -
 arch/nios2/boards/generic/generic.c           |  77 ---
 arch/nios2/boards/generic/nios_sopc.h         | 406 ------------
 arch/nios2/configs/generic_defconfig          |  32 -
 arch/nios2/cpu/.gitignore                     |   1 -
 arch/nios2/cpu/Makefile                       |   5 -
 arch/nios2/cpu/barebox.lds.S                  | 114 ----
 arch/nios2/cpu/cpu.c                          |  36 --
 arch/nios2/cpu/exceptions.S                   | 144 -----
 arch/nios2/cpu/start.S                        | 158 -----
 arch/nios2/cpu/traps.c                        |  36 --
 arch/nios2/include/asm/bitops.h               |  35 --
 arch/nios2/include/asm/bitsperlong.h          |   1 -
 arch/nios2/include/asm/byteorder.h            |   1 -
 arch/nios2/include/asm/cache.h                |  21 -
 arch/nios2/include/asm/common.h               |   4 -
 arch/nios2/include/asm/dma-mapping.h          |  48 --
 arch/nios2/include/asm/dma.h                  |   8 -
 arch/nios2/include/asm/early_printf.h         |  10 -
 arch/nios2/include/asm/elf.h                  | 165 -----
 arch/nios2/include/asm/io.h                   |  51 --
 arch/nios2/include/asm/mmu.h                  |   6 -
 arch/nios2/include/asm/nios2-io.h             | 175 ------
 arch/nios2/include/asm/nios2.h                |  56 --
 arch/nios2/include/asm/opcodes.h              | 124 ----
 arch/nios2/include/asm/posix_types.h          |   1 -
 arch/nios2/include/asm/ptrace.h               |  26 -
 arch/nios2/include/asm/sections.h             |   1 -
 arch/nios2/include/asm/spi.h                  |  22 -
 arch/nios2/include/asm/string.h               |  40 --
 arch/nios2/include/asm/swab.h                 |   4 -
 arch/nios2/include/asm/system.h               |  57 --
 arch/nios2/include/asm/types.h                |   6 -
 arch/nios2/include/asm/unaligned.h            |  15 -
 arch/nios2/lib/Makefile                       |   7 -
 arch/nios2/lib/asm-offsets.c                  |  22 -
 arch/nios2/lib/board.c                        |  29 -
 arch/nios2/lib/bootm.c                        |  80 ---
 arch/nios2/lib/cache.c                        |  77 ---
 arch/nios2/lib/clock.c                        |  53 --
 arch/nios2/lib/early_printf.c                 |  49 --
 arch/nios2/lib/libgcc.c                       | 524 ----------------
 arch/nios2/lib/longlong.h                     | 253 --------
 arch/openrisc/Kconfig                         |  29 -
 arch/openrisc/Makefile                        |  30 -
 arch/openrisc/boards/generic/Makefile         |   1 -
 arch/openrisc/boards/generic/config.h         |  24 -
 arch/openrisc/boards/generic/env/config       |  19 -
 arch/openrisc/boards/generic/generic.c        |  10 -
 arch/openrisc/configs/generic_defconfig       |  35 --
 arch/openrisc/cpu/.gitignore                  |   1 -
 arch/openrisc/cpu/Makefile                    |   5 -
 arch/openrisc/cpu/barebox.lds.S               |  78 ---
 arch/openrisc/cpu/cache.c                     | 151 -----
 arch/openrisc/cpu/cpu.c                       |  38 --
 arch/openrisc/cpu/exceptions.c                |  84 ---
 arch/openrisc/cpu/start.S                     | 358 -----------
 arch/openrisc/dts/Makefile                    |   5 -
 arch/openrisc/dts/or1ksim.dts                 |  51 --
 arch/openrisc/include/asm/bitops.h            |  35 --
 arch/openrisc/include/asm/bitops/ffs.h        |  26 -
 arch/openrisc/include/asm/bitops/fls.h        |  26 -
 arch/openrisc/include/asm/bitsperlong.h       |   1 -
 arch/openrisc/include/asm/byteorder.h         |   1 -
 arch/openrisc/include/asm/cache.h             |  43 --
 arch/openrisc/include/asm/common.h            |   4 -
 arch/openrisc/include/asm/dma.h               |  13 -
 arch/openrisc/include/asm/elf.h               | 107 ----
 arch/openrisc/include/asm/io.h                |  24 -
 arch/openrisc/include/asm/mmu.h               |   6 -
 arch/openrisc/include/asm/openrisc_exc.h      |  37 --
 arch/openrisc/include/asm/posix_types.h       |   1 -
 arch/openrisc/include/asm/ptrace.h            | 131 ----
 arch/openrisc/include/asm/sections.h          |   1 -
 arch/openrisc/include/asm/spr-defs.h          | 578 -----------------
 arch/openrisc/include/asm/string.h            |   4 -
 arch/openrisc/include/asm/swab.h              |   4 -
 arch/openrisc/include/asm/system.h            |  35 --
 arch/openrisc/include/asm/types.h             |  21 -
 arch/openrisc/include/asm/unaligned.h         |  51 --
 arch/openrisc/lib/Makefile                    |   8 -
 arch/openrisc/lib/ashldi3.S                   |  41 --
 arch/openrisc/lib/ashrdi3.S                   |  55 --
 arch/openrisc/lib/asm-offsets.c               |  18 -
 arch/openrisc/lib/board.c                     |  31 -
 arch/openrisc/lib/clock.c                     |  41 --
 arch/openrisc/lib/cpuinfo.c                   | 200 ------
 arch/openrisc/lib/dtb.c                       |  35 --
 arch/openrisc/lib/lshrdi3.S                   |  41 --
 arch/openrisc/lib/muldi3.S                    |  58 --
 drivers/net/Kconfig                           |   9 -
 drivers/net/Makefile                          |   1 -
 drivers/net/ethoc.c                           | 580 ------------------
 drivers/of/Kconfig                            |   2 +-
 100 files changed, 1 insertion(+), 6367 deletions(-)
 delete mode 100644 Documentation/boards/openrisc.rst
 delete mode 100644 arch/nios2/Kconfig
 delete mode 100644 arch/nios2/Makefile
 delete mode 100644 arch/nios2/boards/generic/Makefile
 delete mode 100644 arch/nios2/boards/generic/config.h
 delete mode 100644 arch/nios2/boards/generic/defaultenv-generic/config
 delete mode 100644 arch/nios2/boards/generic/generic.c
 delete mode 100644 arch/nios2/boards/generic/nios_sopc.h
 delete mode 100644 arch/nios2/configs/generic_defconfig
 delete mode 100644 arch/nios2/cpu/.gitignore
 delete mode 100644 arch/nios2/cpu/Makefile
 delete mode 100644 arch/nios2/cpu/barebox.lds.S
 delete mode 100644 arch/nios2/cpu/cpu.c
 delete mode 100644 arch/nios2/cpu/exceptions.S
 delete mode 100644 arch/nios2/cpu/start.S
 delete mode 100644 arch/nios2/cpu/traps.c
 delete mode 100644 arch/nios2/include/asm/bitops.h
 delete mode 100644 arch/nios2/include/asm/bitsperlong.h
 delete mode 100644 arch/nios2/include/asm/byteorder.h
 delete mode 100644 arch/nios2/include/asm/cache.h
 delete mode 100644 arch/nios2/include/asm/common.h
 delete mode 100644 arch/nios2/include/asm/dma-mapping.h
 delete mode 100644 arch/nios2/include/asm/dma.h
 delete mode 100644 arch/nios2/include/asm/early_printf.h
 delete mode 100644 arch/nios2/include/asm/elf.h
 delete mode 100644 arch/nios2/include/asm/io.h
 delete mode 100644 arch/nios2/include/asm/mmu.h
 delete mode 100644 arch/nios2/include/asm/nios2-io.h
 delete mode 100644 arch/nios2/include/asm/nios2.h
 delete mode 100644 arch/nios2/include/asm/opcodes.h
 delete mode 100644 arch/nios2/include/asm/posix_types.h
 delete mode 100644 arch/nios2/include/asm/ptrace.h
 delete mode 100644 arch/nios2/include/asm/sections.h
 delete mode 100644 arch/nios2/include/asm/spi.h
 delete mode 100644 arch/nios2/include/asm/string.h
 delete mode 100644 arch/nios2/include/asm/swab.h
 delete mode 100644 arch/nios2/include/asm/system.h
 delete mode 100644 arch/nios2/include/asm/types.h
 delete mode 100644 arch/nios2/include/asm/unaligned.h
 delete mode 100644 arch/nios2/lib/Makefile
 delete mode 100644 arch/nios2/lib/asm-offsets.c
 delete mode 100644 arch/nios2/lib/board.c
 delete mode 100644 arch/nios2/lib/bootm.c
 delete mode 100644 arch/nios2/lib/cache.c
 delete mode 100644 arch/nios2/lib/clock.c
 delete mode 100644 arch/nios2/lib/early_printf.c
 delete mode 100644 arch/nios2/lib/libgcc.c
 delete mode 100644 arch/nios2/lib/longlong.h
 delete mode 100644 arch/openrisc/Kconfig
 delete mode 100644 arch/openrisc/Makefile
 delete mode 100644 arch/openrisc/boards/generic/Makefile
 delete mode 100644 arch/openrisc/boards/generic/config.h
 delete mode 100644 arch/openrisc/boards/generic/env/config
 delete mode 100644 arch/openrisc/boards/generic/generic.c
 delete mode 100644 arch/openrisc/configs/generic_defconfig
 delete mode 100644 arch/openrisc/cpu/.gitignore
 delete mode 100644 arch/openrisc/cpu/Makefile
 delete mode 100644 arch/openrisc/cpu/barebox.lds.S
 delete mode 100644 arch/openrisc/cpu/cache.c
 delete mode 100644 arch/openrisc/cpu/cpu.c
 delete mode 100644 arch/openrisc/cpu/exceptions.c
 delete mode 100644 arch/openrisc/cpu/start.S
 delete mode 100644 arch/openrisc/dts/Makefile
 delete mode 100644 arch/openrisc/dts/or1ksim.dts
 delete mode 100644 arch/openrisc/include/asm/bitops.h
 delete mode 100644 arch/openrisc/include/asm/bitops/ffs.h
 delete mode 100644 arch/openrisc/include/asm/bitops/fls.h
 delete mode 100644 arch/openrisc/include/asm/bitsperlong.h
 delete mode 100644 arch/openrisc/include/asm/byteorder.h
 delete mode 100644 arch/openrisc/include/asm/cache.h
 delete mode 100644 arch/openrisc/include/asm/common.h
 delete mode 100644 arch/openrisc/include/asm/dma.h
 delete mode 100644 arch/openrisc/include/asm/elf.h
 delete mode 100644 arch/openrisc/include/asm/io.h
 delete mode 100644 arch/openrisc/include/asm/mmu.h
 delete mode 100644 arch/openrisc/include/asm/openrisc_exc.h
 delete mode 100644 arch/openrisc/include/asm/posix_types.h
 delete mode 100644 arch/openrisc/include/asm/ptrace.h
 delete mode 100644 arch/openrisc/include/asm/sections.h
 delete mode 100644 arch/openrisc/include/asm/spr-defs.h
 delete mode 100644 arch/openrisc/include/asm/string.h
 delete mode 100644 arch/openrisc/include/asm/swab.h
 delete mode 100644 arch/openrisc/include/asm/system.h
 delete mode 100644 arch/openrisc/include/asm/types.h
 delete mode 100644 arch/openrisc/include/asm/unaligned.h
 delete mode 100644 arch/openrisc/lib/Makefile
 delete mode 100644 arch/openrisc/lib/ashldi3.S
 delete mode 100644 arch/openrisc/lib/ashrdi3.S
 delete mode 100644 arch/openrisc/lib/asm-offsets.c
 delete mode 100644 arch/openrisc/lib/board.c
 delete mode 100644 arch/openrisc/lib/clock.c
 delete mode 100644 arch/openrisc/lib/cpuinfo.c
 delete mode 100644 arch/openrisc/lib/dtb.c
 delete mode 100644 arch/openrisc/lib/lshrdi3.S
 delete mode 100644 arch/openrisc/lib/muldi3.S
 delete mode 100644 drivers/net/ethoc.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

