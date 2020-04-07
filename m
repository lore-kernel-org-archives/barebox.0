Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLqCR-0002pX-RB
 for barebox@lists.infradead.org; Tue, 07 Apr 2020 15:31:41 +0000
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Date: Tue,  7 Apr 2020 17:31:11 +0200
Message-Id: <20200407153112.6513-1-giorgio.nicole@arcor.de>
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
Subject: [PATCH 1/2] ARM: i.MX: fixed enabling the MMU after switching in non
 secure mode.
To: barebox@lists.infradead.org
Cc: Giorgio Dal Molin <giorgio.nicole@arcor.de>

The Domain Access Control Register (DACR) in CP15 is banked between
secure and non secure mode: there a copy of the reg. in secure mode and a
second copy in non secure mode.
As barebox boots on the imx7 SOC it runs in secure mode and initializes
the secure-mode copy of DACR (with 0x00000001).
After switching to non secure mode, for example with the command 'smc -n'
or while booting a kernel image with global.bootm.secure_state=nonsecure,
the active value of DACR is the copy in non-secure mode and that copy
was still uninitialized and in an UNKNOWN state.

This caused the cpu to hang as soon as the MMU was enabled in non-secure
mode.

We fix this by reading the DACR value in secure mode just before switching
to non secure and then initializing it again with the same value.

Signed-off-by: Giorgio Dal Molin <giorgio.nicole@arcor.de>
---
 arch/arm/cpu/mmu.h | 9 +++++++++
 arch/arm/cpu/sm.c  | 4 +++-
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 6e7a4c035..c85e0ea05 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -39,6 +39,15 @@ static inline void set_ttbr(void *ttb)
 #define DOMAIN_CLIENT	1
 #define DOMAIN_MANAGER	3
 
+static inline unsigned long get_domain(void)
+{
+	unsigned long dacr;
+
+	asm volatile ("mrc p15, 0, %0, c3, c0, 0" : "=r"(dacr));
+
+	return dacr;
+}
+
 static inline void set_domain(unsigned val)
 {
 	/* Set the Domain Access Control Register */
diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index 1f2c236d5..cb33d9625 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -150,7 +150,7 @@ static bool armv7_have_security_extensions(void)
 int armv7_secure_monitor_install(void)
 {
 	int mmuon;
-	unsigned long ttb, vbar;
+	unsigned long ttb, vbar, dacr;
 
 	if (!armv7_have_security_extensions()) {
 		pr_err("Security extensions not implemented.\n");
@@ -164,12 +164,14 @@ int armv7_secure_monitor_install(void)
 
 	vbar = get_vbar();
 	ttb = get_ttbr();
+	dacr = get_domain();
 
 	armv7_init_nonsec();
 	__armv7_secure_monitor_install();
 
 	set_ttbr((void *)ttb);
 	set_vbar(vbar);
+	set_domain(dacr);
 
 	if (mmuon) {
 		/*
-- 
2.26.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
