Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfrl-0004YE-QB
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 14:44:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Oct 2019 16:44:23 +0200
Message-Id: <20191002144430.14946-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/7] Cleanup linker scripts
To: Barebox List <barebox@lists.infradead.org>

We use many arrays created by the linker. Each time a new one is added
we have to add it to the linker script of all architectures. This series
adds a common RO_DATA_SECTION to collect the arrays which is then used
in all linker scripts.

I don't like fiddling with linker scripts. It's dangerous and asking for
regressions. Some testing feedback especially for the !ARM architectures
is greatly appreciated.

Sascha

Sascha Hauer (7):
  barebox.lds: Remove unnecessary braces
  ppc: remove unused variables from linker scripts
  lds: Move start/end address variables into defines
  lds: create and use BAREBOX_PCI_FIXUP macro
  X86: lds: remove unnecessary alignments
  lds: remove more unnecessary alignments
  lds: Add and use RO_DATA_SECTION macro

 arch/arm/lib32/barebox.lds.S           | 44 ++--------------
 arch/arm/lib64/barebox.lds.S           | 46 ++---------------
 arch/mips/lib/barebox.lds.S            | 45 ++---------------
 arch/nios2/cpu/barebox.lds.S           | 29 ++---------
 arch/openrisc/cpu/barebox.lds.S        | 29 +----------
 arch/ppc/boards/pcm030/barebox.lds.S   | 28 +----------
 arch/ppc/mach-mpc85xx/barebox.lds.S    | 24 +--------
 arch/riscv/lib/barebox.lds.S           | 30 +++--------
 arch/sandbox/board/barebox.lds.S       | 26 ++--------
 arch/x86/lib/barebox.lds.S             | 43 +---------------
 arch/x86/mach-efi/elf_ia32_efi.lds.S   | 26 +---------
 arch/x86/mach-efi/elf_x86_64_efi.lds.S | 26 +---------
 include/asm-generic/barebox.lds.h      | 70 +++++++++++++++++++++-----
 13 files changed, 89 insertions(+), 377 deletions(-)

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
