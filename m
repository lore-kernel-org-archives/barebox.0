Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZJI8-0000iY-DA
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 16:31:53 +0000
Received: by mail-pg0-x241.google.com with SMTP id c194so10231732pga.12
 for <barebox@lists.infradead.org>; Wed, 10 Jan 2018 08:31:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 10 Jan 2018 08:31:14 -0800
Message-Id: <20180110163115.16226-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] i.MX: Fix MX7_UART2_BASE_ADDR
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Despite what the Reference Manual says, experiment on i.MX7 SabreSD
shows that that UART2's base is located at offset 0x90000. This is
also corroborated by the offset used in dts/src/arm/imx7s.dtsi in
uart2.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/imx7-regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/include/mach/imx7-regs.h b/arch/arm/mach-imx/include/mach/imx7-regs.h
index 8774c32d7..8625d0b61 100644
--- a/arch/arm/mach-imx/include/mach/imx7-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-regs.h
@@ -78,7 +78,7 @@
 #define MX7_ECSPI2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x30000)
 #define MX7_ECSPI3_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x40000)
 #define MX7_UART1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x60000)
-#define MX7_UART2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x70000)
+#define MX7_UART2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x90000)
 #define MX7_UART3_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x80000)
 #define MX7_SAI1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0xA0000)
 #define MX7_SAI2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0xB0000)
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
