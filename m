Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22d.google.com ([2607:f8b0:400e:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aEskV-0008Ah-2S
 for barebox@lists.infradead.org; Fri, 01 Jan 2016 05:59:39 +0000
Received: by mail-pa0-x22d.google.com with SMTP id uo6so139350016pac.1
 for <barebox@lists.infradead.org>; Thu, 31 Dec 2015 21:59:18 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 31 Dec 2015 21:58:33 -0800
Message-Id: <1451627918-31967-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/6] ARM: asm: Add convenience fucntions to access VBAR
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add two functions to get/set VBAR register.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/include/asm/system.h | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index 26fb18c..2e37675 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -71,6 +71,31 @@ static inline void set_cr(unsigned int val)
 	isb();
 }

+#if __LINUX_ARM_ARCH__ >= 7
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
+/*
+   Pre ARMv7 CPUs do not implement Security Extensions so normal
+   exceptions base address cannot be re-mapped from 0x00000000
+ */
+static inline unsigned int get_vbar(void) { return 0; }
+static inline void set_vbar(u32 vbar) {}
+#endif
+
+
 #endif

 #endif /* __ASM_ARM_SYSTEM_H */
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
