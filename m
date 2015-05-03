Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22a.google.com ([2607:f8b0:400e:c02::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yojca-0004it-0J
 for barebox@lists.infradead.org; Sun, 03 May 2015 02:27:08 +0000
Received: by pdbqd1 with SMTP id qd1so130908688pdb.2
 for <barebox@lists.infradead.org>; Sat, 02 May 2015 19:26:46 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  2 May 2015 19:26:15 -0700
Message-Id: <1430619980-26243-4-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/8] i.MX: serial: Add baud rate calculation convenience
 functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add two functions to calculate values for UBMR and UBIR
registers. This way both early serial initalization code and
serial_imx.c can use them and not duplicate the code.

Singed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/serial.h | 9 +++++++++
 drivers/serial/serial_imx.c             | 4 ++--
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/serial.h b/arch/arm/mach-imx/include/mach/serial.h
index 3890fd5..212eeeb 100644
--- a/arch/arm/mach-imx/include/mach/serial.h
+++ b/arch/arm/mach-imx/include/mach/serial.h
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

 #endif	/* __MACH_SERIAL_H__ */
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index e197be8..8c4e829 100644
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

--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
