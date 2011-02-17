Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pq2Cw-0007zA-4T
	for barebox@lists.infradead.org; Thu, 17 Feb 2011 11:39:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Feb 2011 12:39:29 +0100
Message-Id: <1297942771-2289-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1297942771-2289-1-git-send-email-s.hauer@pengutronix.de>
References: <1297942771-2289-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM i.MX esdctl: Add some missing bitfields
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/esdctl.h |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index fe74cb6..10c8b9b 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -31,6 +31,10 @@
 #define ESDCTL0_REF4				(3 << 13)
 #define ESDCTL0_REF8				(4 << 13)
 #define ESDCTL0_REF16				(5 << 13)
+#define ESDCTL0_PWDT_DISABLED			(0 << 10)
+#define ESDCTL0_PWDT_PRECHARGE_PWDN		(1 << 10)
+#define ESDCTL0_PWDT_PWDN_64			(2 << 10)
+#define ESDCTL0_PWDT_PWDN_128			(3 << 10)
 #define ESDCTL0_FP				(1 << 8)
 #define ESDCTL0_BL				(1 << 7)
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
