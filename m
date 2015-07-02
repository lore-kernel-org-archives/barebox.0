Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAXay-0003i2-0e
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 06:03:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Jul 2015 08:03:13 +0200
Message-Id: <1435816993-2037-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: start: Fix code reordering problem
To: Barebox List <barebox@lists.infradead.org>

This adds a barrier after setup_c(). This is necessary because otherwise
some global variable assignments may be reordered by the compiler to be
executed before setup_c which cannot work.
This was observed when doing other unrelated changes to the start function,
it seems in current mainline state the compiler does not actually reorder
the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 304ed0c..91fd9b9 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -61,6 +61,8 @@ static noinline __noreturn void __start(unsigned long membase,
 
 	setup_c();
 
+	barrier();
+
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
 	barebox_boarddata = boarddata;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
