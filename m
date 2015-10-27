Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqzeD-0000BF-Cz
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 08:30:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 09:29:53 +0100
Message-Id: <1445934602-25903-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: memtest updates
To: Barebox List <barebox@lists.infradead.org>

This series has some updates for the memory test. The output and the
code are made more compact and some additional options are added. Also
the remap_range function is reworked.

Sascha

----------------------------------------------------------------
Sascha Hauer (9):
      memtest: move request/release regions to common/
      rework remap_range
      memtest: split tests in separate functions
      memtest: Make output more compact
      memtest: Make comments single line when appropriate
      memtest: move ctrlc check / progress showing into separate function
      memtest: move error handling to end of function
      memtest: By default only test biggest region
      memtest: Make cached/uncached test configurable

 arch/arm/cpu/mmu.c              |  30 +++--
 arch/arm/include/asm/mmu.h      |  23 +---
 arch/blackfin/include/asm/mmu.h |  14 +--
 arch/mips/include/asm/mmu.h     |  14 +--
 arch/nios2/include/asm/mmu.h    |  14 +--
 arch/openrisc/include/asm/mmu.h |  14 +--
 arch/ppc/cpu-85xx/mmu.c         |  20 ++-
 arch/ppc/include/asm/mmu.h      |  23 +---
 arch/sandbox/include/asm/mmu.h  |  14 +--
 arch/x86/include/asm/mmu.h      |  14 +--
 commands/memtest.c              | 205 ++++++++++++------------------
 common/memtest.c                | 269 ++++++++++++++++++++++++++--------------
 include/memtest.h               |   8 +-
 include/mmu.h                   |  41 ++++++
 14 files changed, 348 insertions(+), 355 deletions(-)
 create mode 100644 include/mmu.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
