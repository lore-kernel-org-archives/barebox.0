Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahz9-0006gH-Uh
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz7-0006u0-UZ
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:06 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:30 +0100
Message-Id: <20191129151505.23946-5-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 04/39] ARM: implement CONFIG_PBL_BREAK for ARM64
To: barebox@lists.infradead.org

ARM64 uses a different assembler mnemonic for the breakpoint.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/common.c                   | 4 ++++
 arch/arm/include/asm/barebox-arm-head.h | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index c81b2b37912e..c7d1709b8bed 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -51,7 +51,11 @@ void pbl_barebox_break(void)
 {
 	__asm__ __volatile__ (
 #ifdef CONFIG_PBL_BREAK
+#ifdef CONFIG_CPU_V8
+		"brk #17\n"
+#else
 		"bkpt #17\n"
+#endif
 		"nop\n"
 #else
 		"nop\n"
diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 83a22c4d94c3..8409a77d2e7c 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -65,7 +65,11 @@ static inline void __barebox_arm_head(void)
 		".endr\n"
 		"2:\n"
 #ifdef CONFIG_PBL_BREAK
+#ifdef CONFIG_CPU_V8
+		"brk #17\n"
+#else
 		"bkpt #17\n"
+#endif
 		"nop\n"
 #else
 		"nop\n"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
