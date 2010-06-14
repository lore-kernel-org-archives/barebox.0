Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO6He-0007w7-Iz
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 09:48:48 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1OO6Ha-0007XH-AM
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 11:48:42 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1OO6Hb-0002Jp-0G
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 11:48:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 11:48:30 +0200
Message-Id: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: More patches
To: barebox@lists.infradead.org

Hi all,

Here are some more patches, most notably the the possibility to merge
the default environment together from different directories. We can then
introduce a generic default environment which can be used from multiple
boards. Each board can make specific additions to this default environment.

Also, maybe this is controversal, the network stack now generates a random
MAC address if now valid address is found.

Sascha

The following changes since commit 52f760cd61e3f6ca6deb8e5c47eef168b598a674:

  dhcp: do not call net_unregister if net_udp_new failed (2010-06-14 09:39:29 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git pu

Sascha Hauer (11):
      pcm037: Add MMU support
      bootu: Allow passing in devices as parameter
      Allow to merge default environment from more than one directory
      include support for a simple pseudo number generator
      net: implement random_ether_addr
      net: use a random mac address if the current device does not have one
      add a generic default environment
      pcm038: use generic default env
      pcm043: use generic default env
      pcm037: use generic default env
      pca100: use generic default env

 Makefile                                           |   15 ---
 arch/arm/configs/pca100_defconfig                  |    2 +-
 arch/arm/configs/pcm037_defconfig                  |    2 +-
 arch/arm/configs/pcm038_defconfig                  |    2 +-
 arch/arm/configs/pcm043_defconfig                  |    2 +-
 arch/arm/lib/armlinux.c                            |   10 ++-
 arch/arm/mach-imx/Kconfig                          |    2 +
 board/pcm037/env/bin/boot                          |   47 ---------
 board/pcm037/env/bin/init                          |   37 -------
 board/pcm037/env/bin/update_root                   |   16 ---
 board/pcm037/env/config                            |   62 ++++++++---
 board/pcm037/pcm037.c                              |   31 ++++++
 board/pcm038/env/bin/_update                       |   36 -------
 board/pcm038/env/bin/boot                          |   47 ---------
 board/pcm038/env/bin/hush_hack                     |    1 -
 board/pcm038/env/bin/init                          |   37 -------
 board/pcm038/env/bin/update_kernel                 |   15 ---
 board/pcm038/env/bin/update_root                   |   16 ---
 board/pcm038/env/config                            |   62 ++++++++---
 board/pcm043/env/bin/_update                       |   36 -------
 board/pcm043/env/bin/boot                          |   47 ---------
 board/pcm043/env/bin/hush_hack                     |    1 -
 board/pcm043/env/bin/update_kernel                 |   15 ---
 board/pcm043/env/config                            |   65 +++++++++---
 board/phycard-i.MX27/env/bin/_update               |   36 -------
 board/phycard-i.MX27/env/bin/boot                  |   40 -------
 board/phycard-i.MX27/env/bin/hush_hack             |    1 -
 board/phycard-i.MX27/env/bin/init                  |   37 -------
 board/phycard-i.MX27/env/bin/update_kernel         |   15 ---
 board/phycard-i.MX27/env/bin/update_root           |   16 ---
 board/phycard-i.MX27/env/config                    |   57 ++++++++---
 common/Kconfig                                     |    4 +-
 common/Makefile                                    |    6 +-
 {board/pcm037/env => defaultenv}/bin/_update       |    5 +-
 defaultenv/bin/boot                                |  110 ++++++++++++++++++++
 {board/pcm037/env => defaultenv}/bin/hush_hack     |    0
 {board/pcm043/env => defaultenv}/bin/init          |   11 +--
 {board/pcm037/env => defaultenv}/bin/update_kernel |    2 +-
 .../update_root => defaultenv/bin/update_rootfs    |    4 +-
 include/net.h                                      |   17 +++
 include/random.h                                   |    7 ++
 lib/Makefile                                       |    1 +
 lib/random.c                                       |   22 ++++
 net/net.c                                          |   11 ++-
 scripts/genenv                                     |   17 +++
 45 files changed, 424 insertions(+), 601 deletions(-)
 delete mode 100644 board/pcm037/env/bin/boot
 delete mode 100644 board/pcm037/env/bin/init
 delete mode 100644 board/pcm037/env/bin/update_root
 delete mode 100644 board/pcm038/env/bin/_update
 delete mode 100644 board/pcm038/env/bin/boot
 delete mode 100644 board/pcm038/env/bin/hush_hack
 delete mode 100644 board/pcm038/env/bin/init
 delete mode 100644 board/pcm038/env/bin/update_kernel
 delete mode 100644 board/pcm038/env/bin/update_root
 delete mode 100644 board/pcm043/env/bin/_update
 delete mode 100644 board/pcm043/env/bin/boot
 delete mode 100644 board/pcm043/env/bin/hush_hack
 delete mode 100644 board/pcm043/env/bin/update_kernel
 delete mode 100644 board/phycard-i.MX27/env/bin/_update
 delete mode 100644 board/phycard-i.MX27/env/bin/boot
 delete mode 100644 board/phycard-i.MX27/env/bin/hush_hack
 delete mode 100644 board/phycard-i.MX27/env/bin/init
 delete mode 100644 board/phycard-i.MX27/env/bin/update_kernel
 delete mode 100644 board/phycard-i.MX27/env/bin/update_root
 rename {board/pcm037/env => defaultenv}/bin/_update (86%)
 create mode 100644 defaultenv/bin/boot
 rename {board/pcm037/env => defaultenv}/bin/hush_hack (100%)
 rename {board/pcm043/env => defaultenv}/bin/init (59%)
 rename {board/pcm037/env => defaultenv}/bin/update_kernel (91%)
 rename board/pcm043/env/bin/update_root => defaultenv/bin/update_rootfs (91%)
 create mode 100644 include/random.h
 create mode 100644 lib/random.c
 create mode 100755 scripts/genenv

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
