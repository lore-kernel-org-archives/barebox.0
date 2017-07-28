Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1db6Vt-0003RH-4Y
 for barebox@lists.infradead.org; Fri, 28 Jul 2017 14:45:18 +0000
Received: by mail-pg0-x241.google.com with SMTP id 125so10359378pgi.5
 for <barebox@lists.infradead.org>; Fri, 28 Jul 2017 07:44:53 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 28 Jul 2017 07:44:22 -0700
Message-Id: <20170728144427.14007-7-andrew.smirnov@gmail.com>
In-Reply-To: <20170728144427.14007-1-andrew.smirnov@gmail.com>
References: <20170728144427.14007-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 06/11] ARM: i.MX: Add imx7_uart_setup_ll()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add imx7_uart_setup_ll() for setting up UART selected for DEBUG_LL.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/debug_ll.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index 39d710f7d..b7c0690d8 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -81,6 +81,13 @@ static inline void imx6_uart_setup_ll(void)
 	imx6_uart_setup(base);
 }
 
+static inline void imx7_uart_setup_ll(void)
+{
+	void *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC, CONFIG_DEBUG_IMX_UART_PORT));
+
+	imx7_uart_setup(base);
+}
+
 static inline void vf610_uart_setup_ll(void)
 {
 	void *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC, CONFIG_DEBUG_IMX_UART_PORT));
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
