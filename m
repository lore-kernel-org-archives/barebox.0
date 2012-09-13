Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCDDn-0006ze-B4
 for barebox@lists.infradead.org; Thu, 13 Sep 2012 17:29:00 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1A72AFFA79C
 for <barebox@lists.infradead.org>; Thu, 13 Sep 2012 19:30:33 +0200 (CEST)
Date: Thu, 13 Sep 2012 19:22:20 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120913172220.GB20834@game.jcrosoft.org>
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
Subject: [PATCH 0/7 v4] defaultenv-2: add boot sequence
To: barebox@lists.infradead.org

HI,

	v4:
	update boot script

	v3:
	 update comments

	v2:

	  drop global.boot.default as we start the boot sequence by default
	  update ansi-colors
	  allow to always pass -e to echo

	this patch series depends on fs-symlink send previously

please pull
The following changes since commit 8b3bf5971afbdf1acc5becabb6f15ba4b2a5559d:

  tap: fix missing parent setting on eth_device (2012-09-12 17:26:26 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/defaultenv-2-boot-sequence

for you to fetch changes up to 0e955747dcc3b0b6941157b664ee4fdcf3267124:

  defaultenv-2: add boot sequence (2012-09-14 01:22:02 +0800)

----------------------------------------------------------------
defaultenv-2: add boot sequence

Boot will boot run sequentially the script in /env/boot.d
We store symlink in /env/boot.d on /env/boot

drop global.boot.default
start the boot sequence by default

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      globalvar: add inline when not enabled
      echo: always allow to pass -e option
      defaultenv-2/ansi-colors: export color only if enable
      globalvar: add support to set a value to of all globalvars beginning with 'match'
      defaultenv-2: boot use global.linux.bootargs.dyn for dynamic globalvar
      defaultenv-2: boot reset linux.bootargs.dyn. and bootm. globalvar
      defaultenv-2: add boot sequence

 arch/arm/boards/crystalfontz-cfa10036/env/boot.d/01    |    1 +
 arch/arm/boards/crystalfontz-cfa10036/env/boot.d/02    |    1 +
 arch/arm/boards/crystalfontz-cfa10036/env/boot.d/03    |    1 +
 arch/arm/boards/crystalfontz-cfa10036/env/init/general |    3 ---
 arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/01  |    1 +
 arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/02  |    1 +
 arch/arm/boards/pcm038/env/boot.d/01                   |    1 +
 arch/arm/boards/pcm038/env/boot.d/02                   |    1 +
 arch/arm/boards/pcm038/env/boot.d/03                   |    1 +
 arch/arm/boards/tqma53/env/boot.d/01                   |    1 +
 arch/arm/boards/tqma53/env/boot.d/02                   |    1 +
 commands/echo.c                                        |   12 ++++--------
 commands/global.c                                      |   51 ++++++++++++++++++++++++++++++++++++++++-----------
 common/Kconfig                                         |    2 ++
 common/globalvar.c                                     |   10 ++++++++++
 defaultenv-2/base/bin/boot                             |   61 ++++++++++++++++++++++++++++++++++++++++++++++++++++---------
 defaultenv-2/base/bin/bootargs-ip                      |    4 ++--
 defaultenv-2/base/bin/bootargs-ip-barebox              |    2 +-
 defaultenv-2/base/bin/bootargs-ip-dhcp                 |    2 +-
 defaultenv-2/base/bin/bootargs-ip-none                 |    2 +-
 defaultenv-2/base/bin/bootargs-root-disk               |    2 +-
 defaultenv-2/base/bin/bootargs-root-ext                |    2 +-
 defaultenv-2/base/bin/bootargs-root-initrd             |    2 +-
 defaultenv-2/base/bin/bootargs-root-jffs2              |    2 +-
 defaultenv-2/base/bin/bootargs-root-nfs                |    2 +-
 defaultenv-2/base/bin/bootargs-root-ubi                |    2 +-
 defaultenv-2/base/bin/init                             |    6 +++---
 defaultenv-2/base/boot/initrd                          |    2 +-
 defaultenv-2/base/data/ansi-colors                     |    4 ++++
 defaultenv-2/base/init/general                         |    3 ---
 defaultenv-2/menu/menu/boot-entries-collect            |    6 +-----
 defaultenv-2/menu/menu/mainmenu                        |    4 +---
 include/globalvar.h                                    |   23 +++++++++++++++++++++++
 33 files changed, 162 insertions(+), 57 deletions(-)
 create mode 120000 arch/arm/boards/crystalfontz-cfa10036/env/boot.d/01
 create mode 120000 arch/arm/boards/crystalfontz-cfa10036/env/boot.d/02
 create mode 120000 arch/arm/boards/crystalfontz-cfa10036/env/boot.d/03
 create mode 120000 arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/01
 create mode 120000 arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/02
 create mode 120000 arch/arm/boards/pcm038/env/boot.d/01
 create mode 120000 arch/arm/boards/pcm038/env/boot.d/02
 create mode 120000 arch/arm/boards/pcm038/env/boot.d/03
 create mode 120000 arch/arm/boards/tqma53/env/boot.d/01
 create mode 120000 arch/arm/boards/tqma53/env/boot.d/02

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
