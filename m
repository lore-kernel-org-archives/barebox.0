Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44yI-0005Va-AY
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:39:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:39:16 +0100
Message-Id: <20200218153917.15937-7-s.hauer@pengutronix.de>
In-Reply-To: <20200218153917.15937-1-s.hauer@pengutronix.de>
References: <20200218153917.15937-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] Remove unused __BARE_INIT
To: Barebox List <barebox@lists.infradead.org>

__BARE_INIT is only used in one place where it doesn't need to be.
Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/hyp.S | 2 --
 include/init.h     | 3 ---
 2 files changed, 5 deletions(-)

diff --git a/arch/arm/cpu/hyp.S b/arch/arm/cpu/hyp.S
index 1314b56eab..423113c281 100644
--- a/arch/arm/cpu/hyp.S
+++ b/arch/arm/cpu/hyp.S
@@ -6,8 +6,6 @@
 .arch_extension sec
 .arch_extension virt
 
-__BARE_INIT
-
 .data
 	.align  2
 ENTRY(__boot_cpu_mode)
diff --git a/include/init.h b/include/init.h
index d1cef14b07..1c0e3f090a 100644
--- a/include/init.h
+++ b/include/init.h
@@ -11,9 +11,6 @@
 #define __exit
 #define __exitdata
 
-/* For assembly routines */
-#define __BARE_INIT	.section ".text_bare_init.text","ax"
-
 #ifndef __ASSEMBLY__
 typedef int (*initcall_t)(void);
 typedef void (*exitcall_t)(void);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
