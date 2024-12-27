Delivery-date: Fri, 27 Dec 2024 08:41:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tR4y9-00DF7X-0e
	for lore@lore.pengutronix.de;
	Fri, 27 Dec 2024 08:41:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tR4y9-00036f-4s
	for lore@pengutronix.de; Fri, 27 Dec 2024 08:41:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xi1S0uPnnsFRHBO5IC6lF1gSXAm7rKJ26ky085fi9z0=; b=m421+2eDBeMSA03A1A1akGNlVg
	YdsDKooWB8vhc4l09XNSkJj0sRuiyBeFzpMF+1u2fwzNjQOmxWgeMaGYdbIqfA2M2Azcp/R4qe9Ac
	DgXDlaHhm7BBu473KUEE696SXtPrsaIOiMpWd2Cq161SNFXnynhNjjTLIc0DRDqIw+z9Gme9K5Znx
	pSdN26U0K18qlxoB5vvLrri/84SDIXb0eRHeZT265nbwq8r3UZ1tgSxc1N7vPIAoKCzmaVwmZKfJy
	0NpIlVA8oVUUElMJpUtTaocnGsUxxK3atlozISTWpfYnQwcaswQ8Xp9MhQUrtSw4DtpXtBgOknx3I
	8Sw8Mr3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4xf-0000000HHJ8-0NwV;
	Fri, 27 Dec 2024 07:40:43 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4x6-0000000HHE9-18d2
	for barebox@lists.infradead.org;
	Fri, 27 Dec 2024 07:40:09 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-3022598e213so367961fa.0
        for <barebox@lists.infradead.org>; Thu, 26 Dec 2024 23:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735285206; x=1735890006; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xi1S0uPnnsFRHBO5IC6lF1gSXAm7rKJ26ky085fi9z0=;
        b=FlYU/5OHe1Bf+lIxekYPXUyvg3Q+sDlM9/jynhw6AmmzsJ5Y9XwoXQ1cnwaYdykTln
         ysEY4wgHyOTmWAswDT3n7IShFuHxtPUzvmsqxzsC/txm13JiJ6AGN8IfyKDuYBGoXr5+
         KxZs4n/J2FlzcrfFtifjv8LrXXoE44QkjRpf+hYhT+a4u0U9Xwlq5GtAb9MujxUp8l4T
         4D6bLcMT1jLaCPmcO8kmQZeRsa7+uhV9+S7TUiLnN+XDVc/0xeeBVX4Rbih+ltRB658l
         c4/eegMigWojVi3sDx6aFoqX/RZn4BFJ6hryXb+jlcqfPd+ajgjW7k/3wCw51jWGaFa8
         XnCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735285206; x=1735890006;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xi1S0uPnnsFRHBO5IC6lF1gSXAm7rKJ26ky085fi9z0=;
        b=WsHfLx6J3yw49B/tvduZLabmA6/vZzGMmETe1JB386juWDxcFkIHt6E3Gdi0n1Ower
         YV5g/DU9uRS6A/XBFJk+SoS/XC9KlwobPDdYc+sv6bFUU9vOl7CyEBQIZKjzrYYqWC16
         iDXYFZdjmSuYQSA4RpTkdgnFcwl8LEMos//YgWNZGDWv0YOMGRQosybjuJj9V0x0S/Vk
         B1biBd//L12gV/CTM4eW/OVa9CrUKnyCywP7i1pI1owczBU3cl1th/BFG49R0yR4A0bT
         ZEVlk4aJ3DT6C6YRlC269BY+0Y2i9UOzl1gEUuFbf1giGk31CFOLLA/O10zrPEJqc7GW
         7otQ==
X-Gm-Message-State: AOJu0Yzn27ph4dx7P7r6r3DvLTWqxvH5/WIB0SA7Fn1hrMRkVb7k7BvD
	JlsivWZhAgTsmx9HmmUeALd1mfPoKgTkipMxABfMiCCGSBXWpX9CJZ8jfrOfyjo=
X-Gm-Gg: ASbGncvfezH0RAEekyWIWVUCvsb9QXdhBM8OKcuLEWb0CDVRDb4FR8IKAT0Cd4xRrxJ
	/s9VagGgD7tIprnGr1la9gMOGf0tWU6gV8xaXhEL8eLUuYu3oI9Gei1MWgWIEoHgDOf6iGuFmYX
	EwlOqfpd3Q0pp7Xcijg2sFYCJjfkJZoJVH7XGnP/5rpykNG7gAgJWlOkmADUqCVEPHhIgic9OkZ
	I5to9F0PvaPLdRSxxIzYzhnt9VhQzB9B34kp0eSQMA0ZaFD1jKbHES1l2QlUStRwUbxK3ef6qL9
	rLI=
X-Google-Smtp-Source: AGHT+IEFr0L+ZzwTjgjLNYQL4CYAv6wtmzQgTnI1NruWGw94mMlW7C0hWdmPFTvAK8rA7l9uknj2GQ==
X-Received: by 2002:a2e:be05:0:b0:300:31db:a77c with SMTP id 38308e7fff4ca-304685c0febmr93285011fa.29.1735285205564;
        Thu, 26 Dec 2024 23:40:05 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad9b9c4sm25243541fa.31.2024.12.26.23.40.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 23:40:03 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 27 Dec 2024 10:39:52 +0300
Message-Id: <20241227073952.26221-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_234008_317030_1D245493 
X-CRM114-Status: GOOD (  12.19  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mfd: atmel-flexcom: Driver refresh
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace dev_request_mem_resource() with dev_platform_get_and_ioremap_resource(),
clk_get() + clk_enable() with clk_get_enabled()
and use dev_err_probe() as driver refresh.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mfd/atmel-flexcom.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/mfd/atmel-flexcom.c b/drivers/mfd/atmel-flexcom.c
index 58e94c4889..11daeafc5f 100644
--- a/drivers/mfd/atmel-flexcom.c
+++ b/drivers/mfd/atmel-flexcom.c
@@ -22,7 +22,7 @@
 
 static int atmel_flexcom_probe(struct device *dev)
 {
-	struct resource *res;
+	void __iomem *base;
 	struct clk *clk;
 	u32 opmode;
 	int err;
@@ -35,17 +35,13 @@ static int atmel_flexcom_probe(struct device *dev)
 	if (opmode < ATMEL_FLEXCOM_MODE_USART || opmode > ATMEL_FLEXCOM_MODE_TWI)
 		return -EINVAL;
 
-	res = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(res))
-		return PTR_ERR(res);
+	base = dev_platform_get_and_ioremap_resource(dev, 0, NULL);
+	if (IS_ERR(base))
+		return dev_err_probe(dev, PTR_ERR(base), "Could not get memory region\n");
 
-	clk = clk_get(dev, NULL);
+	clk = clk_get_enabled(dev, NULL);
 	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	err = clk_enable(clk);
-	if (err)
-		return err;
+		return dev_err_probe(dev, PTR_ERR(clk), "Can't get clk\n");
 
 	/*
 	 * Set the Operating Mode in the Mode Register: only the selected device
@@ -53,7 +49,7 @@ static int atmel_flexcom_probe(struct device *dev)
 	 * inaccessible and are read as zero. Also the external I/O lines of the
 	 * Flexcom are muxed to reach the selected device.
 	 */
-	writel(FLEX_MR_OPMODE(opmode), IOMEM(res->start) + FLEX_MR);
+	writel(FLEX_MR_OPMODE(opmode), base + FLEX_MR);
 
 	clk_disable(clk);
 
-- 
2.39.1



