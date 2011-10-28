Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJmQ2-0006CQ-LO
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 13:24:23 +0000
Received: by mail-bw0-f49.google.com with SMTP id 11so1504043bke.36
	for <barebox@lists.infradead.org>; Fri, 28 Oct 2011 06:24:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Oct 2011 17:24:09 +0400
Message-Id: <1319808253-16693-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1319808253-16693-1-git-send-email-antonynpavlov@gmail.com>
References: <1319808253-16693-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH V2 2/6] dirty hack,
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
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
