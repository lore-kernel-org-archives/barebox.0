Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKxm8-0002Dy-2T
 for barebox@lists.infradead.org; Tue, 22 May 2018 03:15:59 +0000
Received: by mail-pl0-x244.google.com with SMTP id c41-v6so9973360plj.10
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 20:15:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 May 2018 20:14:48 -0700
Message-Id: <20180522031510.25505-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180522031510.25505-1-andrew.smirnov@gmail.com>
References: <20180522031510.25505-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 07/29] ARM: mmu: Separate index and address in
 create_sections()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both TTB index and address used to fill that entry are derived from
the same variable 'addr' which requires shifting right and left by 20
and somewhat confusing.

Split the counter used to iterate over elements of  TTB into a
separate variable to make this code a bit easier to read.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.h | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index af429edbc..56e78c715 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -1,6 +1,8 @@
 #ifndef __ARM_MMU_H
 #define __ARM_MMU_H
 
+#include <linux/sizes.h>
+
 #ifdef CONFIG_MMU
 void __mmu_cache_on(void);
 void __mmu_cache_off(void);
@@ -28,10 +30,14 @@ static inline void
 create_sections(uint32_t *ttb, unsigned long addr,
 		int size_m, unsigned int flags)
 {
+	unsigned long ttb_start = addr >> 20;
+	unsigned long ttb_end = ttb_start + size_m;
 	unsigned int i;
 
-	for (i = 0, addr >>= 20; i < size_m; i++, addr++)
-		ttb[addr] = (addr << 20) | flags;
+	for (i = ttb_start; i < ttb_end; i++) {
+		ttb[i] = addr | flags;
+		addr += SZ_1M;
+	}
 }
 
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
