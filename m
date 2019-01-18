Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkIBB-0004Ja-UX
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 00:38:39 +0000
Received: by mail-pf1-x443.google.com with SMTP id b7so5655847pfi.8
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 16:38:37 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 16:38:15 -0800
Message-Id: <20190118003827.17517-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 00/12] ARM/ARM64 MMU code consolidation,
 zeroing of DMA coherent memory
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is a result of my attempt at changing the behaviour of
dma_alloc_coherent() to guarantee that memory it returns is zeroed
out. Mostly to avoid having to do that explicitly in driver code, but
also to match behaviour that that function has in Linux. While working
on that I noticed that there was a fair bit of MMU/DMA related code
between ARM/ARM64 that can be shared, so I created a number of patches
to do just that.

Feedback is welcome!

Thanks,
Andrey Smirnov

Changes since [v1]

  - Collected Reviewed-by from Sam Ravnborg

  - Fixed various spelling errors

[v1] http://lists.infradead.org/pipermail/barebox/2019-January/036605.html

Andrey Smirnov (12):
  ARM: mmu: Drop custom virt_to_phys/phys_to_virt
  ARM: mmu: Simplify the use of dma_inv_range()
  ARM: mmu: Share code for dma_(un)map_single()
  ARM64: mmu: Use arch_remap_range() internally
  ARM64: mmu: Merge create_sections() and map_region() together
  ARM: mmu: Share code for dma_free_coherent()
  ARM64: mmu: Invalidate memory before remapping as DMA coherent
  ARM: mmu: Share code for dma_alloc_coherent()
  ARM: mmu: Share code for dma_sync_single_for_cpu()
  ARM: mmu: Share sanity checking code in mmu_init()
  ARM: mmu: Share code for arm_mmu_not_initialized_error()
  ARM: mmu: Make sure DMA coherent memory is zeroed out

 arch/arm/cpu/Makefile     |  2 +-
 arch/arm/cpu/mmu-common.c | 82 +++++++++++++++++++++++++++++++++
 arch/arm/cpu/mmu-common.h | 20 ++++++++
 arch/arm/cpu/mmu.c        | 96 +++------------------------------------
 arch/arm/cpu/mmu.h        |  2 +
 arch/arm/cpu/mmu_64.c     | 96 ++++++---------------------------------
 arch/arm/cpu/mmu_64.h     |  2 +
 arch/arm/include/asm/io.h |  5 --
 8 files changed, 128 insertions(+), 177 deletions(-)
 create mode 100644 arch/arm/cpu/mmu-common.c
 create mode 100644 arch/arm/cpu/mmu-common.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
