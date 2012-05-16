Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUYI7-0002AM-VO
 for barebox@lists.infradead.org; Wed, 16 May 2012 07:05:03 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SUYI5-0007dL-Ea
 for barebox@lists.infradead.org; Wed, 16 May 2012 09:04:57 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SUYI5-0001c4-DL
 for barebox@lists.infradead.org; Wed, 16 May 2012 09:04:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 May 2012 09:04:53 +0200
Message-Id: <1337151896-5888-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: new default environment
To: barebox@lists.infradead.org

Hi all,

The new environment patches have been around for some
time and I have continued working on them. They are now in a state
which makes me sufficiently happy to give them a try in mainline.

Changes to the last version I posted is some refactoring and as
a main feature improvement menu support. While being optional I think
it's really worth giving it a try. It offers easily selectable boot
entries and also provides an easy way to configure barebox during
runtime.

The new default env still has some rough edges, like for example
the Kconfig dependencies are not accurate. I think we can sort
this out in tree though.

BTW I have no plans (yet) to remove the old environment template
as it still contains some features which the new one does not
have (update, dfu on some boards). In the long run I hope we can
migrate all boards over, but in the mean time the old environment
can still be worked on.

Sascha


The following changes since commit 3f66e8dc57d0dd05e22d321786da39810ba6b7ff:

  Merge branch 'pu/magicvar' into next (2012-05-15 20:34:34 +0200)

are available in the git repository at:


  git://git.pengutronix.de/git/barebox.git work/defenv-2

for you to fetch changes up to 2078535ff07702beea71420d47b3cd391831026f:

  ARM pcm038: Switch to new environment (2012-05-16 08:48:37 +0200)

----------------------------------------------------------------
Sascha Hauer (3):
      bootm: Add default images variables
      Add next generation default environment template
      ARM pcm038: Switch to new environment

 arch/arm/boards/pcm038/env/config               |   52 ------------------
 arch/arm/boards/pcm038/env/init/bootargs-base   |    8 +++
 arch/arm/boards/pcm038/env/init/hostname        |    8 +++
 arch/arm/boards/pcm038/env/init/mtdparts-nand   |   11 ++++
 arch/arm/boards/pcm038/env/init/mtdparts-nor    |   11 ++++
 arch/arm/configs/pcm038_defconfig               |   14 ++---
 arch/arm/mach-imx/Kconfig                       |    1 +
 commands/Kconfig                                |    1 +
 commands/bootm.c                                |   66 ++++++++++++++++++-----
 common/Kconfig                                  |   20 ++++++-
 common/Makefile                                 |    7 +++
 defaultenv-2/base/bin/boot                      |   18 +++++++
 defaultenv-2/base/bin/bootargs-ip               |   11 ++++
 defaultenv-2/base/bin/bootargs-ip-barebox       |    7 +++
 defaultenv-2/base/bin/bootargs-ip-dhcp          |    5 ++
 defaultenv-2/base/bin/bootargs-ip-none          |    5 ++
 defaultenv-2/base/bin/bootargs-root-initrd      |   11 ++++
 defaultenv-2/base/bin/bootargs-root-jffs2       |    9 ++++
 defaultenv-2/base/bin/bootargs-root-nfs         |   15 ++++++
 defaultenv-2/base/bin/bootargs-root-ubi         |   13 +++++
 defaultenv-2/base/bin/ifup                      |   59 ++++++++++++++++++++
 defaultenv-2/base/bin/init                      |   46 ++++++++++++++++
 defaultenv-2/base/bin/mtdparts-add              |   49 +++++++++++++++++
 defaultenv-2/base/boot/nand-ubi                 |   10 ++++
 defaultenv-2/base/boot/net                      |   12 +++++
 defaultenv-2/base/data/ansi-colors              |   26 +++++++++
 defaultenv-2/base/data/boot-template            |   16 ++++++
 defaultenv-2/base/init/automount                |   27 ++++++++++
 defaultenv-2/base/init/bootargs-base            |    8 +++
 defaultenv-2/base/init/general                  |   18 +++++++
 defaultenv-2/base/init/hostname                 |    8 +++
 defaultenv-2/base/init/prompt                   |    7 +++
 defaultenv-2/base/network/eth0                  |   15 ++++++
 defaultenv-2/menu/menu/boot-entries-collect     |   13 +++++
 defaultenv-2/menu/menu/boot-entries-edit        |   20 +++++++
 defaultenv-2/menu/menu/boot-entries-remove      |   18 +++++++
 defaultenv-2/menu/menu/boot-menu-add-entry      |    5 ++
 defaultenv-2/menu/menu/boot-menu-new-boot-entry |   21 ++++++++
 defaultenv-2/menu/menu/init-entries-collect     |    9 ++++
 defaultenv-2/menu/menu/init-entries-edit        |   20 +++++++
 defaultenv-2/menu/menu/init-menu-add-entry      |    3 ++
 defaultenv-2/menu/menu/mainmenu                 |   28 ++++++++++
 42 files changed, 656 insertions(+), 75 deletions(-)
 delete mode 100644 arch/arm/boards/pcm038/env/config
 create mode 100644 arch/arm/boards/pcm038/env/init/bootargs-base
 create mode 100644 arch/arm/boards/pcm038/env/init/hostname
 create mode 100644 arch/arm/boards/pcm038/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/pcm038/env/init/mtdparts-nor
 create mode 100644 defaultenv-2/base/bin/boot
 create mode 100644 defaultenv-2/base/bin/bootargs-ip
 create mode 100644 defaultenv-2/base/bin/bootargs-ip-barebox
 create mode 100644 defaultenv-2/base/bin/bootargs-ip-dhcp
 create mode 100644 defaultenv-2/base/bin/bootargs-ip-none
 create mode 100644 defaultenv-2/base/bin/bootargs-root-initrd
 create mode 100644 defaultenv-2/base/bin/bootargs-root-jffs2
 create mode 100644 defaultenv-2/base/bin/bootargs-root-nfs
 create mode 100644 defaultenv-2/base/bin/bootargs-root-ubi
 create mode 100644 defaultenv-2/base/bin/ifup
 create mode 100644 defaultenv-2/base/bin/init
 create mode 100644 defaultenv-2/base/bin/mtdparts-add
 create mode 100644 defaultenv-2/base/boot/nand-ubi
 create mode 100644 defaultenv-2/base/boot/net
 create mode 100644 defaultenv-2/base/data/ansi-colors
 create mode 100644 defaultenv-2/base/data/boot-template
 create mode 100644 defaultenv-2/base/init/automount
 create mode 100644 defaultenv-2/base/init/bootargs-base
 create mode 100644 defaultenv-2/base/init/general
 create mode 100644 defaultenv-2/base/init/hostname
 create mode 100644 defaultenv-2/base/init/prompt
 create mode 100644 defaultenv-2/base/network/eth0
 create mode 100644 defaultenv-2/menu/menu/boot-entries-collect
 create mode 100644 defaultenv-2/menu/menu/boot-entries-edit
 create mode 100644 defaultenv-2/menu/menu/boot-entries-remove
 create mode 100644 defaultenv-2/menu/menu/boot-menu-add-entry
 create mode 100644 defaultenv-2/menu/menu/boot-menu-new-boot-entry
 create mode 100644 defaultenv-2/menu/menu/init-entries-collect
 create mode 100644 defaultenv-2/menu/menu/init-entries-edit
 create mode 100644 defaultenv-2/menu/menu/init-menu-add-entry
 create mode 100644 defaultenv-2/menu/menu/mainmenu

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
