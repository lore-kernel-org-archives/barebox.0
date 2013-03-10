Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEdLj-0004PL-PL
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 10:19:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 10 Mar 2013 11:19:20 +0100
Message-Id: <1362910761-1732-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362910761-1732-1-git-send-email-s.hauer@pengutronix.de>
References: <1362910761-1732-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM i.MX: Add double include protection for generic.h
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/generic.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 5e600a3..1f0fce2 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -1,3 +1,5 @@
+#ifndef __MACH_GENERIC_H
+#define __MACH_GENERIC_H
 
 u64 imx_uid(void);
 
@@ -82,3 +84,5 @@ int imx6_boot_save_loc(void __iomem *src_base);
 
 #define cpu_is_mx23()	(0)
 #define cpu_is_mx28()	(0)
+
+#endif /* __MACH_GENERIC_H */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
