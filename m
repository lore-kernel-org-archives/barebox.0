Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZcP-0000Qz-NS
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:31:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bQZc2-0007AE-Hg
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 14:31:30 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 22 Jul 2016 14:31:28 +0200
Message-Id: <1469190690-14508-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1469190690-14508-1-git-send-email-l.stach@pengutronix.de>
References: <1469190690-14508-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: nitrogen6x: disable address mirroring
To: barebox@lists.infradead.org

The Nitrogen boards don't need it and it's actively wrong
on the 4GB variants of those boards.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/boundarydevices-nitrogen6x/ram-base.imxcfg | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/ram-base.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/ram-base.imxcfg
index 60c8fa2b5123..5d675883fd49 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/ram-base.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/ram-base.imxcfg
@@ -60,8 +60,8 @@ wm 32 MX6_MMDC_P1_MPRDDQBY1DL	0x33333333
 wm 32 MX6_MMDC_P1_MPRDDQBY2DL	0x33333333
 wm 32 MX6_MMDC_P1_MPRDDQBY3DL	0x33333333
 
-/* MDMISC	mirroring	interleaved (row/bank/col) */
-wm 32 MX6_MMDC_P0_MDMISC		0x00081740
+/* MDMISC	mirroring-off	interleaved (row/bank/col) */
+wm 32 MX6_MMDC_P0_MDMISC		0x00001740
 
 /* MDSCR	con_req */
 wm 32 MX6_MMDC_P0_MDSCR			0x00008000
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
