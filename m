Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bcNI7-0005C4-KE
 for barebox@lists.infradead.org; Wed, 24 Aug 2016 01:47:44 +0000
Received: by mail-pf0-x243.google.com with SMTP id g202so181560pfb.1
 for <barebox@lists.infradead.org>; Tue, 23 Aug 2016 18:47:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 23 Aug 2016 18:47:02 -0700
Message-Id: <1472003222-9478-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] arm: Add both .lds files to CLEAN_FILES unconditionally
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

'clean' target is listed on 'no-dot-config-targets' list in main
Makefile so that conditional statement would yeild the same result
every time. Given how CLEAN_FILES are rm'ed with -f there should be no
harm in specifying them both unconditionally.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/Makefile | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 55f7248..96ec588 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -314,9 +314,5 @@ endif
 common- += $(patsubst %,arch/arm/boards/%/,$(board-))
 
 CLEAN_FILES += include/generated/mach-types.h barebox-flash-image
-
-ifeq ($(CONFIG_CPU_V8), y)
 CLEAN_FILES += arch/arm/lib64/barebox.lds
-else
 CLEAN_FILES += arch/arm/lib32/barebox.lds
-endif
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
