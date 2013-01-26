Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tz3rA-0004Uw-Sr
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 11:23:33 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Tz3r7-00073g-Ma
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 12:23:29 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Tz3r7-0004xw-LL
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 12:23:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 26 Jan 2013 12:23:20 +0100
Message-Id: <1359199403-27664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fix build warnings
To: barebox@lists.infradead.org

These are some fixes for build warnings.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      ARM bcm2835: Fix noreturn function does return
      ARM: Fix reassigning symbols in defconfigs
      pbl string: Fix no previous prototype warnings

 arch/arm/configs/at91sam9n12ek_defconfig   |    1 -
 arch/arm/configs/eukrea_cpuimx51_defconfig |    1 -
 arch/arm/configs/pcm027_defconfig          |    1 -
 arch/arm/mach-bcm2835/core.c               |    2 ++
 pbl/string.c                               |   10 ++--------
 5 files changed, 4 insertions(+), 11 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
