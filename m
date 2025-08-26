Delivery-date: Tue, 26 Aug 2025 08:11:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqmuV-004cg9-2r
	for lore@lore.pengutronix.de;
	Tue, 26 Aug 2025 08:11:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqmuU-00050X-OJ
	for lore@pengutronix.de; Tue, 26 Aug 2025 08:11:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Gv2E1/MW1ySNL35AK9qUr+am4w8E8mWmaouXo1kpn/A=; b=nBcfPuzWz6z/HF+JBtoxasZm8F
	9/59kaIXwgZPsFjUegM8WRbI4fqG/dh6oOCWIV0KyDMdiWIMIRJciz3VuXjw8jfKnJjTlABsEIIVP
	9a0vuBpFo45Vywa2iMgSwMuitl/4lbaM1aYB9jKQe1syXVk8zAvKkhAs0p42VqPZcdEviORJttpjV
	5kJrV4JRrfn+X9TBxUZwy6m5qz/jpNmFCXaTnIhsXmZIJ1D1hm9UZPpkNLckf4rdaoPu8Eyoe1Pp4
	139nRbA/8l6QCBWIvvST/+PAxkIIJNWoOM+QTmGPr3FipwVUkL/MZgt+usQ44btWzYI4VtrFdjlee
	Q3SUcRlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqmtp-0000000Aeaf-0wAw;
	Tue, 26 Aug 2025 06:11:17 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqmtl-0000000Aea2-3XML
	for barebox@lists.infradead.org;
	Tue, 26 Aug 2025 06:11:15 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-70d9a65c328so31888116d6.2
        for <barebox@lists.infradead.org>; Mon, 25 Aug 2025 23:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756188672; x=1756793472; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gv2E1/MW1ySNL35AK9qUr+am4w8E8mWmaouXo1kpn/A=;
        b=gyyz5hSvyY8PS4H8fOtsI43ikqcZg1faFJuKuLeNkTJ+s287GGxmRIBdUyN0+RO9xz
         mJF4LwtklTV35wLMvbpzJFlww/JtFuYrUIxi168EbYP8YIfK3AlNFvLxzof9aOg8ikls
         83WfNXyrHZp1rMkePAyPlBFn8DINs/Hq9UddBPPne2gwl/614qOk5FQ8gB4eqHcIxopL
         TI7PtQZrcsBA7okSF1RHDrkVbA4TYtMcpkiD4Vkf9HmOj1tjk7k3E0Zb9XXvPaDnC1T4
         /QwAbrSD7nm+/pxsWNEldNYjhuniLlBQSFXiUtzcT5tVmRuyj9loLiuRSs7BCTB4ko/r
         Cxww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756188672; x=1756793472;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gv2E1/MW1ySNL35AK9qUr+am4w8E8mWmaouXo1kpn/A=;
        b=JrEuI+Dw+YbR/m/CCaHm00R4ftJjlQGnrZCwtIO8NJS4qW2t8b4n09kbxD1dz5RcHJ
         cRk4dr9DhSQnjxF4Z22DY2V2LvRh+oAR/OjpfpOoOQinJ+C0oueIyKgCPu61XVQd/iEj
         L+BOuBkiY+iEm1vO9wP0vWT9iQzKFq5crJY9oU2fGaK9isPDB2D2NrEC6J/eGjRXY6mo
         dUau+LB3bc/FDYJiJ5ZLGJ3jyyiOWZCQHmwwPpxnLXyT1tburrjnq3JI8OdJT1jcQwo8
         UyeZQ29XPrlUDRlxPpLurW/mI2tDo+r58AlbR8FUDOH9JUCZ21fxxOKHWHD9dZPpANNf
         XwxQ==
X-Gm-Message-State: AOJu0YxHzSArL6HtAK6uhZBwmOf28FtCPyahwQAu8tBrv+u2cZYozZlS
	SEs1+YcbPsRZRbqUiezlMBkJPeEorcWITt+9w42RF/Um83/1+zZpljQf
X-Gm-Gg: ASbGncs1I35KQA7YS4aQf2IMZUsoM+5DM62m7s7Df+xALmdYFTiyNE0sHTvznMHK752
	0Hp9tsFyvCiA1Ic0gjr4/Jl9aQibdpwtCX74LUHqoPu1MW94yiwr88HAgU6HavNfgn5mbKYW8Wv
	Elu5OvujfrcE41uSpHPbbtSo3ImnXXhY3IqkbT32foIx94X3uyzz8+OtHf4SrwkZhVyx+0V8CUM
	bZ99+9cv7ECiTJ/jU/EC6Nl+Q/35k7Yp0HgyblnZisPqthkWbeqd1sk5r5vCSXeKaQMEzxdYXKD
	s9JuvjY8eWBpZep+GxGv2KJ1Jtz0FimzdHVrgRBFyR/KDptehNu39zkJbMimUELfQcSZAXmJogK
	UKNiqjEEfH0vb0cwBN2ULMJ1Ig5p0a9b1iBDYpfYyt5rslpiUXHUjQeZ8j8FesFcPH7PefpefHw
	rVu9aScb85wEMcn6h9Ze4F66va
X-Google-Smtp-Source: AGHT+IGQ25cuZ0GBTtoHxBL61LXX8R15X7puOJlusuhxy2LLauEVAliIXM6t3K93Pr0nMV+rf39WYA==
X-Received: by 2002:a05:6214:f2f:b0:70d:ad2e:ced8 with SMTP id 6a1803df08f44-70dad2ed050mr113701566d6.54.1756188672220;
        Mon, 25 Aug 2025 23:11:12 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:cb8c:3937:405b:701])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70da72b3c1csm60777816d6.58.2025.08.25.23.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 23:11:11 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 26 Aug 2025 02:11:08 -0400
Message-Id: <20250826061108.3372599-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_231113_888063_EAD6FCBC 
X-CRM114-Status: GOOD (  11.75  )
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
Subject: [PATCH] common: bootm: only use initrd override if non-empty
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

OSTree integration in Yocto generates an empty initramfs
file and references it in the boot configuration (under
/boot/loader/ostree-1.conf) to suppress init= kernel arguments.
This caused Barebox to always prefer the override, even when
the initramfs was empty, preventing booting of FIT images
that already contain an embedded initramfs.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 common/bootm.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 3a2eb262b26a..f31ef546d92c 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -279,14 +279,18 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 const struct resource *
 bootm_load_initrd(struct image_data *data, unsigned long load_address)
 {
+	struct stat st;
 	enum filetype type;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
 		return NULL;
 
-	if (bootm_get_override(&data->initrd_file, bootm_overrides.initrd_file))
-		goto initrd_file;
+	if (bootm_get_override(&data->initrd_file,
+			       bootm_overrides.initrd_file)) {
+		if (!stat(data->initrd_file, &st) && st.st_size > 0)
+			goto initrd_file;
+	}
 
 	if (data->initrd_res)
 		return data->initrd_res;
-- 
2.34.1



