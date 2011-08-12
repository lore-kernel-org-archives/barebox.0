Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qrs8q-00024x-HY
	for barebox@lists.infradead.org; Fri, 12 Aug 2011 13:51:17 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 4B70BFFB211
	for <barebox@lists.infradead.org>;
	Fri, 12 Aug 2011 15:51:27 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 12 Aug 2011 15:32:07 +0200
Message-Id: <1313155927-30300-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1313155927-30300-1-git-send-email-plagnioj@jcrosoft.com>
References: <1313155927-30300-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] imx: convert cpu_is to IS_BUILTIN
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-imx/include/mach/generic.h |   82 ++++++++----------------------
 1 files changed, 21 insertions(+), 61 deletions(-)
 rewrite arch/arm/mach-imx/include/mach/generic.h (73%)

diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
dissimilarity index 73%
index 8ff04fb..54a6bd3 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -1,61 +1,21 @@
-
-int imx_silicon_revision(void);
-#define IMX27_CHIP_REVISION_1_0   0
-#define IMX27_CHIP_REVISION_2_0   1
-
-#define IMX35_CHIP_REVISION_1_0   0x10
-#define IMX35_CHIP_REVISION_2_0   0x20
-
-u64 imx_uid(void);
-
-
-#ifdef CONFIG_ARCH_IMX1
-#define cpu_is_mx1()	(1)
-#else
-#define cpu_is_mx1()	(0)
-#endif
-
-#ifdef CONFIG_ARCH_IMX21
-#define cpu_is_mx21()	(1)
-#else
-#define cpu_is_mx21()	(0)
-#endif
-
-#ifdef CONFIG_ARCH_IMX25
-#define cpu_is_mx25()	(1)
-#else
-#define cpu_is_mx25()	(0)
-#endif
-
-#ifdef CONFIG_ARCH_IMX27
-#define cpu_is_mx27()	(1)
-#else
-#define cpu_is_mx27()	(0)
-#endif
-
-#ifdef CONFIG_ARCH_IMX31
-#define cpu_is_mx31()	(1)
-#else
-#define cpu_is_mx31()	(0)
-#endif
-
-#ifdef CONFIG_ARCH_IMX35
-#define cpu_is_mx35()	(1)
-#else
-#define cpu_is_mx35()	(0)
-#endif
-
-#ifdef CONFIG_ARCH_IMX51
-#define cpu_is_mx51()	(1)
-#else
-#define cpu_is_mx51()	(0)
-#endif
-
-#ifdef CONFIG_ARCH_IMX53
-#define cpu_is_mx53()	(1)
-#else
-#define cpu_is_mx53()	(0)
-#endif
-
-#define cpu_is_mx23()	(0)
-#define cpu_is_mx28()	(0)
+
+int imx_silicon_revision(void);
+#define IMX27_CHIP_REVISION_1_0   0
+#define IMX27_CHIP_REVISION_2_0   1
+
+#define IMX35_CHIP_REVISION_1_0   0x10
+#define IMX35_CHIP_REVISION_2_0   0x20
+
+u64 imx_uid(void);
+
+
+#define cpu_is_mx1()	IS_BUILTIN(CONFIG_ARCH_IMX1)
+#define cpu_is_mx21()	IS_BUILTIN(CONFIG_ARCH_IMX21)
+#define cpu_is_mx25()	IS_BUILTIN(CONFIG_ARCH_IMX25)
+#define cpu_is_mx27()	IS_BUILTIN(CONFIG_ARCH_IMX27)
+#define cpu_is_mx31()	IS_BUILTIN(CONFIG_ARCH_IMX31)
+#define cpu_is_mx35()	IS_BUILTIN(CONFIG_ARCH_IMX35)
+#define cpu_is_mx51()	IS_BUILTIN(CONFIG_ARCH_IMX51)
+#define cpu_is_mx53()	IS_BUILTIN(CONFIG_ARCH_IMX53)
+#define cpu_is_mx23()	(0)
+#define cpu_is_mx28()	(0)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
