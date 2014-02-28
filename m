Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og102.obsmtp.com ([64.18.0.143])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJN2B-0002GU-KO
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 12:59:24 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 28 Feb 2014 12:58:51 +0000
Message-Id: <1393592335-9871-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH v2 0/4] ppc: memory layout and memtest
To: barebox@lists.infradead.org

Like version 1, this patchset updates the PPC memory layout and memtest with
the addition of the first item below:

 - Move configurable memory layout selection from PPC to MPC5xxx and disable
   CONFIGURABLE_MEMORY_LAYOUT on MPC85xx platforms.

 - Memory regions on PPC are redefined to prevent corruption of critical memory
   areas while running the memtest.

 - To support the memory test framework with cache disabled, a TLB remapping
   function is added for the memtest to enable/disable caching on a mapped
   memory region.

 - To prevent memtest failure, the memory test is updated to exclude memory
   region at the bank start.

Finally, the configuration files are updated for the DA923RC and P2020RDB.


Renaud Barbier (4):
  MPC85xx: fix memory layout to prevent corruption during memtest
  ppc: add support for memtest with cache disabled
  memtest: exclude page starting at address 0.
  ppc: P2020RDB and DA923RC configuration

 arch/ppc/Kconfig                         |    1 -
 arch/ppc/configs/da923rc_defconfig       |    2 +
 arch/ppc/configs/p2020rdb_defconfig      |    2 +
 arch/ppc/cpu-85xx/Makefile               |    1 +
 arch/ppc/cpu-85xx/mmu.c                  |   54 ++++++++++++++++++++++++++++++
 arch/ppc/cpu-85xx/start.S                |    3 --
 arch/ppc/cpu-85xx/tlb.c                  |   17 +++++++++-
 arch/ppc/include/asm/mmu.h               |    6 +++
 arch/ppc/lib/board.c                     |    6 +---
 arch/ppc/mach-mpc5xxx/Kconfig            |    1 +
 arch/ppc/mach-mpc85xx/Kconfig            |    3 ++
 arch/ppc/mach-mpc85xx/barebox.lds.S      |    8 +++--
 arch/ppc/mach-mpc85xx/cpu.c              |   11 ++++++
 arch/ppc/mach-mpc85xx/include/mach/mmu.h |    5 +++
 commands/memtest.c                       |   10 +++---
 15 files changed, 112 insertions(+), 18 deletions(-)
 create mode 100644 arch/ppc/cpu-85xx/mmu.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
