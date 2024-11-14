Delivery-date: Thu, 14 Nov 2024 16:52:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBc9I-001tpo-0k
	for lore@lore.pengutronix.de;
	Thu, 14 Nov 2024 16:52:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBc9H-0004Qe-Km
	for lore@pengutronix.de; Thu, 14 Nov 2024 16:52:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TQHV89dn0pugB31VDQwEd+dL5CObDu5CLdUi6Rnu+dc=; b=eIBgLWsuNBU7NQg7qaIxAxw8Js
	GCgsoWdvam4wxnunXPPWRLRY5+RKMJQsLixhAyMrvvDNUGd1y8h5fZnUKNJbT2D8sEI8kPO0VD9+e
	vp7QQp1GE4TiGas5QHKBq7Mc8/FOsabrAwIbaaSXD0eOtNW3Bl8RKaI8W6Qe1F2tnJZ3mSBS6viWE
	0W4Thq0w3gduNAfwOKbSEI3V5oDFqY3BkOF8+oG7bXuNtuHdDUenk77urg2XM9FfqWWB+zi7GlG08
	ybXj+cm14HFb8Ocja8tKmeRVpVDKn09nXtzLAlzrDZBLdBau9oZ1+5nGH3x6Uocl8lC0h6O0MS7Jg
	TfEGG0qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBc8i-00000000GsG-1Etn;
	Thu, 14 Nov 2024 15:52:12 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBc7v-00000000GcS-2AvN
	for barebox@lists.infradead.org;
	Thu, 14 Nov 2024 15:51:24 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-53da22c5863so793559e87.0
        for <barebox@lists.infradead.org>; Thu, 14 Nov 2024 07:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731599481; x=1732204281; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TQHV89dn0pugB31VDQwEd+dL5CObDu5CLdUi6Rnu+dc=;
        b=U3k/GIsTsWGUQleO0bwc8fi1uidrVULqm4PZzEZc63nL1XUhqET7LDLFw06A+G7Odh
         Us2a7xKoTBPHgnZxO2RrKRTPib53lm+454MHZ2BFGKO0t4MMXBF1QLaV715wxq/+5GCB
         YOkgZBPwBrXPSv63HEQ45QklvmgazYmGoZ5GROxDTPAyCdibSBMxXV54+tSECHwC5KDk
         2YtgYgi49Pphc2/NxU6WA8Pno9GB1VXON7Hinu3yPJhX/nt+MkSw20ezxLtWd/QT1S/N
         s9wh1qGtRHNQ4owB77lDDwHd0T4tXbDkCPPc3JTM3n+r4KdEvEyV+Qb5Bl/SI41WiLuE
         GhLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731599481; x=1732204281;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TQHV89dn0pugB31VDQwEd+dL5CObDu5CLdUi6Rnu+dc=;
        b=YrwHA7KHEu0Utr1/FmE3xq1bV6KsykQmK7rT0cZiDkUIuZCe1UrsyYAxZvRchh5nT9
         U7bJ6dj8D+gQcFCYIfV0hkaxVW6LJmoNsrWiTQg5X/FRdFFMPCg3MELRAK9/KxfxdSKu
         y8FroA0Fi04GyL7FfSIGnFsXQzh0i1bVm+qFF1W93HBwXdxLNLOgFX+y+uRrSs2rmZkV
         sMIggu1lbwk4TWdF5D7PhTOqNHUs5uqt9cpoDjVY1L5FsW6kBJnsc+sxBzGNMasplFW7
         MMvrfoG+TbbLlG+QbqsVuUUdbQ+coIT6SJqSfBxtpc0gHt3EoQHhulfrZAQvDhUzYyT4
         89jw==
X-Gm-Message-State: AOJu0YxPliSdaeTuRShql8J6nYRpoM1ziYBVrrY5lWfMrLSsWaUj1DDx
	30bxIROKATZGahEIQagbEQ4QdJsxyAjtkFj6GIlZ0h6Z3wJx5gcx4VSa8nfmvm8=
X-Google-Smtp-Source: AGHT+IFmA0GqsVjth5W2vtfFevgwVtTR3gj9wU+x5yClc1EX5EMF+F8FBFOc3zlOGFLwhCK9Xocmtw==
X-Received: by 2002:a05:6512:3c83:b0:539:f630:f233 with SMTP id 2adb3069b0e04-53d9a43cba2mr5714744e87.57.1731599480781;
        Thu, 14 Nov 2024 07:51:20 -0800 (PST)
Received: from localhost.localdomain ([156.197.239.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432dac21a15sm24420275e9.38.2024.11.14.07.51.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 07:51:20 -0800 (PST)
From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Date: Thu, 14 Nov 2024 17:51:14 +0200
Message-ID: <20241114155115.594121-1-abdelrahmanyossef12@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_075123_577380_D17BB4BA 
X-CRM114-Status: GOOD (  13.78  )
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
Subject: [PATCH v4] of: fdt: fix possible overflow during parsing of fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While fuzzing, the name marked by FDT_BEGIN_NODE sometimes extends beyond
the struct block area, causing a heap-overflow.

Since `maxlen` is an unsigned integer representing the length of name,
It can be negative, so it overflows to large numbers, Causing strnlen()
to overflow.

So we can just change the type of maxlen to signed and check if it's a
non-positive value, because name has a minimum length of 1 byte ('\0').

Also in strnlen() we shouldn't check for bytes exceeding maxlen, so we can remove
+ 1 in strnlen(). We also change if (len > maxlen) to >= to count for the null
terminator.

Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>

---
v3 -> v4:
  - replace maxlen < 0 to maxlen <= 0 (Sascha)
  - remove + 1 in strnlen() (Sascha)
v2 -> v3
  - changed formatting
v1 -> v2
  - the overflow was due to integer overflow not out-of-bounds (Ahmad)
---
 drivers/of/fdt.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 2c3ea31394..75af1844f3 100644
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
@@ -210,8 +210,13 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			maxlen = (unsigned long)fdt + f.off_dt_struct +
 				f.size_dt_struct - (unsigned long)name;
 
-			len = strnlen(name, maxlen + 1);
-			if (len > maxlen) {
+			if (maxlen <= 0) {
+				ret = -ESPIPE;
+				goto err;
+			}
+
+			len = strnlen(name, maxlen);
+			if (len >= maxlen) {
 				ret = -ESPIPE;
 				goto err;
 			}
-- 
2.43.0



