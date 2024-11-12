Delivery-date: Tue, 12 Nov 2024 20:11:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAwIw-0017Z5-2q
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 20:11:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAwIw-00061s-A5
	for lore@pengutronix.de; Tue, 12 Nov 2024 20:11:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O+Jh82jWSnXNou0ybXWwoQLUQyOehuPSuWBQPm/QNBs=; b=vmo4LB0Ney15onhporApCnu3qf
	U8OQxm0vi0vbso6fhFe6uvZPOSkukS/9SVcE0RheGZtjibpVSPikihXjkwQrPaJl8Zgv1nO2Z//e7
	fAHH55akQSMGF0j7oNvg13A6ylkk6IMjmxbwSOBng1WFsbIcYj2WDhUZXA0s31wG82jXfBQ4kVXl+
	yCwYcckp/xvsRaVZ1jyMl8Y/b6YljN9HN9Kufs8h86Em+30fli6lb8jAmK7Nn2ldEHgafr9r5J9jK
	JL5SSKiTZyfb91V8MdVMrFK+0ecc0d60E8cQq2UXLBMMW876Zb+BsRjGweYLuJNVK0gBp3bmQ5aOt
	paIVOySw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAwIU-00000004fYI-0PaK;
	Tue, 12 Nov 2024 19:11:30 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAwIG-00000004fX0-0Cpl
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 19:11:28 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4315eeb2601so76022135e9.2
        for <barebox@lists.infradead.org>; Tue, 12 Nov 2024 11:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731438674; x=1732043474; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O+Jh82jWSnXNou0ybXWwoQLUQyOehuPSuWBQPm/QNBs=;
        b=SAiWe+uJuh5PbjCYi/TVFyY6ZGyq6KdO7O6Dr71m2ABxi+vVeP5cse0QjSjEuqNLs0
         FjwkeDJHXmQo12Z9VyXWYsM/R3dQ1VS9djRpHOfdf5cQIsNuyoiLrsmtaIRIdzqJYL48
         r4PyKih2HG+pqawZbe/RoVNRqI7aKzwGk2x3TvklGfxV/PRw6AY+TlqMVblUk5WBWW78
         9c4w4cIvByorB1s3wz/oSiczeuVP1eaAh1ZSDGgOuQCRfzx0WX0A0miI8zMIx7pp11+T
         +qWL2F9EOEj+8jUw91S7LQELW4GPvZv0L0Hd9TtTDIcTNSfT64QBu1mLYgotNWKFjd+3
         PJTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731438674; x=1732043474;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O+Jh82jWSnXNou0ybXWwoQLUQyOehuPSuWBQPm/QNBs=;
        b=tvX1Frd0h4i5XfCJQ1cFW2afumVsbu9E022kJJfKJFY+viaI/DZ134vwa1i+LyBxsR
         Fiq5zyx8zOrck2Lb9DxWhzfmMJXIMJ4apvEJ+KuJgW/cJAU1omNsvwuwCGzTnsW0PcXc
         wGxbVcp5flaVSe/sfB0asHFLsTQjXJMXKmN9wwb47Gg0+yPaY0aWXc/JsJ2uN2pkWGfH
         sIEHNhx4WYtEdIxESWwt8Od7EjEJ+68Gr0TAE7K8Vx+fsbA2nVinE0anxvtCO7kpUvD5
         q4Ne9ddGSAT/sG+QQD/PxXEONxd5g7YmGhawzIWoy6oUQeababx4q7wN0QrYYY4o71+4
         EWpA==
X-Gm-Message-State: AOJu0YxQ3k2owTRPDJSyr7w3iGB9dfW+MSaCawkNKQpc5pdGO+/P/jqQ
	Pk9Mhx6QwqlnGy0h9sO/Tfba/kYcfKQI2BdGjWpQYPvnOUklsX1b
X-Google-Smtp-Source: AGHT+IGbp4TJYBmG9/RlSINBz9FVQi1UyAfdAjtEn0ySjKMvCBysqAtTpKfMNuhiXaylJBO08iPPYg==
X-Received: by 2002:a05:600d:b:b0:431:555d:e184 with SMTP id 5b1f17b1804b1-432bb355338mr183502115e9.25.1731438673480;
        Tue, 12 Nov 2024 11:11:13 -0800 (PST)
Received: from localhost.localdomain ([156.197.234.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432b0530694sm225264755e9.7.2024.11.12.11.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 11:11:13 -0800 (PST)
From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Date: Tue, 12 Nov 2024 21:10:58 +0200
Message-ID: <20241112191058.397165-1-abdelrahmanyossef12@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_111116_110174_0BFE30F6 
X-CRM114-Status: GOOD (  12.85  )
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
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v2] of: fdt: fix possible overflow during parsing of fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While fuzzing, the name marked by FDT_BEGIN_NODE sometimes extends beyond
the struct block area, Causing a heap-overflow.

Since `maxlen` is an unsigned integer representing the length of name,
It can be negative, So it overflows to large numbers, Causing strnlen()
to overflow.

So we can just change the type of maxlen to signed and check if it's negative.

Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
 drivers/of/fdt.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 2c3ea31394..d8d8a4922c 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -176,7 +176,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 	void *dt_strings;
 	struct fdt_header f;
 	int ret;
-	unsigned int maxlen;
+	int maxlen;
 	const struct fdt_header *fdt = infdt;
 
 	ret = fdt_parse_header(infdt, size, &f);
@@ -210,6 +210,11 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			maxlen = (unsigned long)fdt + f.off_dt_struct +
 				f.size_dt_struct - (unsigned long)name;
 
+			if (maxlen < 0) {
+				ret = -ESPIPE;
+				goto err;
+			}
+
 			len = strnlen(name, maxlen + 1);
 			if (len > maxlen) {
 				ret = -ESPIPE;
-- 
2.43.0



