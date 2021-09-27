Delivery-date: Mon, 27 Sep 2021 22:08:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mUwvM-0004us-O3
	for lore@lore.pengutronix.de; Mon, 27 Sep 2021 22:08:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mUwvL-0006H0-FO
	for lore@pengutronix.de; Mon, 27 Sep 2021 22:08:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ns3Qp/FbUFREQyGZW2C+gm4vGJY8M4825mNZz3x3Ldg=; b=LPFItD+aJ9Dsnr
	7XMXrqD9PnHSEtiURZENRTA4/Aj7FItnOI7gkql/NzO0zXQ+foBvug5VfPJ/hUZOi5KzAbObjYK6K
	PxiI+sxF/ncTc7enTIvgsT61ZgWH/nkN8AlLAiBrD4Y5hSiDLqwrJbzyXvWxult0dVrhQbndikL+M
	d93Ks5a6fisErq+K+iL1io/35Oz2vfk+AuN9I+8osltJFqBXm0NbYEyRDLcb9Mv2KDhEsBL23O1i7
	Z0Ytr4d48ApTkhm/mcUTB5BZUZH5aZ1VZV7oWLkkt7P0ZE3jsbxhOdioAa0tkBpCfrc2jDojof+U0
	MhxUvtd1UJ4Y/fsUhJSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUwtX-004718-Hv; Mon, 27 Sep 2021 20:06:35 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUwtS-0046zy-3G
 for barebox@lists.infradead.org; Mon, 27 Sep 2021 20:06:31 +0000
Received: by mail-qk1-x72f.google.com with SMTP id x12so4896632qkf.9
 for <barebox@lists.infradead.org>; Mon, 27 Sep 2021 13:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cartesi-io.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jdoEvHG2f1X6ulzwTrNjJEbljLbaCjmeGHyBMKOBcak=;
 b=rut0H98nUr8jkpbA3knpyE+IdJuhEkP82VJwrmPbfnMbVIS0LLtsLCNegws9wTE5Vo
 2RruOEQwbJvt0fIC2jL1gbcGSnuloYKir2qjbovb5ZeR3TSPIrswIXIqkRJvzH+O+A+6
 hgZ6BywYBAy5/7w6/7eiL3SNZdMjtYMmIg6Y7C6X0hdj+ImhsDpkSkpLplQROLJ7T5OQ
 kPZMc6cpulV0K4Y0SffvjSm99XdGqHM5CnohRRjYR3gc3ayVq+pygl1xwvc+ajPA0y7s
 DryZN/yu2FrdRPKOiBtvQYI7JHFJoT+IKlcZReTAHcWql20FbSmklUunAh1Ig+EYYGfg
 UdWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jdoEvHG2f1X6ulzwTrNjJEbljLbaCjmeGHyBMKOBcak=;
 b=FiWwNp4hTmCTv1nQieSfWU2M6enU2yvZfU8tQxYJB8plRATnS22xjYp8O71j1KyWV2
 liM0IfP54054eRzLyAe3ShdbocnD2gxSy5CaNz2nUuFNw3F1w8ftqCkcfu4nH9q/NMX7
 +z+i2qoBwZIC6ymBLmDjbbg85IYy7fAa1eiJR42nPzqLuYXxdFzGm3X/CC6G8XJjj1Cc
 tIyFbV9Hs7etSiWzpX9IfvHTdHMO9/wuuoGH95tAyfUkjI3LRriGBzK0vPzgnArtdYIl
 E5HksbmNFJLiluHbmpu7UloDpFM2Eg4DA6GklaI3TYFle92jrKUNjVQy50uz+R6BuMg1
 CB/Q==
X-Gm-Message-State: AOAM5338WGYbzOdzhcEuf6EgZTzIMc2VrXeVKlfl72pOKiR09Uhf0IJk
 Avizfmp4DY1tGuan2m22+Huu6NeieUg2xQ==
X-Google-Smtp-Source: ABdhPJyQGs5DDJtFjB0VaxV7bj65si0slAIEG/DkbpjoN3eVTQd4gvqFOBOUFouTIgDFi6tW2k+ZEw==
X-Received: by 2002:a05:620a:bc5:: with SMTP id
 s5mr1786695qki.47.1632773187652; 
 Mon, 27 Sep 2021 13:06:27 -0700 (PDT)
Received: from tux.lan ([2804:14d:5c58:9951::ad2])
 by smtp.googlemail.com with ESMTPSA id b26sm11778514qtr.30.2021.09.27.13.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Sep 2021 13:06:27 -0700 (PDT)
From: Marcelo Politzer <marcelo.politzer@cartesi.io>
To: barebox@lists.infradead.org
Date: Mon, 27 Sep 2021 17:05:21 -0300
Message-Id: <20210927200521.7996-1-marcelo.politzer@cartesi.io>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_130630_218550_3C0EB9BD 
X-CRM114-Status: GOOD (  19.09  )
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
Cc: Marcelo Politzer <marcelo.politzer@cartesi.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v=2] serial: implement riscv SBI console support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Implement a console over legacy SBI (version 0.1.0). There is a tiny ringbuffer
to simplify checking for presence and reading characters as separate steps.
---
 arch/riscv/cpu/core.c       | 12 ++++++++
 arch/riscv/lib/sbi.c        | 10 +++++++
 drivers/serial/Kconfig      |  8 +++++
 drivers/serial/Makefile     |  1 +
 drivers/serial/serial_sbi.c | 58 +++++++++++++++++++++++++++++++++++++
 5 files changed, 89 insertions(+)
 create mode 100644 drivers/serial/serial_sbi.c

diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index 80730c05b..1d5902a51 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -33,6 +33,7 @@ static int riscv_request_stack(void)
 coredevice_initcall(riscv_request_stack);
 
 static struct device_d timer_dev;
+static struct device_d serial_sbi_dev;
 
 static s64 hartid;
 
@@ -75,6 +76,17 @@ static int riscv_probe(struct device_d *parent)
 			return ret;
 	}
 
+	if (IS_ENABLED(CONFIG_SERIAL_SBI) && !serial_sbi_dev.parent) {
+		serial_sbi_dev.id = DEVICE_ID_SINGLE;
+		serial_sbi_dev.device_node = 0;
+		serial_sbi_dev.parent = parent;
+		dev_set_name(&serial_sbi_dev, "riscv-serial-sbi");
+
+		ret = platform_device_register(&serial_sbi_dev);
+		if (ret)
+			return ret;
+	}
+
 	hartid = riscv_hartid();
 	if (hartid >= 0)
 		globalvar_add_simple_uint64("hartid", &hartid, "%llu");
diff --git a/arch/riscv/lib/sbi.c b/arch/riscv/lib/sbi.c
index 45a04fb82..a57c834b4 100644
--- a/arch/riscv/lib/sbi.c
+++ b/arch/riscv/lib/sbi.c
@@ -64,3 +64,13 @@ static int sbi_init(void)
 
 }
 core_initcall(sbi_init);
+
+void sbi_console_putchar(int ch)
+{
+	sbi_ecall(SBI_EXT_0_1_CONSOLE_PUTCHAR, 0, ch, 0, 0, 0, 0, 0);
+}
+
+int sbi_console_getchar(void)
+{
+	return sbi_ecall(SBI_EXT_0_1_CONSOLE_GETCHAR, 0, 0, 0, 0, 0, 0, 0).error;
+}
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index b9750d177..5e30ea388 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -173,4 +173,12 @@ config SERIAL_SIFIVE
 	  contains a SiFive UART IP block.  This type of UART is present on
 	  SiFive FU540 SoCs, among others.
 
+config SERIAL_SBI
+	tristate "RISCV Serial support over SBI's HTIF"
+	depends on OFDEVICE
+	depends on RISCV_SBI
+	help
+	  Select this option if you are building barebox for a RISCV platform
+	  that implements a serial over SBI.
+
 endmenu
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 5120b1737..b1de436ed 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -24,3 +24,4 @@ obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
 obj-$(CONFIG_DRIVER_SERIAL_LPUART)		+= serial_lpuart.o
 obj-$(CONFIG_VIRTIO_CONSOLE)			+= virtio_console.o
 obj-$(CONFIG_SERIAL_SIFIVE)			+= serial_sifive.o
+obj-$(CONFIG_SERIAL_SBI)			+= serial_sbi.o
diff --git a/drivers/serial/serial_sbi.c b/drivers/serial/serial_sbi.c
new file mode 100644
index 000000000..2ea28fea5
--- /dev/null
+++ b/drivers/serial/serial_sbi.c
@@ -0,0 +1,58 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2021 Marcelo Politzer <marcelo.politzer@cartesi.io>
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <asm/sbi.h>
+
+struct sbi_serial_priv {
+	struct console_device cdev;
+	uint8_t b[2], head, tail;
+};
+
+static int sbi_serial_getc(struct console_device *cdev)
+{
+	struct sbi_serial_priv *priv = cdev->dev->priv;
+	if (priv->head == priv->tail)
+		return -1;
+	return priv->b[priv->head++ & 0x1];
+}
+
+static void sbi_serial_putc(struct console_device *cdev, const char ch)
+{
+	sbi_console_putchar(ch);
+}
+
+static int sbi_serial_tstc(struct console_device *cdev)
+{
+	struct sbi_serial_priv *priv = cdev->dev->priv;
+	int c = sbi_console_getchar();
+
+	if (c != -1)
+		priv->b[priv->tail++ & 0x1] = c;
+	return priv->head != priv->tail;
+}
+
+static int sbi_serial_probe(struct device_d *dev)
+{
+	struct sbi_serial_priv *priv;
+
+	priv = dev->priv = xzalloc(sizeof(*priv));
+	priv->cdev.dev    = dev;
+	priv->cdev.putc   = sbi_serial_putc;
+	priv->cdev.getc   = sbi_serial_getc;
+	priv->cdev.tstc   = sbi_serial_tstc;
+	priv->cdev.flush  = 0;
+	priv->cdev.setbrg = 0;
+
+	return console_register(&priv->cdev);
+}
+
+static struct driver_d serial_sbi_driver = {
+	.name   = "riscv-serial-sbi",
+	.probe  = sbi_serial_probe,
+};
+postcore_platform_driver(serial_sbi_driver);
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

