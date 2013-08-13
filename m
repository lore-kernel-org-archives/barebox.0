Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9903-0008BN-6E
 for barebox@lists.infradead.org; Tue, 13 Aug 2013 07:26:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Aug 2013 09:26:06 +0200
Message-Id: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] cubox multi image support
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

The following converts the cubox to multi image support as a first
step towards merging the different mvebu ports.

Also the kwbimage generation is fixed on current master.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      ARM: mvebu: move Makefile entries back to arch/arm/Makefile
      ARM: dts: cubox: fix stdout-path property
      ARM: mvebu: introduce multi image support
      ARM: mvebu: dove: use uart from devicetree
      ARM: mvebu: dove: use timer from devicetree
      ARM: mvebu: cubox: Update defconfig

 arch/arm/Makefile                           |  5 ++++
 arch/arm/boards/Makefile                    |  5 ----
 arch/arm/boards/solidrun-cubox/Makefile     |  1 +
 arch/arm/boards/solidrun-cubox/lowlevel.c   | 37 +++++++++++++++++++++++++++++
 arch/arm/configs/solidrun_cubox_defconfig   | 25 +++++++++++++++----
 arch/arm/dts/Makefile                       |  1 +
 arch/arm/dts/dove-cubox.dts                 |  2 +-
 arch/arm/mach-mvebu/Kconfig                 |  1 +
 arch/arm/mach-mvebu/Makefile                |  2 +-
 arch/arm/mach-mvebu/common.c                |  4 ++--
 arch/arm/mach-mvebu/dove.c                  | 19 +--------------
 arch/arm/mach-mvebu/include/mach/lowlevel.h |  2 +-
 arch/arm/mach-mvebu/lowlevel.c              |  2 +-
 images/.gitignore                           |  2 ++
 images/Makefile                             |  4 +++-
 images/Makefile.mvebu                       | 26 ++++++++++++++++++++
 scripts/Makefile.lib                        |  3 +++
 17 files changed, 107 insertions(+), 34 deletions(-)
 create mode 100644 arch/arm/boards/solidrun-cubox/lowlevel.c
 create mode 100644 images/Makefile.mvebu

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
