Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PxS9B-0000EQ-7o
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 22:46:26 +0000
Received: by bwz1 with SMTP id 1so1242606bwz.36
	for <barebox@lists.infradead.org>; Wed, 09 Mar 2011 14:46:22 -0800 (PST)
From: Franck JULLIEN <franck.jullien@gmail.com>
Date: Wed,  9 Mar 2011 23:46:25 +0100
Message-Id: <1299710787-11990-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 0/2] New arch support : Altera NIOSII
To: barebox@lists.infradead.org

This is the preliminary serie of patches for the Nios2 port.

Franck JULLIEN (2):
  Add Altera Nios2 arch support
  Add Nios2 generic board support

 nios2/Kconfig                      |   39 +++
 nios2/Makefile                     |   31 ++
 nios2/boards/generic/Makefile      |    2 +
 nios2/boards/generic/barebox.lds.S |  126 ++++++++
 nios2/boards/generic/config.h      |   64 ++++
 nios2/boards/generic/env/config    |   20 ++
 nios2/boards/generic/generic.c     |   74 +++++
 nios2/boards/generic/nios_sopc.h   |  406 ++++++++++++++++++++++++
 nios2/configs/generic_defconfig    |  212 +++++++++++++
 nios2/cpu-nios2/Makefile           |    5 +
 nios2/cpu-nios2/cpu.c              |   38 +++
 nios2/cpu-nios2/exceptions.S       |  160 ++++++++++
 nios2/cpu-nios2/interrupts.c       |  140 +++++++++
 nios2/cpu-nios2/start.S            |  165 ++++++++++
 nios2/cpu-nios2/traps.c            |   48 +++
 nios2/include/asm/addrspace.h      |   15 +
 nios2/include/asm/barebox.h        |   47 +++
 nios2/include/asm/bitops.h         |   45 +++
 nios2/include/asm/bitsperlong.h    |   32 ++
 nios2/include/asm/byteorder.h      |   36 +++
 nios2/include/asm/cache.h          |   31 ++
 nios2/include/asm/common.h         |    5 +
 nios2/include/asm/dma-mapping.h    |   25 ++
 nios2/include/asm/early_printf.h   |   10 +
 nios2/include/asm/elf.h            |  119 +++++++
 nios2/include/asm/entry.h          |  177 +++++++++++
 nios2/include/asm/getorder.h       |   24 ++
 nios2/include/asm/int-ll64.h       |   78 +++++
 nios2/include/asm/io.h             |  130 ++++++++
 nios2/include/asm/linkage.h        |    7 +
 nios2/include/asm/memory_model.h   |   77 +++++
 nios2/include/asm/nios2-io.h       |  182 +++++++++++
 nios2/include/asm/nios2.h          |   63 ++++
 nios2/include/asm/opcodes.h        |  131 ++++++++
 nios2/include/asm/page.h           |  129 ++++++++
 nios2/include/asm/pfn.h            |   13 +
 nios2/include/asm/pgtable-bits.h   |   38 +++
 nios2/include/asm/posix_types.h    |   77 +++++
 nios2/include/asm/ptrace.h         |   33 ++
 nios2/include/asm/sections.h       |    1 +
 nios2/include/asm/segment.h        |    6 +
 nios2/include/asm/spaces.h         |   32 ++
 nios2/include/asm/string.h         |   47 +++
 nios2/include/asm/swab.h           |    4 +
 nios2/include/asm/system.h         |   64 ++++
 nios2/include/asm/types.h          |   31 ++
 nios2/include/asm/user.h           |  136 ++++++++
 nios2/lib/Makefile                 |    6 +
 nios2/lib/board.c                  |   47 +++
 nios2/lib/cache.S                  |   74 +++++
 nios2/lib/clock.c                  |   61 ++++
 nios2/lib/early_printf.c           |   58 ++++
 nios2/lib/libgcc.c                 |  605 ++++++++++++++++++++++++++++++++++++
 nios2/lib/longlong.h               |  263 ++++++++++++++++
 54 files changed, 4489 insertions(+), 0 deletions(-)
 create mode 100644 nios2/Kconfig
 create mode 100644 nios2/Makefile
 create mode 100644 nios2/boards/generic/Makefile
 create mode 100644 nios2/boards/generic/barebox.lds.S
 create mode 100644 nios2/boards/generic/config.h
 create mode 100644 nios2/boards/generic/env/config
 create mode 100644 nios2/boards/generic/generic.c
 create mode 100644 nios2/boards/generic/nios_sopc.h
 create mode 100644 nios2/configs/generic_defconfig
 create mode 100644 nios2/cpu-nios2/Makefile
 create mode 100644 nios2/cpu-nios2/cpu.c
 create mode 100644 nios2/cpu-nios2/exceptions.S
 create mode 100644 nios2/cpu-nios2/interrupts.c
 create mode 100644 nios2/cpu-nios2/start.S
 create mode 100644 nios2/cpu-nios2/traps.c
 create mode 100644 nios2/include/asm/addrspace.h
 create mode 100644 nios2/include/asm/barebox.h
 create mode 100644 nios2/include/asm/bitops.h
 create mode 100644 nios2/include/asm/bitsperlong.h
 create mode 100644 nios2/include/asm/byteorder.h
 create mode 100644 nios2/include/asm/cache.h
 create mode 100644 nios2/include/asm/common.h
 create mode 100644 nios2/include/asm/dma-mapping.h
 create mode 100644 nios2/include/asm/early_printf.h
 create mode 100644 nios2/include/asm/elf.h
 create mode 100644 nios2/include/asm/entry.h
 create mode 100644 nios2/include/asm/getorder.h
 create mode 100644 nios2/include/asm/int-ll64.h
 create mode 100644 nios2/include/asm/io.h
 create mode 100644 nios2/include/asm/linkage.h
 create mode 100644 nios2/include/asm/memory_model.h
 create mode 100644 nios2/include/asm/nios2-io.h
 create mode 100644 nios2/include/asm/nios2.h
 create mode 100644 nios2/include/asm/opcodes.h
 create mode 100644 nios2/include/asm/page.h
 create mode 100644 nios2/include/asm/pfn.h
 create mode 100644 nios2/include/asm/pgtable-bits.h
 create mode 100644 nios2/include/asm/posix_types.h
 create mode 100644 nios2/include/asm/ptrace.h
 create mode 100644 nios2/include/asm/sections.h
 create mode 100644 nios2/include/asm/segment.h
 create mode 100644 nios2/include/asm/spaces.h
 create mode 100644 nios2/include/asm/string.h
 create mode 100644 nios2/include/asm/swab.h
 create mode 100644 nios2/include/asm/system.h
 create mode 100644 nios2/include/asm/types.h
 create mode 100644 nios2/include/asm/user.h
 create mode 100644 nios2/lib/Makefile
 create mode 100644 nios2/lib/board.c
 create mode 100644 nios2/lib/cache.S
 create mode 100644 nios2/lib/clock.c
 create mode 100644 nios2/lib/early_printf.c
 create mode 100644 nios2/lib/libgcc.c
 create mode 100644 nios2/lib/longlong.h

-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
