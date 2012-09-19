Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TELXS-0001yZ-C3
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 14:46:07 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 11AB3FFA025
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2012 16:51:53 +0200 (CEST)
Date: Wed, 19 Sep 2012 16:43:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120919144332.GX25990@game.jcrosoft.org>
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
Subject: [PATCH 0/5 v2] sandbox fix + bus
To: barebox@lists.infradead.org

HI,

	v2:
	 - on the sandbox we register device before barebox started
	   this is working today as nothing need to be initialized before
	   regisering a device. But as I attached device to bus this will no
	   be the case anymore so fix it

	 - net/tap fix allocated data to be set to 0

The following changes since commit 4f2aa8ffb124a7f40da2a5bc1a2c225554b24bdd:

  Merge branch 'for-next/testing-menu' into next (2012-09-17 12:15:53 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/bus

for you to fetch changes up to 8802c029970c7ac43a1544c1fe17c114e69aa573:

  driver: search device and driver based on the bus instead of all (2012-09-19 22:44:16 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (5):
      sandbox: check only image option in the second getopt
      sandbox: do not register device before base is started
      net/tap: use xzalloc to allocate data
      driver: register bus
      driver: search device and driver based on the bus instead of all

 arch/sandbox/board/Makefile   |    1 +
 arch/sandbox/board/console.c  |    2 +-
 arch/sandbox/board/devices.c  |   35 +++++++++++++++++++++++++++++++++++
 arch/sandbox/board/hostfile.c |   19 +++++++++++++++++--
 arch/sandbox/os/common.c      |   12 +-----------
 drivers/base/Makefile         |    1 +
 drivers/base/bus.c            |   37 +++++++++++++++++++++++++++++++++++++
 drivers/base/driver.c         |   11 ++++++-----
 drivers/base/platform.c       |   14 ++++----------
 drivers/i2c/i2c.c             |    7 +++++++
 drivers/net/phy/phy.c         |    7 +++++++
 drivers/net/tap.c             |    4 ++--
 drivers/spi/spi.c             |    6 ++++++
 drivers/usb/core/usb.c        |    5 +++++
 fs/fs.c                       |    6 ++++++
 include/driver.h              |   20 ++++++++++++++++++++
 16 files changed, 156 insertions(+), 31 deletions(-)
 create mode 100644 arch/sandbox/board/devices.c
 create mode 100644 drivers/base/bus.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
