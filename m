Delivery-date: Wed, 29 Jun 2022 08:32:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RFD-000w4J-SW
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:32:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RFG-0005tT-0t
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:32:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2Cds0b1fftXAEzPgFi7TMnTzsCQqub/3IB8j3u88Zes=; b=WSfapdISP1VZ53xnKKJ+lPaG73
	x/QebjCQnRJiSpkzoGO4fm+m8am4wlbEPmFzhrROmjEj7/0OkfkR6n0Td49ZBOtQ5DmlpLnKCvCKG
	0GUwIIq1SRwIp7lQVyjJz83BmAcRN3zvggkuQEE8NdN1hbFG85bbpIT28Fjvbk2YeO85JDHD9lBrE
	jeSLK8pOtqTJEurrILsJ396QuMdDlFIQPfjQHhioduzAgrINHhKEY4vqJfZedtSS+RJk46N9K/diR
	hqcj5uxAHStdhMXfKAnO3IENwVizNHR1Aka7F9veqviTK9tCZR029Ey0CxVVqMn7MJ1jYRjfngxwB
	99zS7few==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RDh-009mYa-6z; Wed, 29 Jun 2022 06:30:37 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RDb-009mWK-KW
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:30:32 +0000
Received: by mail-lj1-x236.google.com with SMTP id r9so12320072ljp.9
        for <barebox@lists.infradead.org>; Tue, 28 Jun 2022 23:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2Cds0b1fftXAEzPgFi7TMnTzsCQqub/3IB8j3u88Zes=;
        b=D12f+t3rP4mdOfmm0TcZuUPuROdmIq0HVr7MbgvTJdzugD05g2eUUZ3c2ZoEBaAiuv
         n6OiazlyqZ8BrLrhgwZaZ+rWWE5TJlKbTsg780gK/yvlBClsldMXWATdQ3zOTKukB1Q0
         uWZhma9nAqMONnNjy7EQGO0ZUeLQVlOApCR7r34fClS2w6kCaFUlMBp0yKCLUT12asJJ
         zFfzdq0Edp7iMtDK/d3CtZzB1Akmk2HIq228KuUnKTJVB9Lb26CDEslr8agRLPltyfq0
         7TX1pcm/sSWPguC2R4yi9wvUk4mHBVlwJn1uGpk6XMW+o81r6thOgiFJbglOezdilNjq
         C1vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2Cds0b1fftXAEzPgFi7TMnTzsCQqub/3IB8j3u88Zes=;
        b=fs2miOJVLYre/W3V6eZLUuaPTKH/S/bnasfm3Zkc839lL6IdFWBDEc2vnjKfccS5VM
         uwPz481jJFTqsc3T+RY9JFUSUmvvGTh3mO+SDlKas0w7y8SmbNHdEkZAV5weZds8Ha9W
         5I2fQi0WfwCsfLgdiV/3OtxTKeHjphcD8CA2AAUhgrPxGy4xRkjV+bfJZU/3lLcNy9CV
         +WI/JetuqmXUq1lxeamhgcbckeAa+0B6XBTiiBMao+VW/4B7d7wZK6sJxGx1ALIG+lmy
         bmACtAlphvt6Cp0YcDoN+JdAExZ/T11mZS4bEbslJ3KVuLTw/+Y8d0B4nkV5ToCqfE1U
         y4Dg==
X-Gm-Message-State: AJIora9q8StMkxX2+7lJ04HsWT8pVlL4XwLo9RFIyPr/Djakr/Zej26H
	EmMpXiMD7Iuo2h1v3GqXUJc47bjQG5w=
X-Google-Smtp-Source: AGRyM1viZZEe2XLXRihbyo1tS8pggNNZq8LW9loWqDYPEi6nre1tOOp+kgZyT4NnqnZ9HcHGx6ePIQ==
X-Received: by 2002:a05:651c:14e:b0:25b:bd40:33a2 with SMTP id c14-20020a05651c014e00b0025bbd4033a2mr821734ljd.414.1656484227769;
        Tue, 28 Jun 2022 23:30:27 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id r25-20020a2e9959000000b0025a70f7ea3asm2019078ljj.138.2022.06.28.23.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 23:30:27 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 29 Jun 2022 09:30:19 +0300
Message-Id: <20220629063024.3945-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_233031_707665_76E4E10E 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 1/6] drivers: rtc: pcf8536: Remove redundant variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/rtc/rtc-pcf85363.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/rtc/rtc-pcf85363.c b/drivers/rtc/rtc-pcf85363.c
index 7b785d6a77..b9f0fc6012 100644
--- a/drivers/rtc/rtc-pcf85363.c
+++ b/drivers/rtc/rtc-pcf85363.c
@@ -131,7 +131,6 @@ static int pcf85363_probe(struct device_d *dev)
 	struct i2c_client *client = to_i2c_client(dev);
 	struct pcf85363 *pcf85363;
 	struct regmap *regmap;
-	int ret;
 
 	regmap = regmap_init_i2c(client,
 				&pcf85363_regmap_i2c_config);
@@ -147,9 +146,7 @@ static int pcf85363_probe(struct device_d *dev)
 	pcf85363->rtc.ops = &rtc_ops;
 	pcf85363->rtc.dev = dev;
 
-	ret = rtc_register(&pcf85363->rtc);
-
-	return ret;
+	return rtc_register(&pcf85363->rtc);
 }
 
 static struct platform_device_id dev_ids[] = {
-- 
2.32.0



