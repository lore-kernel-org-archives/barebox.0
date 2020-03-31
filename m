Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBpg-0003gO-0d
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 08:01:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Mar 2020 10:01:07 +0200
Message-Id: <20200331080109.24402-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM64: Setup vectors in all lower execption levels
To: Barebox List <barebox@lists.infradead.org>

barebox on ARM64 often changes the exception level when loading a TF-A
or other secure monitor firmware. Make sure we have setup the vector
table in the exception level we then end up in.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts_64.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index e8475d2e47..baccf47808 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -194,15 +194,22 @@ extern unsigned long vectors;
 
 static int aarch64_init_vectors(void)
 {
-        unsigned int el;
-
-        el = current_el();
-        if (el == 1)
-                asm volatile("msr vbar_el1, %0" : : "r" (&vectors) : "cc");
-        else if (el == 2)
-                asm volatile("msr vbar_el2, %0" : : "r" (&vectors) : "cc");
-        else
-                asm volatile("msr vbar_el3, %0" : : "r" (&vectors) : "cc");
+	unsigned int el;
+
+	el = current_el();
+	switch (el) {
+	case 3:
+		asm volatile("msr vbar_el3, %0" : : "r" (&vectors) : "cc");
+		/* Fall through */
+	case 2:
+		asm volatile("msr vbar_el2, %0" : : "r" (&vectors) : "cc");
+		/* Fall through */
+	case 1:
+		asm volatile("msr vbar_el1, %0" : : "r" (&vectors) : "cc");
+		/* Fall through */
+	default:
+		break;
+	}
 
 	return 0;
 }
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
