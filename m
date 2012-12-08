Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThNjO-0002O6-LH
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 16:58:27 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1ThNjM-0005qx-7r
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 17:58:24 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1ThNjL-0002zb-T8
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 17:58:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  8 Dec 2012 17:58:18 +0100
Message-Id: <1354985902-11317-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fixes
To: barebox@lists.infradead.org


Some fixes, two omap3 related for toolchains which produce unaligned
accesses, two phylib fixes.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      ARM startup: Ensure CR_A flag is cleared on architectures >= ARMv6
      ARM omap3: Call common_reset
      net phylib: Clear BMCR_PDOWN bit
      net phylib: Call phy_update_status when no link is present

 arch/arm/include/asm/barebox-arm-head.h |    2 ++
 arch/arm/mach-omap/omap3_core.S         |    1 +
 drivers/net/phy/phy.c                   |    3 +++
 net/eth.c                               |    3 ++-
 4 files changed, 8 insertions(+), 1 deletion(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
