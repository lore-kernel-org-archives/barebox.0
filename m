Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R9HEB-0002PX-Um
	for barebox@lists.infradead.org; Thu, 29 Sep 2011 14:04:44 +0000
Received: by bkat2 with SMTP id t2so845778bka.36
	for <barebox@lists.infradead.org>; Thu, 29 Sep 2011 07:04:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 29 Sep 2011 18:04:32 +0400
Message-Id: <1317305076-3334-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
References: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH 2/6] dirty hack,
	fixme: disable mmu_cache_flush in arch/arm/cpu/start.c for Tegra
To: barebox@lists.infradead.org

Initial Tegra support has no initialisation routines, so
it can't initialise the caches in the right way.

MMU & cache code in arch/arm/cpu/start.c hangs up a Tegra-based system.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/cpu/start.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f8eb0a9..69fb5b0 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -74,6 +74,8 @@ void __naked __bare_init reset(void)
 #ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
 	arch_init_lowlevel();
 #endif
+
+#ifndef CONFIG_ARCH_TEGRA
 	__asm__ __volatile__ (
 		"bl __mmu_cache_flush;"
 		:
@@ -89,6 +91,7 @@ void __naked __bare_init reset(void)
 	r |= CR_B;
 #endif
 	set_cr(r);
+#endif
 
 #ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
 	board_init_lowlevel();
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
