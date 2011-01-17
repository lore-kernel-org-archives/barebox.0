Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pem93-0003Op-31
	for barebox@lists.infradead.org; Mon, 17 Jan 2011 10:17:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jan 2011 11:16:57 +0100
Message-Id: <1295259421-26338-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295259421-26338-1-git-send-email-s.hauer@pengutronix.de>
References: <1295259421-26338-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] ARM start.c: use sections.h header file for linker
	variables
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index b55df5d..e0fb712 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -25,6 +25,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/system.h>
 #include <asm-generic/memory_layout.h>
+#include <asm/sections.h>
 
 void __naked __section(.text_entry) exception_vectors(void)
 {
@@ -40,8 +41,6 @@ void __naked __section(.text_entry) exception_vectors(void)
 	);
 }
 
-extern char __bss_start, _end;
-
 /*
  * The actual reset vector. This code is position independent and usually
  * does not run at the address it's linked at.
@@ -108,7 +107,7 @@ void __naked __bare_init board_init_lowlevel_return(void)
 				(unsigned int)&__bss_start - TEXT_BASE);
 
 	/* clear bss */
-	memset(&__bss_start, 0, &_end - &__bss_start);
+	memset(__bss_start, 0, __bss_stop - __bss_start);
 
 	/* call start_barebox with its absolute address */
 	r = (unsigned int)&start_barebox;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
