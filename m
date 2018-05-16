Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJ2c3-0004Q2-MQ
 for barebox@lists.infradead.org; Wed, 16 May 2018 20:01:28 +0000
Received: by mail-pg0-x242.google.com with SMTP id w3-v6so737524pgv.12
 for <barebox@lists.infradead.org>; Wed, 16 May 2018 13:01:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 May 2018 13:00:15 -0700
Message-Id: <20180516200036.29829-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180516200036.29829-1-andrew.smirnov@gmail.com>
References: <20180516200036.29829-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 07/28] ARM: mmu: Separate index and address in
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
index 59f72049f..d71cd7e38 100644
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
@@ -28,8 +30,12 @@ static inline void
 create_sections(uint32_t *ttb, unsigned long addr,
 		int size_m, unsigned int flags)
 {
-	for (addr >>= 20; addr < size_m; addr++)
-		ttb[addr] = (addr << 20) | flags;
+	unsigned long ttb_start = addr >> 20;
+	unsigned long ttb_end   = ttb_start + size_m;
+	unsigned int i;
+
+	for (i = ttb_start; i < ttb_end; i++, addr += SZ_1M)
+		ttb[i] = addr | flags;
 }
 
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
