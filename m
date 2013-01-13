Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f50.google.com ([74.125.83.50])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TuRZG-0002N7-TG
 for barebox@lists.infradead.org; Sun, 13 Jan 2013 17:41:59 +0000
Received: by mail-ee0-f50.google.com with SMTP id e51so930761eek.9
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2013 09:41:55 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 13 Jan 2013 18:42:14 +0100
Message-Id: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 0/9] reimplement memtest command
To: barebox@lists.infradead.org
Cc: marc@cpdesign.com

This patch series reimplement the memtest command.

Now it's support enable/disable caching on arm architecture
and skip barebox regions.

In part of this patch series are the following changes:
	- Fix missing include in meminfo.
	- Fix some memory adresses issues.
	- Make remap_range globally accessable.
	- Add function to get cache/uncache pte flags.
	- Add new section data which is between text and bss.
	- Add function to check if address is in iomem regions
	  of ram.

Alexander Aring (9):
  meminfo: fix missing include
  memory: fix size address calculation
  meminfo: fix display of allocated addresses
  arm-mmu: remove semicolon in arm mmu.c
  mmu: make remap_range global accessable
  memory: add function address_in_sdram_regions
  barebox-data: add barebox-data sections
  memtest: remove memtest command
  memtest: add rewritten memtest command

 arch/arm/cpu/mmu.c                               |  18 +-
 arch/arm/include/asm/mmu.h                       |  17 +
 arch/arm/lib/barebox.lds.S                       |   6 +-
 arch/blackfin/boards/ipe337/barebox.lds.S        |   6 +-
 arch/blackfin/include/asm/mmu.h                  |  19 +
 arch/mips/include/asm/mmu.h                      |  19 +
 arch/mips/lib/barebox.lds.S                      |   5 +-
 arch/nios2/cpu/barebox.lds.S                     |   5 +-
 arch/nios2/include/asm/mmu.h                     |  19 +
 arch/openrisc/include/asm/mmu.h                  |  19 +
 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S |   6 +-
 arch/ppc/boards/pcm030/barebox.lds.S             |   5 +-
 arch/ppc/include/asm/mmu.h                       |  15 +
 arch/sandbox/include/asm/mmu.h                   |  19 +
 arch/x86/include/asm/mmu.h                       |  19 +
 arch/x86/lib/barebox.lds.S                       |   5 +-
 commands/Kconfig                                 |  16 +-
 commands/Makefile                                |   2 +-
 commands/memtest.c                               | 895 ++++++++++++++++-------
 common/meminfo.c                                 |   7 +-
 common/memory.c                                  |  21 +-
 include/asm-generic/sections.h                   |   1 +
 include/common.h                                 |   2 +
 include/memory.h                                 |   6 +
 24 files changed, 850 insertions(+), 302 deletions(-)
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
