Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEdLj-0004PI-OJ
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 10:19:28 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UEdLg-0005NC-PR
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 11:19:24 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UEdLg-0000Sy-Nw
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 11:19:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 10 Mar 2013 11:19:17 +0100
Message-Id: <1362910761-1732-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] misc cleanups
To: barebox@lists.infradead.org

Some misc patches I have floating around.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      include asm/sections.h instead of asm-generic/sections.h
      MMC i.MX: remove unnecessary mach include
      ARM i.MX: Add double include protection for generic.h
      ARM: Add missing barebox_arm_boarddata function

 arch/arm/boards/a9m2410/a9m2410.c                 |  2 +-
 arch/arm/boards/a9m2440/a9m2440.c                 |  2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |  2 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c        |  2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |  2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c        |  2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |  2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |  2 +-
 arch/arm/boards/friendlyarm-mini2440/mini2440.c   |  2 +-
 arch/arm/boards/guf-cupid/lowlevel.c              |  2 +-
 arch/arm/boards/guf-neso/lowlevel.c               |  2 +-
 arch/arm/boards/imx21ads/imx21ads.c               |  2 +-
 arch/arm/boards/karo-tx25/board.c                 |  2 +-
 arch/arm/boards/karo-tx25/lowlevel.c              |  2 +-
 arch/arm/boards/pcm037/pcm037.c                   |  2 +-
 arch/arm/boards/pcm038/lowlevel.c                 |  2 +-
 arch/arm/boards/pcm043/lowlevel.c                 |  2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c           |  2 +-
 arch/arm/cpu/start.c                              | 10 ++++++++++
 arch/arm/include/asm/barebox-arm.h                |  1 +
 arch/arm/lib/unwind.c                             |  2 +-
 arch/arm/mach-imx/include/mach/generic.h          |  4 ++++
 arch/arm/mach-imx/include/mach/imx-flash-header.h |  2 +-
 common/kallsyms.c                                 |  2 +-
 common/meminfo.c                                  |  2 +-
 drivers/mci/imx.c                                 |  1 -
 drivers/mtd/nand/nand_s3c24xx.c                   |  2 +-
 27 files changed, 38 insertions(+), 24 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
