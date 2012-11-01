Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTzsq-0008Ed-Jx
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 18:52:54 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TTzsn-000265-GT
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 19:52:49 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TTzsn-0006vp-FK
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 19:52:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 19:52:45 +0100
Message-Id: <1351795968-2352-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] defenv-2: Make it simpler
To: barebox@lists.infradead.org

The feedback I got from defenv-2 is often that it's too complicated. This
is an attempt to make it simpler to increase its acceptance. First several
of the /env/bin/bootargs-* scripts are removed since it adds complexity
for doubtful value. Then the content of several scripts from /env/init/*
is moved to the good old /env/config file. This way the things get back
more concentrated to a single place which is easier to remember.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      defenv-2: remove initrd boot script
      defenv-2: remove some helper scripts
      defenv-2: bring back /env/config

 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |    2 +-
 .../crystalfontz-cfa10036/env/init/bootargs-base   |    8 ------
 .../crystalfontz-cfa10036/env/init/config-board    |    7 ++++++
 .../boards/crystalfontz-cfa10036/env/init/hostname |    8 ------
 .../freescale-mx51-pdk/env/init/bootargs-base      |    8 ------
 .../freescale-mx51-pdk/env/init/config-board       |    7 ++++++
 .../boards/freescale-mx51-pdk/env/init/hostname    |    8 ------
 .../freescale-mx6-sabrelite/env/init/bootargs-base |    8 ------
 .../freescale-mx6-sabrelite/env/init/config-board  |    7 ++++++
 .../freescale-mx6-sabrelite/env/init/hostname      |    8 ------
 arch/arm/boards/karo-tx53/env/init/bootargs-base   |    8 ------
 arch/arm/boards/karo-tx53/env/init/config-board    |    7 ++++++
 arch/arm/boards/karo-tx53/env/init/hostname        |    8 ------
 arch/arm/boards/pcm038/env/boot/nand-ubi           |    2 +-
 arch/arm/boards/pcm038/env/init/bootargs-base      |    8 ------
 arch/arm/boards/pcm038/env/init/config-board       |    7 ++++++
 arch/arm/boards/pcm038/env/init/hostname           |    8 ------
 arch/arm/boards/tqma53/env/init/bootargs-base      |    8 ------
 arch/arm/boards/tqma53/env/init/config-board       |    7 ++++++
 arch/arm/boards/tqma53/env/init/hostname           |    8 ------
 defaultenv-2/base/bin/bootargs-ip-barebox          |    7 ------
 defaultenv-2/base/bin/bootargs-ip-dhcp             |    5 ----
 defaultenv-2/base/bin/bootargs-ip-none             |    5 ----
 defaultenv-2/base/bin/bootargs-root-disk           |   26 --------------------
 defaultenv-2/base/bin/bootargs-root-ext            |   12 ---------
 defaultenv-2/base/bin/bootargs-root-initrd         |   16 ------------
 defaultenv-2/base/bin/bootargs-root-jffs2          |   21 ----------------
 defaultenv-2/base/bin/bootargs-root-nfs            |   20 ---------------
 defaultenv-2/base/bin/bootargs-root-ubi            |   24 ------------------
 defaultenv-2/base/bin/init                         |   10 ++++++--
 defaultenv-2/base/boot/initrd                      |   17 -------------
 defaultenv-2/base/boot/net                         |    2 +-
 defaultenv-2/base/config                           |   21 ++++++++++++++++
 defaultenv-2/base/data/boot-template               |    4 +--
 defaultenv-2/base/init/bootargs-base               |    8 ------
 defaultenv-2/base/init/general                     |   15 -----------
 defaultenv-2/base/init/hostname                    |    8 ------
 defaultenv-2/base/init/prompt                      |    7 ------
 defaultenv-2/menu/menu/mainmenu                    |    1 +
 39 files changed, 76 insertions(+), 295 deletions(-)
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/bootargs-base
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/config-board
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/hostname
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/env/init/bootargs-base
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/env/init/config-board
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/env/init/hostname
 delete mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/bootargs-base
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/config-board
 delete mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/hostname
 delete mode 100644 arch/arm/boards/karo-tx53/env/init/bootargs-base
 create mode 100644 arch/arm/boards/karo-tx53/env/init/config-board
 delete mode 100644 arch/arm/boards/karo-tx53/env/init/hostname
 delete mode 100644 arch/arm/boards/pcm038/env/init/bootargs-base
 create mode 100644 arch/arm/boards/pcm038/env/init/config-board
 delete mode 100644 arch/arm/boards/pcm038/env/init/hostname
 delete mode 100644 arch/arm/boards/tqma53/env/init/bootargs-base
 create mode 100644 arch/arm/boards/tqma53/env/init/config-board
 delete mode 100644 arch/arm/boards/tqma53/env/init/hostname
 delete mode 100644 defaultenv-2/base/bin/bootargs-ip-barebox
 delete mode 100644 defaultenv-2/base/bin/bootargs-ip-dhcp
 delete mode 100644 defaultenv-2/base/bin/bootargs-ip-none
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-disk
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-ext
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-initrd
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-jffs2
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-nfs
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-ubi
 delete mode 100644 defaultenv-2/base/boot/initrd
 create mode 100644 defaultenv-2/base/config
 delete mode 100644 defaultenv-2/base/init/bootargs-base
 delete mode 100644 defaultenv-2/base/init/general
 delete mode 100644 defaultenv-2/base/init/hostname
 delete mode 100644 defaultenv-2/base/init/prompt

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
