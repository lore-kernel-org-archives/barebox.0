Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og115.obsmtp.com ([64.18.0.246])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3OxC-0004cH-6Q
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 11:48:14 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 15 Jan 2014 11:47:39 +0000
Message-Id: <1389786464-22085-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/5] ppc: Import latest U-Boot code
To: barebox@lists.infradead.org

Upgrade the mpc85xx startup code to the latest U-Boot version and
add MMUv2 page size definitions for future CPUs support.

Re-factor the startup code relocation code so like U-Boot it
uses the build-time bss section address from a unique linker
script.

Tested on ppc DA923RC and P2020RDB.

Renaud Barbier (5):
  ppc: cpu-85xx: upgrade MMU support to v2 pages sizes
  ppc: mpc85xx: use common linker script
  ppc: mpc85xx: change bss relocation
  ppc: cpu-85xx: import U-Boot start-up code
  cpu-85xx: start.S: clean up imported code

 arch/ppc/Makefile                                  |   4 +
 arch/ppc/boards/freescale-p2020rdb/Makefile        |   1 -
 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S   | 141 -------
 arch/ppc/boards/geip-da923rc/Makefile              |   1 -
 arch/ppc/cpu-85xx/start.S                          | 431 ++++++++++++++-------
 arch/ppc/cpu-85xx/tlb.c                            |  30 +-
 arch/ppc/include/asm/config.h                      |   2 +-
 arch/ppc/include/asm/mmu.h                         |  40 +-
 arch/ppc/include/asm/processor.h                   |   7 +
 arch/ppc/mach-mpc85xx/Kconfig                      |   5 +
 arch/ppc/mach-mpc85xx/Makefile                     |   1 +
 .../geip-da923rc => mach-mpc85xx}/barebox.lds.S    |  11 +-
 arch/ppc/mach-mpc85xx/cpu_init.c                   |   2 +-
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |   4 +
 14 files changed, 359 insertions(+), 321 deletions(-)
 delete mode 100644 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
 rename arch/ppc/{boards/geip-da923rc => mach-mpc85xx}/barebox.lds.S (94%)

--
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
