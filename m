Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLOn-0008Ja-13
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:22:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:21:41 +0100
Message-Id: <1385482901-23057-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: start: fix fdt inside valid memory check
To: barebox@lists.infradead.org

We want to check whether boarddata contains a valid dtb if it's inside
valid memory. This includes the base of SDRAM, so use '>=' instead of '>'.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f0a7df3..21c63c0 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -82,7 +82,7 @@ static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 	 * If boarddata is a pointer inside valid memory and contains a
 	 * FDT magic then use it as later to probe devices
 	 */
-	if (boarddata > membase && boarddata < membase + memsize &&
+	if (boarddata >= membase && boarddata < membase + memsize &&
 			get_unaligned_be32((void *)boarddata) == FDT_MAGIC) {
 		uint32_t totalsize = get_unaligned_be32((void *)boarddata + 4);
 		endmem -= ALIGN(totalsize, 64);
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
