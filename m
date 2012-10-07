Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKpDF-0006hI-Tf
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 11:40:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Oct 2012 13:39:51 +0200
Message-Id: <1349609991-26567-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349609991-26567-1-git-send-email-s.hauer@pengutronix.de>
References: <1349609991-26567-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] startup: Print error message when initcall fails
To: barebox@lists.infradead.org

There was a time when we used to panic when initcalls failed. Then
it was changed to totally ignore the return value. Instead, print
an error message now so that the user can get a clue when something
bad happened. So initcalls are now recommended to actually return
negative error codes when something fails.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/startup.c b/common/startup.c
index b53bbef..775f97c 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -100,7 +100,9 @@ void start_barebox (void)
 			initcall < __barebox_initcalls_end; initcall++) {
 		debug("initcall-> %pS\n", *initcall);
 		result = (*initcall)();
-		debug("initcall<- %pS (%d)\n", *initcall, result);
+		if (result)
+			pr_err("initcall %pS failed: %s\n", *initcall,
+					strerror(-result));
 	}
 
 	debug("initcalls done\n");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
