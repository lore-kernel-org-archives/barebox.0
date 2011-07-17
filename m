Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QiWXu-0000Mr-QO
	for barebox@lists.infradead.org; Sun, 17 Jul 2011 18:58:31 +0000
Received: by fxg17 with SMTP id 17so4414702fxg.16
	for <barebox@lists.infradead.org>; Sun, 17 Jul 2011 11:56:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 17 Jul 2011 22:56:25 +0400
Message-Id: <1310928985-30940-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1310928985-30940-1-git-send-email-antonynpavlov@gmail.com>
References: <1310928985-30940-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] startup.c: make DEBUG_LL output more useful
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/startup.c |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 00bc9a0..f8efa08 100644
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
+		PUTS_LL(">\r\n");
 	}
 
+	PUTS_LL("initcalls done\r\n");
+
 	display_meminfo();
 
 #ifdef CONFIG_ENV_HANDLING
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
