Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG3sK-0003J2-To
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 08:18:46 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 24 Sep 2012 10:18:33 +0200
Message-Id: <1348474714-5807-3-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1348474714-5807-1-git-send-email-jlu@pengutronix.de>
References: <1348474714-5807-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: remove ARCH_HAS_LOWLEVEL_INIT
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

This is unused now and not needed. We have a board_init_lowlevel. If a
board needs some architecture setup it can always call it from its
board_init_lowlevel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-reset.c         |    4 ----
 arch/arm/include/asm/barebox-arm.h |    1 -
 common/Kconfig                     |    3 ---
 3 files changed, 8 deletions(-)

diff --git a/arch/arm/cpu/start-reset.c b/arch/arm/cpu/start-reset.c
index e0df676..46193ef 100644
--- a/arch/arm/cpu/start-reset.c
+++ b/arch/arm/cpu/start-reset.c
@@ -40,10 +40,6 @@ void __naked __bare_init reset(void)
 	r |= 0xd3;
 	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
 
-#ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
-	arch_init_lowlevel();
-#endif
-
 	/* disable MMU stuff and caches */
 	r = get_cr();
 	r &= ~(CR_M | CR_C | CR_B | CR_S | CR_R | CR_V);
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index b880dd4..2689a04 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -41,6 +41,5 @@ extern char __ll_return[];
 
 void board_init_lowlevel(void);
 void board_init_lowlevel_return(void);
-void arch_init_lowlevel(void);
 
 #endif	/* _BAREBOX_ARM_H_ */
diff --git a/common/Kconfig b/common/Kconfig
index b97392c..bcc3581 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -292,9 +292,6 @@ config MACH_DO_LOWLEVEL_INIT
 	  on many platforms. Disabling this option allows configurations to use
 	  barebox as a second stage boot loader.
 
-config ARCH_HAS_LOWLEVEL_INIT
-	bool
-
 config PROMPT
 	string
 	prompt "barebox command prompt"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
