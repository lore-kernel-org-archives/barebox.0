Delivery-date: Fri, 24 Sep 2021 15:25:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mTlD0-0000fk-F9
	for lore@lore.pengutronix.de; Fri, 24 Sep 2021 15:25:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mTlCy-0007S1-Pj
	for lore@pengutronix.de; Fri, 24 Sep 2021 15:25:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q/zAjWCJfWBxe8znhxLpc+L3idTRD4k1939Kzj4k0vQ=; b=JILrcD3B0joOruus6Q5JsFCJ7Q
	iKtVMRGP5WljE1NipCEWtWrwPYnSZPWk+35ESuzDxROjzLHXkIcFdRY7PkWnwBoe5IPKluTrtnCw9
	y1QRRjJ42qeRHuxwLP2vBwLT4/bf+VvKcg1qORiHzhWYZP2lpcHVUq6Rv6H2ZHh/Y20gPf78X3ZEL
	701oZ9N55Q0dMtTAYo+q7hRSD3ojiJYTXUM9MwjlTmDcDNCoiMFz6DckVjC6oHS7AkahFRlOZVHcr
	BYctXmMsLK7bFHbBRQj1VnWF1K3gBNFAdBk2EuCLLaKB885xKtI9LtjGriF3xcxw1yBJHfzTteEBy
	vA0cbPUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTlB3-00EYHx-9c; Fri, 24 Sep 2021 13:23:46 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTl2D-00EUjS-Fj
 for barebox@lists.infradead.org; Fri, 24 Sep 2021 13:14:41 +0000
Received: by mail-lf1-x132.google.com with SMTP id i25so40561024lfg.6
 for <barebox@lists.infradead.org>; Fri, 24 Sep 2021 06:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cartesi-io.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=gZOwYwE+rvOIeXajdY37wuSJ8ny/2xH/4AUTCPapyBs=;
 b=zQvXvNxGHEGWvYvYG81+Bu4erujiwq8wFrspoXK8rInqu8u0mAqFEPBj/DdKYPr38W
 KrCC3WTeS2aop36KDsGB9LuFMe0L6vxj9BfYaAqxFgPhPr1IpzCikH3Y+9pNlAr9aImz
 ezMyyW0753b12mxMzjQTbNIx0EOCAKmrxbGeK2dqOre4wLkfeSrRbGVgPXX0gnh3ji3w
 xmNVtaVdIu8EqNtSRBpi54uHS6o2wHjs73TnXPJjCMqFdJY2A0ACNpZnTOFoRxhDXHmT
 keCqU74w2Qz8POu67sf4HONOfR3zLV9COWcFar5V62b+YD1o6gdeN+qw8UM+QttqdHce
 VuBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=gZOwYwE+rvOIeXajdY37wuSJ8ny/2xH/4AUTCPapyBs=;
 b=uIN0ETruAuNdh+X0aBK7wg36foQF5RDpkXGLGWwsd+TlhRa/mBwAhK+2ImmkdJj3bl
 UhNm5fNMxslwIKhKLmESc/PebmwJdtcI9J94sj/Q7EZWzFbUOEaIoJY7kHwggEQAfzBc
 vG03lNW8Y6ynZdTn1PAIpu7E93PK86DT/H+IkcKCjavkvUiUj4XjbGqfOMSEdAWqLBgk
 3QIg37hO6u8OhbFyvkv2G2FL9bkJ3Gwdlow6g4K0DhoiEG2mdvYtjMwfBf4C7Yi4svX1
 VIdS+NAC/MhkQxfq8S+yUjRrlgajLXve41nSDZrCd0KYJmN5uy9kgC20UFEH1HgsI4ut
 hH5g==
X-Gm-Message-State: AOAM532tU20IfL4RUHm9QKhGs5hUek3mWVV2l9QsBaeYAX+nYEddURmr
 CIv1ppx9ygH0VOVGafgX5XSb7SXUK5uMhEZo0yXFApQTmBA=
X-Google-Smtp-Source: ABdhPJx3ew4pgOmjO4aAwxacoyC/oG8jAFs9EFQ5Q2qTO7zRIiJjhcDczX2KyH16dhqFLYCgORcEdCs6WuSFS5QwTYc=
X-Received: by 2002:a2e:801a:: with SMTP id j26mr11141745ljg.175.1632489271309; 
 Fri, 24 Sep 2021 06:14:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210923204236.30975-1-marcelo.politzer@cartesi.io>
In-Reply-To: <20210923204236.30975-1-marcelo.politzer@cartesi.io>
From: Marcelo Politzer <marcelo.politzer@cartesi.io>
Date: Fri, 24 Sep 2021 10:13:38 -0300
Message-ID: <CA+cd6D7Yjd9JJYspMu+o8eyAYLO05tUtOjsbZ=PjejRfTYmsoQ@mail.gmail.com>
To: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210924_061437_653258_C9DBE912 
X-CRM114-Status: GOOD (  19.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Fwd: [PATCH] serial: implement riscv SBI console support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Implement a console over legacy SBI (version 0.1.0). There is a tiny ringbuffer
to simplify checking for presence and reading characters as separate steps.

Signed-off-by: Marcelo Politzer <marcelo.politzer@cartesi.io>
---
 arch/riscv/cpu/core.c       | 13 ++++++++
 arch/riscv/lib/sbi.c        | 11 +++++++
 drivers/serial/Kconfig      |  8 +++++
 drivers/serial/Makefile     |  1 +
 drivers/serial/serial_sbi.c | 60 +++++++++++++++++++++++++++++++++++++
 5 files changed, 93 insertions(+)
 create mode 100644 drivers/serial/serial_sbi.c

diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index 80730c05b..9226037f3 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -24,6 +24,7 @@
 #include <magicvar.h>
 #include <asm/system.h>
 #include <io.h>
+#include <asm/sbi.h>

 static int riscv_request_stack(void)
 {
@@ -33,6 +34,7 @@ static int riscv_request_stack(void)
 coredevice_initcall(riscv_request_stack);

 static struct device_d timer_dev;
+static struct device_d serial_sbi_dev;

 static s64 hartid;

@@ -75,6 +77,17 @@ static int riscv_probe(struct device_d *parent)
                        return ret;
        }

+       if (IS_ENABLED(CONFIG_SERIAL_SBI) && !serial_sbi_dev.parent) {
+               serial_sbi_dev.id = DEVICE_ID_SINGLE;
+               serial_sbi_dev.device_node = 0;
+               serial_sbi_dev.parent = parent;
+               dev_set_name(&serial_sbi_dev, "riscv-serial-sbi");
+
+               ret = platform_device_register(&serial_sbi_dev);
+               if (ret)
+                       return ret;
+       }
+
        hartid = riscv_hartid();
        if (hartid >= 0)
                globalvar_add_simple_uint64("hartid", &hartid, "%llu");
diff --git a/arch/riscv/lib/sbi.c b/arch/riscv/lib/sbi.c
index 45a04fb82..209069c98 100644
--- a/arch/riscv/lib/sbi.c
+++ b/arch/riscv/lib/sbi.c
@@ -64,3 +64,14 @@ static int sbi_init(void)

 }
 core_initcall(sbi_init);
+
+
+void sbi_console_putchar(int ch)
+{
+       sbi_ecall(SBI_EXT_0_1_CONSOLE_PUTCHAR, 0, ch, 0, 0, 0, 0, 0);
+}
+
+int sbi_console_getchar(void)
+{
+       return sbi_ecall(SBI_EXT_0_1_CONSOLE_GETCHAR, 0, 0, 0, 0, 0,
0, 0).error;
+}
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index b9750d177..5e30ea388 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -173,4 +173,12 @@ config SERIAL_SIFIVE
          contains a SiFive UART IP block.  This type of UART is present on
          SiFive FU540 SoCs, among others.

+config SERIAL_SBI
+       tristate "RISCV Serial support over SBI's HTIF"
+       depends on OFDEVICE
+       depends on RISCV_SBI
+       help
+         Select this option if you are building barebox for a RISCV platform
+         that implements a serial over SBI.
+
 endmenu
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 5120b1737..b1de436ed 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -24,3 +24,4 @@ obj-$(CONFIG_DRIVER_SERIAL_DIGIC)             +=
serial_digic.o
 obj-$(CONFIG_DRIVER_SERIAL_LPUART)             += serial_lpuart.o
 obj-$(CONFIG_VIRTIO_CONSOLE)                   += virtio_console.o
 obj-$(CONFIG_SERIAL_SIFIVE)                    += serial_sifive.o
+obj-$(CONFIG_SERIAL_SBI)                       += serial_sbi.o
diff --git a/drivers/serial/serial_sbi.c b/drivers/serial/serial_sbi.c
new file mode 100644
index 000000000..7217ce9cc
--- /dev/null
+++ b/drivers/serial/serial_sbi.c
@@ -0,0 +1,60 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2021 Marcelo Politzer <marcelo.politzer@cartesi.io>
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <io.h>
+#include <of.h>
+#include <asm/sbi.h>
+
+struct sbi_serial_priv {
+       struct console_device cdev;
+       uint8_t b[2], head, tail;
+};
+
+static int sbi_serial_getc(struct console_device *cdev)
+{
+       struct sbi_serial_priv *priv = cdev->dev->priv;
+       if (priv->head == priv->tail)
+               return -1;
+       return priv->b[priv->head++ & 0x1];
+}
+
+static void sbi_serial_putc(struct console_device *cdev, const char ch)
+{
+       sbi_console_putchar(ch);
+}
+
+static int sbi_serial_tstc(struct console_device *cdev)
+{
+       struct sbi_serial_priv *priv = cdev->dev->priv;
+       int c = sbi_console_getchar();
+
+       if (c != -1)
+               priv->b[priv->tail++ & 0x1] = c;
+       return priv->head != priv->tail;
+}
+
+static int sbi_serial_probe(struct device_d *dev)
+{
+       struct sbi_serial_priv *priv;
+
+       priv = dev->priv = xzalloc(sizeof(*priv));
+       priv->cdev.dev    = dev;
+       priv->cdev.putc   = sbi_serial_putc;
+       priv->cdev.getc   = sbi_serial_getc;
+       priv->cdev.tstc   = sbi_serial_tstc;
+       priv->cdev.flush  = 0;
+       priv->cdev.setbrg = 0;
+
+       return console_register(&priv->cdev);
+}
+
+static struct driver_d serial_sbi_driver = {
+       .name   = "riscv-serial-sbi",
+       .probe  = sbi_serial_probe,
+};
+postcore_platform_driver(serial_sbi_driver);
--
2.32.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

