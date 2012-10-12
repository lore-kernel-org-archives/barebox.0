Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMiTp-0002Al-4G
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 16:52:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TMiTn-0001Xx-GV
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 18:52:55 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TMiTn-0003vm-FM
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 18:52:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Oct 2012 18:52:50 +0200
Message-Id: <1350060774-24779-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] More Karo tx53 support
To: barebox@lists.infradead.org

This adds support for a newer board revision (xx30) and
adds things necessary to boot from nand.

----------------------------------------------------------------
Sascha Hauer (4):
      ARM i.MX53: enable imx53_init_lowlevel for pbl
      ARM i.MX tx53: Add rev xx30 board support
      ARM i.MX53: set bootsource location
      ARM i.MX Karo tx53: Add env depending on bootsource

 arch/arm/boards/karo-tx53/Makefile                |    3 +
 arch/arm/boards/karo-tx53/board.c                 |   29 +++-
 arch/arm/boards/karo-tx53/flash_header.c          |  152 ++++++++++++++++++++-
 arch/arm/configs/tx53stk5_defconfig               |   12 +-
 arch/arm/mach-imx/Kconfig                         |   13 +-
 arch/arm/mach-imx/Makefile                        |    1 +
 arch/arm/mach-imx/boot.c                          |   35 +++++
 arch/arm/mach-imx/imx53.c                         |    6 +-
 arch/arm/mach-imx/include/mach/generic.h          |    2 +
 arch/arm/mach-imx/include/mach/imx-flash-header.h |   33 +++++
 10 files changed, 273 insertions(+), 13 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
