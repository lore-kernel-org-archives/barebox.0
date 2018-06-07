Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuYT-0006By-BC
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:02:19 +0000
Received: by mail-pf0-x243.google.com with SMTP id r11-v6so4896667pfl.6
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:02:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:50 -0700
Message-Id: <20180607130108.5339-35-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 34/52] ARM: i.MX8: Add DDRC PHY and DDR CTL base addresses
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/imx8mq-regs.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/include/mach/imx8mq-regs.h b/arch/arm/mach-imx/include/mach/imx8mq-regs.h
index 6dac00107..51936f526 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8mq-regs.h
@@ -114,8 +114,10 @@
 #define MX8MQ_SRC_DDRC_RCR_ADDR		0x30391000
 #define MX8MQ_SRC_DDRC2_RCR_ADDR	0x30391004
 
-#define MX8MQ_DDRC_DDR_SS_GPR0		0x3d000000
+#define MX8MQ_DDRC_PHY_BASE_ADDR	0x3c000000
+#define MX8MQ_DDRC_DDR_SS_GPR0		(MX8MQ_DDRC_PHY_BASE_ADDR + 0x01000000)
 #define MX8MQ_DDRC_IPS_BASE_ADDR(X)	(0x3d400000 + ((X) * 0x2000000))
+#define MX8MQ_DDRC_CTL_BASE_ADDR	MX8MQ_DDRC_IPS_BASE_ADDR(0)
 #define MX8MQ_DDR_CSD1_BASE_ADDR	0x40000000
 
 #endif /* __MACH_IMX8MQ_REGS_H */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
