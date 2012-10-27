Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSCZw-0003zL-5w
 for barebox@lists.infradead.org; Sat, 27 Oct 2012 20:01:57 +0000
Received: from mail611.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A7E17DC152E
 for <barebox@lists.infradead.org>; Sat, 27 Oct 2012 22:08:49 +0200 (CEST)
Date: Sat, 27 Oct 2012 21:59:38 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121027195938.GB28904@game.jcrosoft.org>
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
Subject: [PATCH 0/5] add 1-wire support
To: barebox@lists.infradead.org

Hi,

The following changes since commit 72703410feff9ed44779b54a41ff30312e781279:

  misc JTAG: include fixes (2012-10-26 09:08:51 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/w1

for you to fetch changes up to 91413767b35d5f9f66d14376c925386a42d1db0e:

  1-wire: add ds2433 support (2012-10-27 12:47:20 +0800)

----------------------------------------------------------------
add 1-wire support

export for each device via param
the familly id (fid)
the id
the full reg_num

so for simple 64bit memory rom(ds2401/ds2411/ds1990*) no need driver.

with ds2431 and ds2433 eeprom support

Based on linux implementation, cleaned and re-implement the master/slave
support to use the device/driver model correctly.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (5):
      clock: introduce non interruptible timeout
      add 1-wire support
      1-wire: add gpio bus
      1-wire: add ds2431 support
      1-wire: add ds2433 support

 common/clock.c                |   14 ++-
 drivers/Kconfig               |    1 +
 drivers/Makefile              |    1 +
 drivers/w1/Kconfig            |   14 +++
 drivers/w1/Makefile           |    6 +
 drivers/w1/masters/Kconfig    |   14 +++
 drivers/w1/masters/Makefile   |    5 +
 drivers/w1/masters/w1-gpio.c  |  116 ++++++++++++++++++++
 drivers/w1/slaves/Kconfig     |   27 +++++
 drivers/w1/slaves/Makefile    |    6 +
 drivers/w1/slaves/w1_ds2431.c |  294 +++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/w1/slaves/w1_ds2433.c |  196 +++++++++++++++++++++++++++++++++
 drivers/w1/w1.c               |  621 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/w1/w1.h               |  152 ++++++++++++++++++++++++++
 include/clock.h               |    1 +
 include/linux/w1-gpio.h       |   25 +++++
 16 files changed, 1489 insertions(+), 4 deletions(-)
 create mode 100644 drivers/w1/Kconfig
 create mode 100644 drivers/w1/Makefile
 create mode 100644 drivers/w1/masters/Kconfig
 create mode 100644 drivers/w1/masters/Makefile
 create mode 100644 drivers/w1/masters/w1-gpio.c
 create mode 100644 drivers/w1/slaves/Kconfig
 create mode 100644 drivers/w1/slaves/Makefile
 create mode 100644 drivers/w1/slaves/w1_ds2431.c
 create mode 100644 drivers/w1/slaves/w1_ds2433.c
 create mode 100644 drivers/w1/w1.c
 create mode 100644 drivers/w1/w1.h
 create mode 100644 include/linux/w1-gpio.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
