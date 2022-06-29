Delivery-date: Wed, 29 Jun 2022 08:32:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RFF-000w55-E0
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:32:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RFH-0005uh-IY
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:32:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7c8Dc2Y8tfZPDcJBgen2bcheL50NHHMLk9KrKHkzj7Q=; b=CpRXOYCETxdiJFV7o4vHcyOl0I
	hrzrgjb7bo+5YJ+4O35Kfg0jSfkp4cPjnudIo1IuWK8Bztp/ofn5vmmoBBgkiVL4FamSJX0TbfSca
	WVJeFNxqKGNTo0GsYeePXXi7IGFCESIanjW/nT4kY4j0JrkF80TLAm+cDACQMc/DinkLRYK1z39Qa
	OusZnKGtIbrjNbm23Vh/ihau4c3AGFmBPzkrTCDNIguEteIo85u8Jppug1LyzY0BLwr2TOJgicSCl
	ji+UpWB9JYFRbAfCTu4HiwxER8IyzwjjrWzVfdID2kVAcZIsY5hIR7vbUuYempNQ0jIkDl0kzE7N2
	y1J2x7Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RDr-009mc2-ML; Wed, 29 Jun 2022 06:30:47 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RDe-009mWz-3F
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:30:35 +0000
Received: by mail-lf1-x12c.google.com with SMTP id i18so26235504lfu.8
        for <barebox@lists.infradead.org>; Tue, 28 Jun 2022 23:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7c8Dc2Y8tfZPDcJBgen2bcheL50NHHMLk9KrKHkzj7Q=;
        b=U2CSRna5QM34EZA8R9t1M5k9KHwL5ZwwDUtGcN1cksUXhkkI3tMn6WYqs3ehbDJCWh
         UGdbRbE0swbkkma4Le5bMNU7vdpPZMbSHvJIcqFkKBi6xKjA9O/bAKrIq3HarWhvgRID
         ZimDGmBvcsDN/sVdnRmep5guiC06AfiIgsKJidqo5cZshQn+L5U/cEpKkWw+ooy0rFHF
         GgFRcsRSzeERDKZAcjDFAWwP1BPR9QJVMUEN3E0AIy/IsnzE7C1Y5FCE1oUpF5UVMkJU
         VzBWoNoUkzrgnoOs/d86VKHuxf8o26KoiX9guSynDKDviepxs9/1EHq98aSMbVgXxdTD
         zbIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7c8Dc2Y8tfZPDcJBgen2bcheL50NHHMLk9KrKHkzj7Q=;
        b=ryVguEV1A/8Y+EP7UM3XDIG6gj0As3hTQDAeQBLxwqM4CNzg/JAZfWyJG+JACkuoKT
         4iKqC1YBzQHwEI22vNfMeJg3aH0uemgMsy8ESfpYqbB9Sj3Chi3OxbLwkVc5RsAdKfXH
         4ahSkGw93vh8m2yDXUjzWhzt2UYp4Wrv40HR/GKykf2sxsPRHKAW+ymvL3787Kw6GDOV
         pYPBxF6ijePpLpKz1qI8fusQMpfYmYQbEsSYWP6BVxjgV/zuE5X4zqrQRdf/BI4EjLBU
         YSXm84Ssyv+70l30Gy2d/Mf6zcRdDBw+BLOofblHya6/xGnvBDFe24K1dA94bij9Z0Y0
         AXBw==
X-Gm-Message-State: AJIora/DD31xAmoLp2a38rrOoLanatWakIrTJXRcoTXurqcH/9QW6ViR
	lfPSYY4mdpFLIVLeBp/pjzwZXnWQo9o=
X-Google-Smtp-Source: AGRyM1tLFCAtszKPj5EHNThlY/NywdGX086oRcFvgUNCaUM/M07ABYFjNwUuudN7ja3rdsrYZxba8g==
X-Received: by 2002:ac2:558e:0:b0:47f:777c:a5ed with SMTP id v14-20020ac2558e000000b0047f777ca5edmr1069829lfg.190.1656484231135;
        Tue, 28 Jun 2022 23:30:31 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id r25-20020a2e9959000000b0025a70f7ea3asm2019078ljj.138.2022.06.28.23.30.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 23:30:30 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 29 Jun 2022 09:30:23 +0300
Message-Id: <20220629063024.3945-5-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220629063024.3945-1-eagle.alexander923@gmail.com>
References: <20220629063024.3945-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_233034_176419_7AC3E8EA 
X-CRM114-Status: GOOD (  10.47  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] drivers: gpio: pcf857x: Remove redundant assignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/gpio/gpio-pcf857x.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpio/gpio-pcf857x.c b/drivers/gpio/gpio-pcf857x.c
index fefd20de6f..612ef3a82e 100644
--- a/drivers/gpio/gpio-pcf857x.c
+++ b/drivers/gpio/gpio-pcf857x.c
@@ -219,11 +219,7 @@ static int pcf857x_probe(struct device_d *dev)
 	 */
 	gpio->out = ~n_latch;
 
-	ret = gpiochip_add(&gpio->chip);
-	if (ret)
-		return ret;
-
-	return ret;
+	return gpiochip_add(&gpio->chip);
 }
 
 static const struct of_device_id pcf857x_dt_ids[] = {
-- 
2.32.0



