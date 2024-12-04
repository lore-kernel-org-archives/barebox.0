Delivery-date: Wed, 04 Dec 2024 16:31:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIrLF-003xeW-0S
	for lore@lore.pengutronix.de;
	Wed, 04 Dec 2024 16:31:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIrLF-00081S-3c
	for lore@pengutronix.de; Wed, 04 Dec 2024 16:31:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uZINYhl3F1kS4aa8SE6b26zzdVCoiqdfbPq7hjcxyM0=; b=LMyfjdelHFnORImNIo1voW8dZH
	pwSjhxTwyFPwE0ai5VTO8A+RwrOUb9mhnv8eWOj+bg2JinRjJxb4x8qq/ib9GQcdw3zDD/C2YyCM+
	p9vT5nTUofPdYSptkvtQl8EEi7JFQtMSo2jiHsWav45/9Sj8Jdr8bfIddrDu+ql34aeh53TOO12HU
	POv/3x71F28WssMM+c2YESnvWHnqciHniZMb7Rh3tj5xebq54xpSUuDVgIb1nX5w2Nx5axXc9QDXX
	TL9H2j7uyNQTQgZV7ND/JPiGOc7FpOsUlQsORZLOZBoeZgkrHgxCP/xjDe4JS8gZ/mlt0WPTJuHYG
	92pP3gWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIrKk-0000000D0JC-1hbX;
	Wed, 04 Dec 2024 15:30:34 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIrGp-0000000Czn8-2Zfk
	for barebox@lists.infradead.org;
	Wed, 04 Dec 2024 15:26:32 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-434aa472617so57052965e9.3
        for <barebox@lists.infradead.org>; Wed, 04 Dec 2024 07:26:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733325989; x=1733930789; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uZINYhl3F1kS4aa8SE6b26zzdVCoiqdfbPq7hjcxyM0=;
        b=HwAA6nD4D4ZM/dMRXOt36G+I34LETUujjL13/yyRjOtWQdTrrT62FxJddZUGdA72nx
         qG/2yAh4cYq0zZaJh7HWIQqdZ8o82RvUTnm60QL0YUAdsDWwkBZvHdXBf7tst/NOErlz
         iM8JTNPdcXgVZwOvV7eQMtuVRNko3qvbmDjP/Ki033aEFEAmSiLbihWU8RyC/zDNVx9y
         BaQ0GO5rY3mOlIafasuDF5zfTx4ovbeSaHLVtdINOFgBblD1QZw3V8Lpf+JzMtkGWKqC
         GKUniFZ17v/AFKSE9wqg67VnIGZF18d2EtMEMtJJcndtCdlpiLPxbfTFgNapu5f4P4G9
         a0Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733325989; x=1733930789;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uZINYhl3F1kS4aa8SE6b26zzdVCoiqdfbPq7hjcxyM0=;
        b=RP/jlIXV06zY7za3BotRgKI33cuQ2qov8ubYwGamMLE/V8bvTvHji5i9+x32aI43KN
         iNN36BfmUFunMh2evFd1KKorh8nxAk4Ts8QxktmGdx7RAPMjMu4/VrVWqfos6s+UmbCO
         0gHjKhubYUGt5urQMqCj4CBYAxwptMsqmrCb3WcngF/8E7F5/E9mgRsUllWHFhQ54XrM
         vTMuP8zDoKiLfsdQPh0Go78ASmSIfBVk/pocKM7w2i/gi+9JXOesrz4WZ8m54totjuwM
         Cn9N0NjhdC7wZuZeZmi0W/5UJ4vciHIa/o3t2p7A4ywcBIsDaPv0OEX+22FnHN+jN8DX
         vHPw==
X-Gm-Message-State: AOJu0YyQNtMgNAZ9ZC73Io9Ia/8Pay6a0S5Ciog639HTdkv0H9hvYxNf
	PPIwntv6fbv3d0vpb9Q7Vk25tM7V1iwSgz2knmrnjruVvM7s0PZIjStRB7mY
X-Gm-Gg: ASbGncsQs36amdXBfNqzCApfQVXgpJUF4/nsqtuX5e7t4NnrjbsB07FZpFUconlz+ki
	PbJoc6QDy3/a20wiItvV86NeN3n6ziu2yDvcY/OexCSsC5UD+uzjCXzuB/WkY6skZfEbKhjL6W4
	lF+c9jSl7nytKSOn2YfC/KPc763gcd6bDYYg2IxgRaxZ6gkwSEoKuDxNfmN/xa7nrMeEPRfTucB
	jMWFTE6CUWfiNgFBxCYX+stVGimBZZFJ3Wrr7WtNRKOLZ2s9ot/FWyDQw==
X-Google-Smtp-Source: AGHT+IHsEdH7mb7uCy1QBVkCige8QXxwqntqtUUY2irq81VJmckddswPSTYFV5j1/3wNaj3z2t2HZw==
X-Received: by 2002:a05:600c:3509:b0:434:a196:6377 with SMTP id 5b1f17b1804b1-434d09bf789mr62167255e9.14.1733325989306;
        Wed, 04 Dec 2024 07:26:29 -0800 (PST)
Received: from Boody.. ([156.195.235.57])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d52b5677sm28177805e9.37.2024.12.04.07.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 07:26:29 -0800 (PST)
From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
To: barebox@lists.infradead.org
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Date: Wed,  4 Dec 2024 17:26:25 +0200
Message-ID: <20241204152625.17529-1-abdelrahmanyossef12@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_072631_650569_18571844 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] partitions: efi: Check GPT header size against minimum limit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In https://git.pengutronix.de/cgit/barebox/commit/?id=a9c6ad764144, we were
checking if the GPT header size is exceeding the maximum limit.

This is a follow-up patch to check if the header size is less than
the minimum limit which is 92 as per this documentation
https://uefi.org/specs/UEFI/2.10/05_GUID_Partition_Table_Format.html#id14

Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
 common/partitions/efi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 8014579b67..a4e60c3c98 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -190,7 +190,8 @@ static int is_gpt_valid(struct block_device *blk, u64 lba,
 		goto fail;
 	}
 
-	if (le32_to_cpu((*gpt)->header_size) > bdev_logical_block_size(blk))
+	if (le32_to_cpu((*gpt)->header_size) < 92 ||
+        le32_to_cpu((*gpt)->header_size) > bdev_logical_block_size(blk))
 		goto fail;
 
 	/* Check the GUID Partition Table CRC */
-- 
2.43.0



