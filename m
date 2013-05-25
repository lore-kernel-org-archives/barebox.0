Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgEaU-0000gz-Ks
 for barebox@lists.infradead.org; Sat, 25 May 2013 13:32:47 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UgEa7-0003mH-FS
 for barebox@lists.infradead.org; Sat, 25 May 2013 15:32:23 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UgEa6-0001lv-9C
 for barebox@lists.infradead.org; Sat, 25 May 2013 15:32:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 25 May 2013 15:32:17 +0200
Message-Id: <1369488741-4313-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Make dependency fixes
To: barebox@lists.infradead.org

Hi All,

The following are some fixes to the make dependencies. On ARM with
PBL enabled the SoC specific images (MLO, ubl) were not rebuilt:

make				<- generates MLO
touch common/console.c
make				<- MLO is not rebuilt

OTOH with PBL enabled the zbarebox.bin was rebuilt everytime even
when nothing has changed.

This and two other things are fixed in this series.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      pbl: Fix typo in make causing pbl files to be rebuilt
      ARM: pbl: fix make dependencies
      make: Add barebox_default_env.* to targets
      ARM: zynq: Add cmd to generate zynq image

 arch/arm/Makefile      | 20 +++++++-------------
 common/Makefile        |  2 ++
 scripts/Makefile.build |  2 +-
 3 files changed, 10 insertions(+), 14 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
