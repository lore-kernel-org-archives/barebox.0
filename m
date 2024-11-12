Delivery-date: Tue, 12 Nov 2024 13:56:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAqRt-0010vU-2i
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 13:56:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAqRt-0003Qp-7W
	for lore@pengutronix.de; Tue, 12 Nov 2024 13:56:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ePhEIiV8IO66FS2vcXnIOyLrmSLB26nLTuTPXYecriQ=; b=PiK3gbMDeoXt81OdZ+ONdKoyu5
	qrRa1Pt9WYzLTUrx2cQFjVy43ch1nN1Dwtt7bOtdSa9LnBgLePkDV4KvEfQc7RguwSvEIVEmDq3hK
	zf6FssI1Mrl8A+OYCG8mYqQFxhbN1qcGhwUCIOIHft3uA+BkO6t8VrJ8e1vKTbZctgV1/m5xyq/1S
	npxMvqlwb75RRSHn3CqVZXDuuBwyVrxHZKW7YTL7HfIQ7j5gXM80iCX0+8M91jo1bV8lfkd66BzJT
	UB6v3Gxdg4ac/z6W071T6ixAEfvzdsDgVLw0dCQx44aoQrec7iknqYfr1Qg9RbAfbfSbSYVuC2xqy
	o6rT/1cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAqRP-00000003TC0-3UrW;
	Tue, 12 Nov 2024 12:56:19 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAqQC-00000003SzZ-0z29
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 12:55:15 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4315abed18aso47846555e9.2
        for <barebox@lists.infradead.org>; Tue, 12 Nov 2024 04:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731416102; x=1732020902; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ePhEIiV8IO66FS2vcXnIOyLrmSLB26nLTuTPXYecriQ=;
        b=B6NdeZdsUarie7HOdwa0Xc0LQve+LmSPucJ8Gl5OymMnbWpvz141gnDVgVci4f1XlS
         yy6lkzrBg/PDi9lDz3oC7nxPZ9WTO7lOQRHI95lSVPJLZJUsjyhEEk6rJzpRV/TJ80LE
         v5LJxkhAqVnvPASYEU+mFH9PYMknZPps2m11YKrIaQ7iHI4H/OYEzafYGw8T2TTvk/HB
         0MexK8JK6s5AJBtQxElnpVxO8p4iHayC5cv0P0gr2AcQ7kO1gLT1QizlFpk9IfUbSKtK
         ALfiWnZMYeolcvT57nJ/Cg71vvx0ZlYHisTqvU/v+9oOcGfMe72WxhXt0lgLMdbV71NN
         uJYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731416102; x=1732020902;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ePhEIiV8IO66FS2vcXnIOyLrmSLB26nLTuTPXYecriQ=;
        b=CU20t9rlbLBea8IefupC516xlT9E6GBISyy54/mvOQXhg7SPznm/+x98C5hGa6/35P
         oQAUkb/vkq87ZAdCUnEIWZl6fHAHe0k+rhi2UdnSNKkpadnCkrTXBsT112WRDOC8+WyZ
         g94A/oRt+82qhaGx1y3EdDsqqdu5n+VSCZf/s+9b5WhieR+urae/nIhi9QQS1XAxXNSN
         rcPtz3PXecWq23+7JYInip5TiQBJmR8suI1JAnrumWTqm+k7XZK+y6dOl0CpZXpc366t
         LmS7yq5Fz8qo8ONxuxRWNmnzIOAjJKvqO3Z0g5VRuJ5b9SM+cNYSkrNUMlJ6MwrMUVr9
         uPTQ==
X-Gm-Message-State: AOJu0YxZm7hWOh4Keo/9JbkS0IYHxq1o92CsgUlm8qayOQcg0IzzJAFe
	AJjuGIvR2QhTochyjOWW+X6X4yHYcPZtwhZPua002STIj403Roxa
X-Google-Smtp-Source: AGHT+IEUjS3ospEgB90mdh3nZxHIVuceEJ4bOIeoqEsmADvTRCVTIZpatrMfFG/rMm08ubyZSPVgMw==
X-Received: by 2002:a05:600c:1c11:b0:431:5bb1:f088 with SMTP id 5b1f17b1804b1-432b751f00bmr136803575e9.29.1731416101602;
        Tue, 12 Nov 2024 04:55:01 -0800 (PST)
Received: from localhost.localdomain ([156.197.234.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432b054ad23sm205721945e9.13.2024.11.12.04.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 04:55:01 -0800 (PST)
From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Date: Tue, 12 Nov 2024 14:54:52 +0200
Message-ID: <20241112125452.333653-1-abdelrahmanyossef12@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_045504_407225_FA1FFE6D 
X-CRM114-Status: GOOD (  10.93  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] drivers: of: fix possible overflow
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

while parsing the fdt header, the name of the begining node marked by
FDT_BEGIN_NODE that is part of the struct block moves out of the block
that results in heap-overflow.

So this patch checks if the length of name (maxlen) + the offset of
the struct block exceeds the size of the whole block.

Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
 drivers/of/fdt.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 2c3ea31394..7dc8ee2529 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -210,6 +210,11 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			maxlen = (unsigned long)fdt + f.off_dt_struct +
 				f.size_dt_struct - (unsigned long)name;
 
+			if (maxlen + f.off_dt_struct > f.size_dt_struct) {
+				ret = -ESPIPE;
+				goto err;
+			}
+
 			len = strnlen(name, maxlen + 1);
 			if (len > maxlen) {
 				ret = -ESPIPE;
-- 
2.43.0



