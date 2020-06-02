Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2gZ-0006s1-Vh
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 08:54:20 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 10:54:04 +0200
Message-Id: <20200602085412.16554-18-a.fatoum@pengutronix.de>
In-Reply-To: <20200602085412.16554-1-a.fatoum@pengutronix.de>
References: <20200602085412.16554-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 17/25] include: <asm-generic/atomic.h>: remove stub IRQ
 save/restore
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For an architecture to use <asm-generic/atomic.h>, it must define
local_irq_save() and local_irq_restore(). Instead of having every
platform define duplicate their stub definition, just drop them
altogether, so <asm-generic/atomic.h> can be used freestanding.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/atomic.h | 26 --------------------------
 1 file changed, 26 deletions(-)

diff --git a/include/asm-generic/atomic.h b/include/asm-generic/atomic.h
index 6357b66a5304..449cecaabc74 100644
--- a/include/asm-generic/atomic.h
+++ b/include/asm-generic/atomic.h
@@ -21,73 +21,47 @@ typedef struct { volatile int counter; } atomic_t;
 
 static inline void atomic_add(int i, volatile atomic_t *v)
 {
-	unsigned long flags = 0;
-
-	local_irq_save(flags);
 	v->counter += i;
-	local_irq_restore(flags);
 }
 
 static inline void atomic_sub(int i, volatile atomic_t *v)
 {
-	unsigned long flags = 0;
-
-	local_irq_save(flags);
 	v->counter -= i;
-	local_irq_restore(flags);
 }
 
 static inline void atomic_inc(volatile atomic_t *v)
 {
-	unsigned long flags = 0;
-
-	local_irq_save(flags);
 	v->counter += 1;
-	local_irq_restore(flags);
 }
 
 static inline void atomic_dec(volatile atomic_t *v)
 {
-	unsigned long flags = 0;
-
-	local_irq_save(flags);
 	v->counter -= 1;
-	local_irq_restore(flags);
 }
 
 static inline int atomic_dec_and_test(volatile atomic_t *v)
 {
-	unsigned long flags = 0;
 	int val;
 
-	local_irq_save(flags);
 	val = v->counter;
 	v->counter = val -= 1;
-	local_irq_restore(flags);
 
 	return val == 0;
 }
 
 static inline int atomic_add_negative(int i, volatile atomic_t *v)
 {
-	unsigned long flags = 0;
 	int val;
 
-	local_irq_save(flags);
 	val = v->counter;
 	v->counter = val += i;
-	local_irq_restore(flags);
 
 	return val < 0;
 }
 
 static inline void atomic_clear_mask(unsigned long mask, unsigned long *addr)
 {
-	unsigned long flags = 0;
-
-	local_irq_save(flags);
 	*addr &= ~mask;
-	local_irq_restore(flags);
 }
 
 /* Atomic operations are already serializing on ARM */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
