Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cm2L3-0003VN-8q
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 17:58:59 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  9 Mar 2017 18:58:30 +0100
Message-Id: <20170309175832.20213-1-o.rempel@pengutronix.de>
In-Reply-To: <20170309170545.25325-1-o.rempel@pengutronix.de>
References: <20170309170545.25325-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 1/3] console_countdown: width to of countdown to 4 digits
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

From: Marc Kleine-Budde <mkl@pengutronix.de>

This patch increases the displayed width of the countdown to 4 digits,
otherwise waiting for more then 99 seconds doesn't look good.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/console_countdown.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/console_countdown.c b/common/console_countdown.c
index c0c8c9502..b2eec72b2 100644
--- a/common/console_countdown.c
+++ b/common/console_countdown.c
@@ -35,7 +35,7 @@ int console_countdown(int timeout_s, unsigned flags, char *out_key)
 	countdown = timeout_s;
 
 	if (!(flags & CONSOLE_COUNTDOWN_SILENT))
-		printf("%2d", countdown--);
+		printf("%4d", countdown--);
 
 	do {
 		if (tstc()) {
@@ -50,7 +50,7 @@ int console_countdown(int timeout_s, unsigned flags, char *out_key)
 		}
 		if (!(flags & CONSOLE_COUNTDOWN_SILENT) &&
 		    is_timeout(second, SECOND)) {
-			printf("\b\b%2d", countdown--);
+			printf("\b\b\b\b%4d", countdown--);
 			second += SECOND;
 		}
 	} while (!is_timeout(start, timeout_s * SECOND));
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
