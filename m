Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V5tzV-0005lA-Bc
 for barebox@lists.infradead.org; Sun, 04 Aug 2013 08:48:42 +0000
Received: by mail-la0-f52.google.com with SMTP id fq13so1342155lab.25
 for <barebox@lists.infradead.org>; Sun, 04 Aug 2013 01:48:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  4 Aug 2013 12:46:02 +0400
Message-Id: <1375605962-4683-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1375605962-4683-1-git-send-email-antonynpavlov@gmail.com>
References: <1375605962-4683-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] CONFIG_PANIC_HANG: replace #ifdef with IS_ENABLED()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 lib/vsprintf.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index d931340..c73db73 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -630,11 +630,11 @@ void __noreturn panic(const char *fmt, ...)
 
 	led_trigger(LED_TRIGGER_PANIC, TRIGGER_ENABLE);
 
-#if defined (CONFIG_PANIC_HANG)
-	hang();
-#else
-	udelay(100000);	/* allow messages to go out */
-	reset_cpu(0);
-#endif
+	if (IS_ENABLED(CONFIG_PANIC_HANG)) {
+		hang();
+	} else {
+		udelay(100000);	/* allow messages to go out */
+		reset_cpu(0);
+	}
 }
 EXPORT_SYMBOL(panic);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
