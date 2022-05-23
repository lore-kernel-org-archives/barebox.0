Delivery-date: Mon, 23 May 2022 12:37:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt5Rj-006Pm2-VL
	for lore@lore.pengutronix.de; Mon, 23 May 2022 12:37:56 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt5Rh-0003BV-IW
	for lore@pengutronix.de; Mon, 23 May 2022 12:37:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=caLhAa/blGpVoAg/WEcSHfw3c+BaraYvGGuELfpOSko=; b=eTN5xL4p0efwd/
	9CwQ5Jncqk0jQ935A9gn3meSWvUnL1VKD7yEYiaH5mATI74VoKMQu8j7m4A3pkgIK6Mk/UePnXAiD
	kNLiFlMHNTQds+dQH+9gwQdYyKCqk/wlHeVQmTTuh1OPAgc8+lZN6y5k9x30ECNVwS9R8eXSSYpA6
	YyflCgWmpfuwmjtVRgQmPl3oATQdXfN0aSyKwSbrZIhpwVQgMTSFyDnfZGg8g3S3uyxw4YHR4bh8U
	fvlb9r/BcQRp5NaEo+JSA0wRGl7zkDAjSqITP+lXtOVlLmJBCqBB+3BWrfXRSL7A365PG/kXqfhty
	AdGfHjpHnk55EDkGTOUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt5Po-003IWo-TI; Mon, 23 May 2022 10:35:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt4Jq-002p4N-RO
 for barebox@lists.infradead.org; Mon, 23 May 2022 09:25:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jn-0005tv-1Z; Mon, 23 May 2022 11:25:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jn-0043MS-LB; Mon, 23 May 2022 11:25:38 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jj-003Jyz-Um; Mon, 23 May 2022 11:25:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 May 2022 11:25:20 +0200
Message-Id: <20220523092526.791716-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220523092526.791716-1-a.fatoum@pengutronix.de>
References: <20220523092526.791716-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_022542_965000_FE96EA76 
X-CRM114-Status: GOOD (  12.36  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] serial: ns16550: add $global.bootm.earlycon fixup support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are too many ways to integrate a ns16550. Let barebox compute a
suitable earlycon for each device.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 464ae1aebc33..b4cea816ada7 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -39,11 +39,13 @@ struct ns16550_priv {
 	unsigned iobase;
 	void (*write_reg)(struct ns16550_priv *, uint8_t val, unsigned offset);
 	uint8_t (*read_reg)(struct ns16550_priv *, unsigned offset);
+	const char *access_type;
 };
 
 struct ns16550_drvdata {
         void (*init_port)(struct console_device *cdev);
         const char *linux_console_name;
+        const char *linux_earlycon_name;
 };
 
 static inline struct ns16550_priv *to_ns16550_priv(struct console_device *cdev)
@@ -323,22 +325,27 @@ static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 		priv->mmiobase += offset;
 	of_property_read_u32(np, "reg-shift", &priv->plat.shift);
 	of_property_read_u32(np, "reg-io-width", &width);
+
 	switch (width) {
 	case 1:
 		priv->read_reg = ns16550_read_reg_mmio_8;
 		priv->write_reg = ns16550_write_reg_mmio_8;
+		priv->access_type = "mmio";
 		break;
 	case 2:
 		priv->read_reg = ns16550_read_reg_mmio_16;
 		priv->write_reg = ns16550_write_reg_mmio_16;
+		priv->access_type = "mmio16";
 		break;
 	case 4:
 		if (of_device_is_big_endian(np)) {
 			priv->read_reg = ns16550_read_reg_mmio_32be;
 			priv->write_reg = ns16550_write_reg_mmio_32be;
+			priv->access_type = "mmio32be";
 		} else {
 			priv->read_reg = ns16550_read_reg_mmio_32;
 			priv->write_reg = ns16550_write_reg_mmio_32;
+			priv->access_type = "mmio32";
 		}
 		break;
 	default:
@@ -350,30 +357,36 @@ static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 static struct ns16550_drvdata ns16450_drvdata = {
 	.init_port = ns16450_serial_init_port,
 	.linux_console_name = "ttyS",
+	.linux_earlycon_name = "uart8250",
 };
 
 static struct ns16550_drvdata ns16550_drvdata = {
 	.init_port = ns16550_serial_init_port,
 	.linux_console_name = "ttyS",
+	.linux_earlycon_name = "uart8250",
 };
 
 static __maybe_unused struct ns16550_drvdata omap_drvdata = {
 	.init_port = ns16550_omap_init_port,
 	.linux_console_name = "ttyO",
+	.linux_earlycon_name = "omap8250",
 };
 
 static __maybe_unused struct ns16550_drvdata jz_drvdata = {
 	.init_port = ns16550_jz_init_port,
+	.linux_earlycon_name = "jz4740_uart",
 };
 
 static __maybe_unused struct ns16550_drvdata tegra_drvdata = {
 	.init_port = ns16550_serial_init_port,
 	.linux_console_name = "ttyS",
+	.linux_earlycon_name = "uart8250",
 };
 
 static __maybe_unused struct ns16550_drvdata rpi_drvdata = {
 	.init_port = rpi_init_port,
 	.linux_console_name = "ttyS",
+	.linux_earlycon_name = "bcm2835aux",
 };
 
 static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
@@ -396,14 +409,17 @@ static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
 	case IORESOURCE_MEM_8BIT:
 		priv->read_reg = ns16550_read_reg_mmio_8;
 		priv->write_reg = ns16550_write_reg_mmio_8;
+		priv->access_type = "mmio";
 		break;
 	case IORESOURCE_MEM_16BIT:
 		priv->read_reg = ns16550_read_reg_mmio_16;
 		priv->write_reg = ns16550_write_reg_mmio_16;
+		priv->access_type = "mmio16";
 		break;
 	case IORESOURCE_MEM_32BIT:
 		priv->read_reg = ns16550_read_reg_mmio_32;
 		priv->write_reg = ns16550_write_reg_mmio_32;
+		priv->access_type = "mmio32";
 		break;
 	}
 
@@ -441,6 +457,8 @@ static int ns16550_init_ioport(struct device_d *dev, struct ns16550_priv *priv)
 		break;
 	}
 
+	priv->access_type = "io";
+
 	return 0;
 }
 
@@ -502,6 +520,10 @@ static int ns16550_probe(struct device_d *dev)
 	cdev->setbrg = ns16550_setbaudrate;
 	cdev->flush = ns16550_flush;
 	cdev->linux_console_name = devtype->linux_console_name;
+	cdev->linux_earlycon_name = basprintf("%s,%s", devtype->linux_earlycon_name,
+					      priv->access_type);
+	cdev->phys_base = !strcmp(priv->access_type, "io") ?
+		IOMEM((ulong)priv->iobase) : priv->mmiobase;
 
 	priv->fcrval = FCRVAL;
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

