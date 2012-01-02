Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhfSf-00078h-Ag
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 10:49:50 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon,  2 Jan 2012 11:49:17 +0100
Message-Id: <1325501358-7110-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH] ARM: set SCTRL[A] only when architecture does not support
 unaligned access
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Recent gcc generates code with unaligned access when architecture
supports it. Setting A bit unconditionally causes data-aborts on such
code rendering barebox unusable.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 arch/arm/cpu/start.c |   11 ++++++++++-
 1 files changed, 10 insertions(+), 1 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 5e09300..ff68783 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -84,7 +84,16 @@ void __naked __bare_init reset(void)
 	/* disable MMU stuff and caches */
 	r = get_cr();
 	r &= ~(CR_M | CR_C | CR_B | CR_S | CR_R | CR_V);
-	r |= CR_A | CR_I;
+	r |= CR_I;
+
+	if (!(r & CR_U))
+		/* catch unaligned access on architectures which do not
+		 * support unaligned access */
+		r |= CR_A;
+	else
+		r &= ~CR_A;
+
+
 #ifdef __ARMEB__
 	r |= CR_B;
 #endif
-- 
1.7.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
