Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9Efq-0002uN-91
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 12:25:39 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 964CBFF965A
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 14:33:11 +0200 (CEST)
Date: Wed, 5 Sep 2012 14:25:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120905122556.GF32603@game.jcrosoft.org>
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
Subject: [PATCH 0/7 v2] defaultenv-2: add boot sequence
To: barebox@lists.infradead.org

HI,

	v2:

	  drop global.boot.default as we start the boot sequence by default
	  update ansi-colors
	  allow to always pass -e to echo

	this patch series depends on fs-symlink send previously

please pull
The following changes since commit b65e60792376bb209adfa128e1783cf67af9f13b:

  defautenv: add support of symlink (2012-09-05 03:22:14 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/defaultenv-2-boot-sequence

for you to fetch changes up to 15dd5521e4aeb6061ae258251967e2f89b237f5f:

  defaultenv-2: add boot sequence (2012-09-05 20:16:01 +0800)

----------------------------------------------------------------
defaultenv-2: add boot sequence

Boot will boot run sequentially the script in /env/boot.d
We store symlink in /env/boot.d on /env/boot

drop global.boot.default
start the boot sequence by default

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      globalbar: add inline when not enabled
      globalvar: add support to set a value to of all globalvars beginning with 'match'
      defaultenv-2: boot use global.linux.bootargs.dyn for dynamic globarvar
      defaultenv-2: boot reset linux.bootargs.dyn. and bootm. globarvar
      echo: always allow to pass -e option
      defaultenv-2/ansi-colors: export color only if enable
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
 commands/echo.c                                        |    4 ++--
 commands/global.c                                      |   58 +++++++++++++++++++++++++++++++++++++++++++++++++++-------
 common/globalvar.c                                     |   10 ++++++++++
 defaultenv-2/base/bin/boot                             |   55 +++++++++++++++++++++++++++++++++++++++++++++++++------
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
 defaultenv-2/base/bin/init                             |    5 +++--
 defaultenv-2/base/boot/initrd                          |    2 +-
 defaultenv-2/base/data/ansi-colors                     |    4 ++++
 defaultenv-2/base/init/general                         |    3 ---
 defaultenv-2/menu/menu/mainmenu                        |    4 +---
 include/globalvar.h                                    |   23 +++++++++++++++++++++++
 31 files changed, 165 insertions(+), 38 deletions(-)
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
