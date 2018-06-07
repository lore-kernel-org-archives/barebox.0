Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x231.google.com ([2607:f8b0:400e:c01::231])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuYB-00069c-Aq
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:02:07 +0000
Received: by mail-pl0-x231.google.com with SMTP id g20-v6so6118183plq.1
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:01:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:36 -0700
Message-Id: <20180607130108.5339-21-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 20/52] ARM: i.MX8: Initialize system counter
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to properly initialize system counter, so it would be posible
to get accurate time delays.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx8mq.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
index 74fa8aca7..f3246e437 100644
--- a/arch/arm/mach-imx/imx8mq.c
+++ b/arch/arm/mach-imx/imx8mq.c
@@ -14,6 +14,8 @@
 #include <init.h>
 #include <common.h>
 #include <io.h>
+#include <asm/syscounter.h>
+#include <asm/system.h>
 #include <mach/generic.h>
 #include <mach/revision.h>
 #include <mach/imx8mq-regs.h>
@@ -58,6 +60,23 @@ static void imx8mq_silicon_revision(void)
 	imx_set_silicon_revision(cputypestr, reg);
 }
 
+static int imx8mq_init_syscnt_frequency(void)
+{
+	void __iomem *syscnt = IOMEM(MX8MQ_SYSCNT_CTRL_BASE_ADDR);
+	/*
+	 * Update with accurate clock frequency
+	 */
+	set_cntfrq(syscnt_get_cntfrq(syscnt));
+	syscnt_enable(syscnt);
+
+	return 0;
+}
+/*
+ * This call needs to happen before timer driver gets probed and
+ * requests its update frequency via cntfrq_el0
+ */
+core_initcall(imx8mq_init_syscnt_frequency);
+
 int imx8mq_init(void)
 {
 	imx8mq_silicon_revision();
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
