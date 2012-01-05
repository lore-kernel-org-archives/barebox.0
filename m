Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RijYR-0000QB-4n
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 09:24:12 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RijYG-0004eB-HW
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 10:24:00 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RijYG-0005AP-Gc
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 10:24:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jan 2012 10:23:54 +0100
Message-Id: <1325755439-19534-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: compile patches
To: barebox@lists.infradead.org

Sascha Hauer (3):
      ARM AT91: Add missing on_flash_bbt in atmel_nand_data
      ARM omap beagle xload: update defconfig
      fat fs: Fix compile warning

 arch/arm/configs/omap3530_beagle_xload_defconfig |    4 ++--
 arch/arm/mach-at91/include/mach/board.h          |    1 +
 fs/fat/ff.c                                      |    2 +-
 3 files changed, 4 insertions(+), 3 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
