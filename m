Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKltV-0001Tr-BF
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 10:48:47 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  9 Feb 2015 11:47:41 +0100
Message-Id: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 00/10] Socfpga: Sequencer updates
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

this series updates the sequencer files for Socfpga.
The sequencer.c/h are now just grabbed from the Altera generated code and
transformed via the scripts/socfpga_get_sequencer script into a format that
barebox can understand and compile.
This way we can easier integrate updates to this file in the future.

Changes since v2:
	- rebase to v2015.02.0
	- fix bisectability of patches
	- extend importer script with some coccinelle spatches
	- add firmware interface to defconfig

Regards,
Steffen

Markus Pargmann (3):
  ARM: sockit: Define inst_rom_init static
  scripts: socfpga sequencer extraction tool
  ARM: boards: socfpga new mem calibration function

Steffen Trumtrar (7):
  ARM: socfpga: avoid using external regulator for PLL
  ARM: socfpga: clkmgr: set alteragrp clocks
  ARM: socfpga: clkmgr: bypass debug root clock
  ARM: socfpga: clock-manager: set mainnandsdmmcclk
  ARM: socfpga: Import sequencer code from generated uboot
  ARM: socfpga: cleanup sequencer warnings
  ARM: socfpga: update defconfig

 Documentation/boards/socfpga.rst                   |   26 +-
 arch/arm/boards/ebv-socrates/lowlevel.c            |    5 +-
 arch/arm/boards/terasic-sockit/lowlevel.c          |    5 +-
 .../terasic-sockit/sequencer_auto_inst_init.c      |    4 +-
 arch/arm/configs/socfpga_defconfig                 |   69 +-
 arch/arm/mach-socfpga/clock-manager.c              |   27 +-
 arch/arm/mach-socfpga/include/mach/clock-manager.h |   12 +
 arch/arm/mach-socfpga/include/mach/pll_config.h    |    3 +
 arch/arm/mach-socfpga/include/mach/sdram_io.h      |   58 +
 arch/arm/mach-socfpga/include/mach/sequencer.c     | 5772 +++++++++++---------
 arch/arm/mach-socfpga/include/mach/sequencer.h     |  388 +-
 .../mach-socfpga/include/mach/sequencer_defines.h  |    6 +
 arch/arm/mach-socfpga/include/mach/system.h        |   37 +
 arch/arm/mach-socfpga/include/mach/tclrpt.h        |   38 +
 scripts/coccinelle/misc/altera_sequencer.cocci     |   93 +
 scripts/coccinelle/unused/unused.cocci             |   24 +
 scripts/socfpga_get_sequencer                      |   82 +
 scripts/socfpga_sequencer_defines_defaults         |  144 +
 18 files changed, 4046 insertions(+), 2747 deletions(-)
 create mode 100755 arch/arm/mach-socfpga/include/mach/sdram_io.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/sequencer_defines.h
 create mode 100755 arch/arm/mach-socfpga/include/mach/system.h
 create mode 100755 arch/arm/mach-socfpga/include/mach/tclrpt.h
 create mode 100644 scripts/coccinelle/misc/altera_sequencer.cocci
 create mode 100644 scripts/coccinelle/unused/unused.cocci
 create mode 100755 scripts/socfpga_get_sequencer
 create mode 100755 scripts/socfpga_sequencer_defines_defaults

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
