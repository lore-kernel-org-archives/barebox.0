Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoVfp-0004qj-RN
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 07:15:27 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QoVfl-0003kz-B9
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 09:15:21 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QoVfl-00050T-9g
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 09:15:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Aug 2011 09:14:57 +0200
Message-Id: <1312355701-18867-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: mmu rework v2
To: barebox@lists.infradead.org

This is the second version of the mmu rework. The previous version did
not work properly on ArmV7 processors.  With this the MMU on Arm boards
does not need any board specific setup anymore, so we can drop the
HAVE_MMU dependency.

Sascha

Sascha Hauer (4):
      ARM: rework MMU support
      ARM boards: remove now unnecessary mmu calls
      ARM mmu: Fix arm_create_pte
      remove now unnecessary HAVE_MMU from Kconfig

 arch/arm/boards/chumby_falconwing/falconwing.c    |   10 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   10 -
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   10 -
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   20 +--
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |   16 --
 arch/arm/boards/freescale-mx51-pdk/board.c        |   10 -
 arch/arm/boards/freescale-mx53-loco/board.c       |   12 --
 arch/arm/boards/guf-cupid/board.c                 |   20 +--
 arch/arm/boards/guf-neso/board.c                  |   10 -
 arch/arm/boards/karo-tx25/board.c                 |   12 --
 arch/arm/boards/karo-tx28/tx28.c                  |   10 -
 arch/arm/boards/panda/board.c                     |    8 -
 arch/arm/boards/pcm037/pcm037.c                   |   20 +--
 arch/arm/boards/pcm038/pcm038.c                   |   10 -
 arch/arm/boards/pcm043/pcm043.c                   |   21 +--
 arch/arm/boards/pcm049/board.c                    |    9 -
 arch/arm/boards/phycard-i.MX27/pca100.c           |   10 -
 arch/arm/cpu/mmu.c                                |  194 +++++++++++++++++----
 arch/arm/include/asm/mmu.h                        |   23 ++-
 arch/arm/mach-imx/Kconfig                         |   28 +---
 arch/arm/mach-mxs/Kconfig                         |    2 -
 arch/arm/mach-omap/Kconfig                        |    2 -
 common/Kconfig                                    |    4 -
 include/common.h                                  |    1 +
 24 files changed, 210 insertions(+), 262 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
