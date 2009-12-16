Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 16 Dec 2009 15:49:17 +0100
Message-Id: <1260974958-21832-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1260974958-21832-1-git-send-email-mkl@pengutronix.de>
References: <1260974958-21832-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/2] arm/lib: add eabi names of helper functions
To: u-boot-v2@lists.infradead.org
Cc: sha@pengutronix.de

Since commit e2b4a792f8751d906d17b7ae343952f78dc41d67, we don't
undoncitionally link with OABI. If now EABI is selected there are a
number of missing helper functions, because they have new names now.

This patch add the abi names to the existing helper functions.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/lib/_ashldi3.S |    2 ++
 arch/arm/lib/_ashrdi3.S |    2 ++
 arch/arm/lib/_divsi3.S  |    2 ++
 arch/arm/lib/_lshrdi3.S |    2 ++
 arch/arm/lib/_udivsi3.S |    3 +++
 5 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/arch/arm/lib/_ashldi3.S b/arch/arm/lib/_ashldi3.S
index 7344aa7..e1c1bf3 100644
--- a/arch/arm/lib/_ashldi3.S
+++ b/arch/arm/lib/_ashldi3.S
@@ -38,6 +38,8 @@ Boston, MA 02110-1301, USA.  */
 
 .globl __ashldi3
 __ashldi3:
+.globl __aeabi_llsl
+__aeabi_llsl:
 
 	subs	r3, r2, #32
 	rsb	ip, r2, #32
diff --git a/arch/arm/lib/_ashrdi3.S b/arch/arm/lib/_ashrdi3.S
index 8994557..e631554 100644
--- a/arch/arm/lib/_ashrdi3.S
+++ b/arch/arm/lib/_ashrdi3.S
@@ -38,6 +38,8 @@ Boston, MA 02110-1301, USA.  */
 
 .globl __ashrdi3
 __ashrdi3:
+.globl __aeabi_lasr
+__aeabi_lasr:
 
 	subs	r3, r2, #32
 	rsb	ip, r2, #32
diff --git a/arch/arm/lib/_divsi3.S b/arch/arm/lib/_divsi3.S
index f6cd2f9..2fbb49d 100644
--- a/arch/arm/lib/_divsi3.S
+++ b/arch/arm/lib/_divsi3.S
@@ -99,6 +99,8 @@
 	.align	5
 .globl __divsi3
 __divsi3:
+.globl __aeabi_idiv
+__aeabi_idiv:
 	cmp	r1, #0
 	eor	ip, r0, r1			@ save the sign of the result.
 	beq	Ldiv0
diff --git a/arch/arm/lib/_lshrdi3.S b/arch/arm/lib/_lshrdi3.S
index 44b335b..71e7f3e 100644
--- a/arch/arm/lib/_lshrdi3.S
+++ b/arch/arm/lib/_lshrdi3.S
@@ -36,6 +36,8 @@ Boston, MA 02110-1301, USA.  */
 
 .globl __lshrdi3
 __lshrdi3:
+.globl __aeabi_llsr
+__aeabi_llsr:
 
 	subs	r3, r2, #32
 	rsb	ip, r2, #32
diff --git a/arch/arm/lib/_udivsi3.S b/arch/arm/lib/_udivsi3.S
index 1975a0e..bc89b27 100644
--- a/arch/arm/lib/_udivsi3.S
+++ b/arch/arm/lib/_udivsi3.S
@@ -13,8 +13,11 @@ curbit		.req	r3
 
 	.globl	 __udivsi3
 	.type  __udivsi3       ,function
+	.globl   __aeabi_uidiv
+	.type  __aeabi_uidiv   ,function
 	.align	0
  __udivsi3      :
+__aeabi_uidiv   :
 	cmp	divisor, #0
 	beq	Ldiv0
 	mov	curbit, #1
-- 
1.6.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
