Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqPM4-0000dp-NS
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 13:27:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jan 2012 14:26:51 +0100
Message-Id: <1327584413-23055-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1327584413-23055-1-git-send-email-s.hauer@pengutronix.de>
References: <1327584413-23055-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] initcalls: do not hang if an initcall fails
To: barebox@lists.infradead.org

Currently we just hang when an initcall fails. This resulted
in most initcalls just returning 0 unconditionally. Instead
of hanging which usually leaves the user without a clue what
happened just continue and hope for the best.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |    5 +----
 1 files changed, 1 insertions(+), 4 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 180fdc3..d39748b 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -124,10 +124,7 @@ void start_barebox (void)
 		PUTS_LL("<<");
 		PUTHEX_LL(*initcall);
 		result = (*initcall)();
-		PUTC_LL('>');
-		if (result)
-			hang();
-		PUTS_LL(">\n");
+		PUTS_LL(">>\n");
 	}
 
 	PUTS_LL("initcalls done\n");
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
