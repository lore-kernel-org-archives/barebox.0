Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT4mW-0006Vy-8U
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 08:35:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  4 Mar 2015 09:35:28 +0100
Message-Id: <1425458128-8439-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1425458128-8439-1-git-send-email-s.hauer@pengutronix.de>
References: <1425458128-8439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX: remove __naked from imx*_barebox_entry
To: Barebox List <barebox@lists.infradead.org>

Since the stack is already configured when entering imx*_barebox_entry
we can remove the __naked attribute. This fixes some compilation issues
when some of the imx*_barebox_entry got too complicated to compile without
stack.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c              | 14 +++++++-------
 arch/arm/mach-imx/include/mach/esdctl.h | 16 ++++++++--------
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index c6479a0..0a71db6 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -480,7 +480,7 @@ upper_or_coalesced_range(unsigned long base0, unsigned long size0,
 	}
 }
 
-void __naked __noreturn imx1_barebox_entry(void *boarddata)
+void __noreturn imx1_barebox_entry(void *boarddata)
 {
 	unsigned long base, size;
 
@@ -493,7 +493,7 @@ void __naked __noreturn imx1_barebox_entry(void *boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __naked __noreturn imx25_barebox_entry(void *boarddata)
+void __noreturn imx25_barebox_entry(void *boarddata)
 {
 	unsigned long base, size;
 
@@ -506,7 +506,7 @@ void __naked __noreturn imx25_barebox_entry(void *boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __naked __noreturn imx27_barebox_entry(void *boarddata)
+void __noreturn imx27_barebox_entry(void *boarddata)
 {
 	unsigned long base, size;
 
@@ -521,7 +521,7 @@ void __naked __noreturn imx27_barebox_entry(void *boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __naked __noreturn imx31_barebox_entry(void *boarddata)
+void __noreturn imx31_barebox_entry(void *boarddata)
 {
 	unsigned long base, size;
 
@@ -536,7 +536,7 @@ void __naked __noreturn imx31_barebox_entry(void *boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __naked __noreturn imx35_barebox_entry(void *boarddata)
+void __noreturn imx35_barebox_entry(void *boarddata)
 {
 	unsigned long base, size;
 
@@ -551,7 +551,7 @@ void __naked __noreturn imx35_barebox_entry(void *boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __naked __noreturn imx51_barebox_entry(void *boarddata)
+void __noreturn imx51_barebox_entry(void *boarddata)
 {
 	unsigned long base, size;
 
@@ -564,7 +564,7 @@ void __naked __noreturn imx51_barebox_entry(void *boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __naked __noreturn imx53_barebox_entry(void *boarddata)
+void __noreturn imx53_barebox_entry(void *boarddata)
 {
 	unsigned long base, size;
 
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index 28d44da..468a928 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -128,14 +128,14 @@
 #define ESDCFGx_tRC_16			0x0000000f
 
 #ifndef __ASSEMBLY__
-void __naked __noreturn imx1_barebox_entry(void *boarddata);
-void __naked __noreturn imx25_barebox_entry(void *boarddata);
-void __naked __noreturn imx27_barebox_entry(void *boarddata);
-void __naked __noreturn imx31_barebox_entry(void *boarddata);
-void __naked __noreturn imx35_barebox_entry(void *boarddata);
-void __naked __noreturn imx51_barebox_entry(void *boarddata);
-void __naked __noreturn imx53_barebox_entry(void *boarddata);
-void __naked __noreturn imx6_barebox_entry(void *boarddata);
+void __noreturn imx1_barebox_entry(void *boarddata);
+void __noreturn imx25_barebox_entry(void *boarddata);
+void __noreturn imx27_barebox_entry(void *boarddata);
+void __noreturn imx31_barebox_entry(void *boarddata);
+void __noreturn imx35_barebox_entry(void *boarddata);
+void __noreturn imx51_barebox_entry(void *boarddata);
+void __noreturn imx53_barebox_entry(void *boarddata);
+void __noreturn imx6_barebox_entry(void *boarddata);
 void imx_esdctl_disable(void);
 #endif
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
