Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srlr9-0005KN-I8
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 08:13:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jul 2012 10:12:58 +0200
Message-Id: <1342685582-13244-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] ARM startup: calculate offset instead of runtime address
To: barebox@lists.infradead.org

Calculating the offset between runtime and linked address makes the
intention of the binary copy function a bit more clear.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 523179d..cabe4d2 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -104,7 +104,7 @@ void __naked __bare_init reset(void)
  */
 void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 {
-	uint32_t r, addr;
+	uint32_t r, addr, offset;
 
 	/*
 	 * Get runtime address of this function. Do not
@@ -116,13 +116,13 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 	r = STACK_BASE + STACK_SIZE - 16;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
-	/* Get start of binary image */
-	addr -= (uint32_t)&__ll_return - TEXT_BASE;
+	/* Get offset between linked address and runtime address */
+	offset = (uint32_t)__ll_return - addr;
 
 	/* relocate to link address if necessary */
-	if (addr != TEXT_BASE)
-		memcpy((void *)TEXT_BASE, (void *)addr,
-				(unsigned int)&__bss_start - TEXT_BASE);
+	if (offset)
+		memcpy((void *)_text, (void *)(_text - offset),
+				__bss_start - _text);
 
 	/* clear bss */
 	memset(__bss_start, 0, __bss_stop - __bss_start);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
