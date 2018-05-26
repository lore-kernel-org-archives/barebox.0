Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg4s-0004Hx-Qr
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:46:58 +0000
Received: by mail-pf0-x243.google.com with SMTP id x9-v6so4095253pfm.2
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:46:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH v2 11/48] serial: i.MX: Add i.MX8 support
Date: Sat, 26 May 2018 13:44:14 -0700
Message-Id: <20180526204451.16530-12-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c | 5 ++++-
 include/serial/imx-uart.h   | 5 +++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index c8af995aa..09341af87 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -281,9 +281,12 @@ static __maybe_unused struct of_device_id imx_serial_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6ul-uart",
 		.data = &imx21_data,
-	},  {
+	}, {
 		.compatible = "fsl,imx7d-uart",
 		.data = &imx21_data,
+	}, {
+		.compatible = "fsl,imx8mq-uart",
+		.data = &imx21_data,
 	}, {
 		/* sentinel */
 	}
diff --git a/include/serial/imx-uart.h b/include/serial/imx-uart.h
index 9cab32f35..c23606569 100644
--- a/include/serial/imx-uart.h
+++ b/include/serial/imx-uart.h
@@ -180,6 +180,11 @@ static inline void imx7_uart_setup(void __iomem *uartbase)
 	imx_uart_setup(uartbase, 24000000);
 }
 
+static inline void imx8mq_uart_setup(void __iomem *uartbase)
+{
+	imx_uart_setup(uartbase, 25000000);
+}
+
 static inline void imx_uart_putc(void *base, int c)
 {
 	if (!(readl(base + UCR1) & UCR1_UARTEN))
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
