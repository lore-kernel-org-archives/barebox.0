Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.z9.com ([64.142.101.243])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2RL0-0007fx-NP
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 19:04:19 +0000
Received: from GPontisPC by z9.com (MDaemon PRO v12.5.8)
 with ESMTP id md50000244570.msg
 for <barebox@lists.infradead.org>; Mon, 04 Feb 2013 11:04:13 -0800
From: "George Pontis" <GPontis@z9.com>
Date: Mon, 4 Feb 2013 11:04:07 -0800
Message-ID: <004301ce030a$68506aa0$38f13fe0$@com>
MIME-Version: 1.0
Content-Language: en-us
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: i.MX53, add access to third I2C peripheral
To: barebox@lists.infradead.org

All versions of the i.MX53 have three I2C peripherals. This patch provides
access to it.




diff -Naur a/arch/arm/mach-imx/include/mach/devices-imx53.h
b/arch/arm/mach-imx/include/mach/devices-imx
53.h
--- bb.a/arch/arm/mach-imx/include/mach/devices-imx53.h 2013-02-04
06:24:51.000000000 -0800
+++ bb.b/arch/arm/mach-imx/include/mach/devices-imx53.h 2013-02-03
22:24:26.930091420 -0800
@@ -21,6 +21,11 @@
        return imx_add_i2c((void *)MX53_I2C2_BASE_ADDR, 1, pdata);
 }

+static inline struct device_d *imx53_add_i2c2(struct i2c_platform_data
*pdata)
+{
+       return imx_add_i2c((void *)MX53_I2C2_BASE_ADDR, 2, pdata);
+}
+
 static inline struct device_d *imx53_add_uart0(void)
 {
        return imx_add_uart_imx21((void *)MX53_UART1_BASE_ADDR, 0);



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
