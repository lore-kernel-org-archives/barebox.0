Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f44.google.com ([74.125.83.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tv6se-0003tm-KI
 for barebox@lists.infradead.org; Tue, 15 Jan 2013 13:48:45 +0000
Received: by mail-ee0-f44.google.com with SMTP id l10so61009eei.17
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2013 05:48:42 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 15 Jan 2013 14:48:42 +0100
Message-Id: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 0/8] add new memtest command
To: barebox@lists.infradead.org

The new memtest command supports to enable or disable
caching during testing(only arm architecture) and
skipping barebox regions for avoid a barebox killing,
if you want to write on barebox allocated regions.

If you run memtest without a argument, memtest will
run on all registered memory banks.

The new memtest command has these arguments:
	-s #ADDRESS [for start address]
	-e #ADDRESS [for end address]
	-i #ITER [for numbers of iterations]
	-c [don't disable caching]
	-b [do bus testing only]

v2:
	- remove adding whitespaces in linkerscript file
		and change position in of '_sdata'
		in ppc lds files.
	- remove -1 calculation in linkerscript files
		which is wrong.
	- split remap_range patch into three other patches:
		- mmu: add getters for pte cache flags
		- arm-mmu: move PAGE_ALIGN macro to common.h
		- common: add PAGE_ALIGN_DOWN macro
	- change stdout of memtest to make it more beautiful

Alexander Aring (8):
  remap_range: make function 'remap_range' global
  mmu: add getters for pte cache flags
  arm-mmu: move PAGE_ALIGN macro to common.h
  common: add PAGE_ALIGN_DOWN macro
  memory: add function address_in_sdram_regions
  barebox-data: add barebox-data sections
  memtest: remove memtest command
  memtest: add rewritten memtest command

 arch/arm/cpu/mmu.c                               |  18 +-
 arch/arm/include/asm/mmu.h                       |  17 +
 arch/arm/lib/barebox.lds.S                       |   2 +
 arch/blackfin/boards/ipe337/barebox.lds.S        |   2 +
 arch/blackfin/include/asm/mmu.h                  |  19 +
 arch/mips/include/asm/mmu.h                      |  19 +
 arch/mips/lib/barebox.lds.S                      |   2 +
 arch/nios2/cpu/barebox.lds.S                     |   1 +
 arch/nios2/include/asm/mmu.h                     |  19 +
 arch/openrisc/include/asm/mmu.h                  |  19 +
 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S |   1 +
 arch/ppc/boards/pcm030/barebox.lds.S             |   1 +
 arch/ppc/include/asm/mmu.h                       |  15 +
 arch/sandbox/include/asm/mmu.h                   |  19 +
 arch/x86/include/asm/mmu.h                       |  19 +
 arch/x86/lib/barebox.lds.S                       |   2 +
 commands/Kconfig                                 |  16 +-
 commands/Makefile                                |   2 +-
 commands/memtest.c                               | 897 ++++++++++++++++-------
 common/memory.c                                  |  20 +
 include/asm-generic/sections.h                   |   1 +
 include/common.h                                 |   2 +
 include/memory.h                                 |   6 +
 23 files changed, 832 insertions(+), 287 deletions(-)
 create mode 100644 arch/blackfin/include/asm/mmu.h
 create mode 100644 arch/mips/include/asm/mmu.h
 create mode 100644 arch/nios2/include/asm/mmu.h
 create mode 100644 arch/openrisc/include/asm/mmu.h
 create mode 100644 arch/sandbox/include/asm/mmu.h
 create mode 100644 arch/x86/include/asm/mmu.h

-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
