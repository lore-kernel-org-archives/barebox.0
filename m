Delivery-date: Tue, 02 Sep 2025 21:12:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWQl-007NbO-0m
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 21:12:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWQk-0006gD-2Y
	for lore@pengutronix.de; Tue, 02 Sep 2025 21:12:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HJQEpJAsCB//Ebrq9fBbApDZM8AlLT6nC6O+xVACqt0=; b=0+u/3Vt7JQkCbH1kLrQoWbsWJY
	82lYWhwY2cQQYOpMGDo7OvTVwNXfRQxC0b4wmucdA7/jc/Xt3fKCMAZ6YmNbt8uDnbmiLvrf5PS9B
	TNhtFbHk3eio4c7kGpF8geU+eopSS9onoS3eJaZ8fiK/FtI7rBUwzERISt2/18j0EfiYBf4OFzG5s
	1F3AG3oBnTwNtfqqd35uoV/+f1FjZHk7eb8k4NhqhK79fPoegZcuOTRInnF6wlkP8Ohr5D/hnRKZ5
	KCew824ov8hfu109axY60WDOrvJAr4kulLGHKmcsmTdN/xe+AzXPpGtoirHpuvch86+vNhwVTtb1x
	Uv6YbRdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utWQG-00000001d2b-0lq7;
	Tue, 02 Sep 2025 19:12:04 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utRYY-00000000DcZ-4A6T
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 14:00:20 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-afcb78ead12so883863466b.1
        for <barebox@lists.infradead.org>; Tue, 02 Sep 2025 07:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756821617; x=1757426417; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HJQEpJAsCB//Ebrq9fBbApDZM8AlLT6nC6O+xVACqt0=;
        b=noPLYpCKTkjGCPXGd4XDdlB6fOJ/NSiYtZQyxagfYpkIp3m/qUO96o7WmqOeTbnf5b
         e5OqqcFugbEiFp0LUbFh44l6x2JkV2SbwWJwnGP4Tv5jkVs5uCw8CJAk0hOczGdLpwRc
         xqE6+GtXCixN/6uMSRf2LvW2X7gjhAg2xqJKMbMMYcDNebIEnE+zGTvMTvo3bOg5K2BT
         QPICi2ogSIv/EA9S2KvOKsGgHYM3tsHHOIg7jYZ16VdY5kc58oj3DmycgXjJtjqzyaYM
         rJu3OHLym2b1FvBQF73eaN3eu236FWAik+L4fYk/TOf4Pv/YwXWNhUN7NVx0ZiO/XEXH
         03DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756821617; x=1757426417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HJQEpJAsCB//Ebrq9fBbApDZM8AlLT6nC6O+xVACqt0=;
        b=woi6jHeRbTV9jkRvwoJ3hB2Xqlz0gQPn5kx0CP1eDBNtDe5esDxPuJJ6EMuI5FRdDN
         4gmH38FNyi+nhqZhi3lB2vu/LXGnPO87OknIIbS0qcxhg3p/N+YAl17GKvDE1kOk/Y0Z
         15pViA0ceAEVqUlFZGVmI2CEUz/lQg8hpAEKvlZYMFvf/aWToov5Z0ZiNq0L3gpG5naE
         jNb94SegBQKLNEHXg+MJTFqHlusMdtREKl5ZszLg8GbxX6/dAYPglI+QZhD9sj94qS/t
         HlI/impQ+YUHy2buiG4FiVFkZw7E+tskldhOSykstZiwU9nvmgRSfBCs0GuUT05MLUIx
         qwbQ==
X-Gm-Message-State: AOJu0YxSjb1Rp2yIo/Ex/RGZMzfw0SYC+oCroaMnlBQr4fQIc99CqWdy
	E68eeDdt+kQhSVwh/M5ncZ6RBcSJiz5K5HLRXoHqpj+ntMcSRbqng2QdSvGiuA==
X-Gm-Gg: ASbGnctLCyKhunGp+Wio6cTXoYlthM/6ANevCmMpOyMnwa1krbVeYnVHMi/0/VJwAEO
	iYvTagmXSZn76PNapZQytE9wUqBQi17xr9kp2DCqWJ7Ii9UzrUipRWzxcf+AgvGKPxkClnN1Yee
	VtJ49/iXlmn9f16FrJEo25zHzPibhH4JA0bUfn5/fNCdHSxH45NAfuCVou/0knqzmtvj8Ssk3ea
	CDlcWuOF2Koasi3imLkjYCl1sASiNw8WKDS4z8KZm7Dd43FlMunszDyfIehul7teVQ+ZIQ5VYYO
	qVQ2ape5WYh8Nm4OIxsbo+QdU+l4dDQSrFEGkhs4gobPjIfrQef1l0qzgERADfKcUupGDoTKX3S
	ArMUbrk4cyVXf6SqRHIyFAuBTHrMGSO86
X-Google-Smtp-Source: AGHT+IGSz8IbdfUmk9jmn5DKv31/rVP3U6FLo5CjI7cWx0qtp6CogMfXUNsVebSqfTf6bRMdM4lrxg==
X-Received: by 2002:a17:907:170c:b0:b04:1f42:5de1 with SMTP id a640c23a62f3a-b041f42615emr749960266b.42.1756821617307;
        Tue, 02 Sep 2025 07:00:17 -0700 (PDT)
Received: from ivaylo-T580.. ([37.63.16.182])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff08b86833sm1034411366b.48.2025.09.02.07.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:00:16 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue,  2 Sep 2025 17:00:04 +0300
Message-ID: <20250902140006.1410408-2-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250902140006.1410408-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250902140006.1410408-1-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_070019_058534_01BF8BE1 
X-CRM114-Status: GOOD (  11.96  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/3] video: simplefb-client: switch to dev_get_resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the framebuffer memory resource resides in ram, it has already
been requested and mapped, so only get the resource to avoid
requesting a busy resource. This is also the approach for linux.

While at it, use IOMEM for mem->start and drop an unnecessary newline.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/simplefb-client.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
index dafec617..41ad8ffa 100644
--- a/drivers/video/simplefb-client.c
+++ b/drivers/video/simplefb-client.c
@@ -96,7 +96,7 @@ static int simplefb_probe(struct device *dev)
 	if (ret)
 		return ret;
 
-	mem = dev_request_mem_resource(dev, 0);
+	mem = dev_get_resource(dev, IORESOURCE_MEM, 0);
 	if (IS_ERR(mem)) {
 		dev_err(dev, "No memory resource\n");
 		return PTR_ERR(mem);
@@ -116,10 +116,9 @@ static int simplefb_probe(struct device *dev)
 	info->blue = params.format->blue;
 	info->transp = params.format->transp;
 
-	info->screen_base = (void *)mem->start;
+	info->screen_base = IOMEM(mem->start);
 	info->screen_size = resource_size(mem);
 
-
 	info->fbops = &simplefb_ops;
 
 	info->dev.parent = dev;
-- 
2.43.0



