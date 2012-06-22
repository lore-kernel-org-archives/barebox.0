Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from canuck.infradead.org ([2001:4978:20e::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Si0Z6-0007rc-56
 for barebox@lists.infradead.org; Fri, 22 Jun 2012 09:54:08 +0000
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Si0Z4-0004jf-Rf
 for barebox@lists.infradead.org; Fri, 22 Jun 2012 09:54:07 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Si0Z2-0006zZ-Ml
 for barebox@lists.infradead.org; Fri, 22 Jun 2012 11:54:04 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Si0Z2-0001PF-Lb
 for barebox@lists.infradead.org; Fri, 22 Jun 2012 11:54:04 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 22 Jun 2012 11:54:01 +0200
Message-Id: <1340358843-30614-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCHv2] Add a simple watchdog 'framework' to Barebox
To: barebox@lists.infradead.org

This patch series add a very simple watchdog command and also a user of it
for the i.MX28 SoC. The watchdog driver might also work on i.MX23, but this
is not tested yet.

This version adds some error check and reporting, if the watchdog does not
work as expected.

The following changes since commit 5d44309c3f9ab24d3f12f0d571bb94725948f0ff:

  Merge branch 'for-next/resource-size' into next (2012-06-21 20:52:03 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/jbe/barebox.git next_add_watchdog_frameworkV2

for you to fetch changes up to db34cd3715b7cbce138ccffaa5490be2e31e1b3e:

  ARM/MXS: add a watchdog driver for i.MX28 (2012-06-22 11:45:42 +0200)

----------------------------------------------------------------
Juergen Beisert (2):
      Add a simple watchdog framework
      ARM/MXS: add a watchdog driver for i.MX28

 drivers/Kconfig            |    1 +
 drivers/Makefile           |    1 +
 drivers/watchdog/Kconfig   |   17 +++++++
 drivers/watchdog/Makefile  |    2 +
 drivers/watchdog/im28wd.c  |  121 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/watchdog/wd_core.c |   58 +++++++++++++++++++++
 include/watchdog.h         |   18 +++++++
 7 files changed, 218 insertions(+)
 create mode 100644 drivers/watchdog/Kconfig
 create mode 100644 drivers/watchdog/Makefile
 create mode 100644 drivers/watchdog/im28wd.c
 create mode 100644 drivers/watchdog/wd_core.c
 create mode 100644 include/watchdog.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
