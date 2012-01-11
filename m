Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RkyO8-0004cS-1S
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 13:38:48 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9463310003C2
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 14:40:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Jan 2012 14:31:54 +0100
Message-Id: <1326288716-1342-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120111132914.GB958@game.jcrosoft.org>
References: <20120111132914.GB958@game.jcrosoft.org>
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
Subject: [PATCH 4/6] kconfig: sync to linux 3.2-rc4
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile                                 |    3 +-
 include/linux/kconfig.h                  |   32 +
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
 30 files changed, 5627 insertions(+), 586 deletions(-)
 create mode 100644 include/linux/kconfig.h
 create mode 100644 scripts/kconfig/zconf.lex.c
 create mode 100644 scripts/kconfig/zconf.lex.c_shipped

http://git.jcrosoft.org/git?p=barebox.git;a=commitdiff;h=18e18dd13b5d756d9ac32458a7982d25056328fb;hp=507319e13bd5e0ad13138970e90e8426d08f5817

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
