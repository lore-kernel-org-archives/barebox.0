Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLqDJ-0003MW-Ul
 for barebox@lists.infradead.org; Tue, 07 Apr 2020 15:32:35 +0000
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Date: Tue,  7 Apr 2020 17:32:17 +0200
Message-Id: <20200407153217.6568-1-giorgio.nicole@arcor.de>
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
Subject: [PATCH 2/2] ARM: sm.c: add the attribute 'volatile' to some asm()
 statements.
To: barebox@lists.infradead.org
Cc: Giorgio Dal Molin <giorgio.nicole@arcor.de>

Prevent the compiler to eventually cache register values read/written
to/from CP15.

Signed-off-by: Giorgio Dal Molin <giorgio.nicole@arcor.de>
---
 arch/arm/cpu/sm.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index cb33d9625..f5a1edbd4 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -26,7 +26,7 @@ static unsigned int read_id_pfr1(void)
 {
 	unsigned int reg;
 
-	asm("mrc p15, 0, %0, c0, c1, 1\n" : "=r"(reg));
+	asm volatile ("mrc p15, 0, %0, c0, c1, 1\n" : "=r"(reg));
 	return reg;
 }
 
@@ -34,18 +34,18 @@ static u32 read_nsacr(void)
 {
 	unsigned int reg;
 
-	asm("mrc p15, 0, %0, c1, c1, 2\n" : "=r"(reg));
+	asm volatile ("mrc p15, 0, %0, c1, c1, 2\n" : "=r"(reg));
 	return reg;
 }
 
 static void write_nsacr(u32 val)
 {
-	asm("mcr p15, 0, %0, c1, c1, 2" : : "r"(val));
+	asm volatile ("mcr p15, 0, %0, c1, c1, 2" : : "r"(val));
 }
 
 static void write_mvbar(u32 val)
 {
-	asm("mcr p15, 0, %0, c12, c0, 1" : : "r"(val));
+	asm volatile ("mcr p15, 0, %0, c12, c0, 1" : : "r"(val));
 }
 
 static int cpu_is_virt_capable(void)
-- 
2.26.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
