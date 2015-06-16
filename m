Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta14.messagelabs.com ([193.109.254.113])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4rT1-0003na-9W
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 14:03:57 +0000
From: Herve Codina <Herve.CODINA@celad.com>
Date: Tue, 16 Jun 2015 16:02:58 +0200
Message-ID: <1434463378-13311-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: [PATCH 1/1] mach-clps711: call shutdown_barebox instead of
 arch_shutdown in reset_cpu
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
Tested-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/reset.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-clps711x/reset.c b/arch/arm/mach-clps711x/reset.c
index 67c9c8b..859d8ae 100644
--- a/arch/arm/mach-clps711x/reset.c
+++ b/arch/arm/mach-clps711x/reset.c
@@ -11,7 +11,7 @@
 
 void __noreturn reset_cpu(unsigned long addr)
 {
-	arch_shutdown();
+	shutdown_barebox();
 
 	asm("mov pc, #0");
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
