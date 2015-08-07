Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhog-0006Sl-J0
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:36:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ZNhoJ-0008HG-Au
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 15:35:47 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1ZNhoI-0006le-Sy
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 15:35:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:35:40 +0200
Message-Id: <1438954545-24917-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] PL310 support
To: Barebox List <barebox@lists.infradead.org>

This series has some fixes for the cache-l2x0 driver and implements PL310
support. Finally the 2nd level cache on i.MX6 is enabled.

----------------------------------------------------------------
Sascha Hauer (5):
      ARM: MMU: Fix order when flushing inner/outer cache
      ARM: l2x0: Flush cache before disabling it
      ARM: l2x0: Implement L310 support
      ARM: l2x0: Add some informational debug messages
      ARM: i.MX6: Enable l2 cache

 arch/arm/cpu/cache-l2x0.c  | 48 +++++++++++++++++++++++++++++++++++++++++++---
 arch/arm/cpu/cache.c       |  2 ++
 arch/arm/cpu/cpu.c         |  3 +--
 arch/arm/cpu/mmu.c         |  2 +-
 arch/arm/include/asm/mmu.h |  1 +
 arch/arm/mach-imx/Kconfig  |  1 +
 arch/arm/mach-imx/imx6.c   | 35 +++++++++++++++++++++++++++++++++
 7 files changed, 86 insertions(+), 6 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
