Delivery-date: Fri, 10 Jun 2022 07:42:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPm-009fKT-Hw
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 07:42:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPk-0007Ke-9i
	for lore@pengutronix.de; Fri, 10 Jun 2022 07:42:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ye/5jI7w4AkqRzTg+o55H+zn5Iz52u9kCKCTCoG6bto=; b=0Ql7SniesY1jc3
	zeNVcaSw6KgekfGzO8AedCjeJb0d5PTrVkbE06rx5fI7AYiGH/NJ+N4o2YRb+8rCLmjKLjnYnNhsD
	xIfvEBHZPQ4s7aed1I53D1CFKCSHyUH8RHkhh1bPz1P0ZSKttSoQ1vFvcAY9ujxsi4wrjlWOr7nFR
	BBjqiiZcUXIaI2bx4RjVklU0xwkvMaeDX6MH9pGJfGcyw6yxbcI1p+g/Pd3/45pw1FUJlZNo2Zc8m
	fqG46q70PO0Sb+O7YnAiM0iEWMfRlYCD+/wqKmozIEf9v5haQSJ6a9VW5MggEouRj3ft7mTGgbY42
	z6fbIKI2ZE6BB5Ld5gLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOP-005zw5-Ld; Fri, 10 Jun 2022 05:41:09 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOF-005zqj-Dh
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 05:41:00 +0000
Received: by mail-lf1-x12a.google.com with SMTP id h23so41167703lfe.4
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 22:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fzfsd78O8Y9hAw7e2osZ/DeqWHVJkwjIK/IYLqm2xlA=;
        b=iud6luH2KJraWsBl8QgdpzWe1fPNSk7cNGmmR6lprcug3xJDziITPrXINddf8pUs6a
         gU/KNSiqF63IvRDkAIg6gIqTn0GgBujO398uZGuvDAq34rKzj3J5oXSpNIZp3UXVasZY
         932DhDWxOL9k9ey1IfQMfbYSm/bYHBYC+XkurF/ZxcazNOFg/E5MRVaF7kBzn5SFdIMx
         7p4qZIBcBoKOMgvyCXu2SaKtJJKgc5vFlrBjMdhxQESkSZxIZnWfY1zuN3R+qped4yhq
         +N6okqmXce+Tlase83q5FbAPBuFS8d4gY9Akgc6I30URReY3HfL0CGAHJDS/FgYmAKXI
         OUrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fzfsd78O8Y9hAw7e2osZ/DeqWHVJkwjIK/IYLqm2xlA=;
        b=IcaqJOamtEpoiNKwXJ8L/RTfmpSrAsiipuQpX8OSq1/UmyTNmEL4R8kg1VvLac2PzM
         fw3ixse7X7BvXPPhIc0bgjvZMVp/GCjBaBLtUnSR7ZtMvjXRzigWf6SwkqlIFXrj0WKC
         CuFPGWdsNzZ7d6MFP5b+fRlmgXrTMcWGNVnlHGJ3DXn1L/snSaCMFSo50m8cjzCnZUrQ
         x2WTZgg5F5ghskl+qTZWu6W61fZBwbJusrCqALh7FRGfkb9Hz/AQsP3RJcULHgBIoFc+
         95JcRD8AqzEJoUjE9U8Js9wIPhc/x9eRxoTExcxPnD+QcOhR12Ij1910gqi829q7vLTu
         kGpg==
X-Gm-Message-State: AOAM533LxqV3/WW5SuVGmI+ayx1imsxV9yCAzmFXN7Lp4psd7muFXmKr
	Y1M9s/XNFU8McSRnCVfbhByjRP5pqy0=
X-Google-Smtp-Source: ABdhPJzrdHMa7/N7rv+2srjTzeAKbbVWh10zUkzfYewSoQ9wfwhn2rVpb7f//wHgt0WQUEWwLxSIug==
X-Received: by 2002:a05:6512:31d3:b0:479:478e:2628 with SMTP id j19-20020a05651231d300b00479478e2628mr16020398lfe.153.1654839656842;
        Thu, 09 Jun 2022 22:40:56 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id v21-20020a2e87d5000000b0024f3d1dae84sm4009770ljj.12.2022.06.09.22.40.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 22:40:56 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 08:40:45 +0300
Message-Id: <20220610054051.4911-4-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220610054051.4911-1-eagle.alexander923@gmail.com>
References: <20220610054051.4911-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_224059_502296_15B174C6 
X-CRM114-Status: GOOD (  12.73  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/8] gui: image_renderer: Fix empty prototype for image_renderer_image()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In file included from lib/gui/png.c:9:
include/gui/image_renderer.h: In function 'image_renderer_file':
include/gui/image_renderer.h:67:29: warning: passing argument 1 of 'image_renderer_image' from incompatible pointer type [-Wincompatible-pointer-types]
ret = image_renderer_image(sc, s, img);
include/gui/image_renderer.h:56:42: note: expected 'struct surface *' but argument is of type 'struct screen *'
int image_renderer_image(struct surface *s, struct image *img);
include/gui/image_renderer.h:67:33: warning: passing argument 2 of 'image_renderer_image' from incompatible pointer type [-Wincompatible-pointer-types]
ret = image_renderer_image(sc, s, img);
include/gui/image_renderer.h:56:59: note: expected 'struct image *' but argumentis of type 'struct surface *'
int image_renderer_image(struct surface *s, struct image *img);
include/gui/image_renderer.h:67:8: error: too many arguments to function 'image_renderer_image'
ret = image_renderer_image(sc, s, img);
include/gui/image_renderer.h:56:5: note: declared here
int image_renderer_image(struct surface *s, struct image *img);

Fixes: 3fa8d74abea3 ("gui: introduce screen and surface to factorize and simplify code")
Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 include/gui/image_renderer.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/gui/image_renderer.h b/include/gui/image_renderer.h
index bfdea1b14e..323ad741b3 100644
--- a/include/gui/image_renderer.h
+++ b/include/gui/image_renderer.h
@@ -53,7 +53,10 @@ static inline struct image *image_renderer_open(const char* file)
 
 static inline void image_renderer_close(struct image *img) {}
 
-int image_renderer_image(struct surface *s, struct image *img);
+static inline int image_renderer_image(struct screen *sc, struct surface *s, struct image *img)
+{
+	return -EINVAL;
+}
 #endif
 
 static inline int image_renderer_file(struct screen *sc, struct surface *s, const char* file)
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

