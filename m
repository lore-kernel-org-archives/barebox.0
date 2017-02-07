Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cb1Pa-0004i9-QJ
 for barebox@lists.infradead.org; Tue, 07 Feb 2017 08:46:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Feb 2017 09:43:24 +0100
Message-Id: <20170207084327.7691-2-s.hauer@pengutronix.de>
In-Reply-To: <20170207084327.7691-1-s.hauer@pengutronix.de>
References: <20170207084327.7691-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: Add UNWIND macro
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/unwind.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/include/asm/unwind.h b/arch/arm/include/asm/unwind.h
index 311ad3d66..a6f3a9174 100644
--- a/arch/arm/include/asm/unwind.h
+++ b/arch/arm/include/asm/unwind.h
@@ -48,4 +48,10 @@ extern void unwind_backtrace(struct pt_regs *regs);
 
 #endif	/* !__ASSEMBLY__ */
 
+#ifdef CONFIG_ARM_UNWIND
+#define UNWIND(code...)		code
+#else
+#define UNWIND(code...)
+#endif
+
 #endif	/* __ASM_UNWIND_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
