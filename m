Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q2VHH-0002Ji-Av
	for barebox@lists.infradead.org; Wed, 23 Mar 2011 21:07:40 +0000
Received: by fxm16 with SMTP id 16so8898070fxm.36
	for <barebox@lists.infradead.org>; Wed, 23 Mar 2011 14:07:37 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Wed, 23 Mar 2011 22:07:42 +0100
Message-Id: <1300914464-2316-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 0/2] Add Nios2 arch to barebox
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Those patches add Nios2 arch to barebox. Include files are mostly comming
from le Nios2 linux port and other files from u-boot.

I'll post driver for serial, Ethernet (Altera TSE) and  EPCS flash when
arch is acked.

Franck JULLIEN (2):
  Add Nios2 arch support to barebox
  Add a generic board template for the Nios2 arch

 arch/nios2/Kconfig                    |   39 +++
 arch/nios2/Makefile                   |   25 ++
 arch/nios2/boards/generic/Makefile    |    1 +
 arch/nios2/boards/generic/config.h    |   63 ++++
 arch/nios2/boards/generic/env/config  |   16 +
 arch/nios2/boards/generic/generic.c   |   74 +++++
 arch/nios2/boards/generic/nios_sopc.h |  406 +++++++++++++++++++++++++
 arch/nios2/configs/generic_defconfig  |   23 ++
 arch/nios2/cpu/Makefile               |    6 +
 arch/nios2/cpu/barebox.lds.S          |  124 ++++++++
 arch/nios2/cpu/cpu.c                  |   38 +++
 arch/nios2/cpu/exceptions.S           |  160 ++++++++++
 arch/nios2/cpu/interrupts.c           |  140 +++++++++
 arch/nios2/cpu/start.S                |  165 ++++++++++
 arch/nios2/cpu/traps.c                |   43 +++
 arch/nios2/include/asm/barebox.h      |    4 +
 arch/nios2/include/asm/bitops.h       |    4 +
 arch/nios2/include/asm/bitsperlong.h  |    1 +
 arch/nios2/include/asm/byteorder.h    |    1 +
 arch/nios2/include/asm/cache.h        |   21 ++
 arch/nios2/include/asm/common.h       |    4 +
 arch/nios2/include/asm/dma-mapping.h  |   25 ++
 arch/nios2/include/asm/early_printf.h |   10 +
 arch/nios2/include/asm/elf.h          |  165 ++++++++++
 arch/nios2/include/asm/int-ll64.h     |   78 +++++
 arch/nios2/include/asm/io.h           |   52 ++++
 arch/nios2/include/asm/nios2-io.h     |  182 ++++++++++++
 arch/nios2/include/asm/nios2.h        |   63 ++++
 arch/nios2/include/asm/opcodes.h      |  131 ++++++++
 arch/nios2/include/asm/posix_types.h  |   77 +++++
 arch/nios2/include/asm/ptrace.h       |   33 ++
 arch/nios2/include/asm/sections.h     |    1 +
 arch/nios2/include/asm/string.h       |   47 +++
 arch/nios2/include/asm/swab.h         |    4 +
 arch/nios2/include/asm/system.h       |   64 ++++
 arch/nios2/include/asm/types.h        |    7 +
 arch/nios2/lib/Makefile               |    6 +
 arch/nios2/lib/board.c                |   47 +++
 arch/nios2/lib/cache.c                |   77 +++++
 arch/nios2/lib/clock.c                |   62 ++++
 arch/nios2/lib/early_printf.c         |   56 ++++
 arch/nios2/lib/libgcc.c               |  527 +++++++++++++++++++++++++++++++++
 arch/nios2/lib/longlong.h             |  258 ++++++++++++++++
 43 files changed, 3330 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/Kconfig
 create mode 100644 arch/nios2/Makefile
 create mode 100644 arch/nios2/boards/generic/Makefile
 create mode 100644 arch/nios2/boards/generic/config.h
 create mode 100644 arch/nios2/boards/generic/env/config
 create mode 100644 arch/nios2/boards/generic/generic.c
 create mode 100644 arch/nios2/boards/generic/nios_sopc.h
 create mode 100644 arch/nios2/configs/generic_defconfig
 create mode 100644 arch/nios2/cpu/Makefile
 create mode 100644 arch/nios2/cpu/barebox.lds.S
 create mode 100644 arch/nios2/cpu/cpu.c
 create mode 100644 arch/nios2/cpu/exceptions.S
 create mode 100644 arch/nios2/cpu/interrupts.c
 create mode 100644 arch/nios2/cpu/start.S
 create mode 100644 arch/nios2/cpu/traps.c
 create mode 100644 arch/nios2/include/asm/barebox.h
 create mode 100644 arch/nios2/include/asm/bitops.h
 create mode 100644 arch/nios2/include/asm/bitsperlong.h
 create mode 100644 arch/nios2/include/asm/byteorder.h
 create mode 100644 arch/nios2/include/asm/cache.h
 create mode 100644 arch/nios2/include/asm/common.h
 create mode 100644 arch/nios2/include/asm/dma-mapping.h
 create mode 100644 arch/nios2/include/asm/early_printf.h
 create mode 100644 arch/nios2/include/asm/elf.h
 create mode 100644 arch/nios2/include/asm/int-ll64.h
 create mode 100644 arch/nios2/include/asm/io.h
 create mode 100644 arch/nios2/include/asm/nios2-io.h
 create mode 100644 arch/nios2/include/asm/nios2.h
 create mode 100644 arch/nios2/include/asm/opcodes.h
 create mode 100644 arch/nios2/include/asm/posix_types.h
 create mode 100644 arch/nios2/include/asm/ptrace.h
 create mode 100644 arch/nios2/include/asm/sections.h
 create mode 100644 arch/nios2/include/asm/string.h
 create mode 100644 arch/nios2/include/asm/swab.h
 create mode 100644 arch/nios2/include/asm/system.h
 create mode 100644 arch/nios2/include/asm/types.h
 create mode 100644 arch/nios2/lib/Makefile
 create mode 100644 arch/nios2/lib/board.c
 create mode 100644 arch/nios2/lib/cache.c
 create mode 100644 arch/nios2/lib/clock.c
 create mode 100644 arch/nios2/lib/early_printf.c
 create mode 100644 arch/nios2/lib/libgcc.c
 create mode 100644 arch/nios2/lib/longlong.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
