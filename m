Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XwvxP-0001Uw-KR
 for barebox@lists.infradead.org; Fri, 05 Dec 2014 16:42:16 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  5 Dec 2014 17:41:44 +0100
Message-Id: <1417797709-10992-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 0/5] ARM: SoCFPGA: Update files to Quartus 14.0
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

This series adds basic documentation for the SoCFPGA architecture in 1/5.

Then all handoff files and the sequencer code is updated to the current
Quartus II 14.0 versions.

The files are autogeneratd by Quartus, so I went for trying to not fix all
coding style errors, because I guess these will just keep coming with every
update. So, I didn't change anything that is not too bad.

Tested on both Socrates and Sockit.

Regards,
Steffen

Steffen Trumtrar (5):
  Documentation: boards: add socfpga
  ARM: socfpga: move iocsr from mach to board folder
  ARM: socfpga: update sdram calibration to 14.0
  ARM: socfpga: sockit: update handoff files to 14.0
  ARM: socfpga: socrates: update handoff files to 14.0

 Documentation/boards/socfpga.rst                   |  80 +++
 .../boards/ebv-socrates/iocsr_config_cyclone5.c    | 675 +++++++++++++++++++++
 arch/arm/boards/ebv-socrates/lowlevel.c            |  12 +-
 arch/arm/boards/ebv-socrates/pinmux_config.c       |  33 +-
 arch/arm/boards/ebv-socrates/pll_config.h          | 194 +++---
 arch/arm/boards/ebv-socrates/sdram_config.h        |  49 +-
 .../terasic-sockit/iocsr_config_cyclone5.c}        |  40 +-
 arch/arm/boards/terasic-sockit/lowlevel.c          |  12 +-
 arch/arm/boards/terasic-sockit/pinmux_config.c     |  29 +
 arch/arm/boards/terasic-sockit/pll_config.h        | 193 +++---
 arch/arm/boards/terasic-sockit/sdram_config.h      |  42 +-
 arch/arm/boards/terasic-sockit/sequencer_auto.h    | 121 +++-
 .../boards/terasic-sockit/sequencer_auto_ac_init.c |  29 +
 .../terasic-sockit/sequencer_auto_inst_init.c      |  45 +-
 arch/arm/boards/terasic-sockit/sequencer_defines.h |  48 +-
 arch/arm/mach-socfpga/Makefile                     |   2 +-
 arch/arm/mach-socfpga/include/mach/generic.h       |   4 +-
 arch/arm/mach-socfpga/include/mach/scan-manager.h  |  16 +-
 arch/arm/mach-socfpga/include/mach/sequencer.c     | 154 +++--
 arch/arm/mach-socfpga/include/mach/sequencer.h     |  96 ++-
 arch/arm/mach-socfpga/init.c                       |  12 +-
 21 files changed, 1533 insertions(+), 353 deletions(-)
 create mode 100644 Documentation/boards/socfpga.rst
 create mode 100644 arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c
 rename arch/arm/{mach-socfpga/iocsr-config-cyclone5.c => boards/terasic-sockit/iocsr_config_cyclone5.c} (79%)

-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
