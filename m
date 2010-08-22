Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1On2wI-00020Q-SI
	for barebox@lists.infradead.org; Sun, 22 Aug 2010 05:17:52 +0000
Date: Sun, 22 Aug 2010 07:17:42 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100822051742.GO8693@game.jcrosoft.org>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH v2] Kconfig: sync with linux kernel v2.6.36-rc1-168-ge36c886
To: barebox@lists.infradead.org

Hi,

	I've push the new version on git://git.jcrosoft.org kconfig

The following changes since commit 77df62be5d5140b083152316d67a756d9fae962c:

  beagle: fix usb dependencies (2010-08-18 08:47:33 +0200)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git kconfig

Jean-Christophe PLAGNIOL-VILLARD (1):
      Kconfig: sync with linux kernel v2.6.36-rc1-168-ge36c886

 Makefile                                   |    2 +-
 common/Kconfig                             |   13 +
 scripts/kconfig/.gitignore                 |    4 +
 scripts/kconfig/Makefile                   |  175 ++-
 scripts/kconfig/POTFILES.in                |    7 +
 scripts/kconfig/check.sh                   |   14 +
 scripts/kconfig/conf.c                     |  439 ++++----
 scripts/kconfig/confdata.c                 |  537 +++++++---
 scripts/kconfig/expr.c                     |   65 +-
 scripts/kconfig/expr.h                     |  106 ++-
 scripts/kconfig/gconf.c                    |  145 +--
 scripts/kconfig/gconf.glade                |   30 +-
 scripts/kconfig/kxgettext.c                |    8 +-
 scripts/kconfig/lex.zconf.c_shipped        |  127 ++-
 scripts/kconfig/lkc.h                      |   40 +-
 scripts/kconfig/lkc_proto.h                |    9 +-
 scripts/kconfig/lxdialog/BIG.FAT.WARNING   |    2 +-
 scripts/kconfig/lxdialog/check-lxdialog.sh |   20 +-
 scripts/kconfig/lxdialog/checklist.c       |   17 +-
 scripts/kconfig/lxdialog/dialog.h          |   11 +-
 scripts/kconfig/lxdialog/inputbox.c        |   10 +-
 scripts/kconfig/lxdialog/menubox.c         |   28 +-
 scripts/kconfig/lxdialog/textbox.c         |    2 +-
 scripts/kconfig/lxdialog/util.c            |   34 +-
 scripts/kconfig/lxdialog/yesno.c           |    4 +-
 scripts/kconfig/mconf.c                    |  262 ++---
 scripts/kconfig/menu.c                     |  211 +++-
 scripts/kconfig/nconf.c                    | 1570 ++++++++++++++++++++++++++
 scripts/kconfig/nconf.gui.c                |  617 ++++++++++
 scripts/kconfig/nconf.h                    |   95 ++
 scripts/kconfig/qconf.cc                   |  255 +++--
 scripts/kconfig/qconf.h                    |   17 +-
 scripts/kconfig/streamline_config.pl       |  422 +++++++
 scripts/kconfig/symbol.c                   |  501 +++++++--
 scripts/kconfig/util.c                     |   44 +-
 scripts/kconfig/zconf.gperf                |    6 +-
 scripts/kconfig/zconf.hash.c_shipped       |  225 ++--
 scripts/kconfig/zconf.l                    |   21 +-
 scripts/kconfig/zconf.tab.c_shipped        | 1665 +++++++++++++++-------------
 scripts/kconfig/zconf.y                    |   62 +-
 40 files changed, 5815 insertions(+), 2007 deletions(-)
 create mode 100755 scripts/kconfig/check.sh
 create mode 100644 scripts/kconfig/nconf.c
 create mode 100644 scripts/kconfig/nconf.gui.c
 create mode 100644 scripts/kconfig/nconf.h
 create mode 100644 scripts/kconfig/streamline_config.pl

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
