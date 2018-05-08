Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x232.google.com ([2607:f8b0:400e:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGABY-0005Mu-45
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:30:14 +0000
Received: by mail-pg0-x232.google.com with SMTP id l2-v6so21700860pgc.7
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:29:59 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:29:23 -0700
Message-Id: <20180508212951.6446-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/28] ARM MMU code improvements and on-demand PTE allocation
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

With exeception of patch 27/28, all patches in this series are just
small improvements(IMHO) that I made while working with ARM MMU code.

Patch 27/28, OTOH, brings a bit of a change to how MMU code allocates
PTEs, postponing that until the users of DMA API actually request
that.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (28):
  ARM: mmu: Remove unused ARM_VECTORS_SIZE
  ARM: mmu: Make use of IS_ALIGNED in arm_mmu_remap_sdram()
  ARM: mmu: Use ALIGN and ALIGN_DOWN in map_cachable()
  ARM: mmu: Introduce set_ttbr()
  ARM: mmu: Introduce set_domain()
  ARM: mmu: Share code for create_sections()
  ARM: mmu: Separate index and address in create_sections()
  sizes.h: Sync with Linux 4.16
  ARM: mmu: Specify size in bytes in create_sections()
  ARM: mmu: Share code for initial flat mapping creation
  ARM: mmu: Share PMD_SECT_DEF_CACHED
  ARM: mmu: Drop needless shifting in map_io_sections()
  ARM: mmu: Replace hardcoded shifts with pgd_index() from Linux
  ARM: mmu: Trivial simplification in arm_mmu_remap_sdram()
  ARM: mmu: Replace various SZ_1M with PGDIR_SIZE
  ARM: mmu: Use PAGE_SIZE when specifying size of one page
  ARM: mmu: Define and use PTRS_PER_PTE
  ARM: mmu: Use PAGE_SIZE instead of magic right shift by 12
  ARM: mmu: Use xmemalign in arm_create_pte()
  ARM: mmu: Use xmemalign in mmu_init()
  ARM: mmu: Share code between dma_alloc_*() functions
  ARM: mmu: Pass PTE flags a parameter to arm_create_pte()
  ARM: mmu: Make sure that address is 1M aligned in arm_create_pte()
  ARM: mmu: Use find_pte() to find PTE in create_vector_table()
  ARM: mmu: Use dma_inv_range() in dma_sync_single_for_cpu()
  ARM: mmu: Simplify the use of dma_flush_range()
  ARM: mmu: Implement on-demand PTE allocation
  ARM: mmu: Introduce ARM_TTB_SIZE

 arch/arm/boards/phytec-som-imx6/lowlevel.c |   1 +
 arch/arm/cpu/mmu-early.c                   |  31 +-
 arch/arm/cpu/mmu.c                         | 321 ++++++++++-----------
 arch/arm/cpu/mmu.h                         |  42 +++
 arch/arm/include/asm/barebox-arm.h         |   8 +-
 include/linux/sizes.h                      |   4 +
 6 files changed, 210 insertions(+), 197 deletions(-)

-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
