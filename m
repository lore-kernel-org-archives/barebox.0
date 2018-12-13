Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXKfs-0000ZG-1t
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 06:40:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2018 07:40:26 +0100
Message-Id: <20181213064026.15127-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: fix setup_c when runtime offset is != 0
To: Barebox List <barebox@lists.infradead.org>

The runtime offset has to be added to the memcpy source address and
substracted from the return address. This should have been changed in
a43e2bbc46 which changed from returning the negative runtime offset
into changing the positive runtime offset. Instead a43e2bbc46 only
changed a zero substraction ("subs r4, r0, #0") into a zero addition
("adds r4, r0, #0") which was used as a equal to zero test and changed
nothing. This part is reverted here.

Fixes wrong copy / return locations when setup_c is called with
different runtime and link addresses.

fixes: a43e2bbc46 ("ARM: return positive offset in get_runtime_offset()")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/setupc.S | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/setupc.S b/arch/arm/cpu/setupc.S
index 717500cfff..a5f311b8ec 100644
--- a/arch/arm/cpu/setupc.S
+++ b/arch/arm/cpu/setupc.S
@@ -15,13 +15,13 @@ ENTRY(setup_c)
 	push	{r4, r5}
 	mov	r5, lr
 	bl	get_runtime_offset
-	adds	r4, r0, #0
+	subs	r4, r0, #0
 	beq	1f			/* skip memcpy if already at correct address */
 	ldr	r0,=_text
 	ldr	r2,=__bss_start
 	sub	r2, r2, r0
-	sub	r1, r0, r4
-	bl	memcpy			/* memcpy(_text, _text - offset, __bss_start - _text) */
+	add	r1, r0, r4
+	bl	memcpy			/* memcpy(_text, _text + offset, __bss_start - _text) */
 1:	ldr	r0, =__bss_start
 	mov	r1, #0
 	ldr	r2, =__bss_stop
@@ -32,7 +32,7 @@ ENTRY(setup_c)
 #endif
 	mov	r0, #0
 	mcr	p15, 0, r0, c7, c5, 0	/* flush icache */
-	add	lr, r5, r4		/* adjust return address to new location */
+	sub	lr, r5, r4		/* adjust return address to new location */
 	pop	{r4, r5}
 	mov	pc, lr
 ENDPROC(setup_c)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
