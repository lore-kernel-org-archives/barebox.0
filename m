Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pw0-f49.google.com ([209.85.160.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PRK3e-00004t-6h
	for barebox@lists.infradead.org; Sat, 11 Dec 2010 07:39:55 +0000
Received: by pwj8 with SMTP id 8so997007pwj.36
	for <barebox@lists.infradead.org>; Fri, 10 Dec 2010 23:39:51 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sat, 11 Dec 2010 18:39:43 +1100
Message-Id: <1292053183-26915-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH] imx: add IMX_GPIO_NR macro.
To: barebox@lists.infradead.org

Simplifies specifying gpio numbers from bank/number info.
From linux kernel.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/mach-imx/include/mach/imx-regs.h |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-regs.h b/arch/arm/mach-imx/include/mach/imx-regs.h
index 605d320..a234621 100644
--- a/arch/arm/mach-imx/include/mach/imx-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx-regs.h
@@ -57,6 +57,10 @@
 # error "unknown i.MX soc type"
 #endif
 
+/* There's a off-by-one betweem the gpio bank number and the gpiochip */
+/* range e.g. GPIO_1_5 is gpio 5 under linux */
+#define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
+
 #define GPIO_PIN_MASK 0x1f
 
 #define GPIO_PORT_SHIFT 5
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
