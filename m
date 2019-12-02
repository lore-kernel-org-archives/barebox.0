Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibn7T-0003i6-Gz
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 14:56:12 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ca19so7419328pjb.8
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 06:56:10 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 06:56:03 -0800
Message-Id: <20191202145603.738-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: VFxxx: Display UID information on boot
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/vf610.h | 2 ++
 arch/arm/mach-imx/vf610.c              | 8 ++++++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/vf610.h b/arch/arm/mach-imx/include/mach/vf610.h
index 6d00d2e45..7ac10a7b1 100644
--- a/arch/arm/mach-imx/include/mach/vf610.h
+++ b/arch/arm/mach-imx/include/mach/vf610.h
@@ -48,4 +48,6 @@ static inline int vf610_cpu_revision(void)
 	return readl(VF610_ROM_VERSION_OFFSET) & 0xff;
 }
 
+u64 vf610_uid(void);
+
 #endif
diff --git a/arch/arm/mach-imx/vf610.c b/arch/arm/mach-imx/vf610.c
index b548cbcb5..2fbd6393e 100644
--- a/arch/arm/mach-imx/vf610.c
+++ b/arch/arm/mach-imx/vf610.c
@@ -19,6 +19,7 @@
 #include <mach/revision.h>
 #include <mach/vf610.h>
 #include <mach/reset-reason.h>
+#include <mach/ocotp.h>
 
 static const struct imx_reset_reason vf610_reset_reasons[] = {
 	{ VF610_SRC_SRSR_POR_RST,       RESET_POR,   0 },
@@ -30,6 +31,11 @@ static const struct imx_reset_reason vf610_reset_reasons[] = {
 	{ /* sentinel */ }
 };
 
+u64 vf610_uid(void)
+{
+	return imx_ocotp_read_uid(IOMEM(VF610_OCOTP_BASE_ADDR));
+}
+
 int vf610_init(void)
 {
 	const char *cputypestr;
@@ -57,5 +63,7 @@ int vf610_init(void)
 
 	imx_set_silicon_revision(cputypestr, vf610_cpu_revision());
 	imx_set_reset_reason(src + IMX_SRC_SRSR, vf610_reset_reasons);
+	pr_info("%s unique ID: %llx\n", cputypestr, vf610_uid());
+
 	return 0;
 }
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
