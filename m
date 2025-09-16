Delivery-date: Tue, 16 Sep 2025 06:56:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjX-003ZKo-0v
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:56:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjW-0004qF-Mn
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:56:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WD9a3zS6Yit4rZfuoO4BibAwo74IYyPEdbPyLjsQtMA=; b=uMy8b9SjuYmIM54lSntxW7jj/A
	cUcQOi0iTGIx8Yekr9N/42btWXjwZ3p5c4ZrBM0Zb3+FL9zc5gzuhuDai0L0gJ/PwSmPeu3q3rOWO
	QPnNn6Bu9rHWU3lDUeORc5j/UAR5oJcko4QOLdOXm1XHwpvDHBzA/p7BOp/1t02mcUXGE5BMXu9jx
	GID3uBkwkgNa/wJO/AxkWG+YXLMGKuAUYFfG+0UGd2YBNi5BkTqdsrkiUPinX9izZoVwocSTzC2Wb
	YgD3ays75IVgCFKIFFM2DixtiQAhW2unmPKnigRM7eOyzGpHoEf0ZQ1eRLptsBrfz2Gg7hFcqfTSW
	VmshwcAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNj1-00000006kap-3yqf;
	Tue, 16 Sep 2025 04:55:31 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNiy-00000006kX5-3v4l
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:55:30 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3e7636aa65fso4338217f8f.1
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757998527; x=1758603327; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WD9a3zS6Yit4rZfuoO4BibAwo74IYyPEdbPyLjsQtMA=;
        b=N/6S0ykiT7iQXz4EMzWvptVEn5N5DnSIOlzneLTDh6qZiejkMj/JlcbnDOW/v4qAcn
         9wl5EvN1GtIU2q9eonVAQDlG7Jb8mn55A3s2U7cE0JVTnOLDBKLjrTAIYEyqUMn2IV4e
         gc3GmCFvRG+MXyvrxHCjdU8PJxzJYIqMQiG8rtsfFfF5pYLLEUMN/T8m3JcmUc15iSPj
         /nxGUV5xNnhWrfKExjQzS858jMftG3k9uIAu4j+wnzD/Z6z3AdsxHe6/cHmUkqENMA0/
         lMCTWtq57TGtsXYKG50mUNN71M5ldCq4CI8mlOiEL0dJhwB5RVztcqtN0gwhrSn7Qw3p
         zz6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757998527; x=1758603327;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WD9a3zS6Yit4rZfuoO4BibAwo74IYyPEdbPyLjsQtMA=;
        b=oegGXTRBczFBNvdmODEnKhV1Nyq4mxm2SyZmk09shc6zSe/FGv2/I1GeiTlqDGTxsA
         yb4gZF/Rf53MHRdbd6tuzc0xfCio+Vr/YYI06cM0iLsEmyVEdh+CAEjt85ttZIrsxyee
         gGvjXFsxo98J3f4PYDZb8g+8k8hNmPT3eE3yqC9NFPS6inYurmpDOvYJSO3THQ4gqds9
         FVAQ/BHnXfySQtHc1EmzNVhiNd42RFru/YM1YkGebfivuFDqnfDoaFskKfsMvLjnB29f
         quFaqq5cL1kauuw5ZUR/NH3k+DY6fCA2UzXFESCWRADWC1gNs2ocVw+jdBXRLtAYpaKA
         A7NA==
X-Gm-Message-State: AOJu0Yw8gw+ItwS51B6i3skS3oXimIkRSfxLMxEazxrRW2wKw004wscL
	QgFm7EcgqUmK5RrZh1M0VNYQtRLrULL/y9t2opVMGDLiM4txhvL+UFRD
X-Gm-Gg: ASbGncvdQcOgbnwFkU98QJMoBpiaAuc90f2PCxaPF/Uf5B++XuDdBPdVbMCYV/yVn12
	G2vTuRmai6D2/BOp9qjluxIs2d2OgeIeERdjC/IKQrL0tev2o9SpATbpT8L/MFuceB3qilBeXse
	1NiBIM/J9/bCJa7JH8Fm6E7AAz+YV0mk0kqKfPrZyDnLZj4lpTTxx8LJu7WyAm4SuYomKhcVnfb
	WTjr5rmt5slQxrGSiQylz0nRWBGzjUy68CcXKfGzyoJ7GYUMLGl6uu74N+o9HOsX1gB6dUPYyMm
	Ni2uFIDm14aPqzauWIUTTgNJtdnHhXO6lkpaAO98BHBaf88cfU8A/84KsUIFWh/lFW7K/cmXAiy
	rotYDB6whcMQ/NL7M67Iqf4MUtuVxkxmVueO9mUAE5XOHD37sikurVzQexDJ6q9LzbSF+25dQZG
	sWULolY9BN0ovtwZ7IjUY2Zq498HUW1d8f
X-Google-Smtp-Source: AGHT+IF7E8t46LlWlz/KzpL1/62YiZPkhiyFyedThQfUNFQNbonmY3o+YgVjpbRofWHDx0aU0WhRCw==
X-Received: by 2002:a05:6000:2302:b0:3e3:e7a0:1fee with SMTP id ffacd0b85a97d-3e7658bc9b8mr15445122f8f.5.1757998527010;
        Mon, 15 Sep 2025 21:55:27 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd0a7sm20123525f8f.39.2025.09.15.21.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:55:25 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:54:56 -0400
Message-Id: <20250916045500.907542-8-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916045500.907542-1-chalianis1@gmail.com>
References: <20250916045500.907542-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_215528_985366_EE511090 
X-CRM114-Status: GOOD (  11.05  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 08/12] common: filetype: add x86 linux filetype.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

add x86 linux filetype to be used to boot with efi stub
bootm image handler.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index eb397a175cb6..8735d3b16723 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -87,6 +87,8 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_zstd_compressed] = { "ZSTD compressed", "zstd" },
 	[filetype_rockchip_rkss_image] = { "Rockchip signed boot image",
 					   "rk-image" },
+	[filetype_x86_efi_linux_image] = { "X86 Linux/EFI image",
+					   "x86-efi-linux" },
 };
 
 static const char *file_type_to_nr_string(enum filetype f)
@@ -435,6 +437,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return is_dos_exe(buf8) ? filetype_riscv_efi_linux_image : filetype_riscv_linux_image;
 	if (is_riscv_linux_bootimage(buf) && !memcmp(&buf[12], "barebox", 8))
 		return filetype_riscv_barebox_image;
+	if (bufsize > 0x206 && is_x86_linux_bootimage(buf))
+		return filetype_x86_efi_linux_image;
 
 	if (le32_to_cpu(buf[5]) == 0x504d5453)
 		return filetype_mxs_bootstream;
diff --git a/include/filetype.h b/include/filetype.h
index 6f4a103df304..7ca9fe2158cb 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -67,6 +67,7 @@ enum filetype {
 	filetype_nxp_fspi_image,
 	filetype_zstd_compressed,
 	filetype_rockchip_rkss_image,
+	filetype_x86_efi_linux_image,
 	filetype_max,
 };
 
@@ -150,4 +151,9 @@ static inline bool is_riscv_linux_bootimage(const void *header)
 	return le32_to_cpup(header + 56) == 0x05435352;
 }
 
+static inline bool is_x86_linux_bootimage(const void *header)
+{
+	return le32_to_cpup(header + 0x202) == 0x53726448;
+}
+
 #endif /* __FILE_TYPE_H */
-- 
2.34.1



