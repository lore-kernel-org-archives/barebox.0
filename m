Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN2bh-0007PK-0p
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 14:22:25 +0000
Received: by mail-wi0-f171.google.com with SMTP id hj13so338426wib.0
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 07:22:23 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Sat, 13 Oct 2012 16:22:08 +0200
Message-Id: <1350138128-13600-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 6/6] ARM: use arm_setup_stack function on archosg9
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 arch/arm/boards/archosg9/lowlevel.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index fa5be1d..d0506bb 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -68,12 +68,9 @@ static noinline void archosg9_init_lowlevel(void)
 
 void __naked __bare_init reset(void)
 {
-	u32 r;
-
 	common_reset();
 
-	r = 0x4030D000;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(0x4030d000);
 
 	archosg9_init_lowlevel();
 }
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
