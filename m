Delivery-date: Thu, 11 May 2023 14:49:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px5jg-00DveU-4l
	for lore@lore.pengutronix.de; Thu, 11 May 2023 14:49:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px5je-0006mI-7V
	for lore@pengutronix.de; Thu, 11 May 2023 14:49:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=73h/Cr3T8jthtC5m2UxmQmcLRiGsCw9kGKsAziUPAJ0=; b=N2Q8fxzpY3sC0M
	IW8c8Su5/rVfIPTReN6ZnBtPvJ4h9TE4PLklxNSBN+FFrmBYq1/Tu5Nikjj0qp3Ad8CJTkIbMS1fb
	c6I3fdJxloJP01SBfJhUYDMGlKyh0/XPzAHO4ye4w6DCRaRgZuqgep9WVoXYaX6J7A0A0f0GJCMF5
	y0GNp3XsuvmStg2gFjNQSJnSxcwSWKjF+u+hYvwRB1sxEdJJunl0VZtRpvYyX9jVZjAGQo1tnhEDx
	RMeiHT+/dFhKkr9RDNTKLu8+res0MUe/xFTTuLPi4SckDIjxNwQZoIYa6u/BWJ8qSEPneKi+cm2Z3
	yYeBTTB9vGlzjZeMNXVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1px5iA-008lud-0L;
	Thu, 11 May 2023 12:47:58 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1px5i7-008luA-0P
	for barebox@lists.infradead.org;
	Thu, 11 May 2023 12:47:56 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f13dafd5dcso9534066e87.3
        for <barebox@lists.infradead.org>; Thu, 11 May 2023 05:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683809272; x=1686401272;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=73h/Cr3T8jthtC5m2UxmQmcLRiGsCw9kGKsAziUPAJ0=;
        b=mC0QQI0lCQuqLHkWy93RaijS3G8Ge5COlYyPmlqkMAHtXp2cEbzjFfDp/WCQWiN05z
         XNx1tVM1zDs44+qIt9aE12SXzXhYCgmQ9TEuQNlPbIa7KsqI9U2te6KCuwWAA8Y0ITrt
         nuKyJ1xCJZLHXDeE5cpRDu6YZuwur/EPb7MB+4QxiTepwtPGo8JzaQFT3a0Z6rHbkBg/
         d88mF2q/JJv1tWF8MEa4a06Sl1MuUCgqyoDG3Ni92nWV4WTYZgZjZw+2EohVNXRGDLU3
         v1lg439sF9HUqzZc3frC1xXnpeTx5X4jDGbch8ctH2uFIo0uewZNv40IXI1Vwmag/3oh
         I2GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683809272; x=1686401272;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=73h/Cr3T8jthtC5m2UxmQmcLRiGsCw9kGKsAziUPAJ0=;
        b=dyworh4IzRteH7bdSvMnVL0480XiZ2S8/Mw0MgfTG9jwMky8hExwiZyVhHO7hmlDsa
         EgiuENCMLsUK5mVnjXrwxUAp0jm0zN1onl4fr5GYiNeDDVw9ZFYcKI14cjTNxUDAKMYx
         lGN3cLScaYx9iP4fTl8nGOy5KuyKnJJj/BmUBO45Ih6OdkuxMMSkTEXl3P46KKkcLL0k
         wF0cfo03csSpM3E/PJbI0m4S6u40k7nB16lmmmRuc4nX7AKXTNwYvWQV8UTe7wu8VmSW
         TQ/YEFIHPvIrHiELnWzuYAHy+eJGuoXXdOuObHo+eRj+7X0o0+uPiI5pl/KwgbpJaXEK
         ISfg==
X-Gm-Message-State: AC+VfDwGBXngJtvVTx+2H5arhlKybd0Ve7teGanxsMy7v+7t4s5GUTBL
	Gb5lZJC4QXKq5H0AD0YUKd7zGXARo35y7A==
X-Google-Smtp-Source: ACHHUZ5X7JoprzuZovu/+HM/clQcj+i+xATUKKBFOV2LKWL9O0zq936S7+EKtgHshYyPikAMoWXuow==
X-Received: by 2002:ac2:4c22:0:b0:4ef:e87e:df88 with SMTP id u2-20020ac24c22000000b004efe87edf88mr2388698lfq.64.1683809272189;
        Thu, 11 May 2023 05:47:52 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id j14-20020ac253ae000000b004ec508e3a9bsm1110413lfh.276.2023.05.11.05.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 05:47:51 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 11 May 2023 15:47:43 +0300
Message-Id: <20230511124743.2878952-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_054755_187555_30A5FFCA 
X-CRM114-Status: GOOD (  12.97  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] video: bochs: fix IOMEM usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For the PCI version of the driver, we end up calling IOMEM() twice on
both the fb_map and mmio pointers. This happens because we first use
pci_iomap() on PCI resources in the bochs_pci_probe() and then
explicitly call IOMEM() in the bochs_hw_probe(). However, judging from
the parameters of the latter function having __iomem attributes, we
should not be remapping them. So, remove those IOMEM calls and instead
do explicit remapping in bochs_isa_detect(), which was missing it.

Also fix bochs_hw_probe() declaration missing one __iomem.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/video/bochs/bochs_hw.c  | 4 ++--
 drivers/video/bochs/bochs_hw.h  | 2 +-
 drivers/video/bochs/bochs_isa.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/video/bochs/bochs_hw.c b/drivers/video/bochs/bochs_hw.c
index f31020acd4..48de5ea0bd 100644
--- a/drivers/video/bochs/bochs_hw.c
+++ b/drivers/video/bochs/bochs_hw.c
@@ -158,8 +158,8 @@ int bochs_hw_probe(struct device *dev, void __iomem *fb_map,
 
 	bochs = xzalloc(sizeof(*bochs));
 
-	bochs->fb_map	= IOMEM(fb_map);
-	bochs->mmio	= IOMEM(mmio);
+	bochs->fb_map	= fb_map;
+	bochs->mmio	= mmio;
 
 	ret = bochs_hw_read_version(bochs);
 	if (ret < 0) {
diff --git a/drivers/video/bochs/bochs_hw.h b/drivers/video/bochs/bochs_hw.h
index e01ef13d47..c721113656 100644
--- a/drivers/video/bochs/bochs_hw.h
+++ b/drivers/video/bochs/bochs_hw.h
@@ -10,6 +10,6 @@
 
 struct device;
 
-int bochs_hw_probe(struct device *dev, void *fb_map, void __iomem *mmio);
+int bochs_hw_probe(struct device *dev, void __iomem *fb_map, void __iomem *mmio);
 
 #endif
diff --git a/drivers/video/bochs/bochs_isa.c b/drivers/video/bochs/bochs_isa.c
index 3cedb5c345..50fdecd9c8 100644
--- a/drivers/video/bochs/bochs_isa.c
+++ b/drivers/video/bochs/bochs_isa.c
@@ -26,6 +26,6 @@ static int bochs_isa_detect(void)
 	if (ret)
 		return ret;
 
-	return bochs_hw_probe(dev, (void *)0xe0000000, NULL);
+	return bochs_hw_probe(dev, IOMEM(0xe0000000), NULL);
 }
 device_initcall(bochs_isa_detect);
-- 
2.30.2



