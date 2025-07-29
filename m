Delivery-date: Tue, 29 Jul 2025 22:37:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugr4z-0052Ql-28
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 22:37:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugr4y-0007hF-Rl
	for lore@pengutronix.de; Tue, 29 Jul 2025 22:37:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0lYCBCZn9gpoY7s0jaBxeExo7TuznEQNVGGtgA+Pl44=; b=KA+cstq5PpZYQjeEN0nNSlRzAb
	MHHekxgbPSIlDQdQQQGJZu7xFUnBOGKxVaFW59RaOciGF1NZZENp4E+enO4bNhKiIQpfNCEc+RZVh
	VtSZHWwwokD9uakk8esKiVPtER33Ta9DwEV4KdgsJ//dEvgH4NILD6pIRRouDT3IbztIWmj6RXbS0
	Y83KIZ9rEahbH3bejkUbcJKaO4RYdy3gYjYdA+8/lS+tWGK8Lng6pEcBRpW5v/CTiuBLviFt9Vl7u
	Ux71PlSQLejSNZZQU11haJGbfEZIr4Hhp0u35gsOACFIP8wa842qoSKnRRwzfUiR3eYwrbeit6zbz
	QgwWSmug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugr4O-000000003ya-2kY2;
	Tue, 29 Jul 2025 20:37:08 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugr4L-000000003xE-1V5G
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 20:37:06 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-455fdfb5d04so32529795e9.2
        for <barebox@lists.infradead.org>; Tue, 29 Jul 2025 13:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753821424; x=1754426224; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0lYCBCZn9gpoY7s0jaBxeExo7TuznEQNVGGtgA+Pl44=;
        b=b+0CcuVeftnwwGkUAn/qgYY5SD6AXFZHuU7Rubs5yIw0v/eLM0wOEINtlpRR1xxspg
         QFZLmHK0G8qBuOOZnrNE2Ywz5YHi/7XS+NM4138IB9vXI+l64beaw/3QkIPXPBRaBKxX
         c3Md7/vgra9BFgH88vQdxru3xA5eB+om2PBsJbpRXAngGK35ZfUdrej4McrpItLyXt9C
         h8rjTNewZ7CDgfceGo8vW4Cc5GdlDtJA/nfTQ+vT3SZETQquQICrsSVR+oCcSg/mDykU
         yLkNV0fZf6qTm+tZJZ/knAzAjjmyEDBQ0/PE3D2/rr0WIkVN7SRhL3/AawxnYMXU8WY+
         hsWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753821424; x=1754426224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0lYCBCZn9gpoY7s0jaBxeExo7TuznEQNVGGtgA+Pl44=;
        b=QL/dC3NAwxK1g5Xz1l6aNNa5pwHEtFBhy93YHJYoEQOT/mEmIEWadZ9ui8b6Xpy3nL
         xhmZdwMzILZko1lf/LNB3fXh/OuHhK5nkCJOI81CYkRD7fhlaa6NAO8r942Blf2oxzR5
         FEz9KLIEoWnEsz22guYOWGy4Fdp21kAgbYzH2+xDyW5NfhMqyMfJhAnffq2J4YegXsVI
         uyb4oc4yYjosZqfHAb6Y3/G9f23O+F0u7rstkAGixs+eoFmxv3ddDYmPTH6WrZ3j+7T1
         FQIcKCgNivznXKW8LTyXREGTMs2tGSAOwkVqmuq6hHTsg2NiLfu/jDUl8gLORCzHwp/d
         3kQg==
X-Gm-Message-State: AOJu0YxfkV9AqrbUApMnAFj7jSdxkIw3++WPtRVcNAihkjZFTl6guJ25
	b9muISSXR1kIklxC2OQK2Hm3vj9KhAidf4+Et50XTllw6+ogsZc6benWyCEisQ==
X-Gm-Gg: ASbGncvkL9e5dJZfX5gqCC1FUGo6K2Bzk7C1ldY+fTuIwa7KOoGQwBqUTcih8ShScGf
	+Wqi+qpyw6X9HuO9LMkPJxKQwLiB/Y5R79xg6/ayEhxOqDYovXzH/l8r6ggBMbxzhreJXUpEYx8
	nIlNvUKEy41iOyB8v5hfgXKySOLf9iAORlTShJlC4fSPqEbomtvDyMkCcvzB9EsbrBXbQ/8G9f2
	YMUpCScaUlnPsnRx2JS8d+7Tj2BUgnlvsj94esShxfjBPEawIwmxmHfUKXURKz5hXq/Vs0AxXjj
	iy88t1S0PXyl5IGbBL9ALJ4lCE9kVT164E0kW+hTv09uCjv0Sn5fFKllYEqp26hiU+BvIxMwLDs
	W6T8ih5cd7dnvj0qDtXkAbtP+UUvVOIW3JmVNHknoYuWpUMINTpHcndz8SLy8x1hlCovHEd3fQw
	==
X-Google-Smtp-Source: AGHT+IG65M9AmPlC05ihg4SmR9gYwNXKNdBg31xKAAYLNg/TErMyhwWJFOvxLA2wVHllTUAsiwxeiA==
X-Received: by 2002:a05:600c:810c:b0:456:2020:166a with SMTP id 5b1f17b1804b1-45892bc6d0emr9225955e9.20.1753821423503;
        Tue, 29 Jul 2025 13:37:03 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45895386627sm481325e9.19.2025.07.29.13.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 13:37:03 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue, 29 Jul 2025 23:36:56 +0300
Message-ID: <20250729203659.1858575-2-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_133705_394180_223D4F2A 
X-CRM114-Status: GOOD (  11.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 1/4] video: simplefb-client: switch to dev_get_resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since the framebuffer memory resource resides in ram, it has already
been requested and mapped, so only get the resource to avoid
requesting a busy resource. This is also the approach for linux.

While at it, use IOMEM for mem->start and drop an unnecessary newline.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
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



