Delivery-date: Fri, 07 May 2021 00:10:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCT-00034b-6J
	for lore@lore.pengutronix.de; Fri, 07 May 2021 00:10:29 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCS-000529-5v
	for lore@pengutronix.de; Fri, 07 May 2021 00:10:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mn3gWFDfq5ULybXzWHS0+sUDVonWukZQCZD+hyTD7/o=; b=Q2SVh8jZAIRBfJVbkjSJ8Bb/8
	TqawOXVUF1cxbI2IS+p830qKgv3heApTaiVIBQ22vhwDKU4E1PVR5KUerYBDsd9HKb+dX9m9jEOYY
	GJ0f5w3lKUSDqUJm898WmPf9bT03zzSuUY6ZL/15/WsI/Kig1QJJE0WJCNEni6hXeWZPIc8iv9/Er
	dSL9/aH6KHhlxP+nlaTYJ349Scps2n/i2bMQHY8wh5n+Uzxi8hTBli+3BKrJz0PjKdIvYpyOuIzZi
	3RZd/njO9mb7Z9350yTpDcmkoGCg6dzscofMwdmI98r2nuRKAGUBWq2sOJuzWQh6DYx+HUhEheFKV
	0CkQjy3lw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lemBZ-005RUE-PE; Thu, 06 May 2021 22:09:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB6-005ROj-8Z
 for barebox@desiato.infradead.org; Thu, 06 May 2021 22:09:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=rL2vax35EiCZLYwOtFtekyh5XNCKkWDk/iQ0WORmlB8=; b=IgaFITePO+trDEAeR99TALnK7I
 7NMWlB1dvEsDnuzb0Lj33SZaCXxeMSP+lJJG12UgU6uJr+B2bY9ykkkNJ90l2bWC2eZKvY9RV7vJL
 eucEkPbQmiEuOcBPbZvzUSaJeLAtJzS1NnGyv8GLwahLlw+2HMZRpS8rA0Rj9Hu59wfPrpLSdlFd8
 bHHUr+tbfq099Cje9Ytv3eG2XQcfwyFyc1jRMZybnlj4O1Wija+KDwxj9qZjHOoARvXAdx0ZuQ9Hk
 aEHzek/jTtL5acuDJdXDIdHDOfKiRoXJ4tLCjIjKmc4kx7cg5cvzBLzcpskHmvhRiU01OHKcDjZxb
 xSF5fv/A==;
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB3-006QOG-D8
 for barebox@lists.infradead.org; Thu, 06 May 2021 22:09:02 +0000
Received: by mail-lj1-x22d.google.com with SMTP id y9so9041350ljn.6
 for <barebox@lists.infradead.org>; Thu, 06 May 2021 15:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rL2vax35EiCZLYwOtFtekyh5XNCKkWDk/iQ0WORmlB8=;
 b=KNHMOIgaOAXsUIbPjoBpxB9yAdD6iOZ4EX58npjxsaHNmuDYNtp4ovckA0458yscGV
 5aGIlazXKBosYxGyrfHjLlwWSxuq+2vSS7AY6wsO0Udz5AUUSwkSg2BgZQA3EmRp3FQ6
 /tkj+2/3gpxGH64+4WYprb3AbdwZD5aAB5mnunSblYRGzy5CAvQ42HTVqBYDXQUQ7SOm
 rUjbs/j7U3Jm/85bG7AvugBPy2+R5U1+NGxL7/u1+zYa6nrjp4ZhaQQCqfOhk17qpqAe
 w5dZTO3W0lhoQsIr4f4jkg1bf6i2fn2fZSlPWCkJeGLIlaONFTsnVywWnGSXDApR3TNy
 Zpxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rL2vax35EiCZLYwOtFtekyh5XNCKkWDk/iQ0WORmlB8=;
 b=JA9BZ/4wentS/nGqwOuJAe8hDpA/SrX2oH2K6UsN0FQ1+mov8D23Kk2JkJGHLTQuJE
 tFRdlMii1d4RGUEZ4toAMQEi2JlYcbi9vhLgTF3rrgQAGgdOmWfFcSWvsI8k5qI2Grsa
 k86kbL0P9YNRIx0CO7Esm6vhBzJFudPCEcg0G7xvkGyG4TtBqMsFDJVkb+prrImXH2KP
 tG23f2y9L52KVzo5fiVYza1Ewnp+vV2FJwW/1aFF8IXBAOqc2FYKuPAAouF9ZPbYZeL7
 CFrSsJsL4UJFX8arGkjv2PGTry7KS/uzQS/OHmP7dnh4MI68NzWXmRR2T+e2ByNG7fvi
 wrbQ==
X-Gm-Message-State: AOAM533fZeCWxX4ZMRQxybC2m2pULAxpaO6hDAJgrh1+/r97C/7bbT03
 r+NfS59DT+1/sXGR49XdWz8boyxVWeMhdQ==
X-Google-Smtp-Source: ABdhPJyS0kY3bPPSkssiB2JzXOvUTkcZ/7tzTV/BartyKtLMXMieY3M7WxZaUumcsCg//7KcKRm1Ng==
X-Received: by 2002:a05:651c:21b:: with SMTP id
 y27mr2846302ljn.72.1620338937590; 
 Thu, 06 May 2021 15:08:57 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id b24sm962584lff.207.2021.05.06.15.08.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 15:08:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 May 2021 01:08:28 +0300
Message-Id: <20210506220834.223350-6-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210506220834.223350-1-antonynpavlov@gmail.com>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_150901_463794_E7B5F759 
X-CRM114-Status: GOOD (  15.68  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/11] serial: add litex UART driver
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

