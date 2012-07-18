Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrPuJ-0004G2-5Q
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 08:46:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SrPuG-0003IR-9J
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 10:46:52 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SrPuG-0004gI-8O
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 10:46:52 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 18 Jul 2012 10:46:46 +0200
Message-Id: <1342601210-17849-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCHv5] Enable a way to provide the reason for "being here"
To: barebox@lists.infradead.org

Many architectures support a way to detect why the bootloader is running.
This patch adds a global variable to be able to use the cause in some kind of
shell code to do special things on demand. For example to do an emergency boot,
when the last boot fails and the watchdog reactivates the hanging system.

V2 includes Marc's suggesion.
V3 includes the detection for the i.MX28 SoC and fixes its usage for other
i.MX SoCs.
V4 includes Marc's recent suggestion.
V5 includes Sascha's comments.

Comments are still welcome.

Juergen

The following changes since commit 6e566b211351bba74d6118f983f5fcd29e78a5b6:

  Merge branch 'for-next/imx-keypad' into next (2012-07-17 20:46:17 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/jbe/barebox.git next_provide_reset_sourceV5

for you to fetch changes up to 92cc203ac2806fe0818d2aa4ad5bea04bdb4121b:

  ARM/MXS: add reset cause detection (2012-07-18 10:40:22 +0200)

----------------------------------------------------------------
Juergen Beisert (4):
      Enable a way to provide the reason for "being here"
      ARM/Samsung: add support to detect the reset source
      ARM/i.MX: add support to detect the reset source
      ARM/MXS: add reset cause detection

 arch/arm/mach-imx/Makefile           |    1 +
 arch/arm/mach-imx/reset_source.c     |   72 ++++++++++++++++++++++++++++++++++
 arch/arm/mach-samsung/Makefile       |    1 +
 arch/arm/mach-samsung/reset_source.c |   56 ++++++++++++++++++++++++++
 common/Kconfig                       |    8 ++++
 common/Makefile                      |    1 +
 common/reset_source.c                |   44 +++++++++++++++++++++
 drivers/watchdog/im28wd.c            |   25 ++++++++++++
 include/reset_source.h               |   27 +++++++++++++
 9 files changed, 235 insertions(+)
 create mode 100644 arch/arm/mach-imx/reset_source.c
 create mode 100644 arch/arm/mach-samsung/reset_source.c
 create mode 100644 common/reset_source.c
 create mode 100644 include/reset_source.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
