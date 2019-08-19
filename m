Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhsA-0002Og-DG
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 13:38:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Aug 2019 15:38:47 +0200
Message-Id: <20190819133847.17015-9-s.hauer@pengutronix.de>
In-Reply-To: <20190819133847.17015-1-s.hauer@pengutronix.de>
References: <20190819133847.17015-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] ARM: i.MX: When generic DT image is enabled do not
 hardcode SoC
To: Barebox List <barebox@lists.infradead.org>

When only a single i.MX SoC is selected the cpu_is_mx?() macros expand
to static 0 or 1. With the generic DT image enabled it could be though
that the SoC is not a i.MX at all, so make sure that with the generic
DT image enabled the cpu_is_mx?() macros always compare against
__imx_cpu_type

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/generic.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index ac066e3f17..5102c34e4c 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -223,6 +223,15 @@ extern unsigned int __imx_cpu_type;
 # define cpu_is_vf610()		(0)
 #endif
 
+#ifdef CONFIG_BOARD_ARM_GENERIC_DT
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type 0
+# endif
+#endif
+
 #define cpu_is_mx23()	(0)
 #define cpu_is_mx28()	(0)
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
