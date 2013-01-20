Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twwvf-00041J-2e
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:35:28 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TwwvY-0003OJ-6o
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 16:35:20 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TwwvY-0004vM-5g
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 16:35:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:35:09 +0100
Message-Id: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] startup related cleanups
To: barebox@lists.infradead.org


This series contains several startup related cleanups like getting
rid of ifdefs, making locally used stuff static, remove unnecessary
includes.

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      startup: call a barebox_main function pointer at the end of the startup
      move struct action_data to the only file using it
      make file_*_action static
      move prototypes for envfs_* to envfs.h
      scripts: remove now unnecessary include
      startup: use IS_ENABLED instead of ifdef
      startup: Use IS_ENABLED for loading environment
      startup: add __noreturn to start_barebox
      defaultenv loading: rework to use less ifdefs/defines
      filetype: Make buf in file_detect_type const

 arch/arm/boards/beaglebone/board.c |    2 +-
 arch/arm/boards/panda/board.c      |    2 +-
 arch/arm/mach-omap/Kconfig         |    9 ----
 arch/arm/mach-omap/xload.c         |   11 ++++-
 commands/loadenv.c                 |    2 +-
 commands/saveenv.c                 |    2 +-
 common/Kconfig                     |    8 +--
 common/environment.c               |   11 ++++-
 common/filetype.c                  |   10 ++--
 common/startup.c                   |   95 +++++++++++++++++++++---------------
 include/common.h                   |    8 ++-
 include/envfs.h                    |    8 ++-
 include/environment.h              |   23 ---------
 include/filetype.h                 |    2 +-
 pbl/misc.c                         |    4 +-
 scripts/bareboxenv.c               |    1 -
 16 files changed, 103 insertions(+), 95 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
