Delivery-date: Wed, 25 Sep 2024 15:56:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSV5-002cCB-13
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 15:56:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSV5-00019O-IA
	for lore@pengutronix.de; Wed, 25 Sep 2024 15:56:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f+Eg52ihqFzWQvikSZYz+fE0w2tEjJRxmI3FqGa/4KQ=; b=XDoB+yBa3ojfpg3NgcYJ1wOzXF
	gNfjY/7q/rz2TiPk2BGRdCk+0LAMsq60zIlMeJCcxsBtJDANh4wpqb5k+TfZi1G3vM0jWDgt4/JQJ
	QQcI89+LVfhTuUA0mYnboUguEpLYuh/ggNrnQX1wJz6a6IqX9etjnaLbCL3cww5GgPENhJYd7pwy8
	km72j56SgHYvH153/lKxKYIsU/cnF/dxYt77jByXxFnq46B3cdbsMk0KErdufWvWsZrSn3w92h8si
	ujlqpaegabWTzUn7FJ3LTjft/WA4ZkmCTFEZ8pT8R+CC8bojMwHWDmS7D2+Cnd4Y6A/lJskAuaRvm
	eKi8/yPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSUR-00000005Tmc-0pKq;
	Wed, 25 Sep 2024 13:55:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSUL-00000005Tix-1mHr
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 13:55:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-0000gc-Ql; Wed, 25 Sep 2024 15:55:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-001Sjh-3z; Wed, 25 Sep 2024 15:55:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-00DChO-1W;
	Wed, 25 Sep 2024 15:55:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 15:55:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-arm-assembly-memmove-v1-4-0d92103658a0@pengutronix.de>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
In-Reply-To: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727272525; l=4977;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=8FNv4SWy8tVzJsDtUQoe43QBkxx2jk1U9W9RzTww3HM=;
 b=R0zs6APEZCBu0D980QN1Wbjp3FZOT+lTczecWjgDPxy8XtcdlmVMG71z5CJVjwfRzuo2PxlW9
 iUSY/KHamU2B8iFpyjU9BA9IaZDkpnvnNJPoKMsiMQdBPR9sXqkOrfj
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_065529_512948_10D39516 
X-CRM114-Status: GOOD (  12.88  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 04/10] ARM: update lib1funcs.S from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This updates lib1funcs.S from Linux

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/lib1funcs.S | 80 +++++++++++++++++++++++++++++-----------------
 1 file changed, 51 insertions(+), 29 deletions(-)

diff --git a/arch/arm/lib32/lib1funcs.S b/arch/arm/lib32/lib1funcs.S
index bf1d0192d6..cd8af72737 100644
--- a/arch/arm/lib32/lib1funcs.S
+++ b/arch/arm/lib32/lib1funcs.S
@@ -27,11 +27,17 @@ WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 General Public License for more details.
 
-*/
+You should have received a copy of the GNU General Public License
+along with this program; see the file COPYING.  If not, write to
+the Free Software Foundation, 59 Temple Place - Suite 330,
+Boston, MA 02111-1307, USA.  */
+
 
 #include <linux/linkage.h>
 #include <asm/assembler.h>
+#include <asm/unwind.h>
 
+.syntax unified
 
 .macro ARM_DIV_BODY dividend, divisor, result, curbit
 
@@ -92,7 +98,7 @@ General Public License for more details.
 	subhs	\dividend, \dividend, \divisor, lsr #3
 	orrhs	\result,   \result,   \curbit,  lsr #3
 	cmp	\dividend, #0			@ Early termination?
-	movnes	\curbit,   \curbit,  lsr #4	@ No, any more bits to do?
+	movsne	\curbit,   \curbit,  lsr #4	@ No, any more bits to do?
 	movne	\divisor,  \divisor, lsr #4
 	bne	1b
 
@@ -163,7 +169,7 @@ General Public License for more details.
 
 #endif
 
-	@ Perform all needed substractions to keep only the reminder.
+	@ Perform all needed subtractions to keep only the reminder.
 	@ Do comparisons in batch of 4 first.
 	subs	\order, \order, #3		@ yes, 3 is intended here
 	blt	2f
@@ -178,14 +184,14 @@ General Public License for more details.
 	subhs	\dividend, \dividend, \divisor, lsr #3
 	cmp	\dividend, #1
 	mov	\divisor, \divisor, lsr #4
-	subges	\order, \order, #4
+	subsge	\order, \order, #4
 	bge	1b
 
 	tst	\order, #3
 	teqne	\dividend, #0
 	beq	5f
 
-	@ Either 1, 2 or 3 comparison/substractions are left.
+	@ Either 1, 2 or 3 comparison/subtractions are left.
 2:	cmn	\order, #2
 	blt	4f
 	beq	3f
@@ -201,12 +207,16 @@ General Public License for more details.
 .endm
 
 
-.section .text.__udivsi3
+#ifdef CONFIG_ARM_PATCH_IDIV
+	.align	3
+#endif
+
 ENTRY(__udivsi3)
 ENTRY(__aeabi_uidiv)
+UNWIND(.fnstart)
 
 	subs	r2, r1, #1
-	moveq	pc, lr
+	reteq	lr
 	bcc	Ldiv0
 	cmp	r0, r1
 	bls	11f
@@ -216,22 +226,23 @@ ENTRY(__aeabi_uidiv)
 	ARM_DIV_BODY r0, r1, r2, r3
 
 	mov	r0, r2
-	mov	pc, lr
+	ret	lr
 
 11:	moveq	r0, #1
 	movne	r0, #0
-	mov	pc, lr
+	ret	lr
 
 12:	ARM_DIV2_ORDER r1, r2
 
 	mov	r0, r0, lsr r2
-	mov	pc, lr
+	ret	lr
 
+UNWIND(.fnend)
 ENDPROC(__udivsi3)
 ENDPROC(__aeabi_uidiv)
 
-.section .text.__umodsi3
 ENTRY(__umodsi3)
+UNWIND(.fnstart)
 
 	subs	r2, r1, #1			@ compare divisor with 1
 	bcc	Ldiv0
@@ -239,17 +250,22 @@ ENTRY(__umodsi3)
 	moveq   r0, #0
 	tsthi	r1, r2				@ see if divisor is power of 2
 	andeq	r0, r0, r2
-	movls	pc, lr
+	retls	lr
 
 	ARM_MOD_BODY r0, r1, r2, r3
 
-	mov	pc, lr
+	ret	lr
 
+UNWIND(.fnend)
 ENDPROC(__umodsi3)
 
-.section .text.__divsi3
+#ifdef CONFIG_ARM_PATCH_IDIV
+	.align 3
+#endif
+
 ENTRY(__divsi3)
 ENTRY(__aeabi_idiv)
+UNWIND(.fnstart)
 
 	cmp	r1, #0
 	eor	ip, r0, r1			@ save the sign of the result.
@@ -268,29 +284,30 @@ ENTRY(__aeabi_idiv)
 
 	cmp	ip, #0
 	rsbmi	r0, r0, #0
-	mov	pc, lr
+	ret	lr
 
 10:	teq	ip, r0				@ same sign ?
 	rsbmi	r0, r0, #0
-	mov	pc, lr
+	ret	lr
 
 11:	movlo	r0, #0
 	moveq	r0, ip, asr #31
 	orreq	r0, r0, #1
-	mov	pc, lr
+	ret	lr
 
 12:	ARM_DIV2_ORDER r1, r2
 
 	cmp	ip, #0
 	mov	r0, r3, lsr r2
 	rsbmi	r0, r0, #0
-	mov	pc, lr
+	ret	lr
 
+UNWIND(.fnend)
 ENDPROC(__divsi3)
 ENDPROC(__aeabi_idiv)
 
-.section .text.__modsi3
 ENTRY(__modsi3)
+UNWIND(.fnstart)
 
 	cmp	r1, #0
 	beq	Ldiv0
@@ -308,44 +325,49 @@ ENTRY(__modsi3)
 
 10:	cmp	ip, #0
 	rsbmi	r0, r0, #0
-	mov	pc, lr
+	ret	lr
 
+UNWIND(.fnend)
 ENDPROC(__modsi3)
 
 #ifdef CONFIG_AEABI
 
-.section .text.__aeabi_uidivmod
 ENTRY(__aeabi_uidivmod)
+UNWIND(.fnstart)
+UNWIND(.save {r0, r1, ip, lr}	)
 
 	stmfd	sp!, {r0, r1, ip, lr}
 	bl	__aeabi_uidiv
 	ldmfd	sp!, {r1, r2, ip, lr}
 	mul	r3, r0, r2
 	sub	r1, r1, r3
-	mov	pc, lr
+	ret	lr
 
+UNWIND(.fnend)
 ENDPROC(__aeabi_uidivmod)
 
-.section .text.__aeabi_idivmod
 ENTRY(__aeabi_idivmod)
-
+UNWIND(.fnstart)
+UNWIND(.save {r0, r1, ip, lr}	)
 	stmfd	sp!, {r0, r1, ip, lr}
 	bl	__aeabi_idiv
 	ldmfd	sp!, {r1, r2, ip, lr}
 	mul	r3, r0, r2
 	sub	r1, r1, r3
-	mov	pc, lr
+	ret	lr
 
+UNWIND(.fnend)
 ENDPROC(__aeabi_idivmod)
 
 #endif
 
-.section .text.Ldiv0
 Ldiv0:
-
+UNWIND(.fnstart)
+UNWIND(.pad #4)
+UNWIND(.save {lr})
 	str	lr, [sp, #-8]!
 	bl	__div0
 	mov	r0, #0			@ About as wrong as it could be.
 	ldr	pc, [sp], #8
-
-
+UNWIND(.fnend)
+ENDPROC(Ldiv0)

-- 
2.39.5



