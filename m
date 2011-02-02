Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PkW9r-0004Eh-3D
	for barebox@lists.infradead.org; Wed, 02 Feb 2011 06:25:40 +0000
Date: Wed, 2 Feb 2011 07:23:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110202062323.GH26656@game.jcrosoft.org>
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
Subject: kconfig: update
To: barebox@lists.infradead.org

Hi Sascha,

please pull
The following changes since commit a3463cc12877f6527624972c190a80ebb787a604:

  lib/decompress_unlzo: use fill and full to read and write data (2011-01-28 19:05:00 +0100)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git kconfig

Jean-Christophe PLAGNIOL-VILLARD (1):
      kconfig: syn with linux kernel v2.6.38-rc3

 Kconfig                                    |   11 +
 scripts/kconfig/Makefile                   |   87 +++--
 scripts/kconfig/conf.c                     |   19 +-
 scripts/kconfig/confdata.c                 |  159 ++++----
 scripts/kconfig/expr.c                     |   44 ++-
 scripts/kconfig/expr.h                     |    7 +-
 scripts/kconfig/gconf.c                    |   20 +-
 scripts/kconfig/gconf.glade                |    1 -
 scripts/kconfig/kxgettext.c                |   15 +-
 scripts/kconfig/lex.zconf.c_shipped        |    7 +-
 scripts/kconfig/lkc.h                      |   16 +-
 scripts/kconfig/lkc_proto.h                |    3 +
 scripts/kconfig/lxdialog/check-lxdialog.sh |    2 +
 scripts/kconfig/mconf.c                    |   64 ++--
 scripts/kconfig/menu.c                     |   53 ++-
 scripts/kconfig/nconf.c                    |  495 +++++++++++------------
 scripts/kconfig/nconf.gui.c                |   22 +-
 scripts/kconfig/nconf.h                    |    3 +-
 scripts/kconfig/qconf.cc                   |  174 +++++----
 scripts/kconfig/qconf.h                    |   76 ++--
 scripts/kconfig/streamline_config.pl       |   43 ++-
 scripts/kconfig/symbol.c                   |   59 +++-
 scripts/kconfig/util.c                     |    7 +-
 scripts/kconfig/zconf.gperf                |    1 +
 scripts/kconfig/zconf.hash.c_shipped       |  122 +++---
 scripts/kconfig/zconf.l                    |    7 +-
 scripts/kconfig/zconf.tab.c_shipped        |  603 +++++++++++++++-------------
 scripts/kconfig/zconf.y                    |   37 ++-
 28 files changed, 1217 insertions(+), 940 deletions(-)
 create mode 100644 Kconfig

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
