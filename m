Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dL2hn-0001y6-PU
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 07:27:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1dL2hP-0002uc-JL
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 09:26:43 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1dL2hP-0002VF-6I
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 09:26:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jun 2017 09:26:33 +0200
Message-Id: <20170614072641.29942-1-s.hauer@pengutronix.de>
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
Subject: revert nvvar changes
To: Barebox List <barebox@lists.infradead.org>

It was a bad idea to not sync nvvars to corresponding globalvars.
Doing so caused several regressions of which at least one is still
standing. Currently expanding linux bootargs with nv.linux.bootargs.*
doesn't work since the code looks for global.linux.bootargs.* which
no longer exist.

Let's revert all this stuff and forget about it. Sorry for the
inconvenience.

Sascha

----------------------------------------------------------------
Sascha Hauer (8):
      Revert "globalvar: Fix value of new globalvar when nvvar exists"
      Revert "nv: Fix setting of nv.dev.<devname>.<param> variables"
      Revert "globalvar: make nv_device static"
      Revert "globalvar: don't use nv_device if CONFIG_NVVAR is disabled"
      Revert "param: remove unnecessary device_d * argument"
      Revert "globalvar: make globalvar functions more consistent"
      Revert "globalvar: remove code for unqualified globalvars"
      Revert "nv: Do not create globalvars from nvvars"

 arch/arm/boards/beaglebone/board.c               |   2 +-
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c |   2 +-
 arch/arm/boards/phytec-som-imx6/board.c          |   2 +-
 arch/arm/boards/vscom-baltos/board.c             |   7 +-
 arch/ppc/boards/pcm030/eeprom.c                  |   4 +-
 common/boot.c                                    |   2 +-
 common/bootchooser.c                             |   4 +-
 common/bootm.c                                   |   2 +-
 common/console_common.c                          |   6 +-
 common/globalvar.c                               | 184 +++++++++++++++--------
 common/password.c                                |   2 +-
 common/reset_source.c                            |   2 +-
 drivers/mtd/peb.c                                |   6 +-
 include/globalvar.h                              | 109 ++------------
 include/param.h                                  |  12 +-
 lib/parameter.c                                  |  44 +++---
 16 files changed, 187 insertions(+), 203 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
