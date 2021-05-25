Delivery-date: Tue, 25 May 2021 09:22:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llROT-0008Dx-83
	for lore@lore.pengutronix.de; Tue, 25 May 2021 09:22:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llROR-0003tt-Dc
	for lore@pengutronix.de; Tue, 25 May 2021 09:22:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mn3gWFDfq5ULybXzWHS0+sUDVonWukZQCZD+hyTD7/o=; b=WpAkK3WwRcUh1V
	Q4oQGQzg39IeZTc8feCB1oN0jzKAdYtgcy4wQF67v74KU9JDgjK+pL1OepfQcrFj2EDz0F0ONa7t8
	UmHhtqfVDFaZaDRiNphZekiTr9Ry5DTy+5DofFN6pnhhrAjXtoTUx6VdbGCryn/EXap+m7+lI0ulH
	dBbxxdG2t4qHEhaDWolLDJNB5yBCIdK3HWkdNL2BjMeQd3EaSOT7qd4XWiIbywtWOmJuBcNmQLdT6
	emsno3bO6jdJz6zB+P6ukGMEo4F0d5FY1RHhtzZnxPfhHUBi9fM+GQVWSNBKvs7sm3rHnaK/n9XrA
	ajFB0r75pPPX9Uf++EPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llRN6-003qAU-Tv; Tue, 25 May 2021 07:21:01 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llRMG-003po6-Bp
 for barebox@lists.infradead.org; Tue, 25 May 2021 07:20:11 +0000
Received: by mail-lf1-x133.google.com with SMTP id j6so41796030lfr.11
 for <barebox@lists.infradead.org>; Tue, 25 May 2021 00:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rL2vax35EiCZLYwOtFtekyh5XNCKkWDk/iQ0WORmlB8=;
 b=OHDaH0V3xxEzN1SUIEGvD3PUVU69kQeOZjIzy4yZy2XHo8TlrF2Rj3uCn9uRH6oOof
 YS5vksf6+aE0zVQ4X4ijiquIiNAQbkC0JO/7XP/8iynoHDm8CR+fu32aE5kQ4MPChfRY
 zDCE9VYf30tUCYKDP0Wm2e74Qo10EK2CGAPC7I3ACZesVydIUt6lpAMW3a+wIM/EvWN/
 8oGqicP9zvXjqX+Y8QYtRC2PhPG4Wd6PvL8kFwrCIJLLz6YSGiWpbfEPi2r1bjshIYAw
 9MBkjiu2mLF9TdR81G8TZR0L8UmU54xEf9kv/eIr0S+61l+ftF2B17CQTovy0FSiyp52
 LXkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rL2vax35EiCZLYwOtFtekyh5XNCKkWDk/iQ0WORmlB8=;
 b=FcNc4Dxf8MC+fPYBL6QcmwoX54rEJhs++IfblGjfe/CMs2N4VOLZLvzzYtBi6IMCl5
 x9E1ZbfgsjtDS1ogVhTFJSSpJqyL6CCgJbk6YER8wwAeQVRBkfwbW8cNHfgg6M2wANK2
 gjCh/ugtABMOvevDXjLGkMChCx/g65ILQIngPFixyGjEoRpRkHo2tZDhgYwCopGWoeMV
 v4eU8Iy0qwZglJ5SO3p5h5xAatle9bF+MrD++QKk8hQPdcxGOech29KuMgZdz00woYaA
 RljqQRK4uFWlro1zrVn0Jx51Zq2Jxhq/djzbmN9In1DhuBaugLjG2QFY5eni10ssGP7f
 EnAw==
X-Gm-Message-State: AOAM530MUXjUYNQQCf809nkepc037JJPulTmFOHFwhRpOQjHlDrkfPVw
 l1dP3m81JdbLjE/mg5Bw7poO+At4U1xwuw==
X-Google-Smtp-Source: ABdhPJx6CtPVZ8Vw1zMMk8G53tqb4Hr5cy4dXvpv+H0urqLAxzpMVaQ03N3dwpfG1VEge7nsKWIbsg==
X-Received: by 2002:ac2:4c81:: with SMTP id d1mr13442357lfl.130.1621927206537; 
 Tue, 25 May 2021 00:20:06 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id f36sm1641387lfv.248.2021.05.25.00.20.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 00:20:06 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 May 2021 10:19:46 +0300
Message-Id: <20210525071952.18045-5-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210525071952.18045-1-antonynpavlov@gmail.com>
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_002008_453632_C53576F7 
X-CRM114-Status: GOOD (  16.27  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 04/10] serial: add litex UART driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/Makefile       |  1 +
 drivers/serial/serial_litex.c | 96 +++++++++++++++++++++++++++++++++++
 2 files changed, 97 insertions(+)

diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 5120b17376..45055371ea 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -24,3 +24,4 @@ obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
 obj-$(CONFIG_DRIVER_SERIAL_LPUART)		+= serial_lpuart.o
 obj-$(CONFIG_VIRTIO_CONSOLE)			+= virtio_console.o
 obj-$(CONFIG_SERIAL_SIFIVE)			+= serial_sifive.o
+obj-$(CONFIG_SOC_LITEX)				+= serial_litex.o
diff --git a/drivers/serial/serial_litex.c b/drivers/serial/serial_litex.c
new file mode 100644
index 0000000000..8562a45ecc
--- /dev/null
+++ b/drivers/serial/serial_litex.c
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+
+#define UART_RXTX	0x00
+#define UART_TXFULL	0x04
+#define UART_RXEMPTY	0x08
+#define UART_EV_PENDING	0x10
+#define  UART_EV_RX	(1 << 1)
+
+static inline uint32_t litex_serial_readb(struct console_device *cdev,
+						uint32_t offset)
+{
+	void __iomem *base = cdev->dev->priv;
+
+	return readb(base + offset);
+}
+
+static inline void litex_serial_writeb(struct console_device *cdev,
+					uint32_t value, uint32_t offset)
+{
+	void __iomem *base = cdev->dev->priv;
+
+	writeb(value, base + offset);
+}
+
+static void litex_serial_putc(struct console_device *cdev, char c)
+{
+	while (litex_serial_readb(cdev, UART_TXFULL))
+		;
+
+	litex_serial_writeb(cdev, c, UART_RXTX);
+}
+
+static int litex_serial_getc(struct console_device *cdev)
+{
+	int c;
+
+	while (litex_serial_readb(cdev, UART_RXEMPTY))
+		;
+
+	c = litex_serial_readb(cdev, UART_RXTX);
+
+	/* refresh UART_RXEMPTY by writing UART_EV_RX to UART_EV_PENDING */
+	litex_serial_writeb(cdev, UART_EV_RX, UART_EV_PENDING);
+
+	return c;
+}
+
+static int litex_serial_tstc(struct console_device *cdev)
+{
+	return !litex_serial_readb(cdev, UART_RXEMPTY);
+}
+
+static int litex_serial_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct console_device *cdev;
+
+	cdev = xzalloc(sizeof(struct console_device));
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	dev->priv = IOMEM(iores->start);
+	cdev->dev = dev;
+	cdev->tstc = &litex_serial_tstc;
+	cdev->putc = &litex_serial_putc;
+	cdev->getc = &litex_serial_getc;
+	cdev->setbrg = NULL;
+
+	console_register(cdev);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id litex_serial_dt_ids[] = {
+	{
+		.compatible = "litex,uart",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d litex_serial_driver = {
+	.name  = "litex-uart",
+	.probe = litex_serial_probe,
+	.of_compatible = DRV_OF_COMPAT(litex_serial_dt_ids),
+};
+console_platform_driver(litex_serial_driver);
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

