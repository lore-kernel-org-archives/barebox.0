Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPSJc-0000sm-Cb
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 07:18:17 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VPSJE-0001DJ-TJ
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 09:17:52 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VPSJE-0000bY-SB
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 09:17:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 09:17:48 +0200
Message-Id: <1380266272-931-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: OMAP patches
To: barebox@lists.infradead.org

Some OMAP patches

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      ARM: OMAP: Add missing include
      ARM: OMAP: register OMAP specific barebox bootm handler
      ARM: OMAP: unconditionally use /boot/barebox.env
      i2c: omap: remove unncessary printf

 arch/arm/mach-omap/include/mach/generic.h |  1 +
 arch/arm/mach-omap/omap_generic.c         | 65 +++++++++++++++++++++++++++----
 arch/arm/mach-omap/xload.c                | 10 +----
 drivers/i2c/busses/i2c-omap.c             |  2 +-
 4 files changed, 62 insertions(+), 16 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
