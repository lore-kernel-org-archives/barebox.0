Delivery-date: Tue, 18 Jun 2024 23:33:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJgSi-008LRb-1U
	for lore@lore.pengutronix.de;
	Tue, 18 Jun 2024 23:33:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJgSh-0003JB-TI
	for lore@pengutronix.de; Tue, 18 Jun 2024 23:33:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gJa1dV1TsCdxDkIyDh33F3pGpXRPe9C/ip2x+MYM5fU=; b=NffMudTMpK7cKm
	QdAoUAEJ4oyTZ7u4IJf18iRp3XPHf/ld8aUToqJMnRv73f1YqlyybebAcNGFl6FIGtp0F92+XgsaK
	/Kegc/D/EFNAX5tcBiV8go2wFrRImRgkVLaFvlFDkmZqYHY8akDBtfkjolJ97ytrodMto5NT9a4qS
	vEtZsdlx/7XDgy8vSp1PLgkfwlRvJhMcQJdtPd/82U3tMThfKoXeeN8n06ua7M+QwdFDVtuuM766t
	fHRHFB/w+xQg7G4GnP3f1f655kCzoKMvtahyZ82XQYkal7dG+V5Yaq0/7MlBUN+SbA/iFvix5GpVx
	BP58ZKXrl2XT8JTsZtNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJgS7-0000000GgZl-3kfp;
	Tue, 18 Jun 2024 21:33:19 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJgS5-0000000GgZ0-1DMT
	for barebox@lists.infradead.org;
	Tue, 18 Jun 2024 21:33:18 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2eaae2a6dc1so103486441fa.0
        for <barebox@lists.infradead.org>; Tue, 18 Jun 2024 14:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718746395; x=1719351195; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gJa1dV1TsCdxDkIyDh33F3pGpXRPe9C/ip2x+MYM5fU=;
        b=CMw7i0cdt6U4xFP18bKldyCMxGCpFrjI2TtBiHzyL3DMxzdx9s1eEPJOMuWE9bhF19
         A/83P/9ugRTMfG+6N9PqTj/922JKGI8CBtzWD8A+jwOWO3jKcHm2iCaf0gUtfAUa5/ra
         MM9Q3KTPwuzok4d0an0wBIdQSRYHS5i6vBVJQ9MJ0s6MT5eIbbcdSy4GW0YETbFiP9Un
         SmAHL6N53IZRjDiYwgWSKj5shaSrsC8AiKdHPPMmQRiVTrcsOTHbImhbP2Hxcdrn/rAP
         02jKv+86TQrnp+fy50HmHdAoO83zEMB3aO3W5aq9fiNOBzfYyM6sw9v+FZw0J42XegM6
         56aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718746395; x=1719351195;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gJa1dV1TsCdxDkIyDh33F3pGpXRPe9C/ip2x+MYM5fU=;
        b=d9VlNJwcyGn31D+Gsa2wOIjnRte88k7yLLoG+rQB6psg3PHbk3a9/f+Hs+UFF6jKWR
         sW6SMUyH+JqtE6CrqkUBS7Vd/2fTgsyNzJmYZaC/cTcHaOa2+Nn4FL2KbChvAcPIwTJ9
         9Dd8hA4SHKewkonu5OPPdPB6caWF1t+9HSaSE3BVwLOGh2iCxjmpzOiMd3H9ATI0WSUN
         7vJXPE37MMP2XnDozqdDLDSntpm05eHSHeh8vPsFKz2mTMpAWFuGAVWIySQ+aHivsHlR
         cVwK/tcxR0UZsER3GRi/OnBulJG1ZG2p02jaJ8WxYkp13dJhCLRQtH9duMKBDu67q1q7
         Ntgw==
X-Gm-Message-State: AOJu0YwDw5eR+2hwOBvaamsALVb86Yurz/1j020c3CqvNGIUcgdLk7R4
	AZ1HmvTrud5luNfgNZcfVNBNDc2drhD4sRuJdJk8J6Q6tCFvRQT6jriD3w==
X-Google-Smtp-Source: AGHT+IERzF85JxdFn2I4LJKue8eBbd9nxQMqWDfc7Ve68FFwihUeMXZeOwYRmnCJsOcA6GBpvdw2+A==
X-Received: by 2002:a2e:b0e7:0:b0:2eb:fe6a:7b8e with SMTP id 38308e7fff4ca-2ec3cec0dd9mr7123341fa.18.1718746394383;
        Tue, 18 Jun 2024 14:33:14 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec31950dd0sm5804791fa.140.2024.06.18.14.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 14:33:13 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 19 Jun 2024 00:33:57 +0300
Message-Id: <20240618213357.389435-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_143317_357648_EF55AB8C 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC] spi: spi-fsl-qspi: fix dev_request_mem_resource() usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Here is the code from drivers/spi/spi-fsl-qspi.c:

> res = dev_request_mem_resource(dev, 0);
> q->iobase = IOMEM(res->start);
> if (IS_ERR(q->iobase)) {
>         ret = PTR_ERR(q->iobase);
>         goto err_put_ctrl;
> }

res can contain error code (not a pointer)
so we can't use IOMEM(res->start) just after
res = dev_request_mem_resource(dev, 0) call.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/spi/spi-fsl-qspi.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-fsl-qspi.c b/drivers/spi/spi-fsl-qspi.c
index 17e6d1df867..d242035ee00 100644
--- a/drivers/spi/spi-fsl-qspi.c
+++ b/drivers/spi/spi-fsl-qspi.c
@@ -800,15 +800,13 @@ static int fsl_qspi_probe(struct device *dev)
 	spi_controller_set_devdata(ctlr, q);
 
 	/* find the resources */
-	res = dev_request_mem_resource(dev, 0);
-	q->iobase = IOMEM(res->start);
+	q->iobase = dev_request_mem_region(dev, 0);
 	if (IS_ERR(q->iobase)) {
 		ret = PTR_ERR(q->iobase);
 		goto err_put_ctrl;
 	}
 
-	res = dev_request_mem_resource(dev, 1);
-	q->ahb_addr = IOMEM(res->start);
+	q->ahb_addr = dev_platform_get_and_ioremap_resource(dev, 1, &res);
 	if (IS_ERR(q->ahb_addr)) {
 		ret = PTR_ERR(q->ahb_addr);
 		goto err_put_ctrl;
-- 
2.39.0



