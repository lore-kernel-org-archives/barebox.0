Delivery-date: Wed, 30 Oct 2024 11:09:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t65eH-002eKQ-0f
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 11:09:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t65eH-0001Ue-Tq
	for lore@pengutronix.de; Wed, 30 Oct 2024 11:09:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3luOnzwj6JyIX5YjIuUALuZRZonUZyktI3ZXAphcPAY=; b=N4uZ2A6jW2DrfFFn94rU+DGFDL
	N9zCKH4GLfQAHgYTckL4QX3g/NTyRD4J3unvSIMW1dj+goUlqe4ga9DlKqDvI/FY2nAudsYn1f7QI
	TU8KMW+VaXORsO4k0AS+2e7D9GVX/haD3BonNMIkKIDEwE/AfIRm15huUTRMLBmZCt+UTLdhfqLqb
	j6pxU3/7VR2xRJLW3G3TpwXKWHGtLGgC7yrdXnvoMmJxgBmqFqvWkcxfgAxGrB+PXoO9bLxEeiDYJ
	bovVzVUhRXwcGstGD0zY9Nw95jXjkBF6RbIWlz6uFNIO25mvjU8ZrBJNJ2kK8fjMfFBq++6ykLx5Z
	MW7Y9fLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t65dh-0000000HVMr-46BH;
	Wed, 30 Oct 2024 10:09:21 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t65de-0000000HVMR-3V6V
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 10:09:19 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2fb5014e2daso61523231fa.0
        for <barebox@lists.infradead.org>; Wed, 30 Oct 2024 03:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730282956; x=1730887756; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3luOnzwj6JyIX5YjIuUALuZRZonUZyktI3ZXAphcPAY=;
        b=desTuZkdOCMMLQVWyEmSjv+CZv9VVwUZX0NPggrSZfcuaN0u0OFdO9yOzY8/rdtc9u
         NKCjT5CZSgprP1Hp8xlzpGBzm77QMnuZx4+pAr0XzgTDi7UTdbe36bBdX8nG9spScV+K
         AnwnxzzEDyWvaNrv0rC2oA5NLtwrbXdyboGxuuA8pLK8AL7X8/ZfYZEyn2xP6ZGv76bw
         BAtRNsfMwRjUbswO3yBBtNp82nqz+e2prdjD5dFOUgLo3ntAbrixV9E9cSoiSc3YFhE8
         BuhDCyCVan4zeCUbw789rnJGkeSDyyIQ8YMI0s9DmNHpb1+iHjrbc7SqrDDa3NgVnRW1
         O6tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730282956; x=1730887756;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3luOnzwj6JyIX5YjIuUALuZRZonUZyktI3ZXAphcPAY=;
        b=FuOw5KwYMRj5lhLIGSTVbMJU/ZMk3AYJtcnXs0wAYXthp+b/2OMjDoXiKKrgHho97b
         4G81WxH+gJvbzEAZDGyLidFu7Qt/iv/nld24m9QOBPr+2zHsc0QSQBdWPGyne9jgWuQ8
         7x46xLqa2i0TrkHocKdYBNxPdipLSvnbPu7NC9V515tC4FAENKBiXRkdhmx3tCImZELs
         SsVsetSwe8HkweUx+2MS+KOB0pJMsQrzowYl1wl25KhuPb42oWgllgCv72wcBr6y6dpF
         AVtxP2+5k5Db6t+1lvvThxICm0ZQQ85WNFvz0bkgw/Wlhb67cGMRVO5RS3lDBrOdSO1g
         n7mg==
X-Gm-Message-State: AOJu0Yw2Z8jDGIQRhpHdZoPgWMekdL3MLyvEOAtsmacTZz1zf7XABH2T
	ockaPXgJ5gysrJNZKCd8i0sRLRjAmKJlCagujEj1FoMrPDzsc2vrpwk0vw==
X-Google-Smtp-Source: AGHT+IEvCrxR+DMeATd32Q6M8dVEUzBqBEz1E/d2ZbDV9Dlt5txdQt9zgftYYP9U3WC0X5Jkqttk6g==
X-Received: by 2002:a05:6512:23a4:b0:539:e214:20e5 with SMTP id 2adb3069b0e04-53b34c3fe07mr7585689e87.59.1730282955675;
        Wed, 30 Oct 2024 03:09:15 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53bc0d70cc8sm204609e87.296.2024.10.30.03.09.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 03:09:13 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 30 Oct 2024 13:09:03 +0300
Message-Id: <20241030100903.102258-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_030918_894939_D98F0A5A 
X-CRM114-Status: UNSURE (   7.82  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts/.gitignore: Add generated mkimage to .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 scripts/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/.gitignore b/scripts/.gitignore
index 6ee81e8998..17df85ba96 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -21,6 +21,7 @@ kernel-install-target
 bareboxcrc32-target
 bareboximd-target
 mk-am35xx-spi-image
+mkimage
 mxsimage
 mxsboot
 mxs-usb-loader
-- 
2.39.1



