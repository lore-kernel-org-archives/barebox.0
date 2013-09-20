Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMrQl-0006mH-4W
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 03:30:57 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A7515DC87FD
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2013 05:30:33 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 20 Sep 2013 05:31:29 +0200
Message-Id: <1379647889-16256-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] console: drop f_caps and check the function pointer
 getc/putc instead
To: barebox@lists.infradead.org

None of the driver make the difference between STDOUT and STDERR.
So we just need to check if putc or getc are filled in the console_device

save 32 bytes on versatilepb

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/sandbox/board/console.c                   |  5 -----
 arch/sandbox/mach-sandbox/include/mach/linux.h |  1 -
 common/console.c                               | 18 ++++++++++--------
 drivers/input/gpio_keys.c                      |  1 -
 drivers/input/imx_keypad.c                     |  1 -
 drivers/input/qt1070.c                         |  1 -
 drivers/input/twl6030_pwrbtn.c                 |  1 -
 drivers/serial/amba-pl011.c                    |  1 -
 drivers/serial/arm_dcc.c                       |  1 -
 drivers/serial/atmel.c                         |  1 -
 drivers/serial/linux_console.c                 | 12 +++++++-----
 drivers/serial/serial_altera.c                 |  1 -
 drivers/serial/serial_altera_jtag.c            |  1 -
 drivers/serial/serial_auart.c                  |  1 -
 drivers/serial/serial_blackfin.c               |  1 -
 drivers/serial/serial_cadence.c                |  1 -
 drivers/serial/serial_clps711x.c               |  1 -
 drivers/serial/serial_imx.c                    |  1 -
 drivers/serial/serial_mpc5xxx.c                |  1 -
 drivers/serial/serial_netx.c                   |  1 -
 drivers/serial/serial_ns16550.c                |  1 -
 drivers/serial/serial_omap4_usbboot.c          |  1 -
 drivers/serial/serial_pl010.c                  |  1 -
 drivers/serial/serial_pxa.c                    |  1 -
 drivers/serial/serial_s3c.c                    |  1 -
 drivers/serial/stm-serial.c                    |  1 -
 drivers/usb/gadget/u_serial.c                  |  1 -
 include/console.h                              |  1 -
 net/netconsole.c                               |  1 -
 29 files changed, 17 insertions(+), 44 deletions(-)

diff --git a/arch/sandbox/board/console.c b/arch/sandbox/board/console.c
index b0afa54..cd5ad57 100644
--- a/arch/sandbox/board/console.c
+++ b/arch/sandbox/board/console.c
@@ -36,11 +36,6 @@ int barebox_register_console(char *name, int stdinfd, int stdoutfd)
 
 	strcpy(dev->name, "console");
 
-	if (stdinfd >= 0)
-		data->flags = CONSOLE_STDIN;
-	if (stdoutfd >= 0)
-		data->flags |= CONSOLE_STDOUT | CONSOLE_STDERR;
-
 	data->stdoutfd = stdoutfd;
 	data->stdinfd  = stdinfd;
 
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 50d2721..98f9067 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -23,7 +23,6 @@ int barebox_register_console(char *name_template, int stdinfd, int stdoutfd);
 struct linux_console_data {
 	int stdinfd;
 	int stdoutfd;
-	unsigned int flags;
 };
 
 extern int sdl_xres;
diff --git a/common/console.c b/common/console.c
index c86e86e..47106ff 100644
--- a/common/console.c
+++ b/common/console.c
@@ -63,19 +63,21 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 	unsigned int flag = 0, i = 0;
 
 	if (val) {
-		if (strchr(val, 'i') && cdev->f_caps & CONSOLE_STDIN) {
+		if (strchr(val, 'i') && cdev->getc) {
 			active[i++] = 'i';
 			flag |= CONSOLE_STDIN;
 		}
 
-		if (strchr(val, 'o') && cdev->f_caps & CONSOLE_STDOUT) {
-			active[i++] = 'o';
-			flag |= CONSOLE_STDOUT;
-		}
+		if (cdev->putc) {
+			if (strchr(val, 'o')) {
+				active[i++] = 'o';
+				flag |= CONSOLE_STDOUT;
+			}
 
-		if (strchr(val, 'e') && cdev->f_caps & CONSOLE_STDERR) {
-			active[i++] = 'e';
-			flag |= CONSOLE_STDERR;
+			if (strchr(val, 'e')) {
+				active[i++] = 'e';
+				flag |= CONSOLE_STDERR;
+			}
 		}
 	}
 
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index b439111..18a29f0 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -95,7 +95,6 @@ static int __init gpio_keys_probe(struct device_d *dev)
 	cdev = &pdata->cdev;
 	dev->type_data = cdev;
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN;
 	cdev->tstc = gpio_keys_tstc;
 	cdev->getc = gpio_keys_getc;
 
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index 2ee3d0f..e6870df 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -441,7 +441,6 @@ static int __init imx_keypad_probe(struct device_d *dev)
 	cdev->dev = dev;
 	cdev->tstc = imx_keypad_tstc;
 	cdev->getc = imx_keypad_getc;
-	cdev->f_caps = CONSOLE_STDIN;
 	cdev->f_active = CONSOLE_STDIN;
 
 	console_register(&keypad->cdev);
diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
index ada330a..7b72965 100644
--- a/drivers/input/qt1070.c
+++ b/drivers/input/qt1070.c
@@ -265,7 +265,6 @@ static int qt1070_probe(struct device_d *dev)
 
 	cdev = &data->cdev;
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN;
 	cdev->tstc = qt1070_tstc;
 	cdev->getc = qt1070_getc;
 
diff --git a/drivers/input/twl6030_pwrbtn.c b/drivers/input/twl6030_pwrbtn.c
index ca51dee..fc4c728 100644
--- a/drivers/input/twl6030_pwrbtn.c
+++ b/drivers/input/twl6030_pwrbtn.c
@@ -93,7 +93,6 @@ static int __init twl6030_pwrbtn_probe(struct device_d *dev)
 
 	dev->type_data = &idata->cdev;
 	idata->cdev.dev = dev;
-	idata->cdev.f_caps = CONSOLE_STDIN;
 	idata->cdev.tstc = twl6030_pwrbtn_tstc;
 	idata->cdev.getc = twl6030_pwrbtn_getc;
 	console_register(&idata->cdev);
diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 0e07588..0f384e5 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -196,7 +196,6 @@ static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
 
 	cdev = &uart->uart;
 	cdev->dev = &dev->dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = pl011_tstc;
 	cdev->putc = pl011_putc;
 	cdev->getc = pl011_getc;
diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
index bab7299..e5f2bbe 100644
--- a/drivers/serial/arm_dcc.c
+++ b/drivers/serial/arm_dcc.c
@@ -133,7 +133,6 @@ static int arm_dcc_probe(struct device_d *dev)
 
 	cdev = &arm_dcc_dev;
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = arm_dcc_tstc;
 	cdev->putc = arm_dcc_putc;
 	cdev->getc = arm_dcc_getc;
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 40945c9..6a20eab 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -425,7 +425,6 @@ static int atmel_serial_probe(struct device_d *dev)
 	uart = xzalloc(sizeof(struct atmel_uart_port));
 	cdev = &uart->uart;
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = atmel_serial_tstc;
 	cdev->putc = atmel_serial_putc;
 	cdev->getc = atmel_serial_getc;
diff --git a/drivers/serial/linux_console.c b/drivers/serial/linux_console.c
index 7ded091..d0ef1c6 100644
--- a/drivers/serial/linux_console.c
+++ b/drivers/serial/linux_console.c
@@ -44,7 +44,7 @@ static int linux_console_tstc(struct console_device *cdev)
 static int linux_console_getc(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
-	struct linux_console_data *d = dev->platform_data;
+	struct linuxconsole_data *d = dev->platform_data;
 	static char old_c;
 	char c;
 
@@ -64,10 +64,12 @@ static int linux_console_probe(struct device_d *dev)
 
 	cdev = xzalloc(sizeof(struct console_device));
 	cdev->dev = dev;
-	cdev->f_caps = data->flags;
-	cdev->tstc = linux_console_tstc;
-	cdev->putc = linux_console_putc;
-	cdev->getc = linux_console_getc;
+	if (data->stdinfd >= 0) {
+		cdev->tstc = linux_console_tstc;
+		cdev->getc = linux_console_getc;
+	}
+	if (data->stdoutfd >= 0)
+		cdev->putc = linux_console_putc;
 
 	console_register(cdev);
 
diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
index 7ff38d7..d519a87 100644
--- a/drivers/serial/serial_altera.c
+++ b/drivers/serial/serial_altera.c
@@ -86,7 +86,6 @@ static int altera_serial_probe(struct device_d *dev)
 
 	priv->regs = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = altera_serial_tstc;
 	cdev->putc = altera_serial_putc;
 	cdev->getc = altera_serial_getc;
diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
index edc3c76..4219a4b 100644
--- a/drivers/serial/serial_altera_jtag.c
+++ b/drivers/serial/serial_altera_jtag.c
@@ -91,7 +91,6 @@ static int altera_serial_jtag_probe(struct device_d *dev) {
 
 	priv->regs = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = altera_serial_jtag_tstc;
 	cdev->putc = altera_serial_jtag_putc;
 	cdev->getc = altera_serial_jtag_getc;
diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index 0e1ab83..60a701d 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -187,7 +187,6 @@ static int auart_serial_probe(struct device_d *dev)
 	priv = xzalloc(sizeof *priv);
 	cdev = &priv->cdev;
 
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = auart_serial_tstc;
 	cdev->putc = auart_serial_putc;
 	cdev->getc = auart_serial_getc;
diff --git a/drivers/serial/serial_blackfin.c b/drivers/serial/serial_blackfin.c
index 7373a03..2122226 100644
--- a/drivers/serial/serial_blackfin.c
+++ b/drivers/serial/serial_blackfin.c
@@ -113,7 +113,6 @@ static int blackfin_serial_probe(struct device_d *dev)
 
 	cdev = xzalloc(sizeof(struct console_device));
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = blackfin_serial_tstc;
 	cdev->putc = blackfin_serial_putc;
 	cdev->getc = blackfin_serial_getc;
diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index c29c391..a1b76d0 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -246,7 +246,6 @@ static int cadence_serial_probe(struct device_d *dev)
 	}
 
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = cadence_serial_tstc;
 	cdev->putc = cadence_serial_putc;
 	cdev->getc = cadence_serial_getc;
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index ffbb6f8..17d4c2e 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -131,7 +131,6 @@ static int clps711x_probe(struct device_d *dev)
 
 	dev->priv	= s;
 	s->cdev.dev	= dev;
-	s->cdev.f_caps	= CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	s->cdev.tstc	= clps711x_tstc;
 	s->cdev.putc	= clps711x_putc;
 	s->cdev.getc	= clps711x_getc;
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 8553c2e..e99dde8 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -330,7 +330,6 @@ static int imx_serial_probe(struct device_d *dev)
 
 	priv->regs = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = imx_serial_tstc;
 	cdev->putc = imx_serial_putc;
 	cdev->getc = imx_serial_getc;
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index 532eea3..18aca87 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -149,7 +149,6 @@ static int mpc5xxx_serial_probe(struct device_d *dev)
 	cdev = xzalloc(sizeof(struct console_device));
 	dev->priv = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = mpc5xxx_serial_tstc;
 	cdev->putc = mpc5xxx_serial_putc;
 	cdev->getc = mpc5xxx_serial_getc;
diff --git a/drivers/serial/serial_netx.c b/drivers/serial/serial_netx.c
index 037b998..c659cfa 100644
--- a/drivers/serial/serial_netx.c
+++ b/drivers/serial/serial_netx.c
@@ -138,7 +138,6 @@ static int netx_serial_probe(struct device_d *dev)
 	cdev = xzalloc(sizeof(struct console_device));
 	dev->priv = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = netx_serial_tstc;
 	cdev->putc = netx_serial_putc;
 	cdev->getc = netx_serial_getc;
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 5899d57..5ae2b76 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -291,7 +291,6 @@ static int ns16550_probe(struct device_d *dev)
 
 	cdev = &priv->cdev;
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = ns16550_tstc;
 	cdev->putc = ns16550_putc;
 	cdev->getc = ns16550_getc;
diff --git a/drivers/serial/serial_omap4_usbboot.c b/drivers/serial/serial_omap4_usbboot.c
index 51b2d13..2ef026c 100644
--- a/drivers/serial/serial_omap4_usbboot.c
+++ b/drivers/serial/serial_omap4_usbboot.c
@@ -62,7 +62,6 @@ static int serial_omap4_usbboot_probe(struct device_d *dev)
 	priv = xzalloc(sizeof(*priv));
 
 	priv->cdev.dev = dev;
-	priv->cdev.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	priv->cdev.tstc = serial_omap4_usbboot_tstc;
 	priv->cdev.putc = serial_omap4_usbboot_putc;
 	priv->cdev.getc = serial_omap4_usbboot_getc;
diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
index 9158774..81cea77 100644
--- a/drivers/serial/serial_pl010.c
+++ b/drivers/serial/serial_pl010.c
@@ -140,7 +140,6 @@ static int pl010_probe(struct device_d *dev)
 	cdev = xzalloc(sizeof(struct console_device));
 	dev->priv = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = pl010_tstc;
 	cdev->putc = pl010_putc;
 	cdev->getc = pl010_getc;
diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
index 42355ce..20ac4be 100644
--- a/drivers/serial/serial_pxa.c
+++ b/drivers/serial/serial_pxa.c
@@ -170,7 +170,6 @@ static int pxa_serial_probe(struct device_d *dev)
 
 	dev->priv = priv;
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = pxa_serial_tstc;
 	cdev->putc = pxa_serial_putc;
 	cdev->getc = pxa_serial_getc;
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index cc7b33e..038193d 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -184,7 +184,6 @@ static int s3c_serial_probe(struct device_d *dev)
 	priv->regs = dev_request_mem_region(dev, 0);
 	dev->priv = priv;
 	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = s3c_serial_tstc;
 	cdev->putc = s3c_serial_putc;
 	cdev->getc = s3c_serial_getc;
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 0d7484f..3fec1ce 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -153,7 +153,6 @@ static int stm_serial_probe(struct device_d *dev)
 
 	cdev = &priv->cdev;
 
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = stm_serial_tstc;
 	cdev->putc = stm_serial_putc;
 	cdev->getc = stm_serial_getc;
diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
index 9717c3b..dbadbe4 100644
--- a/drivers/usb/gadget/u_serial.c
+++ b/drivers/usb/gadget/u_serial.c
@@ -478,7 +478,6 @@ int gserial_connect(struct gserial *gser, u8 port_num)
 		gser->connect(gser);
 
 	cdev = &port->cdev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = serial_tstc;
 	cdev->putc = serial_putc;
 	cdev->getc = serial_getc;
diff --git a/include/console.h b/include/console.h
index ee9f3b4..04ab75f 100644
--- a/include/console.h
+++ b/include/console.h
@@ -46,7 +46,6 @@ struct console_device {
 
 	struct list_head list;
 
-	unsigned char f_caps;
 	unsigned char f_active;
 
 	int mode;
diff --git a/net/netconsole.c b/net/netconsole.c
index 9989194..2ab19de 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -72,7 +72,6 @@ static int nc_init(void)
 	}
 
 	net_udp_bind(priv->con, priv->port);
-	priv->cdev.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	return 0;
 }
 
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
