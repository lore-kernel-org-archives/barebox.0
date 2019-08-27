Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d66-00087W-BU
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 15:09:28 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7C795200006
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 15:09:24 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 17:09:08 +0200
Message-Id: <20190827150918.16247-1-ahmad@a3f.at>
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
Subject: [PATCH v2 00/10] Add initial support for -fsanitize={ubsan,asan}
To: barebox@lists.infradead.org

This series adds undefined behavior and address sanitizer support to
barebox. Both are fully functional on sandbox, where they are also used
to implement dump_stack() now.

I haven't yet read about how Kernel AddressSanitizer works, so this one
only works on sandbox via libasan for now.

The undefined behavior sanitizer depends on the compiler instrumenting
potential pitfalls and then calling the routines in lib/ubsan.c if it
catches something undefined, so that should readily work on other arches
as well. I tested it on sandbox and the i.MX6Q so far.

Eventually, it should be possible to enable it for all the non-PBL stuff
with a single Kconfig option, but for now you need to explicitly add a

	UBSAN_SANITIZE_myfile.o := y

in the respective Makefile. Enabling it wholesale doesn't yet work on
ARM, I suspect it might be due to binary size.

Changes in v2:
	v1 was incomplete and sent our more by mistake,
	so no changelog.

Ahmad Fatoum (10):
  Kconfig: create Kconfig symbol for ARCH_HAS_STACK_DUMP
  Kconfig: create Kconfig symbol for ARCH_HAS_DATA_ABORT_MASK
  blackfin: delete unused <asm/barebox.h> definitions
  Kconfig: retire empty <asm/barebox.h>
  lib: add HAVE_EFFICIENT_UNALIGNED_ACCESS Kconfig option
  common: add generic CONFIG_UBSAN plumbing
  commands: add intentionally UB triggering ubsan command
  sandbox: use sanitizer unwind for dump_stack if available
  common: add generic CONFIG_KASAN option
  sandbox: support Address and UndefinedBehavior sanitizers

 Makefile                            |   4 +
 arch/arm/Kconfig                    |   2 +
 arch/arm/cpu/Kconfig                |   1 +
 arch/arm/include/asm/barebox.h      |  16 -
 arch/blackfin/include/asm/barebox.h |  43 ---
 arch/mips/Kconfig                   |   1 +
 arch/mips/include/asm/barebox.h     |   8 -
 arch/nios2/include/asm/barebox.h    |   4 -
 arch/openrisc/include/asm/barebox.h |   4 -
 arch/ppc/include/asm/barebox.h      |  27 --
 arch/ppc/include/asm/common.h       |   2 -
 arch/riscv/include/asm/barebox.h    |   1 -
 arch/sandbox/Kconfig                |   8 +
 arch/sandbox/Makefile               |  14 +-
 arch/sandbox/include/asm/barebox.h  |   1 -
 arch/sandbox/lib/Makefile           |   1 +
 arch/sandbox/lib/unwind.c           |  11 +
 arch/x86/include/asm/barebox.h      |  17 --
 commands/Kconfig                    |   7 +
 commands/Makefile                   |   3 +
 commands/ubsan.c                    | 152 ++++++++++
 common/Kconfig                      |  12 +
 include/abort.h                     |   4 +-
 include/common.h                    |   4 +-
 lib/Kconfig                         |   9 +
 lib/Kconfig.ubsan                   |  35 +++
 lib/Makefile                        |   2 +
 lib/ubsan.c                         | 442 ++++++++++++++++++++++++++++
 lib/ubsan.h                         |  89 ++++++
 scripts/Makefile.lib                |   8 +
 scripts/Makefile.ubsan              |  19 ++
 31 files changed, 820 insertions(+), 131 deletions(-)
 delete mode 100644 arch/arm/include/asm/barebox.h
 delete mode 100644 arch/blackfin/include/asm/barebox.h
 delete mode 100644 arch/mips/include/asm/barebox.h
 delete mode 100644 arch/nios2/include/asm/barebox.h
 delete mode 100644 arch/openrisc/include/asm/barebox.h
 delete mode 100644 arch/ppc/include/asm/barebox.h
 delete mode 100644 arch/riscv/include/asm/barebox.h
 delete mode 100644 arch/sandbox/include/asm/barebox.h
 create mode 100644 arch/sandbox/lib/Makefile
 create mode 100644 arch/sandbox/lib/unwind.c
 delete mode 100644 arch/x86/include/asm/barebox.h
 create mode 100644 commands/ubsan.c
 create mode 100644 lib/Kconfig.ubsan
 create mode 100644 lib/ubsan.c
 create mode 100644 lib/ubsan.h
 create mode 100644 scripts/Makefile.ubsan

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
