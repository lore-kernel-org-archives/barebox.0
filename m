Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1biO0m-0006Ak-A5
 for barebox@lists.infradead.org; Fri, 09 Sep 2016 15:46:42 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Fri,  9 Sep 2016 17:43:39 +0200
Message-Id: <1473435824-7830-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 1/6] ARM: add common definitions for i.MX50 SOC
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 Documentation/boards/imx.rst                   |  1 +
 arch/arm/mach-imx/include/mach/generic.h       | 13 +++++++++++++
 arch/arm/mach-imx/include/mach/imx_cpu_types.h |  1 +
 3 files changed, 15 insertions(+)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 6912ed9..60cdcf0 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -16,6 +16,7 @@ The Internal Boot Mode is supported on:
 
 * i.MX25
 * i.MX35
+* i.MX50
 * i.MX51
 * i.MX53
 * i.MX6
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 0a4200b..243239d 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -117,6 +117,19 @@ extern unsigned int __imx_cpu_type;
 # define cpu_is_mx35()		(0)
 #endif
 
+#ifdef CONFIG_ARCH_IMX50
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX50
+# endif
+# define cpu_is_mx50()		(imx_cpu_type == IMX_CPU_IMX50)
+#else
+# define cpu_is_mx50()		(0)
+#endif
+
+
 #ifdef CONFIG_ARCH_IMX51
 # ifdef imx_cpu_type
 #  undef imx_cpu_type
diff --git a/arch/arm/mach-imx/include/mach/imx_cpu_types.h b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
index 781ab9f..8472488 100644
--- a/arch/arm/mach-imx/include/mach/imx_cpu_types.h
+++ b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
@@ -7,6 +7,7 @@
 #define IMX_CPU_IMX27	27
 #define IMX_CPU_IMX31	31
 #define IMX_CPU_IMX35	35
+#define IMX_CPU_IMX50	50
 #define IMX_CPU_IMX51	51
 #define IMX_CPU_IMX53	53
 #define IMX_CPU_IMX6	6
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
