Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqpk-0000gU-B7
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 09:12:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Mar 2018 10:11:43 +0100
Message-Id: <20180319091146.4112-12-s.hauer@pengutronix.de>
In-Reply-To: <20180319091146.4112-1-s.hauer@pengutronix.de>
References: <20180319091146.4112-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/14] serial: i.MX: Add i.MX8 support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c | 5 ++++-
 include/serial/imx-uart.h   | 5 +++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index e8c3836a66..49fb5e8340 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -290,9 +290,12 @@ static __maybe_unused struct of_device_id imx_serial_dt_ids[] = {
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
index 9cab32f359..c23606569d 100644
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
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
