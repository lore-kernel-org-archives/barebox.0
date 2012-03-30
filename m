Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDU9o-000751-2z
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 05:13:56 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 5711FFF8388
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 07:14:19 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:58:45 +0200
Message-Id: <1333083528-24289-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330045639.GZ444@game.jcrosoft.org>
References: <20120330045639.GZ444@game.jcrosoft.org>
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
Subject: [PATCH 6/9] ARM: at91: add sam9x5 series CPU definition and
 cpu_is_xxx macro
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/include/mach/cpu.h |   28 ++++++++++++++++++++++++++++
 1 files changed, 28 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index 3bef931..0700f21 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -27,6 +27,7 @@
 #define ARCH_ID_AT91SAM9G45	0x819b05a0
 #define ARCH_ID_AT91SAM9G45MRL	0x819b05a2	/* aka 9G45-ES2 & non ES lots */
 #define ARCH_ID_AT91SAM9G45ES	0x819b05a1	/* 9G45-ES (Engineering Sample) */
+#define ARCH_ID_AT91SAM9X5	0x819a05a0
 #define ARCH_ID_AT91CAP9	0x039A03A0
 
 #define ARCH_ID_AT91SAM9XE128	0x329973a0
@@ -55,6 +56,12 @@ static inline unsigned long at91_cpu_fully_identify(void)
 #define ARCH_EXID_AT91SAM9G46	0x00000003
 #define ARCH_EXID_AT91SAM9G45	0x00000004
 
+#define ARCH_EXID_AT91SAM9G15	0x00000000
+#define ARCH_EXID_AT91SAM9G35	0x00000001
+#define ARCH_EXID_AT91SAM9X35	0x00000002
+#define ARCH_EXID_AT91SAM9G25	0x00000003
+#define ARCH_EXID_AT91SAM9X25	0x00000004
+
 static inline unsigned long at91_exid_identify(void)
 {
 	return at91_sys_read(AT91_DBGU_EXID);
@@ -143,6 +150,27 @@ static inline unsigned long at91cap9_rev_identify(void)
 #define cpu_is_at91sam9m11()	(0)
 #endif
 
+#ifdef CONFIG_ARCH_AT91SAM9X5
+#define cpu_is_at91sam9x5()	(at91_cpu_identify() == ARCH_ID_AT91SAM9X5)
+#define cpu_is_at91sam9g15()	(cpu_is_at91sam9x5() && \
+				(at91_exid_identify() == ARCH_EXID_AT91SAM9G15))
+#define cpu_is_at91sam9g35()	(cpu_is_at91sam9x5() && \
+				(at91_exid_identify() == ARCH_EXID_AT91SAM9G35))
+#define cpu_is_at91sam9x35()	(cpu_is_at91sam9x5() && \
+				(at91_exid_identify() == ARCH_EXID_AT91SAM9X35))
+#define cpu_is_at91sam9g25()	(cpu_is_at91sam9x5() && \
+				(at91_exid_identify() == ARCH_EXID_AT91SAM9G25))
+#define cpu_is_at91sam9x25()	(cpu_is_at91sam9x5() && \
+				(at91_exid_identify() == ARCH_EXID_AT91SAM9X25))
+#else
+#define cpu_is_at91sam9x5()	(0)
+#define cpu_is_at91sam9g15()	(0)
+#define cpu_is_at91sam9g35()	(0)
+#define cpu_is_at91sam9x35()	(0)
+#define cpu_is_at91sam9g25()	(0)
+#define cpu_is_at91sam9x25()	(0)
+#endif
+
 #ifdef CONFIG_ARCH_AT91CAP9
 #define cpu_is_at91cap9()	(at91_cpu_identify() == ARCH_ID_AT91CAP9)
 #define cpu_is_at91cap9_revB()	(at91cap9_rev_identify() == ARCH_REVISION_CAP9_B)
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
