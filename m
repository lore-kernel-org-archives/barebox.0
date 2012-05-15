Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SUPBb-0003pt-3o
 for barebox@lists.infradead.org; Tue, 15 May 2012 21:21:40 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Tue, 15 May 2012 23:21:16 +0200
Message-Id: <1337116877-17657-5-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
References: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 4/5] arch/arm: mioa701 use maximum CPU frequency
To: barebox@lists.infradead.org

To speed-up linux kernel loading, switch the PXA cpu to the
maximum allowed frequency (520 MHz). This improves the load
time from several seconds to less than a second from the
MTD.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/mioa701/board.c |   13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
index 14c8110..ab5a493 100644
--- a/arch/arm/boards/mioa701/board.c
+++ b/arch/arm/boards/mioa701/board.c
@@ -261,8 +261,17 @@ static int mioa701_coredevice_init(void)
 	/* route pins */
 	pxa2xx_mfp_config(ARRAY_AND_SIZE(mioa701_pin_config));
 
-	CCCR = CCCR_A | 0x20110;
-	cclk = 0x02;
+	/*
+	 * Put the board in superspeed (520 MHz) to speed-up logo/OS loading.
+	 * This requires to command the Maxim 1586 to upgrade core voltage to
+	 * 1.475 V, on the power I2C bus (device 0x14).
+	 */
+	CCCR = CCCR_A | 0x20290;
+	PCFR = PCFR_GPR_EN | PCFR_FVC | PCFR_DC_EN | PCFR_PI2C_EN | PCFR_OPDE;
+	PCMD(0) = PCMD_LC | 0x1f;
+	PVCR = 0x14;
+
+	cclk = 0x0b;
 	asm volatile("mcr p14, 0, %0, c6, c0, 0 @ set CCLK"
 	  : : "r" (cclk) : "cc");
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
