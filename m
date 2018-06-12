Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22c.google.com ([2607:f8b0:400e:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqIl-0007DZ-VE
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:04 +0000
Received: by mail-pl0-x22c.google.com with SMTP id k1-v6so174338plt.2
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:53:53 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:52:36 -0700
Message-Id: <20180612205310.25745-21-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 20/54] ARM: i.MX8: Initialize system counter
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
