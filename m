Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQGG-0007iQ-R7
 for barebox@lists.infradead.org; Mon, 07 Oct 2019 10:29:06 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Oct 2019 12:28:59 +0200
Message-Id: <20191007102859.9521-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] ARM: use system.h's get_cr() for cpuinfo
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Instead of open-coding the get_cr(), use the already available helper
in <asm/system.h> same as we do for 64-bit ARMv8.
The only difference is that the "memory" clobber is replaced by "cc".
This is ok as we don't expect get_cr() to affect memory and because
we do it elsewhere in barebox without a "memory" clobber already.

While at it, move it out the #if/#else clause as the helper changes
behavior depending on the same CONFIG option anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cpuinfo.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 1ba3b4379c30..ff6e1eb87b9f 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -76,8 +76,6 @@ static int do_cpuinfo(int argc, char *argv[])
 		: "=r" (cache)
 		:
 		: "memory");
-
-	cr = get_cr();
 #else
 	__asm__ __volatile__(
 		"mrc    p15, 0, %0, c0, c0, 0   @ read control reg\n"
@@ -90,13 +88,8 @@ static int do_cpuinfo(int argc, char *argv[])
 		: "=r" (cache)
 		:
 		: "memory");
-
-	__asm__ __volatile__(
-		"mrc    p15, 0, %0, c1, c0, 0   @ read control reg\n"
-		: "=r" (cr)
-		:
-		: "memory");
 #endif
+	cr = get_cr();
 
 	switch (mainid >> 24) {
 	case 0x41:
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
