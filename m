Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcA0-0005kn-Ry
 for barebox@lists.infradead.org; Fri, 31 May 2019 07:41:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hWc9w-0004vy-Kd
 for barebox@lists.infradead.org; Fri, 31 May 2019 09:41:04 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hWc9w-0007S6-CV
 for barebox@lists.infradead.org; Fri, 31 May 2019 09:41:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 31 May 2019 09:41:02 +0200
Message-Id: <20190531074102.28035-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH RFC] ARM: imx8: fix discrepancy between comment and code
To: barebox@lists.infradead.org

The comment speaks of a one second polling timeout, while the polling
is indefinite with timeout not accounted for. Thus change the comment
to reflect the actual behavior.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8-ddrc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx8-ddrc.c b/arch/arm/mach-imx/imx8-ddrc.c
index 18454a91533b..736865eb6f12 100644
--- a/arch/arm/mach-imx/imx8-ddrc.c
+++ b/arch/arm/mach-imx/imx8-ddrc.c
@@ -29,7 +29,7 @@ static u32 ddrc_phy_get_message(void __iomem *phy, int type)
 
 	/*
 	 * When BIT0 set to 0, the PMU has a message for the user
-	 * 10ms seems not enough for poll message, so use 1s here.
+	 * Wait for it indefinitely.
 	 */
 	readl_poll_timeout(phy + DDRC_PHY_REG(0xd0004),
 			   r, !(r & BIT(0)), 0);
@@ -104,4 +104,4 @@ void ddrc_phy_wait_training_complete(void __iomem *phy)
 		putc_ll('\r');
 		putc_ll('\n');
 	}
-}
\ No newline at end of file
+}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
