Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvQIn-0000qN-Rt
 for barebox@lists.infradead.org; Tue, 14 Jul 2020 19:09:18 +0000
Date: Tue, 14 Jul 2020 21:09:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200714190916.GZ15485@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2020.07.0
To: Barebox List <barebox@lists.infradead.org>


Hi All,

I just released v2020.07.0. Nothing really outstanding has happened
between the last release and this one, so this is a rather small release
with fixes and little improvements.

As you might have noticed I am currently rather slow at answering mails,
I am on holidays until August 7th and I am only occasionally handling
barebox patches. Your mails are not lost, I just need some more time to
anser them ;)

Have fun
 Sascha


----------------------------------------------------------------
Ahmad Fatoum (36):
      treewide: replace commas with semicolons where appropriate
      scripts: .gitignore: ignore mvebuimg binary
      mci: define fall-back hw_dev->detect for all MCIs
      mci: remove now-duplicate dev->detect implementations in host drivers
      mci: reword MCI_STARTUP text
      scripts: import Linux Kconfig.include
      sandbox: define CONFIG_64BIT as appropriate
      sandbox: asm: bitsperlong.h: detect bitness according to 64BIT symbol
      sandbox: support forcing 32-bit x86
      include: asm-generic: provide (in|out)_(le|be)(16|32) helpers for all=
 archs
      ARM: asm/io.h: fall back to <asm-generic/bitio.h> out_be32 and friends
      sandbox: <asm/io.h>: include bitio accessors
      clocksource: arm_global_timer.c: remove unused asm/ header
      mtd: nand: orion: depend on ARM
      ddr: fsl: depend on ARM
      net: fec_imx: depend on HAS_DMA
      net: macb: depend on HAS_DMA
      sandbox: implement stub physical virtual translation
      sandbox: asm: implement stub DMA functions
      sandbox: select HAS_DMA
      ARM: atomic.h: move generic implementation to asm-generic
      include: <asm-generic/atomic.h>: remove stub IRQ save/restore
      sandbox: asm: implement <asm/atomic.h>
      usb: xhci-hcd: remove unused #include <asm/cache.h>
      usb: xhci-hcd: replace opencoded non-atomic 64-bit MMIO with lo_hi he=
lper
      include: bitops: fix dead increment in fls() and ffs()
      commands: tftp: drop unused variable
      commands: test: drop dead assignment
      sandbox: os: add_image: fix memory leak
      mtd: nand: base: fix use of uninitialized struct member
      ARM: rpi: dts: fix MMIO resources clash breaking boot
      ARM: i.MX50: fix renamed node reference
      ARM: dts: fix now duplicate memory nodes
      ARM: dts: align all applicable memory nodes with spec and convention
      ARM: vexpress: dts: fix barebox partitioning breakage
      sandbox: fix generation of broken binaries

Antony Pavlov (2):
      logo: Makefile: make it possible to use inkscape 1.0
      MIPS: correctly work with disabled CONFIG_MMU

Clement Leger (2):
      clocksource: kvx: remove unused variable np
      kbuild: fix typo in --no-whole-archive flag

Daniel Gl=F6ckner (1):
      fastboot: don't close fd 0 when downloading to ram

David Dgien (2):
      serial: Add flush function to NS16550 driver
      password: Fix warning with empty default password

Edmund Henniges (1):
      fastboot: split generic code from USB gadget

Masahiro Yamada (15):
      .gitignore: drop stale ignore pattern include/asm
      kvx: do not include empty <config.h>
      arch: include <asm-generic/int-ll64.h> from <asm/types.h>
      kbuild: add -std=3Dgnu89 to KBUILD_CFLAGS
      kconfig: add 'option modules' to allow tristate options to become m
      kbuild: build modules by 'make'
      kbuild: rename pbl object pbl-*.o to *.pbl.o
      kbuild: remove obj-dtb-y, pbl-dtb-y, lwl-dtb-y syntax
      kbuild: resync mkdir code with Linux 5.7-rc6
      kbuild: append $(bbenv-y) to obj-y earlier
      kbuild: resync modkern_{c, a}flags and quiet_modtag with Linux 5.7-rc6
      kbuild: unify barebox and pbl build commands
      kbuild: switch over to thin archive
      Revert "ARM: socfpga: generate smaller images when multiple boards ar=
e selected"
      powerpc: move ddr-8xxx/ to the relevant Makefile

Michael Grzeschik (2):
      serial: amba-pl011: set linux_console_name
      serial: stm: set linux_console_name

Robert Karszniewicz (3):
      ARM: dts: imx6: phycard: remove baseboard compatible
      blspec: Allow the "options" key to be given multiple times
      ARM: configs: Update configs to use new Kconfig FASTBOOT_* names

Rouven Czerwinski (1):
      ARM: i.MX: enable Master Identifier Unlock

Sascha Hauer (22):
      ratp: Free buffers
      ratp: Test if console exists before using it
      ratp: Remove unnecessary poller_call()
      poller: Give pollers a name
      poller: Add a poller command
      fastboot: Use unique tempfile name
      nfs: Fix out of bounds read
      dts: update to v5.7-rc5
      dts: update to v5.7-rc6
      dts: update to v5.7-rc7
      dts: update to v5.7
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fastboot'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/kbuild'
      Merge branch 'for-next/kvx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mmc'
      Merge branch 'for-next/ratp'
      Merge branch 'for-next/sandbox-compile-test'
      Merge branch 'for-next/spdx'
      Release v2020.07.0

Uwe Kleine-K=F6nig (4):
      pwm: Replace license and copyright boilerplate by SPDX identfiers
      aiodev: Replace license and copyright boilerplate by SPDX identfiers
      arch/arm/boards: Replace license and copyright boilerplate by SPDX id=
entfiers
      password: don't export read_default_passwd()

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
