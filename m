Delivery-date: Tue, 02 Jul 2024 19:32:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOhMQ-000uXH-2y
	for lore@lore.pengutronix.de;
	Tue, 02 Jul 2024 19:32:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOhMQ-0004Sz-DW
	for lore@pengutronix.de; Tue, 02 Jul 2024 19:32:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ySaYzg/psXDa99xPGW7cKmT4OJZnuqDAjVZlst82OTU=; b=XTCoyHuhcdFd3I
	DIxzJ8MUFMr8wXlC2awSNSJN6T4lns8kAQCHL3V2wKL7iAcwcWprCwxNREFIW/BwCBqyIMx4HZDKd
	GRIYTuJjiexiE3Xajw5/aoS9ORM+fheQo3+9+aZLnvHSOZBrBjWtiujI7KoQIVS+2xOBjvO+8OW7P
	NyBdScdTmqtybjEN27FWHZRTTBGpRcL+VfxW5ES654MJQrkhEftRyMP4iHpKMCBa/llQ7uapqJBYW
	Oboz+WyCjZk6uFWAcTe9QLkJNq8LbtKZR1sXICRzKUBi1DkcmjXM906wfpYhm0QclwIlrXoYo3YjI
	7Zauj4XvGLwRXeNqkDaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOhLg-00000007Vx5-2zlI;
	Tue, 02 Jul 2024 17:31:24 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOhLd-00000007Vwi-2ZC1
	for barebox@lists.infradead.org;
	Tue, 02 Jul 2024 17:31:22 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2ebec2f11b7so50889031fa.2
        for <barebox@lists.infradead.org>; Tue, 02 Jul 2024 10:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719941479; x=1720546279; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ySaYzg/psXDa99xPGW7cKmT4OJZnuqDAjVZlst82OTU=;
        b=fUA8p1aK0jdJ14xQfNZORDEn6SDyHW0jEvPqM/EKlZFLJ1t1ji1rtGlAxlZ2d01E/W
         cuYOj01Q4nXb8OPmK7371gdk0yMWZklOZsVjroiaIV3c3O640EsS2mYt4Ci20T50L2Nj
         CWyat7pudl85UMZ+fmhjOEa4W/WZrqmbSS1DHxR3A4UIIY+l7hFIv8odbjL1CUHoPBeR
         8Ld2s66qduQe25DRuT20I0vqef0JGLUyROY9SXcneUJDv/3w0iFcWZnkEAFXqDNLKcrd
         yZecgA9W4pQCsqKol2+uLgQo/bi/tnCSHXUftpGQ0Iqssji24zxbK8wQvsvq/sEExuMB
         xbzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719941479; x=1720546279;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ySaYzg/psXDa99xPGW7cKmT4OJZnuqDAjVZlst82OTU=;
        b=DsmUvEnUAs47f9OGM02P8pIALObC4HmkMetKK8KwSiL0K11EHHWDOeZ8KlM9Gj9lQG
         mPHzR7PXmCZsRvjFN97u9Jbc43zOgbGv+H9U9JBMdb34FfeggLBKb1etwVc8Ts5UY+yO
         WpR6kG7y4GIPUZZ1cwihG3ZmO78EjAHOVhb63H364wZ/AMH6m+ZdtPmsAoQZvq4oT/ig
         l4FotyaHKu5SeuaZqnBmd72r31JLv+AW9XmFHoifWHGmhZJ9Y8wu3y4bU2CAIgLJDE0w
         rfY1ngIaBIFTh9OsqgPmNqcO8ZOlbDdryTJZZr3fer6/A8wGGZwJVHby7VhNj2yYLL4h
         +eig==
X-Gm-Message-State: AOJu0YxWQNpERzhda6TpY9hkOnBuqr3LOq77vJhmepcbKRdC661+7THp
	tbOoJ9tXOwbqBLx4txLvm5tSmR66Zfm4lcFuDMOEd2MZmpDTVWLncEX1fA==
X-Google-Smtp-Source: AGHT+IHZQQBmLNmA/PvWiAbw8yPHVo8OyJNONXgd5qpk8cAejhhcWeEb781sXYyW3sea+qUPCdxHTQ==
X-Received: by 2002:a05:6512:e9b:b0:52c:fd46:bf07 with SMTP id 2adb3069b0e04-52e826fb0dbmr6113871e87.49.1719941478490;
        Tue, 02 Jul 2024 10:31:18 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7ab3b2f0sm1861069e87.278.2024.07.02.10.31.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 10:31:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue,  2 Jul 2024 20:31:59 +0300
Message-Id: <20240702173159.88071-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_103121_668884_585AAD2F 
X-CRM114-Status: GOOD (  11.14  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: boards: stm32mp: fix DK-1/DK-2 DIP switch formatting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/stm32mp.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 2d6e954b79c..79e3edcb503 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -210,7 +210,7 @@ Boot mode on the DK board is set via a dual DIP switch on the backside of the PC
 
 If the board is set up, so the HDMI side looks up and the micro-USB side is to
 the left and the backside with the DIP-Switch is to the user, it can be configured
-as follows:
+as follows::
 
        +-------+
  BOOT2 | O O-- |
-- 
2.39.0



