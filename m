Delivery-date: Tue, 19 Apr 2022 11:38:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngkJ8-007gkz-I1
	for lore@lore.pengutronix.de; Tue, 19 Apr 2022 11:38:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngkJ5-0005Z4-Go
	for lore@pengutronix.de; Tue, 19 Apr 2022 11:38:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gCDMJVGG1uSyW5phnj4+uvenLrspBZ4cfVst/0WxaF4=; b=Du8Ggec3sfpjc+
	McedbILPK4fMCmoh+I6kxpUhcK3ud94E2Ms8ihJ0D1Pt9I+WK/nQX2Sc9d7iG4ypZSvBM2xsXGU60
	D4SG9SNPGtCl+N63oY3QgN35Q2ZnaFXuwYgreHY6AYr3lvHy/jK6boY0sAEjY0KC8OH7LBqaANOGU
	To/+9MoNMOCJ9Cfsd71u9ewyJwXKHwUmRzK02fd6eE9OlDohhkWZjLeFYm4dNHwSJCgCznTqc42ob
	0TsOhw7lbEJUqa6HVip4DwHSZJbHUJpdPzNM3xaRmSMe+WjBw+Lo+kxFBn8AEdRXpfnvY4otzsuLI
	T7rCRB/H/fo/fUGGgymw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngkHh-002aAN-AA; Tue, 19 Apr 2022 09:36:33 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngkHc-002a8b-HM
 for barebox@lists.infradead.org; Tue, 19 Apr 2022 09:36:29 +0000
Received: by mail-lf1-x130.google.com with SMTP id b21so28359763lfb.5
 for <barebox@lists.infradead.org>; Tue, 19 Apr 2022 02:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VrzGWD2Y7xWc9y43APGfLuwoTSVhJHns7XvDRQw/Pe4=;
 b=B1d2jguqJWdFzyaYz4aXQ6+WcJwct65q7O6EY+ktFUYbEXNos4oV6pHlRoBaxPquWX
 nngf7YOTWmOKQFdfQqmzwbPx0ujJTMWdcVW7D5t8aMhTk+NEqmvP1pEznoGAWnUD2OUi
 +EJgTIAS3Kpcb2wO4KtMY1AMtunI4PWTLdAGZbLk56PeQP8PymUmdKX+7MxCL6KG2NOf
 JR/AXhptQmJe6nRg3cwvycgnEdSxr2+NY14sXGN7miYxgSc3RThMjR1fClaT5aluyARg
 Q4ilRqsQOnczu28T8F59uQ4RxuIPd0DI0xW9aL26cy19HjWPhI39DIlj0IunHziIoRyh
 cjDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VrzGWD2Y7xWc9y43APGfLuwoTSVhJHns7XvDRQw/Pe4=;
 b=4qIPjnFoP5aI2C3DAv6wgUSUaSoh24/4qferrQdN6wP/dNgSs8UdUyOIjcslzYSyAr
 tm/EKq029QGC8gIGvJjTfThSzleHbG5tN66ZHRelwkI/dMyP/gLPa7KxqvwhlOT02yfJ
 eDf4Y1KecNlxnSujxbq8I0se4D8s/kY+BoGx6t2uezfchWEjF85xcVhCQKLaMEx8yyJN
 pxxx5Gcx9UHHDbmpiIuQ5b6djvR/kPJNpWxrXGZmXypEtUIXMvDo9KFpQrcLh5epWLBG
 iqd6jWb/Ga+EsAFqVplW6jvmJRUvqbuDuEjrleNZDTKZK0SdogaGmKtHHaRFqRKHXTwy
 eJfQ==
X-Gm-Message-State: AOAM53223c+Vvt92JFYrVrPzckc3wFFISgX9THCU9XPe24pdD9S+4r1S
 HqCO7IdBui4LN0pKJxr79o0MnwDMdgBj9g==
X-Google-Smtp-Source: ABdhPJzb8BDq4IDSEB/tppIvCF8Au47HShzDcc5BQ1lEZZQ8ss/j7CTVBGbf2lIw7S+LOfOBJEJ3rA==
X-Received: by 2002:a05:6512:32c1:b0:471:b006:9fe5 with SMTP id
 f1-20020a05651232c100b00471b0069fe5mr584080lfg.261.1650360983625; 
 Tue, 19 Apr 2022 02:36:23 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 d14-20020a19f24e000000b00471a405963asm240256lfk.304.2022.04.19.02.36.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 02:36:23 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 19 Apr 2022 12:36:06 +0300
Message-Id: <20220419093606.59318-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_023628_616960_D1F21111 
X-CRM114-Status: UNSURE (   9.93  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] GPIO: clps711x: Simplify initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/gpio/gpio-clps711x.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index 67bce79bc3..a1965b33e4 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -25,17 +25,15 @@ static int clps711x_gpio_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	dat = IOMEM(iores->start);
 
+	iores = dev_request_mem_resource(dev, 1);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
 	switch (id) {
 	case 3:
-		iores = dev_request_mem_resource(dev, 1);
-		if (IS_ERR(iores))
-			return PTR_ERR(iores);
 		dir_inv = IOMEM(iores->start);
 		break;
 	default:
-		iores = dev_request_mem_resource(dev, 1);
-		if (IS_ERR(iores))
-			return PTR_ERR(iores);
 		dir = IOMEM(iores->start);
 		break;
 	}
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

