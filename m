Delivery-date: Wed, 05 May 2021 12:10:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUH-0007Zl-6Z
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:10:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUG-000553-D3
	for lore@pengutronix.de; Wed, 05 May 2021 12:10:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sjpHhDSOlIerimTA0GPOYlFjiohIKCgR41NZKVDtHm4=; b=ZWWbvVv8VGoUUZVsYN+QbaSp4
	CQhLu0T6hLP8GX9mncyBmwpqkuW3n2+oBnJavoCv8HqCaAAWlscYQCAOOvtOLKoYMW/BBJWEQtoMi
	jYySSR+RV6C4w+CkQLR4WQkNq/wom6vzh7eChMAOOe50ajVvgFFbtiswvoMWIiSkDLP6UI1vnZxGg
	JFdZYr1uxwJ6sK7wbUKQ5pjDSSJKQcggBXrMPB7exW7U7VnuLRtosNmYDSMqZvpT9KQm5Gwzwx63D
	PvbiZVudSMBddeKHFl1UkM4Qn7zBLz4k8XOIkT+hROIC3YLUSCHyDGspArV5JLZfnEeZaWaMP4b3T
	7eUmc5JZQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leETM-000q4q-Bk; Wed, 05 May 2021 10:09:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET5-000q13-GE
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:09:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=7HhuAj4HZOTPr7LJU12nHI38ybS+zGrxlmSu8zehSO8=; b=IUeC1jb2NkhfRDUfvVX6OoAqOy
 kgzCVbyBiQVQR17IC7BCeOH2SEfoJFld9h00aYsLCinq6hQaFnH++l6H+Wqu6UOmAxOrsn9GZ9xm1
 DXlhZnyCZuLkIuKtOTJ1kisQU43xMC+H2d7FHLSQaXa+Qmh3Bgl/O5HK1BzQ7JxyZrzI6rDT31dFb
 xRzj9Ff94eOBBXSGXwZJ1oKNGxIA42wjRMYKpf7mEb7LmT2iQfx4qSVnaLmnQMGfcvIKHTz+qjZo5
 Do+1qKL6YnIXQ74EL+jJCiFE6sq5h0eMCwvBqicLVVPMwoZsI5SdwnJ6JI/ics8E+ylK1jPCHGdyJ
 +4tkOSEQ==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET2-004eOR-QE
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:09:22 +0000
Received: by mail-lf1-x129.google.com with SMTP id z9so1749451lfu.8
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 03:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7HhuAj4HZOTPr7LJU12nHI38ybS+zGrxlmSu8zehSO8=;
 b=H9gad8nhJ6WXW0Gy3gGSstrDQ/colcpnHvYnptWSIiSLQ86G8SJhr5mFR3U0SJQoqM
 hlvuvZCg+bPy8Ke3/pFOF4/veSOvB44HBD1LyTZMHuILjSG/Y156WI0fX19iPhot4aiI
 tiOjQfxcD7Z7yEREnauPKohcl/SvvlHmDVI6x+GneTLMsftyBc0ylWV6VOt1As3wbrdD
 o/qd5KD9KO1dAJlOfCiTpcxyD1QC+QFSuI32sQAxcFwOYYb0ag2pgkcyojafZeeWaBKQ
 ccIKaZIeA0TlNRi2m4u6ohDfbjFz1t1aoBoRzu8vw3NSMZqQd6K213gsPPDtAtZ0WvmI
 Cm4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7HhuAj4HZOTPr7LJU12nHI38ybS+zGrxlmSu8zehSO8=;
 b=OFymLxsd/FP1SVIZbruoSt5l0cGmNfIVvt+wjH/mC5VJbsqIwMBim0L+dI/Va7Rb7k
 hVwGQWI8sJjoeBzLx3+uf5PqJ2w6PRQasILc17RkR39bEXXNL2mPHvmKcF7BpexRfqPD
 vf8eOeOo8COLsMihuokNKxQnmud3BAF+h9ln/iBBV83SI9xAvxnqN+Uqr2KgVWsMg6LI
 mrRZSuONguE6sFMZV0GqnBCBf1IR5J5u7GEMYxniMjp+pWYEQ1IXancuuJPstRsqWF7S
 m1VRcGQFFW7CqIAl8Mn3jzkB9PZf/Oj3xgzZ3+apc40XK0mQqmfSxEWMasSAWOKfgk8k
 wIzQ==
X-Gm-Message-State: AOAM533MdYgiYn105NO6VPi6MhjD5UR7DYp0uc3fIIGhAb+nKsB6UdFu
 BTB2s/ORbf573PaKT6jRdelWXcitaZWc9g==
X-Google-Smtp-Source: ABdhPJxWrjAlen2mbBRFrWuGHzu6tRY8WjIorIJWd25Sp4JUhLgpgsF6EeIidfA2z5Vk1SU6bT6bsQ==
X-Received: by 2002:a19:c518:: with SMTP id w24mr13898053lfe.104.1620209358537; 
 Wed, 05 May 2021 03:09:18 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id u8sm497114lfu.284.2021.05.05.03.09.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 03:09:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  5 May 2021 13:08:54 +0300
Message-Id: <20210505100900.88141-4-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210505100900.88141-1-antonynpavlov@gmail.com>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_030920_878177_3C45C8A3 
X-CRM114-Status: GOOD (  15.83  )
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
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/9] serial: add litex UART driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/Makefile       |  1 +
 drivers/serial/serial_litex.c | 96 +++++++++++++++++++++++++++++++++++
 2 files changed, 97 insertions(+)

diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 7ff41cd5c7..95c3387d3e 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -23,3 +23,4 @@ obj-$(CONFIG_DRIVER_SERIAL_EFI_STDIO)		+= efi-stdio.o
 obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
 obj-$(CONFIG_DRIVER_SERIAL_LPUART)		+= serial_lpuart.o
 obj-$(CONFIG_VIRTIO_CONSOLE)			+= virtio_console.o
+obj-$(CONFIG_MACH_LITEX)			+= serial_litex.o
diff --git a/drivers/serial/serial_litex.c b/drivers/serial/serial_litex.c
new file mode 100644
index 0000000000..dec3d99fd0
--- /dev/null
+++ b/drivers/serial/serial_litex.c
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: GPL-2.
+/*
+ * Copyright (C) 2019 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <io.h>
+
+#include <mach/debug_ll.h>
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
+	if (litex_serial_readb(cdev, UART_RXEMPTY)) {
+		return 0;
+	}
+
+	return 1;
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

