Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzvOP-0000Jj-P2
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 20:01:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Aug 2012 22:00:56 +0200
Message-Id: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] pbl updates
To: barebox@lists.infradead.org


Hi All,

The following makes the pbl support on most (all?) ARM boards. If it
doesn't work on your board, please report.

Sascha

The following changes since commit b859e325e928d19d5cfefa9a45c4ff1ebe502430:

  Merge tag 'pbl' of git://git.jcrosoft.org/barebox into for-next/pbl (2012-08-03 15:55:53 +0200)

are available in the git repository at:


  git://git.pengutronix.de/git/barebox.git work/pbl

for you to fetch changes up to 81aa36b58daa6517e01bb538db85126dc8dda8eb:

  ARM pbl: generate zbarebox.map in $(obj) (2012-08-10 21:49:37 +0200)

----------------------------------------------------------------
Sascha Hauer (9):
      ARM eukrea cpuimx25: Move flash_header to seperate file
      ARM s3c boards: Do not hardcode image sizes
      ARM boards: Make boards pbl safe
      ARM Makefile: Do not hardcode targets in MLO/netx/davinci/s5p
      ARM: fix netx/MLO/s5p image build for pbl
      ARM Makefile: generate a barebox-flash-image link
      ARM pbl: Fix zbarebox.S build
      ARM pbl: remove unnecessary FORCE
      ARM pbl: generate zbarebox.map in $(obj)

 arch/arm/Makefile                                 |   52 +++++++++++-------
 arch/arm/boards/a9m2410/Makefile                  |    1 +
 arch/arm/boards/a9m2410/a9m2410.c                 |    7 ---
 arch/arm/boards/a9m2440/Makefile                  |    1 +
 arch/arm/boards/a9m2440/a9m2440.c                 |    7 ---
 arch/arm/boards/ccxmx51/Makefile                  |    1 +
 arch/arm/boards/edb93xx/Makefile                  |    1 +
 arch/arm/boards/eukrea_cpuimx25/Makefile          |    3 +
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   34 ------------
 arch/arm/boards/eukrea_cpuimx25/flash_header.c    |   61 +++++++++++++++++++++
 arch/arm/boards/eukrea_cpuimx27/Makefile          |    1 +
 arch/arm/boards/eukrea_cpuimx35/Makefile          |    2 +
 arch/arm/boards/eukrea_cpuimx51/Makefile          |    1 +
 arch/arm/boards/freescale-mx25-3-stack/Makefile   |    1 +
 arch/arm/boards/freescale-mx35-3-stack/Makefile   |    2 +
 arch/arm/boards/freescale-mx51-pdk/Makefile       |    1 +
 arch/arm/boards/freescale-mx53-loco/Makefile      |    1 +
 arch/arm/boards/freescale-mx53-smd/Makefile       |    1 +
 arch/arm/boards/freescale-mx6-arm2/Makefile       |    1 +
 arch/arm/boards/freescale-mx6-sabrelite/Makefile  |    1 +
 arch/arm/boards/friendlyarm-mini2440/Makefile     |    1 +
 arch/arm/boards/friendlyarm-mini2440/mini2440.c   |    7 ---
 arch/arm/boards/guf-cupid/Makefile                |    1 +
 arch/arm/boards/guf-neso/Makefile                 |    3 +-
 arch/arm/boards/imx21ads/Makefile                 |    1 +
 arch/arm/boards/imx27ads/Makefile                 |    1 +
 arch/arm/boards/karo-tx25/Makefile                |    1 +
 arch/arm/boards/karo-tx51/Makefile                |    3 +-
 arch/arm/boards/netx/Makefile                     |    2 +-
 arch/arm/boards/panda/Makefile                    |    4 +-
 arch/arm/boards/pcm027/Makefile                   |    1 +
 arch/arm/boards/pcm037/Makefile                   |    1 +
 arch/arm/boards/pcm038/Makefile                   |    1 +
 arch/arm/boards/pcm043/Makefile                   |    1 +
 arch/arm/boards/pcm049/Makefile                   |    1 +
 arch/arm/boards/phycard-a-xl2/Makefile            |    1 +
 arch/arm/boards/phycard-i.MX27/Makefile           |    1 +
 arch/arm/boards/scb9328/Makefile                  |    1 +
 arch/arm/boards/tqma53/Makefile                   |    1 +
 arch/arm/mach-ep93xx/Makefile                     |    1 +
 arch/arm/mach-imx/Makefile                        |    1 +
 arch/arm/mach-omap/Makefile                       |    3 +
 arch/arm/mach-samsung/Makefile                    |    2 +
 arch/arm/pbl/Makefile                             |    7 ++-
 drivers/mtd/nand/Makefile                         |    1 +
 drivers/mtd/nand/nand_s3c24xx.c                   |   10 ++++
 46 files changed, 156 insertions(+), 82 deletions(-)
 create mode 100644 arch/arm/boards/eukrea_cpuimx25/flash_header.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
