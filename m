Delivery-date: Tue, 16 Sep 2025 05:55:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMnC-003YI1-22
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 05:55:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMnC-00079q-2e
	for lore@pengutronix.de; Tue, 16 Sep 2025 05:55:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WD9a3zS6Yit4rZfuoO4BibAwo74IYyPEdbPyLjsQtMA=; b=GSaFizitQSFxCceu8KTl1ZTr6T
	C5KRghdvIGUpeVKam4lq1K+McIzk78kFUXsoukWD2zeHeYph0rYDBx2kmobF6ZpbljBD79OMLlL1Y
	D56Vqqek5YmalvAC0l/wommPshArJTjwpD1R2f0/hcfcJ1vWoUbQ5WKyHZKygb14nB2EK0TpSx1SI
	bVnIEyxpYaRRqdJHdfRyhJcvNUqBnF6OIclzPS0E2GjOK9uxU8h1aHDaG50ZkyhJMA71ni0UyAOdi
	gF/VSGEsMFX3K68WbjkcODtBb9hcAH/lq4Ryt9UvTRLAXtRNKOPdaF1DLafpvVBVkd59JYt7NxHSM
	X6V99K0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmh-00000006dRp-0SWj;
	Tue, 16 Sep 2025 03:55:15 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmd-00000006dN6-26nc
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 03:55:13 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3c46686d1e6so3408605f8f.3
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 20:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757994910; x=1758599710; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WD9a3zS6Yit4rZfuoO4BibAwo74IYyPEdbPyLjsQtMA=;
        b=JiiIlzaCjy5MpOolseIc29DZadtbe0uZEwtFX4MRDepwBa44ZukiU4SGtD+IkreOA3
         VFmhbqHZxZk7t9hLgC2U2UeROF9dQfhLTaHX4hUlxE0kUPI5jslyEJ8rU2LLqtPplGgb
         1kWxqz35sEbatrAiBZNzvDaypggEmk23NTZoc/GW1g0fs0Re6IeOv7AEUEzNgI5J98iI
         OVTCRZ7sEC88coMqiPisaWqsCSmMACUDuJMD710A3JZLUWYSENAf0/aQGVlATzWaBvhN
         aE1hShfindX/qDHRnU5jrrc8iW7NDqjMzOJliiByXmqaxLj4Y6DAbJYEmXVvO7jS6G1I
         Zl2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757994910; x=1758599710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WD9a3zS6Yit4rZfuoO4BibAwo74IYyPEdbPyLjsQtMA=;
        b=ULasRsPIN8Z1uSu5gId24onKkn+RGMnnwMeq84JkVtVVsJmuodWpJzC4I7Gk+GP4/x
         2fuBaBoxn5GnupYVmCvbEevvyz86aQJDphyQ+gXAneLs/1DmPteB3m0PK3lriP/+m7TA
         DiZid8mYVhmiE+b35HCrhenb5Fm+EP4gquN7ZF95CHXKSbKz0d0YQVpnC1hRYsMxk9ou
         EVvS8hn0RD1HrJTJUO1htz9on73owfTECs0f5gTHD1F54xNLANGxX5AzyRXgZMSpyGN9
         jcJhd6uDCU7bzTpffO++lDhH2zMNwJe7xjWYEC3mgU+0WUWPtatNGqVZovSfE0D4FcXN
         vRWQ==
X-Gm-Message-State: AOJu0Yx4sFh/f01xpMjXm2yjdbSSwPbdArGuHww97sHONJCXViEiwCk/
	kj9O05U+KyKFDH2QKDXwd3oCD5NVsH7LaP74h0bUyYe8wby5RepvB6Ud4Dz1mtTX
X-Gm-Gg: ASbGnctlRdg1+8Ow/+Cc6YSyTF4tBa3UNiVyDVv206LR+GzdOg2S7cxsMD+EtH5JusT
	Qtsl4jj+pD6BaFU7a6DlI1vlTIanOC43kWghQjqcsRID9E2PIDKFaUhJpiV/ox6QgMqAedfPbAW
	FVwGQozgqL6/bWZ+amTPvUs3AmC/b/mINl+sJj4lLlpQWyGKWD6UeHRUfniDVpRptt64kls1LyU
	XnemKHO51yXw9Eueqv2gmhqYJ7E91D9ULkkuwBBhyQi9R5zpZfOo9e76BbFnwrH9VLE6E6z9Cb1
	gEltD6FPBrhYLoI3ENFCFDKPF74rOzxjOPlS1z/QwDfxYcT0/hxor4BNkbeHpNnylbkC2Pww1In
	F/PIs62AiGf7U383SkNflShA0nrZsRVwNDqEnDdgzOzm1Kz7y10xwVcxBnJHhJ0nHjarR36yTPe
	PJnrg4MrOMnqXv/M1gbkRvyg==
X-Google-Smtp-Source: AGHT+IEaI1+48sd24aOfEWjeDjsEb28fKKR5k7t0ZbMueekR1r1XSmC+KJ8jzJ2JhWs6Ey2AF3H4+g==
X-Received: by 2002:adf:ea07:0:b0:3eb:5ff:cb44 with SMTP id ffacd0b85a97d-3eb05ffd01amr3224533f8f.0.1757994909572;
        Mon, 15 Sep 2025 20:55:09 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e8237cfdddsm13496580f8f.60.2025.09.15.20.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 20:55:08 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 15 Sep 2025 23:54:35 -0400
Message-Id: <20250916035437.805046-8-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916035437.805046-1-chalianis1@gmail.com>
References: <20250916035437.805046-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_205511_596749_AF7EF6BD 
X-CRM114-Status: GOOD (  11.21  )
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
Subject: [PATCH v2 08/10] common: filetype: add x86 linux filetype.
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



