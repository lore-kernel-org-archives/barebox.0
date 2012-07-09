Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1So86Y-00013t-Cg
 for barebox@lists.infradead.org; Mon, 09 Jul 2012 07:10:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Jul 2012 09:09:39 +0200
Message-Id: <1341817779-29531-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Enable unaligned accesses on armv6 and later
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

We have the following in the tree:

|commit af42feb9d255bc3ea3b514180f265479ea8834f9
|Author: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
|Date:   Mon Jan 2 11:49:17 2012 +0100
|
|    ARM: set SCTRL[A] only when architecture does not support unaligned access
|
|    Recent gcc generates code with unaligned access when architecture
|    supports it. Setting A bit unconditionally causes data-aborts on such
|    code rendering barebox unusable.
|
|    Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
|    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

What the patch tried is correct: We should set the A bit only when the architecture
does not support unaligned accesses. To figure out whether the architecture supports
unaligned accesses the patch tested for the U bit which is wrong. The U bit may be
0 after a reset, so instead of testing for the U bit we have to set it. This can
be done on armv6 and later. All others have the A bit set to trap unaligned accesses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Enrico, can you confirm this is correct?

Thanks
 Sascha

 arch/arm/cpu/start.c |   12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 3c282ee..523179d 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -81,13 +81,11 @@ void __naked __bare_init reset(void)
 	r &= ~(CR_M | CR_C | CR_B | CR_S | CR_R | CR_V);
 	r |= CR_I;
 
-	if (!(r & CR_U))
-		/* catch unaligned access on architectures which do not
-		 * support unaligned access */
-		r |= CR_A;
-	else
-		r &= ~CR_A;
-
+#if __LINUX_ARM_ARCH__ >= 6
+	r |= CR_U;
+#else
+	r |= CR_A;
+#endif
 
 #ifdef __ARMEB__
 	r |= CR_B;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
