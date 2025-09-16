Delivery-date: Tue, 16 Sep 2025 06:56:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjb-003ZLh-09
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:56:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNja-0004t8-Fn
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:56:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=thlbuHDyP3/F2YqHSoR51Sh5fwymLIw3ioha1i2RnF0=; b=nsj8pynIEJshw3AXZeRTGN+VTd
	RzZtyu/WzetZ7qcKMjhUA56jQury4sTSxqFYnfkqhQa5U4vrcXK21HQnXjGkSqJ9ADGasIRGAmCgs
	YdGkm8S3Zf+XzIX8+Z7n+KGeui+Vd+Mgdyh0I0jPaC8p/6qU3XjIcf+eq7PyBbDBfRUUfS13xPhbH
	3KH9kx+k1kZUjSBYdWk4HEZ+WQwYfhNG4zHE1oO3LWwApvHTYIuQxM+yJGD3tVGsXoVxTJi5VvGeO
	NiII6BZshvFYbnlls+b918gBaaD3duyT7ES04fyJwBo64yss0mURLdVkSWPc522OqQ1XIibU95Ji/
	Jcj/1cxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNj9-00000006kkR-3nDV;
	Tue, 16 Sep 2025 04:55:39 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNj7-00000006khE-2Yrv
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:55:38 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3ea115556b2so1298670f8f.2
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757998536; x=1758603336; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=thlbuHDyP3/F2YqHSoR51Sh5fwymLIw3ioha1i2RnF0=;
        b=SGpx1MGi/WtJk7i//JupM9TUwyYBEk/BEUiWtknlgqNKMUENkspy7s8GWUu26PbWZ3
         VdQlrVzh0h8kiJrabJDOptMrcEmMleUQULA6qmbhsLRHUkaGb5169b0fwREQFzfq/dWc
         Ssjbyl5yho2C/qPfsCREIRsQuGcN2VJeFjUtchxwE/3s18/+AE3iPzJn10KouC7NWmLU
         06wLjZb67PL4XeyoTGkUvcBKUxsy7kcqJfAug8fCNqNL49v54A23CEKSlZzwy7dmMTZt
         9walSGhQN0ihC5+iUZypzl/2Y/CGmzQIgbhUQlDx/zhtav0kJO99NMbFP9oPcDyNamR0
         95RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757998536; x=1758603336;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=thlbuHDyP3/F2YqHSoR51Sh5fwymLIw3ioha1i2RnF0=;
        b=DTGQV3GCSXAiA8VY7y0++zwMKOUaGNZXK0Z4itH8WQXaquDkb640mLSG9F13WgRTa+
         cnp2kzSXUjh6ZE8lIJgOU+NaD1aVvbR0YwnpP+aPDgm4x29JD5JSrkorcc4/Xx88h7IC
         xYsDtLA7UjA7AFn7wx2/wwmN8YVjHxTZ27yZbknJJFxgUVfBSgMSAbOiVKYAdPuBJTm/
         H/odLAIx14SmiPx9Iaze8wkh5U2d/Hta0HhRHDRZ+2yJR+FdfV2dJaiDlPlIz6MokL45
         Ekdv35SRRdXoVppMCopjUB3PGZ1/OSvsb2B5VxRi+ooXjJXp8bqI7pGHQWp1NBq+ZiHr
         xcQA==
X-Gm-Message-State: AOJu0Yx2EmkUr6VfkXoKKkrVadclUqd1snUjoXhX/ho1TPgUP6BXHtpr
	WQwl0/hBjUVam+1EprLZHt119onl7nm6J7HQbIZV22XVJfCC16MY1XKb
X-Gm-Gg: ASbGncu8WxW4ZRtrVSqsYFdvPpU9zG59gtnH1tbHaK9kkba4pAosl1ZTc4bzvdFYHZp
	qDFeSmLyEBK5JArNaLTT8kkGuHDAizYm33b99pfALI1cs558FJCx9rJYiRr2sYHx4AXa14uD9rV
	2gAqwMDdiHXPpjMuW6wwbwwKOIBKnUrya8TXrfG0JA+VVHfTcLn2/vp7huptO88nqDL1BM8D4zx
	DA+s2VHWN8evimYJ5oji3q6xqYJJ5s9lPDBKC1S10K4RGBy3MZTp+Kbwx6eCzT3ZtT46JM0MwcP
	hewb8O5Y/ZqPr/ylU/f5kgT19NBi6vbLam1LYJjSBYugVIA7Dz/HEdJQF40JJcl1ek+adaGhgzE
	1z7+xh74ZYVv1Opyk3gjYQHEOxcNxMMz4/p5+7RMz7hjmcaueRswcxJqdxnQ9Z1w7PtZg7r1V3Y
	Z/qWETzuuTNXhRoIJF3q7JAA==
X-Google-Smtp-Source: AGHT+IHKUE7UXy3HdTGVtb5y+bDWK2DmtkimJecyvaIjIy3RVtR4M5OYLuOJ2Cl6vsPB46LflcyjOQ==
X-Received: by 2002:a5d:5d05:0:b0:3e7:46bf:f8bd with SMTP id ffacd0b85a97d-3e765793224mr14163579f8f.23.1757998535918;
        Mon, 15 Sep 2025 21:55:35 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd0a7sm20123525f8f.39.2025.09.15.21.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:55:35 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:54:59 -0400
Message-Id: <20250916045500.907542-11-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916045500.907542-1-chalianis1@gmail.com>
References: <20250916045500.907542-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_215537_650379_C6458EE9 
X-CRM114-Status: UNSURE (   7.59  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 11/12] lib: fdt: remove FDT_PADDING.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

remove the unused FDT_PADDING.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 lib/Kconfig | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/lib/Kconfig b/lib/Kconfig
index 89e95d202c2c..d07e2f3b6959 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -121,10 +121,6 @@ config FSL_QE_FIRMWARE
 	select CRC32
 	bool
 
-config FDT_PADDING
-	int "FDT padding size for fixups"
-	default 4096
-
 config LIBFDT
 	bool
 
-- 
2.34.1



