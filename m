Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp11.mail.ru ([94.100.176.85])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG6hZ-0000GN-NM
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 11:52:07 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 14 Mar 2013 15:51:59 +0400
Message-Id: <1363261919-30335-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: Add CPU detection macros for ARM720
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/include/asm/system_info.h |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/system_info.h
index 56ebb11..13171cc 100644
--- a/arch/arm/include/asm/system_info.h
+++ b/arch/arm/include/asm/system_info.h
@@ -14,6 +14,9 @@
 #define CPU_ARCH_ARMv6		8
 #define CPU_ARCH_ARMv7		9
 
+#define CPU_IS_ARM720		0x41007200
+#define CPU_IS_ARM720_MASK	0xff00fff0
+
 #define CPU_IS_ARM920		0x41009200
 #define CPU_IS_ARM920_MASK	0xff00fff0
 
@@ -55,11 +58,13 @@
 #else
 #define ARM_ARCH CPU_ARCH_ARMv4T
 #endif
+#define cpu_is_arm720()	cpu_is_arm(ARM720)
 #define cpu_is_arm920()	cpu_is_arm(ARM920)
 #define cpu_is_pxa250() cpu_is_arm(PXA250)
 #define cpu_is_pxa255() cpu_is_arm(PXA255)
 #define cpu_is_pxa270() cpu_is_arm(PXA270)
 #else
+#define cpu_is_arm720() (0)
 #define cpu_is_arm920() (0)
 #define cpu_is_pxa250() (0)
 #define cpu_is_pxa255() (0)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
