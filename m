Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo1.mail-out.ovh.net ([178.32.97.206]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1UAH36-0004Zs-14
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 09:42:13 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id C2DE6FF922E
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2013 10:58:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 26 Feb 2013 10:41:07 +0100
Message-Id: <1361871667-28214-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] serial/Makefile: drop out of date comments
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/Makefile |    6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 893e282..16a54c2 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -1,9 +1,3 @@
-# atmel_usart.o
-# ns9750_serial.o
-# s3c4510b_uart.o
-# serial_max3100.o
-# serial_pl010.o
-# serial_xuartlite.o
 obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)		+= arm_dcc.o
 obj-$(CONFIG_SERIAL_AMBA_PL011)			+= amba-pl011.o
 obj-$(CONFIG_DRIVER_SERIAL_IMX)			+= serial_imx.o
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
