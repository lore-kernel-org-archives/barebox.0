Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb7n9-0006c5-2j
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 08:35:26 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1Pb7n5-0001hW-4b
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 09:35:19 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1Pb7n5-0001u3-3W
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 09:35:19 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  7 Jan 2011 09:35:06 +0100
Message-Id: <1294389316-6569-1-git-send-email-jbe@pengutronix.de>
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
Subject: Various fixes to make barebox's x86 support working again
To: barebox@lists.infradead.org

The following changes since commit d4d7a192587bb25051dbc845aab45301d22e6ed3:

  omap3: Define GFX_DIV values for OMAP34xx and OMAP36xx (2011-01-05 11:05:25 +0100)

are available in the git repository at:
  git://git.pengutronix.de/git/jbe/for_barebox_next fix_x86_support

Juergen Beisert (10):
      x86: Remove not used expressions from the makefile
      x86: Use the generic linker script initializing
      x86 ATA: Don't touch the size entry for the BIOS disk based device
      x86 Generic platform: Fix some typos
      x86 Generic platform: Fix disk drive name
      x86 Generic platform: Fix prompt name
      x86: Remove 'uboot' from file names
      Change 'linux16' command to use getopt()
      LINUX16: Add selection of the VESA video mode
      LINUX16: Fix warning

 arch/x86/Makefile                                  |   11 ++--
 arch/x86/boards/x86_generic/generic_pc.c           |    6 +-
 arch/x86/boot/Makefile                             |    2 +-
 arch/x86/boot/boot_hdisk.S                         |    2 +-
 .../boot/{prepare_uboot.c => prepare_barebox.c}    |    0
 arch/x86/configs/generic_defconfig                 |    2 +-
 arch/x86/lib/barebox.lds.S                         |    2 +-
 .../asm => mach-i386/include/mach}/barebox.lds.h   |   14 -----
 commands/linux16.c                                 |   52 +++++++++++++++++---
 drivers/ata/bios.c                                 |    1 -
 include/asm-generic/barebox.lds.h                  |    2 +-
 scripts/setupmbr/setupmbr.c                        |    2 +-
 12 files changed, 60 insertions(+), 36 deletions(-)
 rename arch/x86/boot/{prepare_uboot.c => prepare_barebox.c} (100%)
 rename arch/x86/{include/asm => mach-i386/include/mach}/barebox.lds.h (89%)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
