Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1alxpe-0005IR-GY
 for barebox@lists.infradead.org; Fri, 01 Apr 2016 12:05:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Apr 2016 14:05:16 +0200
Message-Id: <1459512319-32073-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1459512319-32073-1-git-send-email-s.hauer@pengutronix.de>
References: <1459512319-32073-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: pbl-multi: Fix SDRAM at end of address space
To: Barebox List <barebox@lists.infradead.org>

When SDRAM reaches to the end of the address space the comparison
membase + memsize evaluates to 0, so pc - membase < memsize can never
be true. Fix this by substracting membase on both sides of the
comparison.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/uncompress.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 5bcce6b..b8e2e9f 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -60,7 +60,7 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 		 * to the current address. Otherwise it may be a readonly location.
 		 * Copy and relocate to the start of the memory in this case.
 		 */
-		if (pc > membase && pc < membase + memsize)
+		if (pc > membase && pc - membase < memsize)
 			relocate_to_current_adr();
 		else
 			relocate_to_adr(membase);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
