Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjtGX-0000IP-Ij
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 14:30:46 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SjtGV-00087G-AB
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 16:30:43 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SjtGV-000343-9K
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 16:30:43 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 27 Jun 2012 16:30:40 +0200
Message-Id: <1340807442-5440-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCHv4] Add a simple watchdog 'framework' to Barebox
To: barebox@lists.infradead.org

This patch series add a less simple watchdog command and also a user of it
for the i.MX28 SoC. The watchdog driver might also work on i.MX23, but this
is not tested yet.

This version has reorganized additions. And it is more or less prepared to add
support for more than one watchdog at runtime at a time later on.

The following changes since commit 7eccba9c44dc69c9727a14b3e7a82c31b874327e:

  Merge branch 'for-next/sparse' into next (2012-06-26 21:30:22 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/jbe/barebox.git next_add_watchdog_frameworkV4

for you to fetch changes up to b75764cbf2bbdbc63c38f85690a39d647a5a7bda:

  ARM/MXS: add a watchdog driver for i.MX28 (2012-06-27 12:25:49 +0200)

----------------------------------------------------------------
Juergen Beisert (2):
      Add a simple watchdog framework
      ARM/MXS: add a watchdog driver for i.MX28

 commands/Kconfig           |   19 +++++++
 commands/Makefile          |    1 +
 commands/wd.c              |   68 ++++++++++++++++++++++++
 drivers/Kconfig            |    1 +
 drivers/Makefile           |    1 +
 drivers/watchdog/Kconfig   |   15 ++++++
 drivers/watchdog/Makefile  |    2 +
 drivers/watchdog/im28wd.c  |  124 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/watchdog/wd_core.c |   61 ++++++++++++++++++++++
 include/watchdog.h         |   24 +++++++++
 10 files changed, 316 insertions(+)
 create mode 100644 commands/wd.c
 create mode 100644 drivers/watchdog/Kconfig
 create mode 100644 drivers/watchdog/Makefile
 create mode 100644 drivers/watchdog/im28wd.c
 create mode 100644 drivers/watchdog/wd_core.c
 create mode 100644 include/watchdog.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
