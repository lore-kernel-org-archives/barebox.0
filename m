Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFesV-0005kS-PV
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:50:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 10:50:23 +0200
Message-Id: <1437036628-29439-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
References: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] ARM: i.MX6: create cpu_is() functions for use in PBL
To: Barebox List <barebox@lists.infradead.org>

The current cpu_is_mx6x() functions need the imx6_cpu_type variable
which make them unsuitable for PBL. Add a set of cpu_mx6_is_mx6x()
functions which can be called from PBL aswell. Unlike the cpu_is_mx6x()
functions the cpu_mx6_is_mx6x() functions assume that they are called on
i.MX6 only.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx6.h | 41 +++++++++++++++--------------------
 1 file changed, 17 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index 3b75421..3ddb6d2 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -48,29 +48,22 @@ static inline int imx6_cpu_type(void)
 	return __imx6_cpu_type();
 }
 
-static inline int cpu_is_mx6s(void)
-{
-	return imx6_cpu_type() == IMX6_CPUTYPE_IMX6S;
-}
-
-static inline int cpu_is_mx6dl(void)
-{
-	return imx6_cpu_type() == IMX6_CPUTYPE_IMX6DL;
-}
-
-static inline int cpu_is_mx6d(void)
-{
-	return imx6_cpu_type() == IMX6_CPUTYPE_IMX6D;
-}
-
-static inline int cpu_is_mx6q(void)
-{
-	return imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
-}
-
-static inline int cpu_is_mx6sx(void)
-{
-	return imx6_cpu_type() == IMX6_CPUTYPE_IMX6SX;
-}
+#define DEFINE_MX6_CPU_TYPE(str, type)					\
+	static inline int cpu_mx6_is_##str(void)			\
+	{								\
+		return __imx6_cpu_type() == type;			\
+	}								\
+									\
+	static inline int cpu_is_##str(void)				\
+	{								\
+		if (!cpu_is_mx6())					\
+			return 0;					\
+		return cpu_mx6_is_##str();				\
+	}
+
+DEFINE_MX6_CPU_TYPE(mx6dl, IMX6_CPUTYPE_IMX6DL);
+DEFINE_MX6_CPU_TYPE(mx6q, IMX6_CPUTYPE_IMX6Q);
+DEFINE_MX6_CPU_TYPE(mx6d, IMX6_CPUTYPE_IMX6D);
+DEFINE_MX6_CPU_TYPE(mx6sx, IMX6_CPUTYPE_IMX6SX);
 
 #endif /* __MACH_IMX6_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
