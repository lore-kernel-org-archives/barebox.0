Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuY8-00069L-SC
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:02:06 +0000
Received: by mail-pl0-x244.google.com with SMTP id f1-v6so6108207plt.6
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:01:46 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:34 -0700
Message-Id: <20180607130108.5339-19-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 18/52] ARM: Add constants and helpers for system counter
 interface
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add constants and helpers for system counter interface as can be found
in section "I1.3 Generic Timer registers" of "ARM Architecture
Reference Manual ARMv8, for ARMv8-A architecture"

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/include/asm/syscounter.h | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 arch/arm/include/asm/syscounter.h

diff --git a/arch/arm/include/asm/syscounter.h b/arch/arm/include/asm/syscounter.h
new file mode 100644
index 000000000..a644cfaad
--- /dev/null
+++ b/arch/arm/include/asm/syscounter.h
@@ -0,0 +1,24 @@
+#ifndef _ASM_SYSCNT_H_
+#define _ASM_SYSCNT_H_
+
+#include <io.h>
+
+#define SYSCNT_CNTCR		0x0000
+#define SYSCNT_CNTCR_EN		BIT(0)
+#define SYSCNT_CNTCR_HDBG	BIT(1)
+#define SYSCNT_CNTCR_FCREQ(n)	BIT(8 + (n))
+
+#define SYSCNT_CNTFID(n)	(0x0020 + 4 * (n))
+
+static inline void syscnt_enable(void __iomem *syscnt)
+{
+	writel(SYSCNT_CNTCR_EN | SYSCNT_CNTCR_HDBG | SYSCNT_CNTCR_FCREQ(0),
+	       syscnt + SYSCNT_CNTCR);
+}
+
+static inline u32 syscnt_get_cntfrq(void __iomem *syscnt)
+{
+	return readl(syscnt + SYSCNT_CNTFID(0));
+}
+
+#endif
\ No newline at end of file
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
