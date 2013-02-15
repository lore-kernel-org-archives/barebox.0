Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6QKg-0007kL-NU
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 18:48:27 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1U6QKe-0003X0-Ik
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 19:48:24 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1U6QKe-0003oe-HI
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 19:48:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Feb 2013 19:48:18 +0100
Message-Id: <1360954101-13194-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fix compiler warnings
To: barebox@lists.infradead.org

Fixes for some compiler warnings on master.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      ARM OMAP phycard-a-l1: Add missing include
      ARM at91sam9n12ek_defconfig: Fix reassigning of BAREBOX_MAX_IMAGE_SIZE
      ARM i.MX28: Add missing return value in non-void function

 arch/arm/boards/phycard-a-l1/lowlevel.c  |    1 +
 arch/arm/configs/at91sam9n12ek_defconfig |    1 -
 arch/arm/mach-mxs/soc-imx28.c            |    2 ++
 3 files changed, 3 insertions(+), 1 deletion(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
