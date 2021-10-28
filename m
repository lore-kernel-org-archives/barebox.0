Delivery-date: Thu, 28 Oct 2021 03:32:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfuGy-0001yv-HR
	for lore@lore.pengutronix.de; Thu, 28 Oct 2021 03:32:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfuGx-00011l-CB
	for lore@pengutronix.de; Thu, 28 Oct 2021 03:32:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAmbCTpN2yMHQbtnKzZNTSVBf6oskK46jr1NVuwqZvA=; b=kz6B4X9obtcPcG
	scACZMiNimFJLuiWmxap97u1QokLTnVORCceS0PqAdn6pet02DRqcZFz51zEZXzHJKAj5APUR1OwX
	3+DuPTqooXf8t6FQSSKKv6hyzOt+oOwTycfmK72PrBTkXoS/hTJfWWXyfxvrut3Tj91WySOZAuDIH
	6s+mXZG40igmGjZrA8yeq0PmTBVj/TbTiDCEi6Fo8odQskQ+aYux7ZNvxYCavT3jE9BMUk3gA0p4J
	y5/uYhjvq5FcBtv00qYjaLDJ+GagJlPiq83krwF6a0UVyXh0/NyJfSRfw2aHqxEfLZ0AQlF8hNPZU
	SBEM4BFGA3zqvEtEnu8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfuDj-006cDT-9h; Thu, 28 Oct 2021 01:28:43 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfuDQ-006c9J-Ma
 for barebox@lists.infradead.org; Thu, 28 Oct 2021 01:28:33 +0000
Received: by mail-lf1-x12b.google.com with SMTP id x27so10050549lfu.5
 for <barebox@lists.infradead.org>; Wed, 27 Oct 2021 18:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/qiWJ4JlPd0/Fv56GnWbYcQICUYYTkc4D35uslldR3g=;
 b=iC7jgYzXZFXiISSn+1REkBrHSrRXzLHMOUkTUOSvMQ5bE45oEBn2KYRMTJg/+er23k
 icxG6QoiCPnDPx13jfwnDYFhzIaKzoBs93vckOGEy0Ztb7xSpkcyvB1ka7k1GhGUm4v9
 3ppUXHhqt6Bkvst36/OsxIst7q15jmGi1AJFxHkvxbyH8/aG9C+AYTFyTHCYfVkSfohP
 fHibC6sBGlkdqRDHwTqIU+mBLwB+Y6Zl/NyoJ+fvnnE/iI9khEGuLpcx3oMCW/fPdJhW
 YEYgkqCZIHYaOaoLqAKezPa5/70qkn2Aq+4U/XCQUyHUHKxzWvp8EMiWEQzANYUSLAuA
 h9Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/qiWJ4JlPd0/Fv56GnWbYcQICUYYTkc4D35uslldR3g=;
 b=kGkHVKb/M4+WOCkPGC/IWQhirWlm/CFFi0jMdzyUIeI24zti4S02G0sZEilq4O4NZo
 FlcpCnPg1yHsYBJz8gH6mAAjn1Vd7f51OdHR1x8OIXgS+C0FNB/+4GbOAFVgAf7Y3ACt
 eg9GebqeThuSC8TC1ogHfPe2Lskl46fFK1A7wHsAYv+ofesfpRepKjhRdSUQ1dmdeShV
 kwoPpyG9ridYdA1wWNi7jB3/ygzThCqXx3GNwUgEBOElErgoh+qUMWEofcNHd25XArar
 z5DYI2rcooxYPbyOTbwSvhfs8jLFXJYHHPOUF4jvPXLR3OvVJAZLBL3Np0YwRJRW5M4o
 2EBQ==
X-Gm-Message-State: AOAM533ZcU0tlPmIbJWoSlfZsn2qrS1L4ka4o8taLpTaa0WY7kkCC5Q4
 mGNjWW3gv8XMjeStDtbliLDuRPFBxN4=
X-Google-Smtp-Source: ABdhPJyST3LCg8BT8/sQhUY67nYSQgysfLqDJ0G8yNcIrDrYXaoLJhPk5UCuVxenbJwmjksxGZ9q4g==
X-Received: by 2002:ac2:5f47:: with SMTP id 7mr1070184lfz.341.1635384502847;
 Wed, 27 Oct 2021 18:28:22 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-96.dynamic.spd-mgts.ru.
 [109.252.203.96])
 by smtp.gmail.com with ESMTPSA id h14sm153111lfv.83.2021.10.27.18.28.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 18:28:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Oct 2021 04:28:16 +0300
Message-Id: <20211028012816.929611-5-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211028012816.929611-1-antonynpavlov@gmail.com>
References: <20211028012816.929611-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_182824_791380_0DAFAEF4 
X-CRM114-Status: GOOD (  12.50  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] bareboximd: make the '-c' option work again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

bareboximd with the '-c' option craches while
trying to alter an image file, e.g.:

    barebox$ git describe
    v2021.10.0-125-gd136ec5ac6
    barebox$ make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu- imx_v8_defconfig
    ...
    barebox$ make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu-
    ...
    images built:
    barebox-nxp-imx8mm-evk.img
    barebox-prt-prt8mm.img
    barebox-nxp-imx8mn-evk.img
    barebox-nxp-imx8mp-evk.img
    barebox-nxp-imx8mq-evk.img
    barebox-zii-imx8mq-dev.img
    barebox-phytec-phycore-imx8mq.img
    barebox$ ./scripts/bareboximd images/barebox-phytec-phycore-imx8mq.img
    build: #1 Thu Oct 28 01:11:07 UTC 2021
    buildsystem version:
    crc32: 0x00000000
    release: 2021.10.0-00125-gd136ec5ac6
    barebox$ ./scripts/bareboximd -c images/barebox-phytec-phycore-imx8mq.img
    Segmentation fault (core dumped)

The problem is that the bareboximd uses mmap() on an image file
in read-only mode.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/bareboximd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index c3dcb4dcf0..fe0d274380 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -97,7 +97,7 @@ static int read_file_2(const char *filename, size_t *size, void **outbuf, size_t
 		goto close;
 	}
 
-	buf = mmap(NULL, max_size, PROT_READ, MAP_SHARED, fd, 0);
+	buf = mmap(NULL, max_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
 	if (buf == MAP_FAILED ) {
 		buf = malloc(max_size);
 		if (!buf) {
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

