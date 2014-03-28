Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTSsa-0006KA-9C
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 09:15:13 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WTSs8-0001XE-Ve
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 10:14:44 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WTSs8-0003UY-UH
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 10:14:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Mar 2014 10:14:40 +0100
Message-Id: <1395998083-18979-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Add support for creating menus from a directory structure
To: barebox@lists.infradead.org

The current menu command makes it quite difficult to create a menu
from the shell. This series adds a menutree command which allows it
to create a menu from a directory structure. Each directory in this
structure represents a menu entry. Subdirectories are submenus. The
defenv-2 menu is then converted to use the menutree command.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      Add shell_expand function
      add menutree command
      defenv-2: replace menu with menutree

 commands/Kconfig                                   |   8 +
 commands/Makefile                                  |   1 +
 commands/menutree.c                                |  60 +++++++
 common/Kconfig                                     |   5 +-
 common/Makefile                                    |   1 +
 common/hush.c                                      |  33 ++++
 common/menutree.c                                  | 181 +++++++++++++++++++++
 .../defaultenv-2-menu/menu/00-boot-default/action  |   5 +
 .../defaultenv-2-menu/menu/00-boot-default/title   |   1 +
 .../defaultenv-2-menu/menu/10-boot-all/action      |   3 +
 .../defaultenv-2-menu/menu/10-boot-all/net/action  |   5 +
 .../defaultenv-2-menu/menu/10-boot-all/net/title   |   1 +
 .../defaultenv-2-menu/menu/10-boot-all/title       |   1 +
 .../menu/20-settings/config/action                 |   5 +
 .../menu/20-settings/config/title                  |   1 +
 .../menu/20-settings/network/action                |   3 +
 .../menu/20-settings/network/title                 |   1 +
 .../defaultenv-2-menu/menu/20-settings/title       |   1 +
 .../defaultenv-2-menu/menu/30-saveenv/action       |   8 +
 defaultenv/defaultenv-2-menu/menu/30-saveenv/title |   1 +
 defaultenv/defaultenv-2-menu/menu/40-shell/action  |   5 +
 defaultenv/defaultenv-2-menu/menu/40-shell/title   |   1 +
 defaultenv/defaultenv-2-menu/menu/50-reset/action  |   3 +
 defaultenv/defaultenv-2-menu/menu/50-reset/title   |   1 +
 .../defaultenv-2-menu/menu/boot-entries-collect    |  13 --
 .../defaultenv-2-menu/menu/boot-entries-edit       |  20 ---
 .../defaultenv-2-menu/menu/boot-entries-remove     |  18 --
 .../defaultenv-2-menu/menu/boot-menu-add-entry     |   5 -
 .../menu/boot-menu-new-boot-entry                  |  21 ---
 .../defaultenv-2-menu/menu/init-entries-collect    |   9 -
 .../defaultenv-2-menu/menu/init-entries-edit       |  20 ---
 .../defaultenv-2-menu/menu/init-menu-add-entry     |   3 -
 defaultenv/defaultenv-2-menu/menu/mainmenu         |  20 +--
 defaultenv/defaultenv-2-menu/menu/settings         |  21 ---
 defaultenv/defaultenv-2-menu/menu/title            |   1 +
 include/common.h                                   |   9 +
 include/menu.h                                     |   2 +
 37 files changed, 347 insertions(+), 150 deletions(-)
 create mode 100644 commands/menutree.c
 create mode 100644 common/menutree.c
 create mode 100644 defaultenv/defaultenv-2-menu/menu/00-boot-default/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/00-boot-default/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/10-boot-all/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/10-boot-all/net/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/10-boot-all/net/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/10-boot-all/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/config/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/config/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/network/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/network/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/30-saveenv/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/30-saveenv/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/40-shell/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/40-shell/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/50-reset/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/50-reset/title
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-entries-collect
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-entries-edit
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-entries-remove
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-menu-add-entry
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-menu-new-boot-entry
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/init-entries-collect
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/init-entries-edit
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/init-menu-add-entry
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/settings
 create mode 100644 defaultenv/defaultenv-2-menu/menu/title

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
