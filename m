Delivery-date: Thu, 28 Aug 2025 06:15:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urU2n-005JvE-1j
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 06:15:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urU2m-0004K8-CT
	for lore@pengutronix.de; Thu, 28 Aug 2025 06:15:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EkZsReoNp0lBUBlZhpnSLpLoMlGRdV347UoBxeZghyg=; b=UZj1cc/hOGue5aV43CJvBTiY7L
	w+NhXKmogzZFvZGzCystil1obnr9ZH/TG8xeK3Q3hjo8Jm9f56XWjKXgUr+AYgB6gapCuXJNHCoQR
	f2NWfjTCFurCDHouJTK97B3oKrQjoJpxu20fFDjzbg+xG2fE8DxVhy5UyUU+01KgzCE5wfrDhu0Tu
	2NHZsYDAPOqH8ko2DnQ6WpJAr9li3sE9zxZWwLLsT9SCbsrEme/6lGjhWtkVKHrBLOOQnKwj/aU3b
	i6i6SgMkIptfrZi7MXlWNc1Ni57UWs0Jzqt52Wjuw/CE3Pq3xQgvcuIKCrXVpCDjImJicBmQPYflH
	bkXP+weg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urU1q-00000000DVx-2uf0;
	Thu, 28 Aug 2025 04:14:26 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urU1o-00000000DVS-0K9C
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 04:14:25 +0000
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-4b109c4af9eso4391991cf.3
        for <barebox@lists.infradead.org>; Wed, 27 Aug 2025 21:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756354463; x=1756959263; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EkZsReoNp0lBUBlZhpnSLpLoMlGRdV347UoBxeZghyg=;
        b=VoorwL2K9FtkWJOWT2LolpvAqjAMZi1egJNLcIBzRA2o6tfCw64LyHR3toXlEuzCKL
         3KC1rVDecG+xlTFX3Y21nouoBeX2ANrEpOGHV3GOlFkxzIpe2MMlPfvhCRs145eJNWMg
         eAVCDhBTGCoa0VzZ+gJpMPBgqu0572hbLVtHL4JHV4xUMUZ549vHaiBTtIyBD3mlI8dX
         iB0cJOTR3JA5mje8cFTuNj4UsKAepR0nnFDHFEBC3DmF9B+yiM/6mnuu+9p+2hwWOGqi
         p3YNE0KivXfjSw0R00SEZw7+U+gSRuk4oEQYpFIuLG1bDie+/t1ooi8Kd3bWopxjLvmh
         MAMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756354463; x=1756959263;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EkZsReoNp0lBUBlZhpnSLpLoMlGRdV347UoBxeZghyg=;
        b=UNkPAzz90WSuQNLcwRlishSERKccjOkMl7Jod8zGyMAfw2yOtFkstjQJY47ghJF1a6
         N8HU4prk3V1WIrhTs4DA6M/abMHbuKCp+i0/PvNbaeyG1tyRXvbAwVzw2R+8va05P7+P
         gWRkam3HE6JpBLuvr3U5J5e0CpPHs4oBc7lD1RLLOp6oCtV7GAe0Yp1HB/jHDC39fApe
         y1zYGtJKABJEapjN+SIgaL9UkqNgs3fVsNHQt21yPP0vZ0P0z8234ninvMy2uoUGonHo
         k/fnKwgQjkMg8M7UVaQupx3HJEkCPq4HN85JhbDoV4YQCeE7gviTWJs3BE/5aidUzDeR
         u6jg==
X-Gm-Message-State: AOJu0YxzrjXoDXZP2NW8htP8iC9ac3cbMXSOitv6xTdm0DxgBRDCf8On
	cBRCFoBuaEnXDqXoxkfj/tzBnsQKsscD7DB9mh4uwFzi20AAjdY69igAmXScKg==
X-Gm-Gg: ASbGncti6d48tjsaVJT2eQ7xf0tJmv9SMKiQqUt0PUglUeBYU3EiOz+chGABwR+y/Pg
	0pdibFtb2nK8LGZCYceEZhOSkW3BthcxkLeL6RD2fPw+C/aYsKt75GUCy0zARbv6fLRE3ut9S58
	BrvpsABGnOxn4Wej86VtSeyqHqLXAiIn7g9+NY5bPzqQoAFnFSk5FLmYxppc8oMaggnN72z429b
	jBgHtx9KGBtpWJy4MUf1ARIGHgrkl8q3WTCtOqQb9S0Ad6ZHMWYylefJu/O7BUp7RfC9bxf349V
	t2SQ62R2e+b0XkC7MZkYDl+wGKeHk1zKfL6lS6TX4sDZNlfsOPvXjpbkCEjkZuwpvkqAG/nvNdR
	wKm1mvAMuTvIAnGDiv+nqI3onivoj5MoSKKB3RchQZxNUO5/2XFlfrT5ZyaqR3yIXFBSLWaoR75
	MIP3cBjq8/n3M3vWaK6tQGh1CB
X-Google-Smtp-Source: AGHT+IEOzV/CDmf7KJjV1NLG7k/eKUQLfiEbFGodzS+zwkpba2UgaoJ6QIxxB1mw0ATY6Be5B3nWFg==
X-Received: by 2002:a05:622a:116:b0:4b2:9e22:6588 with SMTP id d75a77b69052e-4b2aab206a8mr277986351cf.39.1756354462860;
        Wed, 27 Aug 2025 21:14:22 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:e02a:fb82:e2b3:28c])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b2da606336sm61547291cf.49.2025.08.27.21.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 21:14:22 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Thu, 28 Aug 2025 00:14:19 -0400
Message-Id: <20250828041419.1874774-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_211424_119427_5654CD21 
X-CRM114-Status: UNSURE (   9.37  )
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
Subject: [PATCH] drivers: video: efi-gop: fix null reference pointer on priv->fb.mode=NULL.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

fix a null reference pointer on mode variable, that was never initialized,
the mode will be set by the framebuffer subsyetem after initialisation so
it's not necessary to change the resolution here.

Fixes: 6518b21c6c66 ("video: add EFI Graphics Output Protocol support")

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/video/efi_gop.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/video/efi_gop.c b/drivers/video/efi_gop.c
index f4f58d9271f5..cef8a6816cac 100644
--- a/drivers/video/efi_gop.c
+++ b/drivers/video/efi_gop.c
@@ -169,8 +169,6 @@ static int efi_gop_query(struct efi_gop_priv *priv)
 
 	priv->fb.screen_base = mode->frame_buffer_base;
 	priv->mode = mode->mode;
-	priv->fb.xres = priv->fb.mode->xres;
-	priv->fb.yres = priv->fb.mode->yres;
 
 	return 0;
 }
-- 
2.34.1



