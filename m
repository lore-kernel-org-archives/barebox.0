Delivery-date: Sat, 20 Sep 2025 05:04:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uznte-0054xZ-2s
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntb-00052M-HD
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=17lYpBmVIRGyifh9oPxSD7zuDUHzDKL3Ta2EZcLqrRE=; b=RXf8FBhR93TXbeLLs2liq5RxRn
	JqasHBmnHsOXRQDrHluWpOR4tUR+PvQ5/n04qQYCPMAsWdGcDfM8587ntBajY8DIMXy/DPHHIdeeL
	/n8NUODboIkx3glEqNb099aJDiidoerUjFnMAwGbV4WQBJdOy/Bb3489TqMmqrd3qGfLxBLq0Ryr8
	ODkYsC0BCHpdOgLL+S1YCcObrG22mQhiyvIg6rKZbgKHj+kyqG2Zt0TKSL6IFKgEJSC/iu7F89Ui5
	SF7TwJhUOU8EVqGfbFfdH3XOCyLg40AHMjRs6Fy7QBJTSRRDVx5k6F79kDSKZtlqvfuAkNYWMwIt1
	yHd7RTsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznt3-00000004bsB-2BqL;
	Sat, 20 Sep 2025 03:03:45 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznsy-00000004boX-1Sep
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:41 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-46897c60e38so7988095e9.0
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337418; x=1758942218; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=17lYpBmVIRGyifh9oPxSD7zuDUHzDKL3Ta2EZcLqrRE=;
        b=l9Xcbo2h+8glbkih2V4Tgg8zKpwyulsm0upKDxbR8B4KaaqLXAlOUQ6kUv7YtbwEgR
         evy2rywYljL/zanSxB3Xva0Qo1Km4MdQtoJqepUMayTdN74UtLyxM4+Yk0dmlIe4RWS2
         jNuHpNGtMN5v/0T2Mif4H5H6XiqUFuAynTZ66NqwQfE+A3zqHw2Lc4bYcO5iopMdr13n
         abbn1WG/dsvNc9MpV1vLkEJ6vWlAYnfiYGUz5AoVgu7w7aBcypU64EqKaQTW9CJkE6td
         vLhy5JKcRca+NyIhg3DSbFncy6E8ClWMPFDGV48o2EEeVERLe7WODgKjF/gnZARuI6oa
         y4PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337418; x=1758942218;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=17lYpBmVIRGyifh9oPxSD7zuDUHzDKL3Ta2EZcLqrRE=;
        b=dbjw0LkKKg16d5a2IU1LwKtjhZduJKzKvIkmZoCPCBU4nqKXMbavNG+Z+zUC25Y6KN
         h2Z0aP0xQuhLNmWpN9Vfg6IAHUw4Ry/3Aoql22zoL5R146zEpiEiisHb5drVXRe30/VQ
         ZAF4h/oU1HoqHbamDabqv4ZifMhuIw+ltC9kb/NuuJKd8b4KTABt2wRPPy0Y68z8R1O9
         qXsq5SZwlHuig3sPjP41gBlJONGJwmSA09ILPsvUpJNACQZA+ndRJSrfAVxUkwqN0tPP
         qsqSGZdmsuA2xlZhBsWE+UG16d7D5FYzz+xx1lNxh2hkI6eZeQx9jLXXfULoW+lEdMTv
         dT2g==
X-Forwarded-Encrypted: i=1; AJvYcCV2Q2099YaayzVoyrA1yn62YXbkuo6xmpWpuzrp15a0qiqEGSzRc6dcD3Z85vyocuGljWehLNkB@lists.infradead.org
X-Gm-Message-State: AOJu0Yysf7vxXjP0MwEIr7a5Hhc31kBi1lHQ0NCL/bwSeFammcxPdp5i
	UoQlF92P5gzIMrujD6V0TJkNisrWq0vZduGhNtX62K3VF3w1wprLiapE
X-Gm-Gg: ASbGncuNRBQD/5mpnuVV8W8vSjLpNgKZWmXF/c2YWkhZuH5WNcuQnD7CEa71oQ6wspn
	pukbTeXEiniNlnTA9mu0bnKtkr28j6QjeglxNDEA2uLGcrryoK+lfqoJ5m1xJQ8Oje5+n8mX4hT
	0kz9W5XbjXk/u7hC7bZlSNAaCrrsm7sCJ/EfB5gdafLGyTYAg57TwDip6J5R1LByhzfniMsfJpA
	3NAKJCF0cNVJjgqaXvs/j2S6LVKsask79bjy2yvSC91eOGVxzagnjDtyrIz3qspW878wniKbaen
	oHAA9Rwc6eYdWeaSNR1/rbAQvlcQf7fngf4WyIyVqfky3xoTfW7TG5rY7IhZrtIKZAoaiMTh3B1
	Cvymmnz5n/+5DX/IF8tnJJD3zjJ6ePuyKbbuauI3x6EPXum+5VgZIyrSBiAniMIzs1FXz9B/OSm
	R6cjb3WcMY
X-Google-Smtp-Source: AGHT+IFoVIFoZQHg7R/SEcXGvQYGdKCOEs0FsrhmbfcBmtsu5fC7o4bHPJF153vZQG2v9SXBqOr/lQ==
X-Received: by 2002:a05:600c:3151:b0:45d:f804:bcda with SMTP id 5b1f17b1804b1-467eed90575mr40299015e9.13.1758337418499;
        Fri, 19 Sep 2025 20:03:38 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:38 -0700 (PDT)
From: Chali Anis <chalianis1@gmail.com>
Date: Fri, 19 Sep 2025 23:03:16 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-7-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200340_415369_E5C02D7D 
X-CRM114-Status: GOOD (  10.62  )
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
Subject: [PATCH 07/15] common: filetype: add x86 linux filetype.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

add x86 linux filetype to be used to boot with efi stub
bootm image handler.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index eb397a175cb63df06e4426d2b99e4fde360c5b11..8735d3b16723b88c470750a1ca9ca10a6bcbba14 100644
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
index 6f4a103df3040ef259660d06ca878f72e2245c12..7ca9fe2158cbd20cda3ed587293a91addf2bd79c 100644
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



