Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYGzt-00068e-6V
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 12:53:17 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RYGzl-0007JE-2z
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 13:53:09 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RYGzl-0002G3-1k
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 13:53:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 Dec 2011 13:52:56 +0100
Message-Id: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] compile (and warning) fixes for -next
To: barebox@lists.infradead.org


Sascha Hauer (11):
      mci s3c: remove unused code
      memory: do not try to reserve iomem on sandbox
      remove unused Kconfig variable HAS_CFI
      fix underscore count in bss_start/bss_stop
      console_simple: fix compiler warning
      net macb: remove unused variable
      pxa: add type to Kconfig choice
      ft_build: temporarily disable bootm oftree support
      arm eukrea boards: fix breakage after mach-types update
      arm at91sam9260: Add missing AT91SAM_ETX2_ETX3_ALTERNATIVE define
      x86: Fix linker script for magic vars

 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
 arch/arm/mach-at91/include/mach/board.h           |    1 +
 arch/arm/mach-imx/Kconfig                         |    8 ------
 arch/arm/mach-pxa/Kconfig                         |    1 +
 arch/blackfin/boards/ipe337/barebox.lds.S         |    4 +-
 arch/blackfin/cpu-bf561/start.S                   |    8 +++---
 arch/x86/lib/barebox.lds.S                        |    2 +-
 common/console_simple.c                           |    1 +
 common/ft_build.c                                 |    3 +-
 common/memory.c                                   |    3 +-
 drivers/mci/s3c.c                                 |   26 ---------------------
 drivers/net/macb.c                                |    1 -
 drivers/nor/Kconfig                               |    3 --
 15 files changed, 17 insertions(+), 50 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
