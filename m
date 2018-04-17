Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f8KX2-0000k6-98
 for barebox@lists.infradead.org; Tue, 17 Apr 2018 06:56:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Apr 2018 08:55:47 +0200
Message-Id: <20180417065547.11810-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX6: Make cpu_is_mx6xy() greppable
To: Barebox List <barebox@lists.infradead.org>

Grepping for cpu_is_mx6 will not find the definitions of this function
because it is hidden behind a macro. Add a comment containing all
functions defined here to make it greppable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx6.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index e06ca4e235..5701bd480c 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -93,6 +93,13 @@ int imx6_cpu_type(void);
 		return cpu_mx6_is_##str();				\
 	}
 
+/*
+ * Below are defined:
+ *
+ * cpu_is_mx6s(), cpu_is_mx6dl(), cpu_is_mx6q(), cpu_is_mx6qp(), cpu_is_mx6d(),
+ * cpu_is_mx6dp(), cpu_is_mx6sx(), cpu_is_mx6sl(), cpu_is_mx6ul(),
+ * cpu_is_mx6ull()
+ */
 DEFINE_MX6_CPU_TYPE(mx6s, IMX6_CPUTYPE_IMX6S);
 DEFINE_MX6_CPU_TYPE(mx6dl, IMX6_CPUTYPE_IMX6DL);
 DEFINE_MX6_CPU_TYPE(mx6q, IMX6_CPUTYPE_IMX6Q);
-- 
2.16.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
