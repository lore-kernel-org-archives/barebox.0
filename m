Delivery-date: Fri, 11 Jun 2021 08:49:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrayX-0007nd-H7
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 08:49:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrayV-00063q-P6
	for lore@pengutronix.de; Fri, 11 Jun 2021 08:49:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPi71a8B/DxObSgj/Sn1mG4HXHl7qCKhUefQHo9qY0c=; b=lkKjH42IGD8T/L
	wDNdbLFRoXi/F/mkyOQDNTdOSPziAYZFUBvCvzmyPTzLG1eoVJoE6rlQGvM6J4F2lwDExZDqwwkk4
	YAQY08MhU+oqoh4jogd3f9UDhPSEVmyftuUQiV6lJh36wzpNWTYt8HXbLl/WfoDamAHNevffP5IWz
	D5zo3WouaMmyAwQrB0Um/I+t4lUTErthUz1kJBaAeiPb8QHqEw4vz1UUxJ3YQacaZnHf51fVX5IFa
	XRo5lhXZpTDh+QVmPM9V14AP+gJcmk+GOSkNxCybszMJPyXexZYAktmttxiOgF7qonGBSVQtEiw9j
	O4xIjCdzNo+XWBIOsPsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrax3-003xQK-07; Fri, 11 Jun 2021 06:47:33 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrap9-003v9H-81
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 06:39:24 +0000
Received: by mail-lj1-x231.google.com with SMTP id a19so5023260ljq.12
 for <barebox@lists.infradead.org>; Thu, 10 Jun 2021 23:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=At2cXewvb/fLv5hW90aBd7HrrFFpwHfkv8KmwfNd0/U=;
 b=DB+eWTGk8rhNJPDwFHD2xh84RwUZSb3RlWJxx6Gq+Gh2TTPB8+35tmqRYhSoN2VJxc
 /eSUWYv7BTCvzabgj+8m+Un4GH+6foTafnPdysWRrUyVtJgEkqznRSdrZjX78n+/FSSb
 dEHhtqub3CQvpomCFpX8DrScv4sHvsnDFJevWhoGgcmTOxcgY3ANbq4OOBGs8dFMK9jv
 oZT4Q36KruJgVFaJ2U9eK+H0uNZp1yW+1D03t3tPtKMG2N4lRF7WlwepuTKIgGGjqi+P
 q8zplE1QP1vbMV6ERVr5npbKz37Pan+SZUG+iApC0YaecDgxKfc7LCXlmyLHxe5ooU7+
 1spw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=At2cXewvb/fLv5hW90aBd7HrrFFpwHfkv8KmwfNd0/U=;
 b=pvy9lkJ25YEReuIchOil7G3Fl4FuOGtpsgRsbIOYISGFvQpq9LfvvwPLiPTDAZ1WYr
 73ZwOmhcTr9SonKqgNnLSjQzEtkFMUmTVhK274sWKdaIDS39+/p+G2O7LFvo958ftMzy
 tkDJG8iQN72dvobqb9w7F2m927bO4/BOElHP6ThCE4bwU7MFigG7DtibeUMBuy8/C35e
 TKaN9EZNeD+Lr886OkOLWml4stil5Y6fPJwR0WG4SsZNjA1LWlLU3UbRMo+/xXg/zSn6
 +vYw7anaWff65lPD69CS3lI92mrAoNY0P2DrbOGj4uIK2nw2Cs374pZ4PGz6JgMLF2Ao
 fmdg==
X-Gm-Message-State: AOAM530GmNq0k+CxBo1LOpmrFmS3/6INVbmVs6gtF2Xaisa9/um4dY/Q
 KhIKM5AxJsO7uHyKX+e5uxzdNXNA5n1nkQ==
X-Google-Smtp-Source: ABdhPJzjRZeJSgHKDWX/LZazdV96UNjvbVU/foHHTVqgJl4N5xrfm8WSuW7OpGtu0C4dNoeIw2hMpA==
X-Received: by 2002:a2e:7f0f:: with SMTP id a15mr1765327ljd.387.1623393559550; 
 Thu, 10 Jun 2021 23:39:19 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id b6sm496692lfa.296.2021.06.10.23.39.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jun 2021 23:39:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 11 Jun 2021 09:39:14 +0300
Message-Id: <20210611063914.155796-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0.rc0
In-Reply-To: <20210611063914.155796-1-antonynpavlov@gmail.com>
References: <20210611063914.155796-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_233923_335560_9CA060BF 
X-CRM114-Status: GOOD (  10.66  )
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
Subject: [PATCH 2/2] mtd: core: fix whitespaces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/mtd/core.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 98820dfb4f..2029e06d9e 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -377,7 +377,7 @@ int mtd_block_markgood(struct mtd_info *mtd, loff_t ofs)
 }
 
 int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
-             u_char *buf)
+	     u_char *buf)
 {
 	struct mtd_oob_ops ops;
 	int ret;
@@ -421,10 +421,10 @@ int mtd_write_oob(struct mtd_info *mtd, loff_t to,
 }
 
 int mtd_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
-              const u_char *buf)
+	      const u_char *buf)
 {
 	struct mtd_oob_ops ops;
-        int ret;
+	int ret;
 
 	memset(&ops, 0, sizeof(ops));
 	ops.len = len;
@@ -435,10 +435,10 @@ int mtd_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
 	if (!len)
 		return 0;
 
-        ret = mtd_write_oob(mtd, to, &ops);
-        *retlen = ops.retlen;
+	ret = mtd_write_oob(mtd, to, &ops);
+	*retlen = ops.retlen;
 
-        return ret;
+	return ret;
 }
 
 int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
@@ -759,7 +759,7 @@ err:
 	return ret;
 }
 
-int del_mtd_device (struct mtd_info *mtd)
+int del_mtd_device(struct mtd_info *mtd)
 {
 	struct mtddev_hook *hook;
 
-- 
2.32.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

