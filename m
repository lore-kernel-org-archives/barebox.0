Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHU1-0003Ml-R8
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:58:59 +0000
Received: by wyf23 with SMTP id 23so1675998wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:58:56 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:14 +0100
Message-Id: <4d701d2f.9009d80a.2cd3.5e70@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 00/54] New arch (NIOS2)
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

This is the base files of the Nios2 port. Almost everything is comming from u-boot.
When those files are acked, I'll post drivers and utility commands. 

The port include a generic board. The board configuration file nios_sopc.h is
generated using sopc-create-header-file (Altera utility). Then, names in this
file are converted to generic names in config.h.

Franck JULLIEN (54):
  Add arch/nios2/Kconfig
  Add arch/nios2/Makefile
  Add arch/nios2/cpu-nios2/Makefile
  Add arch/nios2/cpu-nios2/cpu.c
  Add arch/nios2/cpu-nios2/exceptions.S
  Add arch/nios2/cpu-nios2/interrupts.c
  Add arch/nios2/cpu-nios2/start.S
  Add arch/nios2/cpu-nios2/traps.c
  Add arch/nios2/lib/Makefile
  Add arch/nios2/lib/board.c
  Add arch/nios2/lib/cache.S
  Add arch/nios2/lib/clock.c
  Add arch/nios2/lib/early_printf.c
  Add arch/nios2/lib/libgcc.c
  Add arch/nios2/lib/longlong.h
  Add arch/nios2/boards/generic/Makefile
  Add arch/nios2/boards/generic/barebox.lds.S
  Add arch/nios2/boards/generic/config.h
  Add arch/nios2/boards/generic/env/config
  Add arch/nios2/boards/generic/generic.c
  Add arch/nios2/boards/generic/nios_sopc.h
  Add arch/nios2/configs/generic_defconfig
  Add arch/nios2/include/asm/addrspace.h
  Add arch/nios2/include/asm/barebox.h
  Add arch/nios2/include/asm/bitops.h
  Add arch/nios2/include/asm/bitsperlong.h
  Add arch/nios2/include/asm/byteorder.h
  Add arch/nios2/include/asm/cache.h
  Add arch/nios2/include/asm/common.h
  Add arch/nios2/include/asm/dma-mapping.h
  Add arch/nios2/include/asm/early_printf.h
  Add arch/nios2/include/asm/elf.h
  Add arch/nios2/include/asm/entry.h
  Add arch/nios2/include/asm/getorder.h
  Add arch/nios2/include/asm/int-ll64.h
  Add arch/nios2/include/asm/io.h
  Add arch/nios2/include/asm/linkage.h
  Add arch/nios2/include/asm/memory_model.h
  Add arch/nios2/include/asm/nios2-io.h
  Add arch/nios2/include/asm/nios2.h
  Add arch/nios2/include/asm/opcodes.h
  Add arch/nios2/include/asm/page.h
  Add arch/nios2/include/asm/pfn.h
  Add arch/nios2/include/asm/pgtable-bits.h
  Add arch/nios2/include/asm/posix_types.h
  Add arch/nios2/include/asm/ptrace.h
  Add arch/nios2/include/asm/sections.h
  Add arch/nios2/include/asm/segment.h
  Add arch/nios2/include/asm/spaces.h
  Add arch/nios2/include/asm/string.h
  Add arch/nios2/include/asm/swab.h
  Add arch/nios2/include/asm/system.h
  Add arch/nios2/include/asm/types.h
  Add arch/nios2/include/asm/user.h

 arch/nios2/Kconfig                      |   39 ++
 arch/nios2/Makefile                     |   31 ++
 arch/nios2/boards/generic/Makefile      |    2 +
 arch/nios2/boards/generic/barebox.lds.S |  126 +++++++
 arch/nios2/boards/generic/config.h      |   64 ++++
 arch/nios2/boards/generic/env/config    |   20 +
 arch/nios2/boards/generic/generic.c     |   74 ++++
 arch/nios2/boards/generic/nios_sopc.h   |  406 +++++++++++++++++++++
 arch/nios2/configs/generic_defconfig    |  212 +++++++++++
 arch/nios2/cpu-nios2/Makefile           |    5 +
 arch/nios2/cpu-nios2/cpu.c              |   38 ++
 arch/nios2/cpu-nios2/exceptions.S       |  160 ++++++++
 arch/nios2/cpu-nios2/interrupts.c       |  140 +++++++
 arch/nios2/cpu-nios2/start.S            |  165 +++++++++
 arch/nios2/cpu-nios2/traps.c            |   48 +++
 arch/nios2/include/asm/addrspace.h      |   15 +
 arch/nios2/include/asm/barebox.h        |   47 +++
 arch/nios2/include/asm/bitops.h         |   45 +++
 arch/nios2/include/asm/bitsperlong.h    |   32 ++
 arch/nios2/include/asm/byteorder.h      |   36 ++
 arch/nios2/include/asm/cache.h          |   31 ++
 arch/nios2/include/asm/common.h         |    5 +
 arch/nios2/include/asm/dma-mapping.h    |   25 ++
 arch/nios2/include/asm/early_printf.h   |   23 ++
 arch/nios2/include/asm/elf.h            |  119 ++++++
 arch/nios2/include/asm/entry.h          |  177 +++++++++
 arch/nios2/include/asm/getorder.h       |   24 ++
 arch/nios2/include/asm/int-ll64.h       |   78 ++++
 arch/nios2/include/asm/io.h             |  130 +++++++
 arch/nios2/include/asm/linkage.h        |    7 +
 arch/nios2/include/asm/memory_model.h   |   77 ++++
 arch/nios2/include/asm/nios2-io.h       |  182 +++++++++
 arch/nios2/include/asm/nios2.h          |   63 ++++
 arch/nios2/include/asm/opcodes.h        |  131 +++++++
 arch/nios2/include/asm/page.h           |  129 +++++++
 arch/nios2/include/asm/pfn.h            |   13 +
 arch/nios2/include/asm/pgtable-bits.h   |   38 ++
 arch/nios2/include/asm/posix_types.h    |   77 ++++
 arch/nios2/include/asm/ptrace.h         |   33 ++
 arch/nios2/include/asm/sections.h       |    1 +
 arch/nios2/include/asm/segment.h        |    6 +
 arch/nios2/include/asm/spaces.h         |   32 ++
 arch/nios2/include/asm/string.h         |   47 +++
 arch/nios2/include/asm/swab.h           |    4 +
 arch/nios2/include/asm/system.h         |   64 ++++
 arch/nios2/include/asm/types.h          |   31 ++
 arch/nios2/include/asm/user.h           |  136 +++++++
 arch/nios2/lib/Makefile                 |    6 +
 arch/nios2/lib/board.c                  |   47 +++
 arch/nios2/lib/cache.S                  |   74 ++++
 arch/nios2/lib/clock.c                  |   57 +++
 arch/nios2/lib/early_printf.c           |   60 +++
 arch/nios2/lib/libgcc.c                 |  605 +++++++++++++++++++++++++++++++
 arch/nios2/lib/longlong.h               |  263 ++++++++++++++
 54 files changed, 4500 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/Kconfig
 create mode 100644 arch/nios2/Makefile
 create mode 100644 arch/nios2/boards/generic/Makefile
 create mode 100644 arch/nios2/boards/generic/barebox.lds.S
 create mode 100644 arch/nios2/boards/generic/config.h
 create mode 100644 arch/nios2/boards/generic/env/config
 create mode 100644 arch/nios2/boards/generic/generic.c
 create mode 100644 arch/nios2/boards/generic/nios_sopc.h
 create mode 100644 arch/nios2/configs/generic_defconfig
 create mode 100644 arch/nios2/cpu-nios2/Makefile
 create mode 100644 arch/nios2/cpu-nios2/cpu.c
 create mode 100644 arch/nios2/cpu-nios2/exceptions.S
 create mode 100644 arch/nios2/cpu-nios2/interrupts.c
 create mode 100644 arch/nios2/cpu-nios2/start.S
 create mode 100644 arch/nios2/cpu-nios2/traps.c
 create mode 100644 arch/nios2/include/asm/addrspace.h
 create mode 100644 arch/nios2/include/asm/barebox.h
 create mode 100644 arch/nios2/include/asm/bitops.h
 create mode 100644 arch/nios2/include/asm/bitsperlong.h
 create mode 100644 arch/nios2/include/asm/byteorder.h
 create mode 100644 arch/nios2/include/asm/cache.h
 create mode 100644 arch/nios2/include/asm/common.h
 create mode 100644 arch/nios2/include/asm/dma-mapping.h
 create mode 100644 arch/nios2/include/asm/early_printf.h
 create mode 100644 arch/nios2/include/asm/elf.h
 create mode 100644 arch/nios2/include/asm/entry.h
 create mode 100644 arch/nios2/include/asm/getorder.h
 create mode 100644 arch/nios2/include/asm/int-ll64.h
 create mode 100644 arch/nios2/include/asm/io.h
 create mode 100644 arch/nios2/include/asm/linkage.h
 create mode 100644 arch/nios2/include/asm/memory_model.h
 create mode 100644 arch/nios2/include/asm/nios2-io.h
 create mode 100644 arch/nios2/include/asm/nios2.h
 create mode 100644 arch/nios2/include/asm/opcodes.h
 create mode 100644 arch/nios2/include/asm/page.h
 create mode 100644 arch/nios2/include/asm/pfn.h
 create mode 100644 arch/nios2/include/asm/pgtable-bits.h
 create mode 100644 arch/nios2/include/asm/posix_types.h
 create mode 100644 arch/nios2/include/asm/ptrace.h
 create mode 100644 arch/nios2/include/asm/sections.h
 create mode 100644 arch/nios2/include/asm/segment.h
 create mode 100644 arch/nios2/include/asm/spaces.h
 create mode 100644 arch/nios2/include/asm/string.h
 create mode 100644 arch/nios2/include/asm/swab.h
 create mode 100644 arch/nios2/include/asm/system.h
 create mode 100644 arch/nios2/include/asm/types.h
 create mode 100644 arch/nios2/include/asm/user.h
 create mode 100644 arch/nios2/lib/Makefile
 create mode 100644 arch/nios2/lib/board.c
 create mode 100644 arch/nios2/lib/cache.S
 create mode 100644 arch/nios2/lib/clock.c
 create mode 100644 arch/nios2/lib/early_printf.c
 create mode 100644 arch/nios2/lib/libgcc.c
 create mode 100644 arch/nios2/lib/longlong.h

-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
