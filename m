Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6KL8-00014B-OW
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 13:29:03 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1W6KKl-00036k-9Z
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 14:28:39 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1W6KKl-0006aC-8I
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 14:28:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Jan 2014 14:28:34 +0100
Message-Id: <1390483717-7722-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: compile fixes
To: barebox@lists.infradead.org

These are some fixes for linker errors due to wrong dependencies.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      environment: Use accessor functions for default environment path
      environment: Fix wrong Kconfig dependency
      net: phy: Add static inline wrapper for phy_register_fixup_for_uid

 arch/arm/boards/gk802/board.c      |  4 ++--
 arch/arm/boards/raspberry-pi/rpi.c |  2 +-
 arch/arm/boards/tqma6x/board.c     |  2 +-
 arch/arm/mach-omap/omap_generic.c  |  2 +-
 arch/arm/mach-socfpga/generic.c    |  2 +-
 commands/loadenv.c                 |  2 +-
 commands/saveenv.c                 |  2 +-
 common/Kconfig                     |  2 +-
 common/environment.c               | 14 +++++++++++++-
 common/startup.c                   |  1 +
 drivers/of/barebox.c               |  2 +-
 include/envfs.h                    | 13 ++++++++++++-
 include/linux/phy.h                | 13 +++++++++++--
 13 files changed, 47 insertions(+), 14 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
