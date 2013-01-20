Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TwxHJ-0004xG-84
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:57:49 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TwxHH-0004FH-Qp
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 16:57:47 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TwxHH-00071Y-Pn
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 16:57:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:57:44 +0100
Message-Id: <1358697466-26941-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] simplify i.MX external NAND boot for boards
To: barebox@lists.infradead.org

The external NAND boot code has some significant code duplication
across boards. This adds a helper function for it and changes the
boards to use it.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      ARM i.MX: Add a common NAND entry for external boot mode
      ARM i.MX boards: use helper function for external NAND boot

 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    7 --
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |   35 +--------
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    9 ---
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |   23 +-----
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |   46 +++---------
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    9 ---
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |   23 +-----
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   12 ----
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   23 +-----
 arch/arm/boards/guf-cupid/lowlevel.c               |   45 +++---------
 arch/arm/boards/guf-neso/lowlevel.c                |   33 +--------
 arch/arm/boards/imx21ads/imx21ads.c                |    9 ---
 arch/arm/boards/imx21ads/lowlevel_init.S           |   23 +-----
 arch/arm/boards/karo-tx25/board.c                  |    7 --
 arch/arm/boards/karo-tx25/lowlevel.c               |   33 +--------
 arch/arm/boards/pcm037/lowlevel.c                  |   34 ++-------
 arch/arm/boards/pcm037/pcm037.c                    |    8 ---
 arch/arm/boards/pcm038/lowlevel.c                  |   34 ++-------
 arch/arm/boards/pcm043/lowlevel.c                  |   47 +++---------
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |   26 +------
 arch/arm/mach-imx/external-nand-boot.c             |   75 ++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx-nand.h          |    5 ++
 22 files changed, 127 insertions(+), 439 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
