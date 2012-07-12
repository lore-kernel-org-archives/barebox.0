Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SpJjm-0005Mj-Mr
 for barebox@lists.infradead.org; Thu, 12 Jul 2012 13:47:33 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SpJjg-0001Nj-Mj
 for barebox@lists.infradead.org; Thu, 12 Jul 2012 15:47:16 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SpJjg-0003jE-LU
 for barebox@lists.infradead.org; Thu, 12 Jul 2012 15:47:16 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 12 Jul 2012 15:47:11 +0200
Message-Id: <1342100835-9870-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCHv3] Enable a way to provide the reason for "being here"
To: barebox@lists.infradead.org

Many architectures support a way to detect why the bootloader is running.
This patch adds a global variable to be able to use the cause in some kind of
shell code to do special things on demand. For example to do an emergency boot,
when the last boot fails and the watchdog reactivates the hanging system.

V3 includes the detection for the i.MX28 SoC and fixes its usage for other
i.MX SoCs.

Comments are welcome.

Juergen

The following changes since commit 279d3c29437ff84d4542ba4fc81de4fff0381233:

  Merge branch 'for-next/tqma53' into next (2012-07-09 09:24:04 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/jbe/barebox.git next_provide_reset_sourceV3

for you to fetch changes up to 9fdad67311d1eb320242407b9e5eaca9d13f1b49:

  ARM/MXS: add reset cause detection (2012-07-12 14:32:46 +0200)

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
 common/Makefile                      |    2 +-
 common/reset_source.c                |   44 +++++++++++++++++++++
 drivers/watchdog/im28wd.c            |   25 ++++++++++++
 include/reset_source.h               |   27 +++++++++++++
 8 files changed, 227 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/reset_source.c
 create mode 100644 arch/arm/mach-samsung/reset_source.c
 create mode 100644 common/reset_source.c
 create mode 100644 include/reset_source.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
