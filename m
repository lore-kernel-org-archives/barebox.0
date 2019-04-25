Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJfQb-0007PM-0x
 for barebox@lists.infradead.org; Thu, 25 Apr 2019 14:32:46 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Apr 2019 16:32:28 +0200
Message-Id: <20190425143232.25405-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 0/4] ARM: mmu: misc armv7 cache/MMU fixes
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, sam@ravnborg.org

This series fixes a number of potential caching issues with armv7.

They are:

- Cortex-A7 erratum #814220
  Because of this erratum, the CPU may reorder cache maintenance operations
  when it shouldn't.
- Wrong Cache invalidation order for Cortex-A7
  On the Cortex-A7, the L2 cache needs to be invalidated before the L1 cache.
- Device memory isn't marked NX (Never eXecute)
  NX prevents the CPU instruction prefetcher from inadvertently
  accessing memory mapped devices


We haven't observed these actually causing problems with barebox,
so testing the changes is a bit tricky. I ran these changes on:

- Cortex-A5 (SAMA5D3, -marm, first stage in SRAM, second in SDRAM)
- Cortex-A7 (i.MX6UL, -marm, architected L2 cache, barebox in SDRAM)
- Cortex-A7 (i.MX6UL, -mthumb (2), architected L2 cache, barebox in SDRAM)
- Cortex-A9 (i.MX6Q,  -mthumb (2), barebox in SDRAM)

and verified that:

- barebox can still start up
- barebox PBL can still invoke barebox proper
- barebox can still boot itself over the network
- barebox can still boot a kernel
- barebox can do all of the above with CONFIG_MMU_EARLY=y and =n


Changes since v1:
 - edited commit messages to quote Lucas mails for context
 - remove Kconfig option around erratum #814220 and made the barrier
   unconditional
 - dropped the i.MX6UL patch that selected the now removed Kconfig
   option

Ahmad Fatoum (4):
  ARM: cache-armv7: work around Cortex-A7 erratum 814220
  ARM: cache-armv7: start invalidation from outer levels
  ARM: mmu: remove doubly defined macro
  ARM: mmu: mark uncached regions as eXecute never on v7

 arch/arm/cpu/cache-armv7.S | 13 ++++++++++++-
 arch/arm/cpu/mmu-early.c   | 27 ++++++++++++++++++++++++---
 arch/arm/cpu/mmu.c         | 16 ++++++++++------
 arch/arm/cpu/mmu.h         |  8 +++++++-
 4 files changed, 53 insertions(+), 11 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
