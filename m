Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Bcb-0002M1-FP
 for barebox@lists.infradead.org; Tue, 03 Mar 2020 17:46:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1j9BcX-0006L0-VQ
 for barebox@lists.infradead.org; Tue, 03 Mar 2020 18:46:17 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1j9BcX-0001UV-Kg
 for barebox@lists.infradead.org; Tue, 03 Mar 2020 18:46:17 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Tue,  3 Mar 2020 18:46:16 +0100
Message-Id: <20200303174616.4476-3-m.felsch@pengutronix.de>
In-Reply-To: <20200303174616.4476-1-m.felsch@pengutronix.de>
References: <20200303174616.4476-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: nitrogen6: remove hard coded values
To: barebox@lists.infradead.org

Since commit c3f5ce7308 ("net: phy: micrel: Add support for specifying pad
skew values") and commit 2720a02e8a ("net: phy: micrel: backport finding
PHY properties") the phy driver can handle this taking the DT specified
values into account. Those values are exactly the same as the ones
specified here.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/boundarydevices-nitrogen6/board.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm/boards/boundarydevices-nitrogen6/board.c b/arch/arm/boards/boundarydevices-nitrogen6/board.c
index d9514d9d48..8c565c74a0 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/board.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6/board.c
@@ -43,16 +43,6 @@ static int ksz9021rn_phy_fixup(struct phy_device *dev)
 {
 	phy_write(dev, 0x09, 0x0f00);
 
-	/* do same as linux kernel */
-	/* min rx data delay */
-	phy_write(dev, 0x0b, 0x8105);
-	phy_write(dev, 0x0c, 0x0000);
-
-	/* max rx/tx clock delay, min rx/tx control delay */
-	phy_write(dev, 0x0b, 0x8104);
-	phy_write(dev, 0x0c, 0xf0f0);
-	phy_write(dev, 0x0b, 0x104);
-
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
