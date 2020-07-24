Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyvcx-0000fa-8b
 for barebox@lists.infradead.org; Fri, 24 Jul 2020 11:12:37 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1jyvcw-0001UT-2F
 for barebox@lists.infradead.org; Fri, 24 Jul 2020 13:12:34 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 24 Jul 2020 13:12:32 +0200
Message-Id: <20200724111233.23725-3-l.stach@pengutronix.de>
In-Reply-To: <20200724111233.23725-1-l.stach@pengutronix.de>
References: <20200724111233.23725-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: nxp-imx8mm-evk: always set up UART
To: barebox@lists.infradead.org

When the TF-A is configured to have some output on the UART it does not
set up the UART on its own, but just expects a pre-existing configuration.
If Barebox did not set up the UART in the !DEBUG_LL case, TF-A will just
hang without any user accessible debug output, which is a very non-obvious
failure, so better be safe and always set up the UART in case TF-A wants
to use it.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index cd1f7d168bc6..082aefb8c1c5 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -32,9 +32,12 @@ static void setup_uart(void)
 
 	imx8mm_setup_pad(IMX8MM_PAD_UART2_TXD_UART2_TX | UART_PAD_CTRL);
 
-	imx8m_uart_setup_ll();
+	imx8mq_uart_setup((void *)MX8M_UART2_BASE_ADDR);
 
-	putc_ll('>');
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		imx8m_uart_setup_ll();
+		putc_ll('>');
+	}
 }
 
 static void pmic_reg_write(void *i2c, int reg, uint8_t val)
@@ -157,8 +160,7 @@ static void start_atf(void)
  */
 static __noreturn noinline void nxp_imx8mm_evk_start(void)
 {
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
+	setup_uart();
 
 	start_atf();
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
