Delivery-date: Tue, 17 Aug 2021 12:07:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFvzx-0005gr-RB
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:07:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFvzt-0001vk-Ez
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:07:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGS7AEJgdsaaAMhx/V489wyKvdLRodjZpnljmWNpfQM=; b=qD7+5k7L6Lp3vX
	9rXP0WlN/Ne7kg54NEfUS204V9JsvkSAK+nulIuAeHTbCNPO9V6ho7hBPwgndQIUubdoov8PqoVb2
	dQDY6KfMqcK9eVBsMc+o+L1zW9Y/SupORdDZ64ewmihI/l/MtohMRqh1Jrtgn1rPTuDX9SOkJmQsZ
	93+oHRDFf8BxdVFkzLh6hMQi5gIu0+7dkLDhDVBg7VT8CAT+6HPHtcyBfDTJrAmCtcctnU1ol8mGf
	59Dag8zA5W/19PO//hlfBhx71CF8OZQKQ3XE3oPLJYMKiZVdrovdePk/1S3OX8QqabsQDCuVXuWPe
	pEV8v1pVDjRKQaVRy5IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFvxr-001z1f-Qu; Tue, 17 Aug 2021 10:05:00 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFvxk-001yyK-9n
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:04:53 +0000
Received: by mail-lf1-x134.google.com with SMTP id r9so30880408lfn.3
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BAL2wio97r7oARFb5qIR0oteieG+nGlyjENUlSd2p7c=;
 b=CM/OqTHohRd2WGZBWOPa2tk02dVeZDpJ2sGVSTLqgbvBmyv36HlBQjTqgE1XTiTZ8/
 XpGbmuKqMgsakDQio9Ope6nJnx8GWuyOefIdtfJ4JCkSbnJrnBkUPYU0IM/LF0gBkiAx
 fUKHqAPBeREMjTfMjVpD8whuWW0axhuMZXJLKRIHjRm1z1lbCO292PhyGxZcCom5WKIy
 f1V7Xutn4ebv3S5Wx35oGyDtlXX97og25cZt3YJ2aZ7vwrH3swuos6lZgybzdfkfhbDA
 bzOEFNLdQkUxs+ik2r7KbMQA+pQhWyv/yFUEIwY8nh8hIWKYw9kCfS94+unjIQrzlNVN
 wMjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BAL2wio97r7oARFb5qIR0oteieG+nGlyjENUlSd2p7c=;
 b=KGObb8N3vNVJ+OK2A7U/IQuNLCnk78MQx3GXQ0eURBn/nrkSU2WiD0zSaS46rS4oYK
 11FmLnqLuqggavgQ/GiQZLQhV397iajZsPAWRharW89mP7affT40LN9GS+0HiSqpgLUl
 7qNwYL4q535vlcmYMO3J9AoCoIcNl+ImDOuYWPwAqSnkbfKmrLRtozuI26tH7gHkzQA/
 +qaePhbD/Q5n5YPXxpPh/TRqACuxj4e6xowg7HvorxPKUW1iWmdkEAJOHsJI/V7cjWV9
 74Ul2gyDfL6onQeV4LYlg5y7tL3uyUxTEj1lCSVStUby24JBOY1c/RALlzHPDzVO+Pbz
 Ln9Q==
X-Gm-Message-State: AOAM533y+3YD3nDa0ydyvFRk5MTDjvIrHdjRWlHN9JjxVrvZMjLlxbGq
 pk9D9keunI2eCd3q1yfIuEQWTkmogqk=
X-Google-Smtp-Source: ABdhPJyAy9oHEvukg5xCP/W+hge29INFASPc5sLRdfoygbBFvXXVCtyI1e8wZessoBGeYsA4TmDm6Q==
X-Received: by 2002:a05:6512:10cc:: with SMTP id
 k12mr1849996lfg.453.1629194689359; 
 Tue, 17 Aug 2021 03:04:49 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-80.dynamic.spd-mgts.ru.
 [109.252.203.80])
 by smtp.gmail.com with ESMTPSA id e20sm179795ljn.13.2021.08.17.03.04.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:04:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Aug 2021 13:04:29 +0300
Message-Id: <20210817100435.114756-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817100435.114756-1-antonynpavlov@gmail.com>
References: <20210817100435.114756-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_030452_391370_7B293375 
X-CRM114-Status: GOOD (  16.16  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] serial: add litex UART driver
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
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

