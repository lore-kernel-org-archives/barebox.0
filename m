Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3c6U-000207-8K
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 07:45:39 +0000
Received: by mail-pg1-x541.google.com with SMTP id r124so1194500pgr.3
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 00:45:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 00:45:24 -0700
Message-Id: <20190312074525.6153-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190312074525.6153-1-andrew.smirnov@gmail.com>
References: <20190312074525.6153-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] serial: i.MX: Add code to export "earlycon" setting
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to generate appropriate "earlycon" setting that can be passed
to Linux kernel.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/serial/serial_imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 09341af87..e5d41c0bc 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -241,6 +241,9 @@ static int imx_serial_probe(struct device_d *dev)
 	cdev->flush = imx_serial_flush;
 	cdev->setbrg = imx_serial_setbaudrate;
 	cdev->linux_console_name = "ttymxc";
+	if (devtype == &imx21_data)
+		cdev->linux_bootconsole_name = basprintf("ec_imx21,0x%p",
+							 priv->regs);
 	if (dev->device_node) {
 		devname = of_alias_get(dev->device_node);
 		if (devname) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
