Delivery-date: Tue, 11 Jun 2024 09:00:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUD-00470j-0L
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 09:00:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUC-00068b-9w
	for lore@pengutronix.de; Tue, 11 Jun 2024 09:00:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+R/WoXssMijbBn6M3eCjhlGAoW7dYA3VKY2Y5TTtfvo=; b=xutatE3KhTptwNStp9wEDc1isk
	YYJ3eeHl9QiRwwreSajxMTlakG9Dja68glMpKomWCbkHxLsWfx4ltBUCYjNKFmkvXsacUIq/65vyF
	5Fu+91kLL+tNP2ClHB+4uVVEDKgQFZCp2+bfvJymdvVyubw/IpWWXXCase6HWGq66E5k3CAyrbbTG
	mqW8z1K6p7VXXZvV2CYJHD72rq7mE/q4Aa9vYcsMkrLzFVnW3MS3mCRJqPtaAzSwLkauqX3j/z75G
	NLDIPLiBrbD7cX0m+1D4XPKKSGRe1iVqBuHMVo5r45gsOFrDTYDg3k6d1BlxUie+EhE2oqkNiN+Q7
	1NLttDXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTg-00000007mxW-0PUk;
	Tue, 11 Jun 2024 06:59:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTa-00000007msx-1B0n
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:59:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTZ-0005qd-22; Tue, 11 Jun 2024 08:59:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-001UDQ-Ks; Tue, 11 Jun 2024 08:59:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-00CATV-1p;
	Tue, 11 Jun 2024 08:59:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:59:23 +0200
Message-Id: <20240611065923.2900168-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
References: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235926_398357_774CE9C7 
X-CRM114-Status: GOOD (  17.37  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/6] serial: add semihosting console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is no way to implement a proper tstc() with the semihosting
console, so for now, let's add it as output-only console.

Currently, the console is only usable when not running as EFI payload to
avoid duplicate output when it's exposed over regular EFI protocol.

In the future, we could make it opt-in by providing a way to create the
semihosting device from shell.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/Kconfig              |  8 ++++++
 drivers/serial/Makefile             |  1 +
 drivers/serial/serial_semihosting.c | 44 +++++++++++++++++++++++++++++
 3 files changed, 53 insertions(+)
 create mode 100644 drivers/serial/serial_semihosting.c

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 60b0e5f1dc1f..20fe26439048 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -151,4 +151,12 @@ config SERIAL_SBI
 	  Select this option if you are building barebox for a RISCV platform
 	  that implements a serial over SBI.
 
+config SERIAL_SEMIHOSTING
+	bool "Semihosting console"
+	depends on SEMIHOSTING
+	help
+	  Select this option if you want barebox to be able to output to
+	  the semihosting console implemented by a debugger or emulator.
+	  This console can not be read from.
+
 endmenu
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 4887e24ee1c1..f4ccb249003a 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -25,3 +25,4 @@ obj-$(CONFIG_VIRTIO_CONSOLE)			+= virtio_console.o
 obj-$(CONFIG_SERIAL_SIFIVE)			+= serial_sifive.o
 obj-$(CONFIG_SERIAL_SBI)			+= serial_sbi.o
 obj-$(CONFIG_SOC_LITEX)				+= serial_litex.o
+obj-$(CONFIG_SERIAL_SEMIHOSTING)		+= serial_semihosting.o
diff --git a/drivers/serial/serial_semihosting.c b/drivers/serial/serial_semihosting.c
new file mode 100644
index 000000000000..d495b07f11ca
--- /dev/null
+++ b/drivers/serial/serial_semihosting.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <console.h>
+#include <asm/semihosting.h>
+#include <efi/efi-mode.h>
+
+static void smh_serial_putc(struct console_device *cdev, char ch)
+{
+	semihosting_writec(ch);
+}
+
+static int smh_serial_probe(struct device *dev)
+{
+	struct console_device *cdev;
+
+	cdev = xzalloc(sizeof(*cdev));
+
+	cdev->dev = dev;
+	cdev->putc = smh_serial_putc;
+
+	return console_register(cdev);
+}
+
+static struct driver serial_semihosting_driver = {
+	.name   = "serial_semihosting",
+	.probe  = smh_serial_probe,
+};
+
+static int __init serial_semihosting_register(void)
+{
+	if (!efi_is_payload()) {
+		struct device *dev;
+		int ret;
+
+		dev = device_alloc("serial_semihosting", 0);
+
+		ret = platform_device_register(dev);
+		if (ret)
+			return ret;
+	}
+
+	return platform_driver_register(&serial_semihosting_driver);
+}
+console_initcall(serial_semihosting_register);
-- 
2.39.2



