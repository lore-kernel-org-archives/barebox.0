Delivery-date: Mon, 05 Sep 2022 15:32:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVCDA-007Xqf-EV
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 15:32:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVCDA-0002Yq-VI
	for lore@pengutronix.de; Mon, 05 Sep 2022 15:32:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MTkPnNHRIkV4i4UnQB+YpKTLP/3EeUfjfxmmzjlr/tY=; b=SCv9X28zCNtvQqsv+y1U1yd57w
	xUbk5m3MK1hQbTHoqARCWSARgolncxFSJtXeG5KrAuXYO3pySeC6gOehS9GZ66ZcvvIeVCeyyTbxI
	4EyLuozWb87hJ3cQ5NxFEn1VWU/Jna8fLkMbNN22Uy0n+XY08Y+qHNEB1y36YezCLyyUMAeWlVl1k
	8UtGgDM5wRGlcbHj+bjenGGvQZmpwcL52NAlpZAwK7DhcOtdn+RtUE5J8Ihs1XByjKePruyKs0Og+
	EVssFzm3LUH5VD7oyaiuv3xjU8nAmTi99kK2xhGjxdFI7fWhbq8fnpkM5nyMBBEDAtIu6w536pbOw
	Za7Iu+gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVCBd-003DmG-J0; Mon, 05 Sep 2022 13:30:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9VS-000ULC-KX
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 10:39:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=MTkPnNHRIkV4i4UnQB+YpKTLP/3EeUfjfxmmzjlr/tY=; b=ol6dR8Vdleaqm7SbxQKd5gq/S2
	TeSZloKhYBYcC6xKScFIu7tEsYdx3o5cJ4rqj4XoKUD21VRsLRfE6w1MrfJFN8DnPAI2L60EK9hLk
	Rb2ezauGtDCKg5hft8pXxNCbmdgMv43FEb8liiWLonFdecPMF3mI0SxPu9R7L5NLisqdLpusvBYgM
	NBNZv4KMfID4Jd7h3EKxCdWz5+R/eEL2bcdq+RV502UMal2u1+Nu3344NU2M2NV5M+atELJSTPKDn
	Zo1ZIrQZH0nqvJVa3FluGWLZxCN/h+utJ6o9EoWr4r6Cb9+5gubvadYyYBV/HCHz8tnHmUiyK7AHc
	JG5y/hqw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9SJ-009VvH-RP
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 10:35:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SH-0005ig-Vq; Mon, 05 Sep 2022 12:35:50 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SF-0042ji-B4; Mon, 05 Sep 2022 12:35:49 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SF-007LCK-Pl; Mon, 05 Sep 2022 12:35:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 12:35:45 +0200
Message-Id: <20220905103546.1476277-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
References: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_113552_064165_9E241C2A 
X-CRM114-Status: GOOD (  17.04  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/5] commands: gpio: add -d argument to set/get commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For debugging, it can be useful to reference GPIOs relative to a
controller, e.g.:

  gpio_direction_output -d gpio4 20 1

instead of calculating the global gpio number. Extend the GPIO
functions to support that. The argument to -d may be either a device
name, a full path to a device tree node or an alias as in the example
above.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/gpio.c | 51 +++++++++++++++++++++++++++++++++++++++----------
 1 file changed, 41 insertions(+), 10 deletions(-)

diff --git a/commands/gpio.c b/commands/gpio.c
index 955b60e91bce..d04fd65bc8e0 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -4,27 +4,58 @@
 #include <command.h>
 #include <errno.h>
 #include <gpio.h>
+#include <getopt.h>
 
 static int get_gpio_and_value(int argc, char *argv[],
 			      int *gpio, int *value)
 {
-	const int count = value ? 3 : 2;
+	struct gpio_chip *chip = NULL;
+	struct device_d *dev;
+	int count = 2;
 	int ret = 0;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "d:")) > 0) {
+		switch (opt) {
+		case 'd':
+			dev = find_device(optarg);
+			if (!dev)
+				return -ENODEV;
+
+			chip = gpio_get_chip_by_dev(dev);
+			if (!chip)
+				return -EINVAL;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (value)
+		count++;
 
-	if (argc < count)
+	if (optind < count)
 		return COMMAND_ERROR_USAGE;
 
-	*gpio = gpio_find_by_name(argv[1]);
+	*gpio = gpio_find_by_name(argv[optind]);
 	if (*gpio < 0)
-		*gpio = gpio_find_by_label(argv[1]);
+		*gpio = gpio_find_by_label(argv[optind]);
 	if (*gpio < 0) {
-		ret = kstrtoint(argv[1], 0, gpio);
+		ret = kstrtoint(argv[optind], 0, gpio);
 		if (ret < 0)
 			return ret;
+
+		if (chip)
+			*gpio += chip->base;
+	} else if (chip) {
+		if (gpio_get_chip(*gpio) != chip) {
+			printf("%s: not exporting pin %u\n", dev_name(chip->dev), *gpio);
+			return -EINVAL;
+		}
 	}
 
 	if (value)
-		ret = kstrtoint(argv[2], 0, value);
+		ret = kstrtoint(argv[optind + 1], 0, value);
 
 	return ret;
 }
@@ -47,7 +78,7 @@ static int do_gpio_get_value(int argc, char *argv[])
 BAREBOX_CMD_START(gpio_get_value)
 	.cmd		= do_gpio_get_value,
 	BAREBOX_CMD_DESC("return value of a GPIO pin")
-	BAREBOX_CMD_OPTS("GPIO")
+	BAREBOX_CMD_OPTS("[-d CONTROLLER] GPIO")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 BAREBOX_CMD_END
 
@@ -67,7 +98,7 @@ static int do_gpio_set_value(int argc, char *argv[])
 BAREBOX_CMD_START(gpio_set_value)
 	.cmd		= do_gpio_set_value,
 	BAREBOX_CMD_DESC("set a GPIO's output value")
-	BAREBOX_CMD_OPTS("GPIO VALUE")
+	BAREBOX_CMD_OPTS("[-d CONTROLLER] GPIO VALUE")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 BAREBOX_CMD_END
 
@@ -89,7 +120,7 @@ static int do_gpio_direction_input(int argc, char *argv[])
 BAREBOX_CMD_START(gpio_direction_input)
 	.cmd		= do_gpio_direction_input,
 	BAREBOX_CMD_DESC("set direction of a GPIO pin to input")
-	BAREBOX_CMD_OPTS("GPIO")
+	BAREBOX_CMD_OPTS("[-d CONTROLLER] GPIO")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 BAREBOX_CMD_END
 
@@ -111,6 +142,6 @@ static int do_gpio_direction_output(int argc, char *argv[])
 BAREBOX_CMD_START(gpio_direction_output)
 	.cmd		= do_gpio_direction_output,
 	BAREBOX_CMD_DESC("set direction of a GPIO pin to output")
-	BAREBOX_CMD_OPTS("GPIO VALUE")
+	BAREBOX_CMD_OPTS("[-d CONTROLLER] GPIO VALUE")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 BAREBOX_CMD_END
-- 
2.30.2



