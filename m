Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y9BYP-0004Ul-LP
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 11:47:09 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu,  8 Jan 2015 12:46:15 +0100
Message-Id: <1420717584-15766-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 0/9] Socfpga: Sequencer updates
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi,

this series updates the sequencer files for Socfpga (again).
The sequencer.c/h are now just grabbed from the Altera generated code and
transformed via the scripts/socfpga_get_sequencer script into a format that
barebox can understand and compile.
This way we can easier integrate updates to this file in the future.

Also, some changes to the clkmgr from the Altera u-boot code are added.

The series sits an the next-branch and was tested on a customer board and the
Terasic Sockit.

Regards,
Steffen

Markus Pargmann (4):
  ARM: sockit: Define inst_rom_init static
  scripts: socfpga sequencer extraction tool
  ARM: boards: socfpga new mem calibration function
  ARM: socfpga: Import sequencer code from generated uboot

Steffen Trumtrar (5):
  ARM: socfpga: avoid using external regulator for PLL
  ARM: socfpga: clkmgr: set alteragrp clocks
  ARM: socfpga: clkmgr: bypass debug root clock
  ARM: socfpga: clock-manager: set mainnandsdmmcclk
  ARM: socfpga: cleanup sequencer warnings

 Documentation/boards/socfpga.rst                   |   26 +-
 arch/arm/boards/ebv-socrates/lowlevel.c            |    5 +-
 arch/arm/boards/terasic-sockit/lowlevel.c          |    5 +-
 .../terasic-sockit/sequencer_auto_inst_init.c      |    4 +-
 arch/arm/mach-socfpga/clock-manager.c              |   27 +-
 arch/arm/mach-socfpga/include/mach/clock-manager.h |   12 +
 arch/arm/mach-socfpga/include/mach/pll_config.h    |    3 +
 arch/arm/mach-socfpga/include/mach/sdram_io.h      |   58 +
 arch/arm/mach-socfpga/include/mach/sequencer.c     | 5978 ++++++++++++--------
 arch/arm/mach-socfpga/include/mach/sequencer.h     |  389 +-
 .../mach-socfpga/include/mach/sequencer_defines.h  |    6 +
 arch/arm/mach-socfpga/include/mach/system.h        |   37 +
 arch/arm/mach-socfpga/include/mach/tclrpt.h        |   38 +
 scripts/socfpga_get_sequencer                      |   78 +
 scripts/socfpga_sequencer_defines_defaults         |  144 +
 15 files changed, 4162 insertions(+), 2648 deletions(-)
 create mode 100755 arch/arm/mach-socfpga/include/mach/sdram_io.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/sequencer_defines.h
 create mode 100755 arch/arm/mach-socfpga/include/mach/system.h
 create mode 100755 arch/arm/mach-socfpga/include/mach/tclrpt.h
 create mode 100755 scripts/socfpga_get_sequencer
 create mode 100755 scripts/socfpga_sequencer_defines_defaults

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
