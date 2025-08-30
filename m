Delivery-date: Sat, 30 Aug 2025 20:30:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usQL9-006H0h-2G
	for lore@lore.pengutronix.de;
	Sat, 30 Aug 2025 20:30:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usQL8-0005Fb-Iw
	for lore@pengutronix.de; Sat, 30 Aug 2025 20:30:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=68C4eqR2Gq94lgZkZJy7JBenIViC45B15WtVWTmdN4o=; b=FbXclO1hQ3IwpV3Twl/lJOrshf
	F6o9+/9DX83WLyjsnkOaSFqXCKrEsxfiHacUf//Vrp7xyg5/Km4tuPzOAsp79WsKxpMa+Cr2CUHNU
	gXR6mvosRaq4SSJ5A650JOMRgWSRx3RcpYISvlbzPLtOUaRiY7Xio/adrGowG12SdLZauwb7ffhXk
	FUW+chrE+04dohli3Xoo4GmvX5ouJiEsiflIakcU/0V7VxWgqIWI8ylsZwV98dg3dS3z6BjllMnYs
	VUZXaKLOnGFi4FAFPgY6QWcUZP7RtBQLcxXbiMfLHAmYxLvpH8skk3ANQJ/CpEASClmY4K7NxOTkg
	tFwLRevA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usQKK-00000008IkX-3eYC;
	Sat, 30 Aug 2025 18:29:24 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usQKJ-00000008IkE-07dq
	for barebox@lists.infradead.org;
	Sat, 30 Aug 2025 18:29:24 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-70dd6c93071so25089456d6.3
        for <barebox@lists.infradead.org>; Sat, 30 Aug 2025 11:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756578561; x=1757183361; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=68C4eqR2Gq94lgZkZJy7JBenIViC45B15WtVWTmdN4o=;
        b=Fhe6xOz1AfGtv1S6+xf4LML2PQ5upMEcidilAj9bxj2TfJk/8h1XUu/A5ItpANDfbi
         OFx6lpO0xJ6ltyJElFLTZIIMbGZMr1aN33WQlVfes5NARzder7xyNNZHtyidn2IU3TuX
         G9LOW206DbgUF32ITC1bt20jEXAkcngLHt3soWq+Njgqyispp0cq5eRN5bX2mlAFtc7K
         AJBRDVmbQ10KGQr8tIplSF39Gp+lt+58C0WwyNVzVnfsL24kH1hBurCRB7RhpvfrjL+6
         bGq2i6dY8hxt3dcCCVYRFiDXFHAY1ZoR29oTCHjfp+4pocRZZwDY0xc8mQ2mLfxiJCMq
         Sa/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756578561; x=1757183361;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=68C4eqR2Gq94lgZkZJy7JBenIViC45B15WtVWTmdN4o=;
        b=kV+PIVdQfnudGIKUBra7UAB6uDGVVSn/7DOJGqZFlOd3ZZjiKLnqYkquuGCPX9nfZe
         JfwU9TQgpxus/WCQVwTgQ4ixK/odWMiVpp2uO6TvfqfZvXvC0Mabat1VvjRi4hM57CYh
         vbh1UhksQd6tzfDvIjeYHe2m5GVx0FAL1WJn4nDg2oa0AbV5zuVGBfLV/Bo5CUJ+/Ak/
         2eY41wylDegw5wLBpwGjEmcm3Db7Iu0CnBuK7jYDey4BuzeSedd0aS5KCI7QkFnk47u6
         kVHgd3LABh3rfA/HnlOPjmqkCEuMX4QhjIsi1RadVoj+bSlhMqkLjf6LlLps6dWoT2UB
         nPcQ==
X-Gm-Message-State: AOJu0YzkmUK/6yEhyNNIJBoLhxRud4ao1jYwIYb0oK8zfeQ5l24z+noh
	VdISVWTvp20ntj7C/HqTnpcCRJM6LD/+G/mXpWV+ojlCFQwGv18N4Qdey9zQQ1/J
X-Gm-Gg: ASbGncv7y3l7KMgHm4uw8x899E/PJ04EybHvHb8LlyxcquCPHSAfSNI3EKis0Yy7jk8
	Qef7Ti62Aww0mTSUWV+/ltaL5E19V4JdPRg5M95aNFx7thj5cMX6ZJTSIKPImUTRlXdgN+YRsrH
	APOrMyN+Fw60NsvwS20u9h6GAHtXIDn0QvHB+pn0IaPd0GwSVtDRQ0bEIK4V/WSzhT4A6hldH++
	vRgx1Xj0QNwg2novW4cA0cZQCEPsU/zzWTnBY8aUgfMc8/gQYD7Ownk93ZOvKp0EzemSpnFCO2R
	OejSx9R/2cyBc+mnEn2o8B6o7hZmJD0AqDhTqA60hQp0Jea+PwZnH0w3wd4/3lvocNGw6x0hYi1
	5Gb96e0b5sb6CqEpV/7/xmmL87we1chh2iWMT2cl/MPxJrgQbXjp+G4e2TSatXctspXPll5tCMb
	YpLXAnazsUyPMGbaQYiPt/YAU9UQ==
X-Google-Smtp-Source: AGHT+IE7weMq6FDCB7sJY+1IQQgA/JHHA4IltLsLVWGNkop3Y9f4RsnxaOjQ/ByNtIoseuFW3x3fXA==
X-Received: by 2002:a05:6214:2b09:b0:711:4cdd:fb38 with SMTP id 6a1803df08f44-7114cddfeb0mr18638096d6.48.1756578561454;
        Sat, 30 Aug 2025 11:29:21 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:40a9:d90a:b3b7:7c4a])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70fb2633d7asm9606836d6.22.2025.08.30.11.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 11:29:20 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sat, 30 Aug 2025 14:29:17 -0400
Message-Id: <20250830182917.1378282-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_112923_072876_F8AF8EBE 
X-CRM114-Status: UNSURE (   9.69  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: clkdev: fix format security.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

not a string literal and no format
arguments [-Werror=format-security]

Fixes: 61da1fea5d3c ("clk: sifive: Fix missing conversion to struct clk_hw")
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/clk/sifive/sifive-prci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/sifive/sifive-prci.c b/drivers/clk/sifive/sifive-prci.c
index 349629d82aa9..dbbf05655850 100644
--- a/drivers/clk/sifive/sifive-prci.c
+++ b/drivers/clk/sifive/sifive-prci.c
@@ -508,7 +508,7 @@ static int __prci_register_clocks(struct device *dev, struct __prci_data *pd,
 			return PTR_ERR(clk);
 		}
 
-		r = clk_register_clkdev(clk, pic->name, dev_name(dev));
+		r = clk_register_clkdev(clk, pic->name, "%s", dev_name(dev));
 		if (r) {
 			dev_warn(dev, "Failed to register clkdev for %s: %d\n",
 				 clk_hw_get_name(&pic->hw), r);
-- 
2.34.1



