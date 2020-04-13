Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttX-0006yi-Tp
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttU-0003bJ-EE
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:36 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttT-0005GG-O9
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:52:04 +0200
Message-Id: <20200413075204.17544-22-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 21/21] clk: at91: sckc: fix off-by-1000 in udelay()
To: barebox@lists.infradead.org

SECOND is the number of nanoseconds in a second, but we need
the number of microseconds for use in udelay. Use USEC_PER_SEC.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/sckc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 3dc7843fcc11..1a33a64421fa 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -20,7 +20,7 @@
 
 #define SLOW_CLOCK_FREQ		32768
 #define SLOWCK_SW_CYCLES	5
-#define SLOWCK_SW_TIME_USEC	((SLOWCK_SW_CYCLES * SECOND) / \
+#define SLOWCK_SW_TIME_USEC	((SLOWCK_SW_CYCLES * USEC_PER_SEC) / \
 				 SLOW_CLOCK_FREQ)
 
 #define	AT91_SCKC_CR			0x00
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
