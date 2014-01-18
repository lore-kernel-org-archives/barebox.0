Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4UOL-0003RJ-Lu
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 11:48:47 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 18 Jan 2014 12:48:04 +0100
Message-Id: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] ARM: mioa701: fix frequence speedup code
To: barebox@lists.infradead.org

As barebox has become the true SPL of mioa701 board (no intermediate
SPL), a bug was uncovered in the init procedure, where the CPU voltage
was to be increased by commanding the I2C voltage regulator, while the
I2C was shut down.

Fix it by unclock-gating the power I2C bus before using it.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/mioa701/board.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
index c46b5da..7ee0be0 100644
--- a/arch/arm/boards/mioa701/board.c
+++ b/arch/arm/boards/mioa701/board.c
@@ -266,6 +266,7 @@ static int mioa701_coredevice_init(void)
 	 * This requires to command the Maxim 1586 to upgrade core voltage to
 	 * 1.475 V, on the power I2C bus (device 0x14).
 	 */
+	CKEN |= CKEN_PWRI2C;
 	CCCR = CCCR_A | 0x20290;
 	PCFR = PCFR_GPR_EN | PCFR_FVC | PCFR_DC_EN | PCFR_PI2C_EN | PCFR_OPDE;
 	PCMD(0) = PCMD_LC | 0x1f;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
