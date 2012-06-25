Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj6zt-0006Vy-3s
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 10:58:21 +0000
Received: by lbbgg6 with SMTP id gg6so6433119lbb.36
 for <barebox@lists.infradead.org>; Mon, 25 Jun 2012 03:58:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 25 Jun 2012 14:58:11 +0400
Message-Id: <1340621891-4826-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: XBurst: fix compiler warnings in reset-jz4750.c
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-xburst/reset-jz4750.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/mips/mach-xburst/reset-jz4750.c b/arch/mips/mach-xburst/reset-jz4750.c
index 4bda56c..765c033 100644
--- a/arch/mips/mach-xburst/reset-jz4750.c
+++ b/arch/mips/mach-xburst/reset-jz4750.c
@@ -29,7 +29,7 @@
 
 #define JZ_EXTAL 24000000
 
-static void jz4750d_halt(void)
+static void __noreturn jz4750d_halt(void)
 {
 	while (1) {
 		__asm__(".set push;\n"
@@ -65,10 +65,10 @@ void __noreturn poweroff()
 	shutdown_barebox();
 
 	do {
-		ctrl = readl(RTC_RCR);
+		ctrl = readl((u32 *)RTC_RCR);
 	} while (!(ctrl & RTC_RCR_WRDY));
 
-	writel(RTC_HCR_PD, RTC_HCR);
+	writel(RTC_HCR_PD, (u32 *)RTC_HCR);
 	jz4750d_halt();
 }
 EXPORT_SYMBOL(poweroff);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
