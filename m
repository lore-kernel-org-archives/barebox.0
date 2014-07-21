Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9E0Z-0003TR-KX
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 13:52:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 15:51:39 +0200
Message-Id: <1405950699-23106-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Increase automatic malloc area space
To: barebox@lists.infradead.org

This increases the malloc to half of the available memory in a
bank. This helps with some usecases requiring a lot of memory.
The other half is still available as scratch area and for
putting the kernel binary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 961873d..264420d 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -103,7 +103,7 @@ static noinline __noreturn void __start(unsigned long membase,
 
 	/*
 	 * Maximum malloc space is the Kconfig value if given
-	 * or 64MB.
+	 * or 1GB.
 	 */
 	if (MALLOC_SIZE > 0) {
 		malloc_start = malloc_end - MALLOC_SIZE;
@@ -111,8 +111,8 @@ static noinline __noreturn void __start(unsigned long membase,
 			malloc_start = membase;
 	} else {
 		malloc_start = malloc_end - (malloc_end - membase) / 2;
-		if (malloc_end - malloc_start > SZ_64M)
-			malloc_start = malloc_end - SZ_64M;
+		if (malloc_end - malloc_start > SZ_1G)
+			malloc_start = malloc_end - SZ_1G;
 	}
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
