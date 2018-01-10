Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZJI8-0000iZ-D8
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 16:31:53 +0000
Received: by mail-pg0-x241.google.com with SMTP id j4so11215707pgp.1
 for <barebox@lists.infradead.org>; Wed, 10 Jan 2018 08:31:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 10 Jan 2018 08:31:15 -0800
Message-Id: <20180110163115.16226-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180110163115.16226-1-andrew.smirnov@gmail.com>
References: <20180110163115.16226-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] i.MX7: Add CCM definitions for UART2
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/imx7-ccm-regs.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
index a4217cca5..97fe240fc 100644
--- a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
@@ -6,6 +6,7 @@
 #define CCM_CCGRn_CLR(n)	(0x4008 + 16 * (n))
 
 #define CCM_CCGR_UART1		148
+#define CCM_CCGR_UART2		149
 
 #define CCM_CCGR_SETTINGn(n, s)  ((s) << ((n) * 4))
 #define CCM_CCGR_SETTINGn_NOT_NEEDED(n)		CCM_CCGR_SETTINGn(n, 0b00)
@@ -28,5 +29,7 @@
 #define UART1_CLK_ROOT		CLOCK_ROOT_INDEX(0xaf80)
 #define UART1_CLK_ROOT__OSC_24M CCM_TARGET_ROOTn_MUX(0b000)
 
+#define UART2_CLK_ROOT		CLOCK_ROOT_INDEX(0xb000)
+#define UART2_CLK_ROOT__OSC_24M CCM_TARGET_ROOTn_MUX(0b000)
 
 #endif
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
