Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PV0LO-0007Kg-JA
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 11:25:30 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PV0LM-0007gw-E0
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 12:25:24 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PV0LM-0000Qk-Cq
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 12:25:24 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 21 Dec 2010 12:25:12 +0100
Message-Id: <1292930721-31734-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] Add gpio command support to STM/i.MX arch
To: barebox@lists.infradead.org

In order to complete graphics handling on STM/i.MX architecture, the platforms
need GPIO command support (for example to enable the display and backlight).

The following changes since commit af05a9dd223f0a77133e37893354680c2f857a54:

  xyzModem.c: fix 'dummy' is used uninitialized in this function warning (2010-12-21 10:23:41 +0100)

are available in the git repository at:
  http://git.pengutronix.de/git/jbe/for_barebox_next/ next_stm_gpio_v3

Juergen Beisert (9):
      Fix a typo in the GPIO doc
      ARM STM/i.MX: Fix register offset calculation for GPIO input pins
      ARM STM/i.MX: Remove variable size restrictions in iomux managing routines
      ARM STM/i.MX: Setting the iomux needs at least 32 bit.
      ARM STM/i.MX: Just fix the docs
      ARM STM/i.MX: Add support for the gpio commands
      ARM STM/i.MX: Avoid very long lines
      ARM STM/i.MX: Replace cryptic numbers
      ARM Chumby: Add list of available GPIOs and their meaning

 arch/arm/Kconfig                               |    1 +
 arch/arm/boards/chumby_falconwing/falconwing.c |   85 ++++++++++++++++++++++++
 arch/arm/configs/chumbyone_defconfig           |    1 +
 arch/arm/configs/tx28stk5_defconfig            |    1 +
 arch/arm/mach-stm/include/mach/gpio.h          |    8 ++-
 arch/arm/mach-stm/iomux-imx.c                  |   85 +++++++++++++++++++++---
 commands/gpio.c                                |    2 +-
 7 files changed, 171 insertions(+), 12 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
