Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9vxp-0002hv-KC
 for barebox@lists.infradead.org; Tue, 09 Oct 2018 17:38:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id l81-v6so1211833pfg.3
 for <barebox@lists.infradead.org>; Tue, 09 Oct 2018 10:38:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  9 Oct 2018 10:37:49 -0700
Message-Id: <20181009173805.26181-2-andrew.smirnov@gmail.com>
In-Reply-To: <20181009173805.26181-1-andrew.smirnov@gmail.com>
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 01/17] ARM: Do not expose ARMv8 functions on ARMv7
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
