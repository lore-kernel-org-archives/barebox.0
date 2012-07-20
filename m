Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss78V-0007wi-TG
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 06:56:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Ss78M-0007k0-6M
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:56:18 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Ss78M-0006Zb-5Z
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:56:18 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Jul 2012 08:56:14 +0200
Message-Id: <1342767377-24735-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH/master] ARM/Samsung: A required fix and a cleanup
To: barebox@lists.infradead.org

Some fixes and cleanups for master related to boards based on the Samsung
S3C24XX CPU.

The following changes since commit b78e5fe9f3ce155065831d3aa8a480656a8f53c5:

  commands/crc: assert newline after output with big offsets (2012-07-17 20:41:17 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/jbe/barebox.git for_master_s3c24xx_runtime_fix_and_cleanup

for you to fetch changes up to b47220d7f70df9191fc456dbcaeaa6ead72c6c02:

  NAND/Samsung: remove a leftover from architeture clean ups (2012-07-20 08:41:35 +0200)

----------------------------------------------------------------
Juergen Beisert (3):
      ARM/Samsung: be able to include the nand header multiple times
      ARM/Samsung: unify device registration for the S3C24XX SoCs
      NAND/Samsung: remove a leftover from architeture clean ups

 arch/arm/boards/a9m2410/a9m2410.c                  |    7 ++-
 arch/arm/boards/a9m2440/a9m2440.c                  |    7 ++-
 arch/arm/boards/mini2440/mini2440.c                |   16 +++---
 .../mach-samsung/include/mach/devices-s3c24xx.h    |   55 ++++++++++++++++++++
 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h  |    5 ++
 drivers/mtd/nand/Makefile                          |    1 -
 6 files changed, 72 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm/mach-samsung/include/mach/devices-s3c24xx.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
