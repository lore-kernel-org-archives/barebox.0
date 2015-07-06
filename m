Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta14.messagelabs.com ([193.109.254.118])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC0yD-0002p8-Qg
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 07:37:42 +0000
From: Herve Codina <Herve.CODINA@celad.com>
Date: Mon, 6 Jul 2015 09:36:46 +0200
Message-ID: <1436168207-6433-5-git-send-email-Herve.CODINA@celad.com>
In-Reply-To: <1436168207-6433-1-git-send-email-Herve.CODINA@celad.com>
References: <1436168207-6433-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: [PATCH 4/4] exitcall: move board_shutdown to exitcall infrastructure
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
---
 arch/arm/boards/animeo_ip/init.c |    2 +-
 common/startup.c                 |    5 -----
 include/common.h                 |    1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 0fda013..2069ab3 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -346,6 +346,7 @@ static void animeo_ip_shutdown(void)
 	animeo_ip_shutdown_uart(IOMEM(AT91SAM9260_BASE_US0));
 	animeo_ip_shutdown_uart(IOMEM(AT91SAM9260_BASE_US1));
 }
+postdevshutdown_exitcall(animeo_ip_shutdown);
 
 static int animeo_ip_console_init(void)
 {
@@ -353,7 +354,6 @@ static int animeo_ip_console_init(void)
 
 	usart0 = at91_register_uart(1, ATMEL_UART_RTS);
 	usart1 = at91_register_uart(2, ATMEL_UART_RTS);
-	board_shutdown = animeo_ip_shutdown;
 
 	barebox_set_model("Somfy Animeo IP");
 	barebox_set_hostname("animeoip");
diff --git a/common/startup.c b/common/startup.c
index 4ed390c..dc12415 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -135,8 +135,6 @@ void __noreturn hang (void)
 	for (;;);
 }
 
-void (*board_shutdown)(void);
-
 /* Everything needed to cleanly shutdown barebox.
  * Should be called before starting an OS to get
  * the devices into a clean state
@@ -150,7 +148,4 @@ void shutdown_barebox(void)
 		pr_debug("exitcall-> %pS\n", *exitcall);
 		(*exitcall)();
 	}
-	
-	if (board_shutdown)
-		board_shutdown();
 }
diff --git a/include/common.h b/include/common.h
index 6766c02..6b9dd4d 100644
--- a/include/common.h
+++ b/include/common.h
@@ -116,7 +116,6 @@ extern int (*barebox_main)(void);
 
 void __noreturn start_barebox(void);
 void shutdown_barebox(void);
-extern void (*board_shutdown)(void);
 
 /*
  * architectures which have special calling conventions for
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
