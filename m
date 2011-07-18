Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QinWg-0005v9-3T
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 13:06:22 +0000
Received: by ewy3 with SMTP id 3so1729689ewy.36
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2011 06:06:20 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 18 Jul 2011 17:06:10 +0400
Message-Id: <1310994370-28444-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1310994370-28444-1-git-send-email-antonynpavlov@gmail.com>
References: <1310994370-28444-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 2/2] startup.c: make DEBUG_LL output more useful
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/startup.c |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 00bc9a0..2e28cb2 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -134,13 +134,17 @@ void start_barebox (void)
 
 	for (initcall = __barebox_initcalls_start;
 			initcall < __barebox_initcalls_end; initcall++) {
+		PUTS_LL("<<");
 		PUTHEX_LL(*initcall);
-		PUTC_LL('\n');
 		result = (*initcall)();
+		PUTC_LL('>');
 		if (result)
 			hang();
+		PUTS_LL(">\n");
 	}
 
+	PUTS_LL("initcalls done\n");
+
 	display_meminfo();
 
 #ifdef CONFIG_ENV_HANDLING
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
