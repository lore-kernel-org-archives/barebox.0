Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f62sl-0006JA-SW
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:41:01 +0000
Received: by mail-pl0-x242.google.com with SMTP id v5-v6so8863plo.4
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:40:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:40:38 -0700
Message-Id: <20180410234038.4513-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180410234038.4513-1-andrew.smirnov@gmail.com>
References: <20180410234038.4513-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] i.MX: vf610-twr: Convert to use vf610_setup_pad()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/freescale-vf610-twr/lowlevel.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm/boards/freescale-vf610-twr/lowlevel.c b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
index 65956fdd2..8fec9f4b9 100644
--- a/arch/arm/boards/freescale-vf610-twr/lowlevel.c
+++ b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
@@ -14,13 +14,7 @@ static inline void setup_uart(void)
 	void __iomem *iomuxbase = IOMEM(VF610_IOMUXC_BASE_ADDR);
 
 	vf610_ungate_all_peripherals();
-
-	/*
-	 * VF610_PAD_PTB4__UART1_TX
-	 */
-	writel(VF610_UART_PAD_CTRL | (2 << 20), iomuxbase + 0x0068);
-	writel(0, iomuxbase + 0x0380);
-
+	vf610_setup_pad(iomuxbase, VF610_PAD_PTB4__UART1_TX);
 	vf610_uart_setup_ll();
 
 	putc_ll('>');
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
