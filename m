Delivery-date: Tue, 16 Sep 2025 06:03:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMuC-003YbB-1e
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:03:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMuA-0000Wb-Kv
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:03:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WD9a3zS6Yit4rZfuoO4BibAwo74IYyPEdbPyLjsQtMA=; b=mwTgIlEu7YFAZzly1Azq5XW6Yt
	DDHEEwVMMgoV59TshOEQI/nwsUfjCaBVDasJ+p4lf60lIifWgYqrnZXmw2D2tLtUXPeemVjkEmHf3
	2lIpc1SaKfJv2510dNFLyioiLAK9Z/ivSoh+mN9sk20tnwpidE8lgx/4Jm049ammwsa0vexOU5dAA
	E9sV1+coFPsRPez8ZcK/dt713td1vRHB6s8PU0t/+zXrwPyX2MybB1+wf154ZEYg496hA3Afvl/l8
	YwhKeH7knbLNHg7yP2TbdvkGv2afRiPcBAsm27elf6YHrxmf8Pi6I4haz2Hywpmq+rBVylQm2YDb7
	rureMF0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtg-00000006eeZ-10Cl;
	Tue, 16 Sep 2025 04:02:28 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtc-00000006eab-2a5U
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:02:25 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3e957ca53d1so1958747f8f.0
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757995343; x=1758600143; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WD9a3zS6Yit4rZfuoO4BibAwo74IYyPEdbPyLjsQtMA=;
        b=ksBL65xuCTZ6767APeceBU+02TRKKJKgpWP+Rabp0eRov8xCDWtuiKcEXIq/Ll2AaG
         e6k8lSi0pzZMLf8TYulMbqMLKiMGUzcnTrFPoZzdYM3PhcfRediX7AGtASx3DVCkAQ7H
         YQal/sw9zcIl99dYVz8Q2aEf4EMmXX2mm0xn2PeG5g+X4fLRx0mdu80TLCTGdY6cPfl2
         Z5L0rEJNuB/jaLZuRb320iUERfOetfu8o5UcRiR+1CCHj8Z0IJga9b7b9nghRhszHGw0
         QutAhP53BHxMwlTIGlLENQbRffl9zHACtKkghtxveiNtt/4C5w5tBmdQX8+qhE0fs0xI
         IOEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757995343; x=1758600143;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WD9a3zS6Yit4rZfuoO4BibAwo74IYyPEdbPyLjsQtMA=;
        b=IbcSY1uQzpHuHokCO2wcGxNFrjs3cHK+sL3DAd2jGcYZAzL6ynajZGHoxKR6TP3jto
         D2W4gJHjT6f+wX3d83bN6zmErBYl3hRm550vdvbvkzyZylszmENCT3kXpJkD8Bdx2Anu
         Dp4J+k6gQ1TSoBBypnycTltW/H7Ujzch+xFs94CJY4Ecsu7b1w3tGhAPB0YOZ+d+vlsJ
         GwC9d35qDNEiz5CGYUyOjBWDMiWVTvA5Fpnu++WhrSl3U6BEenxIqzpOL1XfDLMTWzue
         F8oIAIocUKlw4e+2UgsyCUc1yv0OtyFXrzXpKza2+e/8QJcVXvDydnKGAG5CVeBWa18N
         /UPA==
X-Gm-Message-State: AOJu0Yw8fwgQbOJeoTbWx090XO4Qy3DlRNhT139qilfQ4Q4U3R2MWkaZ
	Lp9joO/XXToJfeeudzgO49c5ODrWf5+ESpWaeVD5q8VRge/4mOgHxTcwJJ7CIRpu
X-Gm-Gg: ASbGncsM9HcGjB8uWsTpJW4nI2v5hxjSGRmJREs3c0pJDnaaV1J0Q6CM3Q99TIRLsGO
	ZvUgZlNKYAYYxLHVCag0CDHN8FYQ47T/Wpd2wrxl/3Gm+tdE5MiAh+UEKtA37WiskK/M16ALWyx
	AT8P9O9O83Br3kaw5mvwj4yy8Z4z1KOX6oZ7Zf9Hco4bwEs3u3ZtJw9/iTMMst2tunY9ulVJWvw
	JH4Y4ySpsmdWk598GpRo/Uo6zX0QWh/YHQIyoFinWa7RiMbNKzPfoGfktNo+1iahUE6XpezDEUL
	lhwrs+dgyy1UYYs4oKuJpqKU5daq3e2PKBJ1D+jOZEHv1vxKz9RhK8i58O6vifFNdKW8+rSouFv
	ih34ppXwy0euOgK+hvQK4ghxzE3i6g4kZV/4EnTr7OKPyKdCbo1C75W8hKvfduyQ42A5vDvpBcu
	IvGE4s6PwY45HB3R29PFoyFQ==
X-Google-Smtp-Source: AGHT+IGP36fTU3uICMnwGYogUZeIkNyafrGbvO6pDpo6gM31+VInMRjj4tho8FFA9KMHzC7wvMDsBQ==
X-Received: by 2002:a05:6000:24c5:b0:3e8:b4cb:c3dc with SMTP id ffacd0b85a97d-3e8b4cbc97dmr8772288f8f.3.1757995342883;
        Mon, 15 Sep 2025 21:02:22 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm13594706f8f.23.2025.09.15.21.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:02:21 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:01:52 -0400
Message-Id: <20250916040155.814159-8-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916040155.814159-1-chalianis1@gmail.com>
References: <20250916040155.814159-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_210224_848902_0C5A0ABE 
X-CRM114-Status: GOOD (  11.15  )
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
Subject: [PATCH v3 08/11] common: filetype: add x86 linux filetype.
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



