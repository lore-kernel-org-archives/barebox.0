Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WsSy0-0008S7-Nw
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 08:24:11 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WsSxd-0007gn-Rq
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 10:23:45 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <sha@pengutronix.de>)
 id 1WsSxd-0006ls-QT
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 10:23:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jun 2014 10:23:35 +0200
Message-Id: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Fix Compiler warnings
To: barebox@lists.infradead.org

The following are fixes for various compiler warnings

Sascha

----------------------------------------------------------------
Sascha Hauer (9):
      fix format specifiers
      ARM: MXS: Remove unused variables
      ARM: friendlyarm_mini2440: refresh defconfig
      mips: dlink-dir-320: refresh defconfig
      mips: ar9331: Add missing #address-cells/#size-cells properties
      PPC: FSL DDR: Fix compiler warning
      commands: drvinfo: Make locally used function static
      gui: IMAGE_RENDERER does not depend on VIDEO
      mips: Add builtin dtb to dtb-y

 arch/arm/boards/chumby_falconwing/falconwing.c     |  2 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |  2 +-
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |  3 +--
 arch/arm/configs/friendlyarm_mini2440_defconfig    | 31 ++++++++++------------
 arch/mips/configs/dlink-dir-320_defconfig          |  4 ---
 arch/mips/dts/Makefile                             |  6 +++--
 arch/mips/dts/ar9331.dtsi                          |  2 ++
 arch/ppc/include/asm/fsl_ddr_sdram.h               |  2 +-
 commands/drvinfo.c                                 |  2 +-
 common/bootm.c                                     |  4 +--
 common/uimage.c                                    |  4 ++-
 drivers/eeprom/at25.c                              |  4 +--
 lib/gui/Kconfig                                    |  1 -
 13 files changed, 32 insertions(+), 35 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
