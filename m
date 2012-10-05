Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5AS-0003ey-W5
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:30:05 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TK5AQ-0006kB-Sv
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 12:30:02 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TK5AQ-0000Uf-RK
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 12:30:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:29:57 +0200
Message-Id: <1349433000-1320-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX watchdog support
To: barebox@lists.infradead.org


The following adds support for the i.MX watchdog unit. The device
is registered on all i.MX SoCs and finally used as the reset source
for i.MX. This replaces the non-driver based reset_cpu function.

----------------------------------------------------------------
Sascha Hauer (3):
      watchdog: Add i.MX watchdog support
      ARM i.MX: Add watchdog devices to SoCs
      ARM i.MX/watchdog: Make i.MX watchdog driver the reset source on i.MX

 arch/arm/Kconfig                |    1 +
 arch/arm/mach-imx/clocksource.c |   37 -------
 arch/arm/mach-imx/imx1.c        |    1 +
 arch/arm/mach-imx/imx21.c       |    1 +
 arch/arm/mach-imx/imx25.c       |    1 +
 arch/arm/mach-imx/imx27.c       |    1 +
 arch/arm/mach-imx/imx31.c       |    1 +
 arch/arm/mach-imx/imx35.c       |    1 +
 arch/arm/mach-imx/imx51.c       |    1 +
 arch/arm/mach-imx/imx53.c       |    1 +
 arch/arm/mach-imx/imx6.c        |    1 +
 drivers/watchdog/Kconfig        |    9 ++
 drivers/watchdog/Makefile       |    1 +
 drivers/watchdog/imxwd.c        |  201 +++++++++++++++++++++++++++++++++++++++
 14 files changed, 221 insertions(+), 37 deletions(-)
 create mode 100644 drivers/watchdog/imxwd.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
