Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCbCo-0003Kz-6M
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 19:37:50 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UCbCm-0003PU-96
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:37:48 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UCbCm-0000X7-82
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:37:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 20:37:44 +0100
Message-Id: <1362425866-1356-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] OMAP3 updates
To: barebox@lists.infradead.org

Two patches for OMAP3. One calls the internal ROM to invalidate
the L2 cache and removes the previously used omap3_invalidate_dcache
function. I don't know exactly what'S going on here, but it makes
the beagle board much more stable. In earlier days this was not
needed, maybe because we didn't enable the MMU.

The other one adds the iomux setup for MMC cards on the beagle board.
My hope was that with this the MMC slot would work even when not
booting from it. Unfortunately this was not the case. I also tried
and enabled VMMC in the twl4030, but this didn't help either.
So if anyone has an idea what needs to be done to make the MMC
slot work I'd be glad to hear.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      ARM: OMAP3: invalidate L2 cache using ROM API
      ARM: OMAP: beagle: Add missing MMC iomux setup

 arch/arm/boards/beagle/lowlevel.c               | 13 +++-
 arch/arm/boards/omap343xdsp/lowlevel.c          |  2 -
 arch/arm/mach-omap/Makefile                     |  4 +-
 arch/arm/mach-omap/auxcr.S                      | 12 ++++
 arch/arm/mach-omap/include/mach/omap3-silicon.h |  8 ++-
 arch/arm/mach-omap/omap3_core.S                 | 87 -------------------------
 arch/arm/mach-omap/omap3_generic.c              |  4 +-
 7 files changed, 35 insertions(+), 95 deletions(-)
 delete mode 100644 arch/arm/mach-omap/omap3_core.S

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
