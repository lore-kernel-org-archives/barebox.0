Delivery-date: Tue, 17 Aug 2021 12:13:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw5x-0005uS-8J
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:13:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw5r-0003bE-Un
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:13:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGS7AEJgdsaaAMhx/V489wyKvdLRodjZpnljmWNpfQM=; b=qMhr6pJDzqK/ue
	t4Ti+3YgHbd0ohuWeL+/CO3+SgyfgFgGfINoEAOrwHFRz1K58XaIyBqQ3xBVsbB2oMUkmMe/HhTYl
	HXe5IixDnCbhGaqe9KuvlgqENkr3SR3BZTkWcabiBNikkYsUK+ZL1ddYN2L7RsWDOy4lvh6GYCSJO
	03urdQhGz3d5kra4ku2R/EmyvlmnXyoHj12J4DsUWAG7ZyTiyy9sVTpWyp8/UktdCXc4Sn3+TA5OI
	4bb+Z4Kh2/4K/f6PSKD95nrsqJRsHrjqWRs75+EWTDbkc1piCGcMcadS8DZUH1W4OCs7Xc+UQ+EnN
	tvmALhEDBg+NuZb2AqIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw4D-0021hR-R0; Tue, 17 Aug 2021 10:11:34 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw3x-0021bC-MH
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:11:22 +0000
Received: by mail-lj1-x236.google.com with SMTP id x7so32071887ljn.10
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BAL2wio97r7oARFb5qIR0oteieG+nGlyjENUlSd2p7c=;
 b=Uqom1VKVBB8gHfWTUJoZ5MI12og5Ucj+HFwaUuoATjbAZ3oJyf+ZgXRFcMMGX3Uu0R
 x1O3AHIW9w06LemJLg8WLqEYxhAGallI+cU5qUMVkFJsUpGrNctkbcbt9agsOKVHnOVL
 CyDZyFhhYfAqZBc1yPiu94U7mmQtcEhEHWXWYeruVCFjeT1CBR59XiZTlGY+/2B6yNHD
 DJMnuc5Po3sHs93PN/+buNUpAKfEq0SY9Hb6Tv2k5Gy8WZJ5otwBEFFf7JMwabSmcf9s
 h8xoZ+Xejq7Ip3H8nEXKTF2MICDp/M6KZ60qEYSnLx5Cr+vRPRl08sHBgLUAqYAsB8ao
 fuyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BAL2wio97r7oARFb5qIR0oteieG+nGlyjENUlSd2p7c=;
 b=j6l8Izfy+Gdz92a3obfaJQrKcYbVIm3BmaltXxr35t7pO63me9jUlbTTPG8jvp7Myt
 cPJ0FuRpHtY/4O95FFi2JFb+kw0ld/ZtUaMbZsX0QMGqAYMiGTmpYmc4toXt4aHbR4Jq
 lOzeAcN9/bWgNxMNUmTnw8fAKWJi4Cf6gkh9C0ogY4c7BBrYrgictWj7fwYPFno7uyUI
 tsEFuMbttOtBucdz/LqmSbF8yA0s/dTdX9QvbnSJfvxWAxMQhTeG4HqBL8WqFjR9H3a5
 Prb7/ABHfLsUw3pMJJuq3bn76takIF4B/WSlCf6LrecXzCuOKnPeMYe/l/z+hIOpUS6w
 ChTg==
X-Gm-Message-State: AOAM531wQgHJql4be/kAP+f3Mh97vd5rggr2vwVuj0h6EyzTMpmGcij1
 uBa/udgmPR6BYNoD4dwyHwsXBY5PBLs=
X-Google-Smtp-Source: ABdhPJw90IK+sPdc3ZnBtAbi+zfhMEyRYX2+QB9Es7bdzY1MM2T5+FldUbXlkPkXN8aLaAGAmlVcJA==
X-Received: by 2002:a2e:a54d:: with SMTP id e13mr1359287ljn.267.1629195075999; 
 Tue, 17 Aug 2021 03:11:15 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-80.dynamic.spd-mgts.ru.
 [109.252.203.80])
 by smtp.gmail.com with ESMTPSA id x16sm144412lfa.244.2021.08.17.03.11.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:11:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Aug 2021 13:10:58 +0300
Message-Id: <20210817101104.114945-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817101104.114945-1-antonynpavlov@gmail.com>
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031117_759199_56322883 
X-CRM114-Status: GOOD (  16.05  )
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
Subject: [PATCH RESEND v4 2/8] serial: add litex UART driver
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

