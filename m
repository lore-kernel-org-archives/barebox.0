Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZL6Ek-0005aT-Bp
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 09:04:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1ZL4N8-0007NZ-Kz
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 09:04:50 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <jbe@pengutronix.de>) id 1ZL6EN-0004LU-M9
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 11:03:55 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 31 Jul 2015 11:03:52 +0200
Message-Id: <1438333432-10118-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1438333432-10118-1-git-send-email-jbe@pengutronix.de>
References: <1438333432-10118-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 6/6] PPC/PCM030: provide EEPROM support to read factory
 settings
To: barebox@lists.infradead.org

Above the 0x800 offset the manufacturer provides the board type, a serial
number and the MAC as three simple strings. Extract these strings, provide
their value as global variables and set the MAC into the ethernet unit.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/boards/pcm030/Makefile |   2 +-
 arch/ppc/boards/pcm030/eeprom.c | 118 ++++++++++++++++++++++++++++++++++++++++
 arch/ppc/boards/pcm030/pcm030.c |  13 +++++
 3 files changed, 132 insertions(+), 1 deletion(-)
 create mode 100644 arch/ppc/boards/pcm030/eeprom.c

diff --git a/arch/ppc/boards/pcm030/Makefile b/arch/ppc/boards/pcm030/Makefile
index e7d744b..4e5dc4f 100644
--- a/arch/ppc/boards/pcm030/Makefile
+++ b/arch/ppc/boards/pcm030/Makefile
@@ -1,2 +1,2 @@
-obj-y += pcm030.o
+obj-y += pcm030.o eeprom.o
 extra-y += barebox.lds
diff --git a/arch/ppc/boards/pcm030/eeprom.c b/arch/ppc/boards/pcm030/eeprom.c
new file mode 100644
index 0000000..aa00f36
--- /dev/null
+++ b/arch/ppc/boards/pcm030/eeprom.c
@@ -0,0 +1,118 @@
+/*
+ * Copyright (C) 2015 Juergen Borleis <kernel@pengutronix.de>
+ *
+ * Based on code from:
+ * Copyright (C) 2013 Jan Luebbe <j.luebbe@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+#include <common.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <globalvar.h>
+#include <xfuncs.h>
+#include <init.h>
+#include <net.h>
+
+#define PCM030_EEPROM_DEVICE "/dev/eeprom0"
+
+/*
+ * The first 2048 bytes contain the U-Boot environment shipped with the boards.
+ * After that an area begins where some board specific and partially unique data
+ * is stored. All of this data is plain test, string delimiter is the semicolon.
+ * the last string terminates with a '\0'.
+ * One example found in the 'product' area: PCM-030-02REI;017822;0050C2875974\0
+ * The first string seems to be the product type, the second string some kind
+ * of serial number and the last string the boards unique MAC.
+ */
+struct pcm030_eeprom {
+	char env[0x800]; /* u-boot environment */
+	char product[0x80]; /* <product>;<serno>;<mac>\0 */
+} __attribute__((packed));
+
+static void pcm030_read_factory_data(const struct pcm030_eeprom *buf)
+{
+	unsigned u, l;
+	char *board, *serial;
+	char *full_mac = "xx:xx:xx:xx:xx:xx";
+	u8 enetaddr[6];
+
+	u = 0;
+
+	for (l = 0; (l + u) < sizeof(buf->product); l++) {
+		if (buf->product[u + l] != ';')
+			continue;
+		board = xstrndup(&buf->product[u], l);
+		u += l + 1;
+		globalvar_add_simple("model.type", board);
+		free(board);
+	}
+
+	for (l = 0; (l + u) < sizeof(buf->product); l++) {
+		if (buf->product[u + l] != ';')
+			continue;
+		serial = xstrndup(&buf->product[u], l);
+		u += l + 1;
+		globalvar_add_simple("model.serial", serial);
+		free(serial);
+	}
+
+	/* for the MAC do a simple duck test */
+	if (buf->product[u] != ';' && buf->product[u + 12] == '\0') {
+		full_mac[0] = buf->product[u + 0];
+		full_mac[1] = buf->product[u + 1];
+		full_mac[3] = buf->product[u + 2];
+		full_mac[4] = buf->product[u + 3];
+		full_mac[6] = buf->product[u + 4];
+		full_mac[7] = buf->product[u + 5];
+		full_mac[9] = buf->product[u + 6];
+		full_mac[10] = buf->product[u + 7];
+		full_mac[12] = buf->product[u + 8];
+		full_mac[13] = buf->product[u + 9];
+		full_mac[15] = buf->product[u + 10];
+		full_mac[16] = buf->product[u + 11];
+		string_to_ethaddr(full_mac, enetaddr);
+		eth_register_ethaddr(0, enetaddr);
+		return;
+	}
+
+	printf("EEPROM contains no ethernet MAC\n");
+}
+
+static int pcm030_eeprom_read(void)
+{
+	int fd, ret;
+	struct pcm030_eeprom *buf;
+
+	fd = open(PCM030_EEPROM_DEVICE, O_RDONLY);
+	if (fd < 0) {
+		perror("failed to open " PCM030_EEPROM_DEVICE);
+		return fd;
+	}
+
+	buf = xmalloc(sizeof(struct pcm030_eeprom));
+
+	ret = pread(fd, buf, sizeof(struct pcm030_eeprom), 0);
+	if (ret < sizeof(struct pcm030_eeprom)) {
+		perror("failed to read " PCM030_EEPROM_DEVICE);
+		goto out;
+	}
+
+	pcm030_read_factory_data(buf);
+	ret = 0;
+out:
+	free(buf);
+	close(fd);
+
+	return ret;
+}
+late_initcall(pcm030_eeprom_read);
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index fe0f046..11b3beb 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -34,11 +34,21 @@
 #include <linux/stat.h>
 #include <asm/io.h>
 #include <fs.h>
+#include <i2c/i2c.h>
 
 static struct fec_platform_data fec_info = {
 	.xcv_type = PHY_INTERFACE_MODE_MII,
 };
 
+static struct i2c_board_info pcm030_i2c_devices[] = {
+	{ I2C_BOARD_INFO("pcf8563", 0x51), },
+	{ I2C_BOARD_INFO("24c32", 0x52), },
+};
+
+struct i2c_platform_data pcm030_i2c_plat = {
+	.bitrate = 100000,
+};
+
 static int devices_init (void)
 {
 	struct stat s;
@@ -53,6 +63,9 @@ static int devices_init (void)
 
 	add_generic_device("fec_mpc5xxx", DEVICE_ID_DYNAMIC, NULL, MPC5XXX_FEC, 0x200,
 			   IORESOURCE_MEM, &fec_info);
+	i2c_register_board_info(0, pcm030_i2c_devices, ARRAY_SIZE(pcm030_i2c_devices));
+	add_generic_device("i2c-fsl", DEVICE_ID_DYNAMIC, NULL, MPC5XXX_I2C2, 0x100,
+			IORESOURCE_MEM, &pcm030_i2c_plat);
 
 	ret = stat("/dev/nor0", &s);
 	if (ret)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
