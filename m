Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsItc-000691-O9
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 19:29:58 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SsItY-0005bx-C2
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 21:29:48 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SsItX-0007gE-Bd
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 21:29:47 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Jul 2012 21:29:36 +0200
Message-Id: <1342812585-22017-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] ARM/Samsung: more clean up...
To: barebox@lists.infradead.org

...in preparation to add the S3C6410 SoC support.

Mostly simplifying the Samsung serial driver and some more cosmetic.

Comments are welcome.

Regards,
Juergen

The following changes since commit b47220d7f70df9191fc456dbcaeaa6ead72c6c02:

  NAND/Samsung: remove a leftover from architeture clean ups (2012-07-20 08:41:35 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/jbe/barebox.git master_samsung_clean_up

for you to fetch changes up to fc361ff7de449f9bb8a7653a5705621320d84560:

  Samsung/serial: make the clock source configureable (2012-07-20 21:16:02 +0200)

----------------------------------------------------------------
Juergen Beisert (9):
      ARM/Samsung: List only really supported S3C24xx SoCs
      ARM/Samsung: follow the name style of the other source files in this directory
      Samsung/serial: remove more ugly ifdef lines
      Samsung/serial: make the code more readable
      Samsung/serial: there is no need to ifdef these register defines
      Samsung/serial: there is no need to ifdef the slot table
      Samsung/serial: move the decision about an improved UART into Kconfig
      Samsung/serial: unify UCON register settings
      Samsung/serial: make the clock source configureable

 arch/arm/Kconfig                                   |    2 +-
 arch/arm/mach-samsung/Kconfig                      |    5 ++
 arch/arm/mach-samsung/Makefile                     |    3 +-
 .../{s3c24xx-clocks.c => clocks-s3c24xx.c}         |    0
 arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h  |    5 +-
 drivers/serial/serial_s3c.c                        |   71 +++++++++++---------
 6 files changed, 48 insertions(+), 38 deletions(-)
 rename arch/arm/mach-samsung/{s3c24xx-clocks.c => clocks-s3c24xx.c} (100%)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
