Delivery-date: Wed, 17 May 2023 11:05:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD63-0048aJ-6d
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:05:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD5z-0004oP-KY
	for lore@pengutronix.de; Wed, 17 May 2023 11:05:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RiF3iKQqFlEsWAk6M8kSOQhc6/hGrLwhC3K+kJ8e7rI=; b=epRs+HbqHlfXPssiQmHBJFGbfl
	FuKOwo7awXExQonLAzpMGkgKDuBx2aazlsN3PQkSuagBQj+G7KUhR1RO2ymicvEBBgUNrOi0waxw9
	MhAFTgQq54k4Ur2WrNRi6wdCO04297Y+EciTql95+La0gJNxeNNSzg2xQL1bfin3utTdyca3c+1XF
	gFqWPXvG9dYFSvqJEqbTEItxEDtKMEhiS26v7iGfRZlXg1KbvoYwwOm+OHyxJ55/4TokqkWHQ2giS
	H1+eEvzSTjuImGpJ6YL+64BKhLP97JU3Vy/4uSPdK0cUS+wp83qjXjRcY/cLUBqtFKuXWdhG5VLms
	LguFWnuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4g-008yTE-0Y;
	Wed, 17 May 2023 09:03:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Y-008yMH-2F
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4S-0003x1-Qt; Wed, 17 May 2023 11:03:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4S-000o6d-0s; Wed, 17 May 2023 11:03:44 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00Gaqr-EI; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:06 +0200
Message-Id: <20230517090340.3954615-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_020350_733485_268AA06D 
X-CRM114-Status: GOOD (  15.32  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/34] ARM: MMU rework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The goal of this series is to properly map SDRAM used for OP-TEE non
executable, because otherwise the instruction prefetcher might speculate
into the OP-TEE area. This is currently not possible because we use
1MiB (AArch32) or 1GiB (AArch64) sections which are too coarse for that.

With this series we start using two level page tables also in the early
MMU setup.

Overall the MMU code is more consolidated now, we no longer
differentiate between early MMU setup and non early MMU setup.
Consequently the CONFIG_MMU_EARLY option is gone and early MMU setup is
always done when the MMU is enabled.

One nice side effect of this series is that the Rockchip RK3568 boards
now start about a second faster. On these boards the early MMU setup
was skipped because of the insufficient memory start alignment.

Changes since v1:
- integrate review feedback from Ahmad
- rework arm_mem_* functions

Sascha Hauer (34):
  ARM: remove unused membase argument
  ARM: remove unused define
  ARM: rename __arm_mem_scratch to arm_mem_scratch
  ARM: put scratch mem area below OP-TEE
  ARM: add arm_mem_optee()
  ARM: make arm_mem_scratch() a static inline function
  ARM: define stack base consistently
  ARM: move arm_mem_scratch_get() lower for consistency
  ARM: drop cache function initialization
  ARM: Add _32 suffix to aarch32 specific filenames
  ARM: cpu.c: remove unused include
  ARM: mmu-common.c: use common mmu include
  ARM: mmu32: rename mmu.h to mmu_32.h
  ARM: mmu: implement MAP_FAULT
  ARM: mmu64: Use arch_remap_range where possible
  ARM: mmu32: implement zero_page_*()
  ARM: i.MX: Drop HAB workaround
  ARM: Move early MMU after malloc initialization
  ARM: mmu: move dma_sync_single_for_device to extra file
  ARM: mmu: merge mmu-early_xx.c into mmu_xx.c
  ARM: mmu: alloc 64k for early page tables
  ARM: mmu32: create alloc_pte()
  ARM: mmu64: create alloc_pte()
  ARM: mmu: drop ttb argument
  ARM: mmu: always do MMU initialization early when MMU is enabled
  ARM: mmu32: Assume MMU is on
  ARM: mmu32: Fix pmd_flags_to_pte() for ARMv4/5/6
  ARM: mmu32: Add pte_flags_to_pmd()
  ARM: mmu32: add get_pte_flags, get_pmd_flags
  ARM: mmu32: move functions into c file
  ARM: mmu32: read TTB value from register
  ARM: mmu32: Use pages for early MMU setup
  ARM: mmu32: Skip reserved ranges during initialization
  ARM: mmu64: Use two level pagetables in early code

 arch/arm/Makefile                             |   5 +-
 arch/arm/boards/raspberry-pi/lowlevel.c       |   2 +-
 arch/arm/cpu/Kconfig                          |   3 +-
 arch/arm/cpu/Makefile                         |  21 +-
 arch/arm/cpu/{cache.c => cache_32.c}          |  85 +++--
 arch/arm/cpu/cache_64.c                       |   5 -
 arch/arm/cpu/cpu.c                            |   2 -
 arch/arm/cpu/dma_32.c                         |  20 ++
 arch/arm/cpu/dma_64.c                         |  16 +
 arch/arm/cpu/entry.c                          |   2 +-
 arch/arm/cpu/{entry_ll.S => entry_ll_32.S}    |   0
 .../arm/cpu/{exceptions.S => exceptions_32.S} |   0
 .../arm/cpu/{interrupts.c => interrupts_32.c} |   0
 arch/arm/cpu/{lowlevel.S => lowlevel_32.S}    |   0
 arch/arm/cpu/mmu-common.c                     |  13 +-
 arch/arm/cpu/mmu-early.c                      |  71 -----
 arch/arm/cpu/mmu-early_64.c                   |  93 ------
 arch/arm/cpu/{mmu.c => mmu_32.c}              | 298 +++++++++++-------
 arch/arm/cpu/{mmu.h => mmu_32.h}              |  20 --
 arch/arm/cpu/mmu_64.c                         | 109 ++++---
 arch/arm/cpu/{setupc.S => setupc_32.S}        |   0
 arch/arm/cpu/sm.c                             |   3 +-
 .../arm/cpu/{smccc-call.S => smccc-call_32.S} |   0
 arch/arm/cpu/start.c                          |  21 +-
 arch/arm/cpu/uncompress.c                     |  11 +-
 arch/arm/include/asm/barebox-arm.h            |  60 ++--
 arch/arm/include/asm/cache.h                  |   2 -
 arch/arm/include/asm/mmu.h                    |   3 +-
 arch/arm/mach-imx/atf.c                       |  12 +-
 arch/arm/mach-imx/xload-common.c              |   2 +-
 common/Kconfig                                |   9 -
 drivers/hab/habv4.c                           |  10 +-
 include/mach/rockchip/bootrom.h               |   2 +-
 include/mmu.h                                 |   1 +
 34 files changed, 414 insertions(+), 487 deletions(-)
 rename arch/arm/cpu/{cache.c => cache_32.c} (89%)
 create mode 100644 arch/arm/cpu/dma_32.c
 create mode 100644 arch/arm/cpu/dma_64.c
 rename arch/arm/cpu/{entry_ll.S => entry_ll_32.S} (100%)
 rename arch/arm/cpu/{exceptions.S => exceptions_32.S} (100%)
 rename arch/arm/cpu/{interrupts.c => interrupts_32.c} (100%)
 rename arch/arm/cpu/{lowlevel.S => lowlevel_32.S} (100%)
 delete mode 100644 arch/arm/cpu/mmu-early.c
 delete mode 100644 arch/arm/cpu/mmu-early_64.c
 rename arch/arm/cpu/{mmu.c => mmu_32.c} (67%)
 rename arch/arm/cpu/{mmu.h => mmu_32.h} (75%)
 rename arch/arm/cpu/{setupc.S => setupc_32.S} (100%)
 rename arch/arm/cpu/{smccc-call.S => smccc-call_32.S} (100%)

-- 
2.39.2



