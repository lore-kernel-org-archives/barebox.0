Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC3p-0005Pc-7a
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:54:08 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1PGC3l-00049H-5c
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 15:54:01 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1PGC3l-0001yX-4b
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 15:54:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2010 15:53:46 +0100
Message-Id: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: add i.MX51 Nand support
To: barebox@lists.infradead.org

Hi all,

The following series is a respin of the series adding i.MX51 Nand support
to the kernel for barebox.

The series reveals to problems in barebox. First the i.MX51 Nand controller
needs two memory resources. Since I know that Jean-Christophe recently
worked on adding resources to barebox I decided for a hack in the driver
for now: I just hardcoded the second base address. Second the current
implementation of dma_alloc_coherent stinks. The implementation simply
maps the whole SDRAM a second time uncached. This way we can use the
normal malloc function to allocate dma coherent memory and just add
a known offset to the returned pointer. On i.MX51 boards with 512MB SDRAM
we do not have enough space in the memory map to map the SDRAM twice, in
my case the mapping shadowed the Nand register space. Be aware of this
when you try to add Nand support to your i.MX51 board and use the babbage
code as a template.

Sascha

The following changes since commit 6a84a019abf0663c27c2c41e69cf0aea1dce19e9:

  i.MX device macros: Fix typo (2010-11-10 10:46:03 +0100)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git imx51-nand

Sascha Hauer (13):
      NAND: reset chips before usage like the kernel does
      imx_nand: remove 0xe00 offset from registers
      imx_nand: rework get_dev_status
      imx nand: remove unnecessary register write
      imx_nand: make some internally used functions overwriteable
      imx nand: do not read-modify-write SPAS register
      imx nand: add V1_V2 namespace to registers
      mxc_nand: fix correct_data function
      imx nand: move initialization to preset function
      imx nand: introduce overwritable check_int function
      imx nand: Add v3 (i.MX51) support
      fb: set id for framebuffer device correctly
      ARM i.MX51: Add nand device

 arch/arm/mach-imx/include/mach/devices-imx51.h |    5 +
 arch/arm/mach-imx/include/mach/imx51-regs.h    |    2 +
 arch/arm/mach-imx/nand.c                       |    9 +
 drivers/mtd/nand/Kconfig                       |    4 +-
 drivers/mtd/nand/nand_base.c                   |    6 +
 drivers/mtd/nand/nand_imx.c                    |  718 ++++++++++++++++--------
 drivers/video/fb.c                             |    1 +
 7 files changed, 494 insertions(+), 251 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
