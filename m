Delivery-date: Fri, 03 Mar 2023 14:46:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY5ja-007aQT-DL
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 14:46:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY5jZ-0005WH-Sr
	for lore@pengutronix.de; Fri, 03 Mar 2023 14:46:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kOc18Er/9FO3JnF/8njjLsN7kkwYPapQOZNVY24/0Io=; b=dDZYRrHQDr2YmKBYVQuvfCiP+N
	U+uwMWoQRCwQw/N5fGl700s6DDm87QJk3JhObaXjGqgiA396dfTfSbuDrXG/82rGcjLfkeuuF5JlT
	xuJ6dqAU2HOPupRhWMIMZxs0SW7HFVVrSAPzTFDdOqDV+B2cD8rHUa3z1gm1O0IZsZY8ivlB4JNFG
	kyfyTe8eZdnAVt1+bzJZJCPGhUdr0EZOlkcRQKqGf9Z6HVNBfHTQ+fqt/2pj2IJb9uhT0b8Ap4f/O
	WZyHCxOmtcsrRpJk38xqq1AnXBVsoEbQEbATyZWDczLiSlWMyQnEK29joBqT6cWBd41afsN2YHcmr
	HSa2axxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY5iR-006Vpc-DW; Fri, 03 Mar 2023 13:44:55 +0000
Received: from smtpout30.security-mail.net ([85.31.212.34] helo=fx304.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY5iM-006Vor-N0
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 13:44:52 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id 07E9E9CFFB
	for <barebox@lists.infradead.org>; Fri,  3 Mar 2023 14:44:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1677851087;
	bh=tt30oxQr3zOIaPVgPJ6R+8wxOaPLT5ux0I/sKrJt2wI=;
	h=From:To:Cc:Subject:Date;
	b=4cZZa8EvN4BFjRwlp4MI/2GG/Trm154BCAQzR6HDlvne5eTBElQieLx5AO5U6vRe6
	 B5kP8feGW/ScENVDaqf/DE2sdjRDcZs8HzDAtXUhaX9NLNnY/iJ3LV7VawKOx1hwEb
	 Iasm7HOhuTZkHYNgqZa7NYlDSt2GfRIAtM3Ovz5A=
Received: from fx304 (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id E2BEA9CFBD;
	Fri,  3 Mar 2023 14:44:46 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <871d.6401f9ce.57bee.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx304.security-mail.net (Postfix) with ESMTPS id 58F5E9CFE9;
	Fri,  3 Mar 2023 14:44:46 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id 3698D27E053A;
	Fri,  3 Mar 2023 14:44:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id 1F25B27E0552;
	Fri,  3 Mar 2023 14:44:46 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 1F25B27E0552
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1677851086;
	bh=kOc18Er/9FO3JnF/8njjLsN7kkwYPapQOZNVY24/0Io=;
	h=From:To:Date:Message-Id;
	b=kq0e5zOdjFaCWghQ/2IoF+KL4b6QNMBdbQ9qlcbjKkAkCdcpRlgQ6u3PDbO+13LcJ
	 h++R5p2YzKRKrxcQLrloQ8zVbxOsrEDoJNSFuMszwgagBiIjGLGNwYgF4Hm1UrIvWb
	 RGioMjmNV+1crHjuQMva27i4d1I6nVQw9SuHt+k0=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 9_V-_BZTdMHF; Fri,  3 Mar 2023 14:44:46 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id 0AC1D27E053A;
	Fri,  3 Mar 2023 14:44:46 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Maxim Kochetkov <m.kochetkov@yadro.com>,
	Maxim Kochetkov <fido_max@inbox.ru>,
	Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri,  3 Mar 2023 14:44:41 +0100
Message-Id: <20230303134441.11264-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_054450_930400_0B99F868 
X-CRM114-Status: GOOD (  22.42  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] serial: ns16550: Fix device-tree probe and add proper teardown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This fix a new issue introduced by a previous patch that fixes a
previous issue.

The previous issue is related to the memory resource not being released
in case the probe fails or is deferred, hence if deferred the probe will
always fail to request the same memory resource. The proposed solution
was to move the resource request after the clock initialization which
was causing the driver to be deferred.

This introduced a new issue when using information from the device-tree,
the function ns16550_probe_dt() cannot easily be moved around as it:
 - adds offset to mmiobase, thus need to be called after ns16550_init_iomem()
 - sets the clock frequency, thus need to be called before clock init
 - sets {read,write}_reg callbacks using the width read from the device-tree,
   and is expected to override previous callbacks sets when calling
   ns16550_init_{iomem,ioport}

To fix this, both ns16550_init_iomem() and ns16550_init_ioport() functions
are fused and return the requested region. In case of an error during the
probe the resource is be properly released and can requested again if needed.

Fixes b32172c2f9 ("serial: ns16550: move iomem/ioport init after clock init")

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/serial/serial_ns16550.c | 120 +++++++++++++++++---------------
 1 file changed, 64 insertions(+), 56 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 9ce4feed43..b10a26cf21 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -385,23 +385,51 @@ static __maybe_unused struct ns16550_drvdata rpi_drvdata = {
 	.linux_earlycon_name = "bcm2835aux",
 };
 
-static int ns16550_init_iomem(struct device *dev, struct ns16550_priv *priv)
+/**
+ * @return the requested resource to be properly released in case probe fail
+ */
+static struct resource *ns16550_init_iores(struct device *dev, struct ns16550_priv *priv)
 {
-	struct resource *iores;
 	struct resource *res;
-	int width;
+	struct resource *iores;
+	unsigned long flags, width;
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
 	if (IS_ERR(res))
-		return PTR_ERR(res);
+		res = dev_get_resource(dev, IORESOURCE_IO, 0);
+	if (IS_ERR(res))
+		return res;
+
+	flags = res->flags & (IORESOURCE_MEM_TYPE_MASK | IORESOURCE_IO);
 
-	iores = dev_request_mem_resource(dev, 0);
+	if (flags & IORESOURCE_IO)
+		iores = request_ioport_region(dev_name(dev), res->start, res->end);
+	else
+		iores = request_iomem_region(dev_name(dev), res->start, res->end);
 	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	priv->mmiobase = IOMEM(iores->start);
+		return iores;
 
-	width = res->flags & IORESOURCE_MEM_TYPE_MASK;
-	switch (width) {
+	if (flags & IORESOURCE_IO)
+		priv->iobase = iores->start;
+	else
+		priv->mmiobase = IOMEM(iores->start);
+
+	switch (flags) {
+	case IORESOURCE_IO | IORESOURCE_MEM_8BIT:
+		priv->read_reg = ns16550_read_reg_ioport_8;
+		priv->write_reg = ns16550_write_reg_ioport_8;
+		priv->access_type = "io";
+		break;
+	case IORESOURCE_IO | IORESOURCE_MEM_16BIT:
+		priv->read_reg = ns16550_read_reg_ioport_16;
+		priv->write_reg = ns16550_write_reg_ioport_16;
+		priv->access_type = "io";
+		break;
+	case IORESOURCE_IO | IORESOURCE_MEM_32BIT:
+		priv->read_reg = ns16550_read_reg_ioport_32;
+		priv->write_reg = ns16550_write_reg_ioport_32;
+		priv->access_type = "io";
+		break;
 	case IORESOURCE_MEM_8BIT:
 		priv->read_reg = ns16550_read_reg_mmio_8;
 		priv->write_reg = ns16550_write_reg_mmio_8;
@@ -417,45 +445,13 @@ static int ns16550_init_iomem(struct device *dev, struct ns16550_priv *priv)
 		priv->write_reg = ns16550_write_reg_mmio_32;
 		priv->access_type = "mmio32";
 		break;
-	}
-
-	return 0;
-}
-
-static int ns16550_init_ioport(struct device *dev, struct ns16550_priv *priv)
-{
-	struct resource *res;
-	int width;
-
-	res = dev_get_resource(dev, IORESOURCE_IO, 0);
-	if (IS_ERR(res))
-		return PTR_ERR(res);
-
-	res = request_ioport_region(dev_name(dev), res->start, res->end);
-	if (IS_ERR(res))
-		return PTR_ERR(res);
-
-	priv->iobase = res->start;
-
-	width = res->flags & IORESOURCE_MEM_TYPE_MASK;
-	switch (width) {
-	case IORESOURCE_MEM_8BIT:
-		priv->read_reg = ns16550_read_reg_ioport_8;
-		priv->write_reg = ns16550_write_reg_ioport_8;
-		break;
-	case IORESOURCE_MEM_16BIT:
-		priv->read_reg = ns16550_read_reg_ioport_16;
-		priv->write_reg = ns16550_write_reg_ioport_16;
-		break;
-	case IORESOURCE_MEM_32BIT:
-		priv->read_reg = ns16550_read_reg_ioport_32;
-		priv->write_reg = ns16550_write_reg_ioport_32;
+	default:
+		width = flags & IORESOURCE_MEM_TYPE_MASK;
+		dbg_printf("%s: unsupported width %ld\n", dev->name, width);
 		break;
 	}
 
-	priv->access_type = "io";
-
-	return 0;
+	return iores;
 }
 
 /**
@@ -473,12 +469,19 @@ static int ns16550_probe(struct device *dev)
 	struct console_device *cdev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
 	const struct ns16550_drvdata *devtype;
+	struct resource *iores;
 	int ret;
 
 	devtype = device_get_match_data(dev) ?: &ns16550_drvdata;
 
 	priv = xzalloc(sizeof(*priv));
 
+	iores = ns16550_init_iores(dev, priv);
+	if (IS_ERR(iores)) {
+		ret = PTR_ERR(iores);
+		goto err;
+	}
+
 	if (plat)
 		priv->plat = *plat;
 	else
@@ -492,25 +495,20 @@ static int ns16550_probe(struct device *dev)
 		if (IS_ERR(priv->clk)) {
 			ret = PTR_ERR(priv->clk);
 			dev_err(dev, "failed to get clk (%d)\n", ret);
-			goto err;
+			goto release_region;
 		}
-		clk_enable(priv->clk);
+		ret = clk_enable(priv->clk);
+		if (ret)
+			goto clk_put;
 		priv->plat.clock = clk_get_rate(priv->clk);
 	}
 
 	if (priv->plat.clock == 0) {
 		dev_err(dev, "no valid clockrate\n");
 		ret = -EINVAL;
-		goto err;
+		goto clk_disable;
 	}
 
-	ret = ns16550_init_iomem(dev, priv);
-	if (ret)
-		ret = ns16550_init_ioport(dev, priv);
-
-	if (ret)
-		goto err;
-
 	cdev = &priv->cdev;
 	cdev->dev = dev;
 	cdev->tstc = ns16550_tstc;
@@ -528,8 +526,18 @@ static int ns16550_probe(struct device *dev)
 
 	devtype->init_port(cdev);
 
-	return console_register(cdev);
+	ret = console_register(cdev);
+	if (ret)
+		goto clk_disable;
+
+	return 0;
 
+clk_disable:
+	clk_disable(priv->clk);
+clk_put:
+	clk_put(priv->clk);
+release_region:
+	release_region(iores);
 err:
 	free(priv);
 
-- 
2.17.1



