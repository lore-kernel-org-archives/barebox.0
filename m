Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP1-00088J-Ax
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:37:00 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1NwBOT-0004rj-HT
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 11:36:25 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1NwBOT-0004Sk-FV
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 11:36:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:11 +0200
Message-Id: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Patches for next merge window
To: barebox@lists.infradead.org

Hi all,

Here are some patches I created to boot my systems faster. With these
I managed to bring a phyCORE-i.MX35 to the shell in ~0.4s using a kernel with
integrated ramfs which only contains a busybox. Here is a bootlog:

[  0.000003] <  0.000003> barebox 2010.03.0-00110-g75108cd (Mar 29 2010 - 11:14:23)
[  0.000025] <  0.000022>
[  0.000047] <  0.000022> Board: Phytec phyCORE-i.MX35
[  0.007972] <  0.007925> NAND device: Manufacturer ID: 0xec, Chip ID: 0xd3 (Samsung NAND 1GiB 3,3V 8-bit)
[  0.011972] <  0.004000> Bad block table found at page 524224, version 0x01
[  0.019472] <  0.007500> Bad block table found at page 524160, version 0x01
[  0.019494] <  0.000022> nand_read_bbt: Bad block at 0x14300000
[  0.023473] <  0.003979> nand_read_bbt: Bad block at 0x1f6c0000
[  0.031472] <  0.007999> cfi_probe: cfi_flash base: 0xa0000000 size: 0x02000000
[  0.035477] <  0.004005> Malloc space: 0x87b00000 -> 0x87f00000 (size  4 MB)
[  0.039480] <  0.004003> Stack space : 0x87af8000 -> 0x87b00000 (size 32 kB)
[  0.043474] <  0.003994> running /env/bin/init...
[  0.043494] <  0.000020>
[  0.047493] <  0.003999> Hit any key to stop autoboot:  0
[  0.231477] <  0.183984> Linux version 2.6.34-rc2-g8b4c6e2-dirty (sha@octopus) (gcc version 4.3.2 (OSELAS.Toolchain-1.99.3) ) #32 PREEMPT Fri Mar 26 14:50:07 CET 2010
[  0.239474] <  0.007997> CPU: ARMv6-compatible processor [4117b363] revision 3 (ARMv6TEJ), cr=00c5387f
[  0.247475] <  0.008001> CPU: VIPT nonaliasing data cache, VIPT nonaliasing instruction cache
[  0.247497] <  0.000022> Machine: Phytec Phycore pcm043
[  0.251486] <  0.003989> bootconsole [earlycon0] enabled
[  0.407474] <  0.155988> /bin/sh: can't access tty; job control turned off

Also in this series are some patches for the fun of it: They add a -e
option to echo and allow for fancy shell prompts. Try
PS1="\e[1;32mbarebox@\e[1;31m\h\e[0m:\w " to get a coloured shell prompt.
As these features add size to the binary image without any real value they
are disabled by default.

Sascha

The following changes since commit a5bae62878a9072c5f8cc95164de0b398b168fee:
  Sascha Hauer (1):
        hush: Fix return code when calling 'exit' inside loops

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git pu

Sascha Hauer (12):
      ARM zImage: do memmap if possible
      nand_imx: use optimized memcpy
      nand_imx: Speed up sequential read
      imx_nand: use memcpy for copying from/to buffer
      add unaligned access support
      add unlzo support
      add snprintf function
      echo: add -e option support
      add process_escape_sequence function
      echo command: Add -e option
      hush: only remove backslashes introduced from glob
      hush: allow fancy prompts

 arch/arm/include/asm/unaligned.h  |   19 +++
 arch/arm/lib/armlinux.c           |   16 ++-
 commands/Kconfig                  |   14 ++
 commands/Makefile                 |    1 +
 commands/echo.c                   |   19 +++-
 commands/unlzo.c                  |   69 ++++++++++
 common/Kconfig                    |    9 ++
 common/hush.c                     |   17 ++-
 drivers/nand/nand_imx.c           |   83 ++++++++++---
 include/libbb.h                   |    2 +
 include/lzo.h                     |   46 +++++++
 include/stdio.h                   |    1 +
 include/unaligned/access_ok.h     |   67 ++++++++++
 include/unaligned/be_byteshift.h  |   70 +++++++++++
 include/unaligned/be_memmove.h    |   36 ++++++
 include/unaligned/be_struct.h     |   36 ++++++
 include/unaligned/generic.h       |   68 ++++++++++
 include/unaligned/le_byteshift.h  |   70 +++++++++++
 include/unaligned/le_memmove.h    |   36 ++++++
 include/unaligned/le_struct.h     |   36 ++++++
 include/unaligned/memmove.h       |   45 +++++++
 include/unaligned/packed_struct.h |   46 +++++++
 lib/Kconfig                       |    5 +
 lib/Makefile                      |    3 +
 lib/decompress_unlzo.c            |  199 +++++++++++++++++++++++++++++
 lib/lzo/Kconfig                   |    6 +
 lib/lzo/Makefile                  |    4 +
 lib/lzo/lzo1x_compress.c          |  226 +++++++++++++++++++++++++++++++++
 lib/lzo/lzo1x_decompress.c        |  247 +++++++++++++++++++++++++++++++++++++
 lib/lzo/lzodefs.h                 |   43 +++++++
 lib/lzo/modules.builtin           |    2 +
 lib/process_escape_sequence.c     |   78 ++++++++++++
 lib/vsprintf.c                    |   12 ++
 33 files changed, 1600 insertions(+), 31 deletions(-)
 create mode 100644 arch/arm/include/asm/unaligned.h
 create mode 100644 commands/unlzo.c
 create mode 100644 include/lzo.h
 create mode 100644 include/unaligned/access_ok.h
 create mode 100644 include/unaligned/be_byteshift.h
 create mode 100644 include/unaligned/be_memmove.h
 create mode 100644 include/unaligned/be_struct.h
 create mode 100644 include/unaligned/generic.h
 create mode 100644 include/unaligned/le_byteshift.h
 create mode 100644 include/unaligned/le_memmove.h
 create mode 100644 include/unaligned/le_struct.h
 create mode 100644 include/unaligned/memmove.h
 create mode 100644 include/unaligned/packed_struct.h
 create mode 100644 lib/decompress_unlzo.c
 create mode 100644 lib/lzo/Kconfig
 create mode 100644 lib/lzo/Makefile
 create mode 100644 lib/lzo/lzo1x_compress.c
 create mode 100644 lib/lzo/lzo1x_decompress.c
 create mode 100644 lib/lzo/lzodefs.h
 create mode 100644 lib/lzo/modules.builtin
 create mode 100644 lib/process_escape_sequence.c



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
