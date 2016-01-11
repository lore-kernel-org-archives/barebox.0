Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIQpI-0003KT-OQ
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 00:59:18 +0000
Received: by mail-pf0-x244.google.com with SMTP id e65so3009841pfe.0
 for <barebox@lists.infradead.org>; Sun, 10 Jan 2016 16:58:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 10 Jan 2016 16:58:10 -0800
Message-Id: <1452473892-19791-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 1/3] ARM: asm: Add convenience fucntions to access VBAR
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add two functions to get/set VBAR register.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Changes since v1 (http://lists.infradead.org/pipermail/barebox/2015-December/025685.html):

 - Use CONFIG_CPU_32v7 instead of __LINUX_ARM_ARCH__

---
 arch/arm/include/asm/system.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index 26fb18c..b118a42 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -71,6 +71,26 @@ static inline void set_cr(unsigned int val)
 	isb();
 }

+#ifdef CONFIG_CPU_32v7
+static inline unsigned int get_vbar(void)
+{
+	unsigned int vbar;
+	asm volatile("mrc p15, 0, %0, c12, c0, 0 @ get VBAR"
+		     : "=r" (vbar) : : "cc");
+	return vbar;
+}
+
+static inline void set_vbar(unsigned int vbar)
+{
+	asm volatile("mcr p15, 0, %0, c12, c0, 0 @ set VBAR"
+		     : : "r" (vbar) : "cc");
+	isb();
+}
+#else
+static inline unsigned int get_vbar(void) { return 0; }
+static inline void set_vbar(unsigned int vbar) {}
+#endif
+
 #endif

 #endif /* __ASM_ARM_SYSTEM_H */
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
