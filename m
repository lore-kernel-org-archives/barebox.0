Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCUpI-0004Yd-2Z
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 19:16:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id a5-v6so11290291pgv.13
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2018 12:16:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Oct 2018 12:15:31 -0700
Message-Id: <20181016191552.16690-2-andrew.smirnov@gmail.com>
In-Reply-To: <20181016191552.16690-1-andrew.smirnov@gmail.com>
References: <20181016191552.16690-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 01/22] ARM: Do not expose ARMv8 functions on ARMv7
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Assembly implementing current_el(), read_mpidr(), set_cntfrq(),
get_cntfrq() and get_cntpct() is ARMv8 specific, so change #if guard
protecting it to reflect that fact.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/include/asm/system.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index 5cf828ea3..2f13e2b98 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -61,7 +61,7 @@
 #define CR_TE   (1 << 30)	/* Thumb exception enable		*/
 
 #ifndef __ASSEMBLY__
-#if __LINUX_ARM_ARCH__ >= 7
+#if __LINUX_ARM_ARCH__ > 7
 static inline unsigned int current_el(void)
 {
 	unsigned int el;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
