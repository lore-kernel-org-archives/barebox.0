Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUDZC-0001Qa-1K
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 09:29:30 +0000
Received: from mail247.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 593DB104F1AC
 for <barebox@lists.infradead.org>; Fri,  2 Nov 2012 10:36:38 +0100 (CET)
Date: Fri, 2 Nov 2012 10:27:18 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121102092718.GO29599@game.jcrosoft.org>
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
Subject: [PATCH 0/4 v2] i2c: add algo-bit support with gpio and versatile
 support
To: barebox@lists.infradead.org

HI,

	v2: keep return -EBUSY if the adapter is already present

	the foloing patch series add the i2c algo bit support with 2 drivers
	that use it

	 - gpio
	 - versatile

	 thie also create a device for i2c bus itself

	 all the pedending branch are rebased on it

The following changes since commit 2d1ceaff2f905f4a2bd7e6c539e7dd3d8d8e9bef:

  uimage: Fix deleting of temporary file (2012-10-30 18:39:38 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/i2c

for you to fetch changes up to 5c90416b6ffb8d4ca7c4bc6aff92578b555cb965:

  i2c: add versatile support (2012-11-02 02:17:04 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      i2c: adapter: register it's own device
      i2c: add i2c algo bit support
      i2c: add i2c-gpio support
      i2c: add versatile support

 drivers/i2c/Kconfig                |    1 +
 drivers/i2c/Makefile               |    2 +-
 drivers/i2c/algos/Kconfig          |    6 +++
 drivers/i2c/algos/Makefile         |    5 ++
 drivers/i2c/algos/i2c-algo-bit.c   |  585 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/i2c/busses/Kconfig         |   16 +++++++
 drivers/i2c/busses/Makefile        |    2 +
 drivers/i2c/busses/i2c-gpio.c      |  177 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/i2c/busses/i2c-imx.c       |   20 ++++----
 drivers/i2c/busses/i2c-omap.c      |   30 ++++++------
 drivers/i2c/busses/i2c-versatile.c |  112 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/i2c/i2c.c                  |   17 ++++++-
 include/i2c/i2c-algo-bit.h         |   55 ++++++++++++++++++++++
 include/i2c/i2c-gpio.h             |   38 +++++++++++++++
 include/i2c/i2c.h                  |    4 +-
 15 files changed, 1042 insertions(+), 28 deletions(-)
 create mode 100644 drivers/i2c/algos/Kconfig
 create mode 100644 drivers/i2c/algos/Makefile
 create mode 100644 drivers/i2c/algos/i2c-algo-bit.c
 create mode 100644 drivers/i2c/busses/i2c-gpio.c
 create mode 100644 drivers/i2c/busses/i2c-versatile.c
 create mode 100644 include/i2c/i2c-algo-bit.h
 create mode 100644 include/i2c/i2c-gpio.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
