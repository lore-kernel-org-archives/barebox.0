Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.85 #2 (Red Hat Linux))
 id 1aVFux-0002Z7-A1
 for barebox@lists.infradead.org; Mon, 15 Feb 2016 09:58:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 779B5A001D1
 for <barebox@lists.infradead.org>; Mon, 15 Feb 2016 10:57:15 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Mon, 15 Feb 2016 10:56:53 +0100
Message-Id: <1455530215-4394-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH 1/3] ARM: i.MX6: add function cpu_is_mx6s()
To: barebox@lists.infradead.org

The cpu_is_mx6* function for the i.MX6 Solo was missing. All other
functions are already defined.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/mach-imx/include/mach/imx6.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index 3ddb6d2..e8ffa47 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -61,6 +61,7 @@ static inline int imx6_cpu_type(void)
 		return cpu_mx6_is_##str();				\
 	}
 
+DEFINE_MX6_CPU_TYPE(mx6s, IMX6_CPUTYPE_IMX6S);
 DEFINE_MX6_CPU_TYPE(mx6dl, IMX6_CPUTYPE_IMX6DL);
 DEFINE_MX6_CPU_TYPE(mx6q, IMX6_CPUTYPE_IMX6Q);
 DEFINE_MX6_CPU_TYPE(mx6d, IMX6_CPUTYPE_IMX6D);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
