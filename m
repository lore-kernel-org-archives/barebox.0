Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqPML-000699-TJ
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 13:27:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jan 2012 14:26:52 +0100
Message-Id: <1327584413-23055-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] startup: use regular debug statements in initcall
 debugging
To: barebox@lists.infradead.org

Now that we don't need malloc for the console anymore it's
safe to call printf anytime, so switch the initcall debugging
to regular debug() statements..

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |    7 +++----
 1 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index d39748b..abd1b77 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -121,13 +121,12 @@ void start_barebox (void)
 
 	for (initcall = __barebox_initcalls_start;
 			initcall < __barebox_initcalls_end; initcall++) {
-		PUTS_LL("<<");
-		PUTHEX_LL(*initcall);
+		debug("initcall-> %pS\n", *initcall);
 		result = (*initcall)();
-		PUTS_LL(">>\n");
+		debug("initcall<- %pS (%d)\n", *initcall, result);
 	}
 
-	PUTS_LL("initcalls done\n");
+	debug("initcalls done\n");
 
 	display_meminfo();
 
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
