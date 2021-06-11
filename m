Delivery-date: Fri, 11 Jun 2021 08:49:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrayU-0007n6-CR
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 08:49:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrayS-00063I-Rw
	for lore@pengutronix.de; Fri, 11 Jun 2021 08:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6FIEC77fONSxGeqHkE5drorKV4nmmlrhvScAe2pz6g=; b=q0wjhuA4hIB6Xb
	AvtMHXs6HATMTymFbs7KdnOt1MWBG3bVAE7ZlH7ZfRYJy1S8YUD1VjJOh0oAfqRXw8xNttM0oDJmy
	8Qcy8qbCr2Sci5c9pCvlSx8M1BzTAiY3nbYdDR82IhnpogRahg8qINtWEmDmon3SAvROWX9LWKRmE
	A0pN2Ld7plAdieWc/mVgn9tHFx8O2U5wodR4shqMXsndwUIrDUB4CtXNnpHUKDXZZlUDVKnoYkxY3
	zxPgEzYel1xcnbbFPBQ9O7N0geXY9VEgmR1HMq2hkGXPqDU3O7ijNYXtbhWU43ZNN5Q4FZnubj/dC
	hnZYHKvgj8ADl9bgnykg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrawf-003xFV-Eg; Fri, 11 Jun 2021 06:47:10 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrap8-003v99-4M
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 06:39:23 +0000
Received: by mail-lf1-x129.google.com with SMTP id j20so6972439lfe.8
 for <barebox@lists.infradead.org>; Thu, 10 Jun 2021 23:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DbEE1lf2t8/o5eI9wija2ZVsGWmWSjXS3/uFeoR3Z6I=;
 b=H+S6+rucemulQroeB2f6g7OwT4cWKgvzpgnIQUYGUnxcW1Jc0LEELiAwVCw1U7yt0x
 U4c63WIrKEZyDu7VR3gm4qrMiTsbAzc5fdRFeWtEV57X9R/Z+dOQ1W3dX7T02h+/0rvO
 IxLLzrukOj5p8+VqsaDJTuILOWFG03UQpVNwqcl3htXp4cjfB5HWypYLBNmfqMpvsdxc
 GTyApY8gPU+HQLR+x6sxSlfnwWaL4UnpMJyz9vByhJeX48juZOjGHksuKlONSiXOqcMr
 IuxHL9qIXYZoaBoYriBiXhDTgxypzBuEjCRskjNt8lx83cTwBpZ4PcujYcsqA4V70dKY
 M8Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DbEE1lf2t8/o5eI9wija2ZVsGWmWSjXS3/uFeoR3Z6I=;
 b=GH8mLdrS6+FGWGgShKwbQ/rgllqerBtZEHxwxm0fDaV34Dg7eZR/hkwVGgw9holTJ4
 QL2hAHNqZD9K39MTaccKvo6bITgt2lqHeUbJKjdEsv6/oVrUygLtPoH/52ZGMBQKVJ2a
 So3cQatVJ8+3rdIxKL4wyIvGQq56hAd4Bf/Mtv1qIE/VRNCgM/1J0n7tl4yN742kV1gO
 r2YhaB38fi7zhCKBjOiisihmK5MSU3FJ1zg6bOuMdpuGdzbfA3D3ufCXZH7GqvpI8g1a
 npfKFhdAHE/6/tVDIp02gQvkAfdD18HxNVoTKwPoUh7OCsRihED5LyYnw+omWCDAe/Nr
 7sVQ==
X-Gm-Message-State: AOAM530Qj+mnxRzHR9VqPcaVE/wtJPuuRlZonc/KkvHsHvJnRGRqri4R
 Xp6a+7Ponko9CFSXVCVUH0hgk6582Ec3UQ==
X-Google-Smtp-Source: ABdhPJx5awyOcPMqYdzOPbDg4yDAijn/S+IFhUOFMkuVCJ3xXg+z5Hqv4j9ymavwGUxnqvt5U32gQw==
X-Received: by 2002:a05:6512:38a5:: with SMTP id
 o5mr911275lft.491.1623393558987; 
 Thu, 10 Jun 2021 23:39:18 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id b6sm496692lfa.296.2021.06.10.23.39.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jun 2021 23:39:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 11 Jun 2021 09:39:13 +0300
Message-Id: <20210611063914.155796-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0.rc0
In-Reply-To: <20210611063914.155796-1-antonynpavlov@gmail.com>
References: <20210611063914.155796-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_233922_265628_F545C076 
X-CRM114-Status: GOOD (  11.45  )
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
Subject: [PATCH 1/2] mtd: core: fix use of uninitialized struct member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

E.g. mtd_read() calls mtd_read_oob(), mtd_read_oob()
can check uninitialized ops->oobbuf. As a result
mtd_read_oob() can return -EOPNOTSUPP.

Found on a MIPS board during /dev/m25p0 read, e.g.

  barebox:/ md -s /dev/m25p0
  read: error 95

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/mtd/core.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 37fccda6be..98820dfb4f 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -379,12 +379,13 @@ int mtd_block_markgood(struct mtd_info *mtd, loff_t ofs)
 int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
              u_char *buf)
 {
-	struct mtd_oob_ops ops = {
-		.len = len,
-		.datbuf = buf,
-	};
+	struct mtd_oob_ops ops;
 	int ret;
 
+	memset(&ops, 0, sizeof(ops));
+	ops.len = len;
+	ops.datbuf = buf;
+
 	if (from < 0 || from >= mtd->size || len > mtd->size - from)
 		return -EINVAL;
 	if (!len)
@@ -422,12 +423,13 @@ int mtd_write_oob(struct mtd_info *mtd, loff_t to,
 int mtd_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
               const u_char *buf)
 {
-        struct mtd_oob_ops ops = {
-                .len = len,
-                .datbuf = (u8 *)buf,
-        };
+	struct mtd_oob_ops ops;
         int ret;
 
+	memset(&ops, 0, sizeof(ops));
+	ops.len = len;
+	ops.datbuf = buf;
+
 	if (to < 0 || to >= mtd->size || len > mtd->size - to)
 		return -EINVAL;
 	if (!len)
-- 
2.32.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

