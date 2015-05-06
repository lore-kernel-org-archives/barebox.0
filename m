Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22f.google.com ([2607:f8b0:400e:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq53x-0007py-CD
 for barebox@lists.infradead.org; Wed, 06 May 2015 19:32:59 +0000
Received: by pacyx8 with SMTP id yx8so17968937pac.1
 for <barebox@lists.infradead.org>; Wed, 06 May 2015 12:32:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 May 2015 12:31:58 -0700
Message-Id: <1430940733-4415-4-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 03/18] i.MX: serial: Add baud rate calculation convenience
 functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add two functions to calculate values for UBMR and UBIR
registers. This way both early serial initalization code and
serial_imx.c can use them and not duplicate the code.

Singed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/serial/serial_imx.c | 4 ++--
 include/serial/imx-uart.h   | 9 +++++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 6ae87fd..12155ad 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -178,9 +178,9 @@ static int imx_serial_setbaudrate(struct console_device *cdev, int baudrate)
 	writel(val, regs + UCR1);
 
 	/* Set the numerator value minus one of the BRM ratio */
-	writel((baudrate / 100) - 1, regs + UBIR);
+	writel(baudrate_to_ubir(baudrate), regs + UBIR);
 	/* Set the denominator value minus one of the BRM ratio    */
-	writel((imx_serial_reffreq(priv) / 1600) - 1, regs + UBMR);
+	writel(refclock_to_ubmr(imx_serial_reffreq(priv)), regs + UBMR);
 
 	writel(ucr1, regs + UCR1);
 
diff --git a/include/serial/imx-uart.h b/include/serial/imx-uart.h
index 0a01788..7275e6a 100644
--- a/include/serial/imx-uart.h
+++ b/include/serial/imx-uart.h
@@ -115,5 +115,14 @@
 #define  UTS_RXFULL 	 (1<<3)	 /* RxFIFO full */
 #define  UTS_SOFTRST	 (1<<0)	 /* Software reset */
 
+static inline int baudrate_to_ubir(int baudrate)
+{
+	return baudrate / 100 - 1;
+}
+
+static inline int refclock_to_ubmr(int clock_hz)
+{
+	return clock_hz / 1600 - 1;
+}
 
 #endif	/* __IMX_UART_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
