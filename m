Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjRNC-0000jD-GD
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 08:43:47 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SjRN9-0007HA-Pc
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 10:43:43 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SjRN9-0004RF-Mj
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 10:43:43 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 26 Jun 2012 10:43:40 +0200
Message-Id: <1340700222-16999-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCHv3] Add a simple watchdog 'framework' to Barebox
To: barebox@lists.infradead.org

This patch series add a very simple watchdog command and also a user of it
for the i.MX28 SoC. The watchdog driver might also work on i.MX23, but this
is not tested yet.

This version again adds some error check and reporting, if the watchdog does
not work as expected.

The following changes since commit 075ea63a322b70d9a7a27fe0bad5f36e8e3c8bdc:

  Merge branch 'for-next/resource-size' into next (2012-06-25 14:39:10 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/jbe/barebox.git next_add_watchdog_frameworkV3

for you to fetch changes up to 4710576c2851d53529b02ac9342134672698837d:

  ARM/MXS: add a watchdog driver for i.MX28 (2012-06-26 10:37:35 +0200)

----------------------------------------------------------------
Juergen Beisert (2):
      Add a simple watchdog framework
      ARM/MXS: add a watchdog driver for i.MX28

 drivers/Kconfig            |    1 +
 drivers/Makefile           |    1 +
 drivers/watchdog/Kconfig   |   17 +++++++
 drivers/watchdog/Makefile  |    2 +
 drivers/watchdog/im28wd.c  |  121 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/watchdog/wd_core.c |   67 ++++++++++++++++++++++++
 include/watchdog.h         |   18 +++++++
 7 files changed, 227 insertions(+)
 create mode 100644 drivers/watchdog/Kconfig
 create mode 100644 drivers/watchdog/Makefile
 create mode 100644 drivers/watchdog/im28wd.c
 create mode 100644 drivers/watchdog/wd_core.c
 create mode 100644 include/watchdog.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
