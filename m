Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCSoB-0000pm-TP
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 10:07:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Sep 2012 12:07:31 +0200
Message-Id: <1347617251-9122-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mips: remove undefined local_irq_save/local_irq_restore
To: barebox@lists.infradead.org

mips currently uses local_irq_save and local_irq_restore
which are not defined. Drop them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/mipsregs.h |    4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index 16ba38e..87c48ed 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -568,7 +568,6 @@ do {									\
 	unsigned long long __val;					\
 	unsigned long __flags;						\
 									\
-	local_irq_save(__flags);					\
 	if (sel == 0)							\
 		__asm__ __volatile__(					\
 			".set\tmips64\n\t"				\
@@ -587,7 +586,6 @@ do {									\
 			"dsra\t%L0, %L0, 32\n\t"			\
 			".set\tmips0"					\
 			: "=r" (__val));				\
-	local_irq_restore(__flags);					\
 									\
 	__val;								\
 })
@@ -596,7 +594,6 @@ do {									\
 do {									\
 	unsigned long __flags;						\
 									\
-	local_irq_save(__flags);					\
 	if (sel == 0)							\
 		__asm__ __volatile__(					\
 			".set\tmips64\n\t"				\
@@ -617,7 +614,6 @@ do {									\
 			"dmtc0\t%L0, " #source ", " #sel "\n\t"		\
 			".set\tmips0"					\
 			: : "r" (val));					\
-	local_irq_restore(__flags);					\
 } while (0)
 
 #define read_c0_index()		__read_32bit_c0_register($0, 0)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
