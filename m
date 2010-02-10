Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NfIh0-0001lE-NP
	for barebox@lists.infradead.org; Wed, 10 Feb 2010 19:57:51 +0000
Received: from d4rwin.no-ip.org (79.Red-88-19-186.staticIP.rima-tde.net
	[88.19.186.79])
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 2BE7122519F
	for <barebox@lists.infradead.org>; Wed, 10 Feb 2010 20:57:38 +0100 (CET)
Date: Wed, 10 Feb 2010 20:57:23 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100210195723.GG374@darwin>
References: <6e744dd32db7d0d09bf0e429c0dd67768e61e118.1265831572.git.matthias@kaehlcke.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e744dd32db7d0d09bf0e429c0dd67768e61e118.1265831572.git.matthias@kaehlcke.net>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] edb93xx: Fix comment in edb93xx_console_init()
To: barebox@lists.infradead.org

edb93xx: Fix comment in edb93xx_console_init()

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 board/edb93xx/edb93xx.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/board/edb93xx/edb93xx.c b/board/edb93xx/edb93xx.c
index 6316988..b0078a5 100644
--- a/board/edb93xx/edb93xx.c
+++ b/board/edb93xx/edb93xx.c
@@ -166,7 +166,7 @@ static int edb93xx_console_init(void)
 	value |= SYSCON_PWRCNT_UART_BAUD;
 	writel(value, &syscon->pwrcnt);
 
-	/* Enable the UART 1 */
+	/* Enable UART1 */
 	value = readl(&syscon->devicecfg);
 	value |= DEVCFG_U1EN;
 	writel(0xAA, &syscon->sysswlock);
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
