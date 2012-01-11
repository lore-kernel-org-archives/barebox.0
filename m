Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RkyLV-0004ZI-84
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 13:36:07 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7D4F6100078B
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 14:37:23 +0100 (CET)
Date: Wed, 11 Jan 2012 14:29:14 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120111132914.GB958@game.jcrosoft.org>
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
Subject: [PATCH 0/6] code size reduction for xloader
To: barebox@lists.infradead.org

HI,

	this patch serie wrok on disble non needed code to optimize the size
	of barebox specially in the case of non interactive version suc as
	xloader for TI and late bootstrap for at91

	tis will also iclude a sync of the kconfig need for this


The following changes since commit 21d0fac1382cbe20dfc95c0a400350632f28cbdb:

  at91: add Calao TNY-A9260/TNY-A9263/TNY-A9G20 (2012-01-11 09:41:25 +0100)

are available in the git repository at:
   git://uboot.jcrosoft.org/barebox.git size-optimisation

Jean-Christophe PLAGNIOL-VILLARD (6):
      banner: add config to disable it
      uncompress: add config to disable it
      filetype: add config to disable it
      kconfig: sync to linux 3.2-rc4
      param: add config to disable it
      driver: switch driver_d name to const char*

 Makefile                                 |    3 +-
 commands/Kconfig                         |    3 +
 common/Kconfig                           |    9 +
 common/Makefile                          |    4 +-
 drivers/mtd/core.c                       |   18 +-
 include/common.h                         |    4 +
 include/driver.h                         |    2 +-
 include/linux/kconfig.h                  |   32 +
 include/param.h                          |   53 +
 include/usb/usb.h                        |    2 +-
 lib/Kconfig                              |    9 +
 lib/Makefile                             |    4 +-
 lib/lzo/Kconfig                          |    2 +-
 scripts/kconfig/Makefile                 |  113 +-
 scripts/kconfig/conf.c                   |   50 +-
 scripts/kconfig/confdata.c               |  332 +++--
 scripts/kconfig/expr.c                   |   13 +-
 scripts/kconfig/expr.h                   |    7 -
 scripts/kconfig/gconf.c                  |   50 +-
 scripts/kconfig/kxgettext.c              |    1 -
 scripts/kconfig/lkc.h                    |   18 +-
 scripts/kconfig/lkc_proto.h              |    1 +
 scripts/kconfig/lxdialog/BIG.FAT.WARNING |    2 +-
 scripts/kconfig/lxdialog/textbox.c       |    3 +-
 scripts/kconfig/mconf.c                  |   86 +-
 scripts/kconfig/menu.c                   |   18 +-
 scripts/kconfig/nconf.c                  |   65 +-
 scripts/kconfig/nconf.gui.c              |   59 +-
 scripts/kconfig/nconf.h                  |    2 +-
 scripts/kconfig/qconf.cc                 |   22 +-
 scripts/kconfig/qconf.h                  |    2 +-
 scripts/kconfig/streamline_config.pl     |   38 +-
 scripts/kconfig/symbol.c                 |   47 +-
 scripts/kconfig/util.c                   |    2 +
 scripts/kconfig/zconf.gperf              |    2 +-
 scripts/kconfig/zconf.hash.c_shipped     |  273 ++--
 scripts/kconfig/zconf.l                  |   44 +-
 scripts/kconfig/zconf.lex.c              | 2420 ++++++++++++++++++++++++++++++
 scripts/kconfig/zconf.lex.c_shipped      | 2420 ++++++++++++++++++++++++++++++
 scripts/kconfig/zconf.tab.c_shipped      |   69 +-
 scripts/kconfig/zconf.y                  |   19 +-
 41 files changed, 5722 insertions(+), 601 deletions(-)
 create mode 100644 include/linux/kconfig.h
 create mode 100644 scripts/kconfig/zconf.lex.c
 create mode 100644 scripts/kconfig/zconf.lex.c_shipped

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
