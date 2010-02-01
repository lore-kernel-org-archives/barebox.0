Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nby9S-0006F5-7Z
	for barebox@lists.infradead.org; Mon, 01 Feb 2010 15:25:24 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Nby9K-0002Zg-6m
	for barebox@lists.infradead.org; Mon, 01 Feb 2010 16:25:14 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Nby9K-0003G5-5L
	for barebox@lists.infradead.org; Mon, 01 Feb 2010 16:25:14 +0100
Date: Mon, 1 Feb 2010 16:25:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100201152514.GU19551@pengutronix.de>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox.2010.02.0 is out
To: barebox@lists.infradead.org

The subject says it, we have a new release. Download it here:

http://barebox.org/download/barebox-2010.02.0.tar.bz2

Not that much has happened since the last release, find a changelog
attached.
I already merged the -next branch to master, so happy testing :)

Sascha


The following changes since commit c68c06cb0e5f9913473ab9cfbf7c48af79582c99:
  Sascha Hauer (1):
        barebox-2009.12.0

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git ..BRANCH.NOT.VERIFIED..

Eric Benard (1):
      Fix a data abort with fec_imx

Ivo Clarysse (1):
      Fix nand_imx for i.MX21

Matthias Kaehlcke (4):
      fix path specs in arch/arm/mach-arm.dox
      Fix typo in board.dox
      CFI flash driver: Fix misleading trace when unprotecting a sector
      New CFI flash driver: Fix misleading trace when unprotecting a
sector

Peter Korsgaard (2):
      documentation: It's U-Boot that doesn't have getopt, not Barebox
      mach-at91: reset_cpu: fix confusing reference to watchdog

Sascha Hauer (1):
      v2010.02.0

 Documentation/barebox-main.dox              |    2 +-
 Makefile                                    |    4 +-
 README                                      |    2 +-
 arch/arm/mach-arm.dox                       |   12 +++++-----
 arch/arm/mach-at91/clocksource.c            |    2 +-
 arch/arm/mach-imx/include/mach/imx21-regs.h |    1 +
 arch/arm/mach-imx/nand.c                    |    2 +-
 board/board.dox                             |    2 +-
 drivers/nand/nand_imx.c                     |   30 ++++++++++++++++++++++----
 drivers/net/fec_imx.c                       |    2 +-
 drivers/nor/cfi_flash.c                     |    3 +-
 drivers/nor/cfi_flash_new.c                 |    4 ++-
 12 files changed, 45 insertions(+), 21 deletions(-)


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
