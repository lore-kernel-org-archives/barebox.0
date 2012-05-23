Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXIBC-0007IH-0V
 for barebox@lists.infradead.org; Wed, 23 May 2012 20:29:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 May 2012 22:28:59 +0200
Message-Id: <1337804940-9512-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM startup: invalidate I-cache before jumping to
 relocated binary
To: barebox@lists.infradead.org

barebox can startup with I-cache enabled, so to be on the safe
side we should invalidate the I-cache before jumping to a binary
we just copied in place.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index ede8fd1..0fcc950 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -135,6 +135,9 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 	/* clear bss */
 	memset(__bss_start, 0, __bss_stop - __bss_start);
 
+	/* flush I-cache before jumping to the copied binary */
+	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
+
 	/* call start_barebox with its absolute address */
 	r = (unsigned int)&start_barebox;
 	__asm__ __volatile__("mov pc, %0" : : "r"(r));
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
