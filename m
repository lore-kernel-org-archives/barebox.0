Delivery-date: Tue, 04 Feb 2025 08:32:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfDQT-008Ic3-0g
	for lore@lore.pengutronix.de;
	Tue, 04 Feb 2025 08:32:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfDQT-0004Sd-Ag
	for lore@pengutronix.de; Tue, 04 Feb 2025 08:32:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Yx1Ge4jhJoeH7qWBAHj/CjPvrfHLGOFWsSoTm8DotzI=; b=joi3FKqmPdO3bJHCHOolo0aom6
	e4bxReDKafI6ZwetbgWn5tINUoYe3pPINDVELq94/02jKZc7i2FJlezA4WEihzNkd6lWYHWTi8156
	d1W8eAN2vmds5vV1/fudbN+VXkAstomH0eRKPCfZ42wFdRH9EGBPHeht5ogW+6MY4MM3hyTuHOUqg
	S5NRocWpql9EC2g0TzlfXb8Bgm2WL5FAU6UdKqjEz1bUemQP1lCS2dRKVGEXPwtrAG7fJKibEL4fb
	kXl1XmhTuCT58baJipqN/E01o9KWCiuHvm92BycUNuVav3DIiAfIARBEiW+aywzboVjJ1YHTLnc8Y
	kpk31QkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfDPl-0000000HQMK-04sL;
	Tue, 04 Feb 2025 07:32:09 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfDPi-0000000HQLz-2DX6
	for barebox@lists.infradead.org;
	Tue, 04 Feb 2025 07:32:07 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-540201cfedbso4809101e87.3
        for <barebox@lists.infradead.org>; Mon, 03 Feb 2025 23:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738654324; x=1739259124; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Yx1Ge4jhJoeH7qWBAHj/CjPvrfHLGOFWsSoTm8DotzI=;
        b=g7RM9FHuyXJorb6fWcKzO1jWumTWLUt9RuJQxJ7qR0R4uuQW5AkAn6y7pfZts+r+Jv
         Uv5ZgkEUo3ets5PYUEXYUFxFMekHkLQmehr0jLR0ag7FQeGApNM2bgwNQqMi2GOnTPFQ
         HMW/6Rq/IbhEsH4FtKBtojoVY83OpuuTYJy5dUgMI5xsNbcRhkjc9kwSFdaeKQJNHyKV
         fhqK+S0ddZWAa2ozYNaW2qvzIqIrKc1bhm3OBjA9BiMdjO1Lgx36VtUvTyye00edeuXc
         1kaRntX9LFEn/sy4OQOzSa3+KXXdogOMgWY9xQrNvkBFdqdnw2mIpXFd2BawFL3Wxsv7
         I9Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738654324; x=1739259124;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yx1Ge4jhJoeH7qWBAHj/CjPvrfHLGOFWsSoTm8DotzI=;
        b=LnQydduDIPdECBc+2WXMDcB3LCXA/Pl2qoKrx2BKkiUcjGrbTHLlQT0CtAWmxmJY7Z
         lftf9V/XyctbbJq0+B9QW2nu6sYkwnrnu70XiK9t2N+e4IejTao2EkMFNctEkKOpnm0T
         RtwNKvuw2S8wvrIdY0K+qeqonhrzgNxG3ABKJdMh6AfynmePykv36sSuwRD7lejvpETx
         AHBOv9MuaPwPM9bAKWEmE1u/a7sYlEI2urW8mWjEKlTE/S3Cin1UrSkc7VQb8rVjnqhq
         knDgvpnPmeJcjGm/Qv1p395LvuY8CeJcXRv4PM9pN6d2lPSrTFsCTZj4upGgME3hr65D
         KKkQ==
X-Gm-Message-State: AOJu0YwKwN3aktAYaXSMhKadCsBKAjS5kThSDhxjcQNWuG2hzPRrBWnd
	4L6RpUXnC0Eko3iFGgCRAlfVbWT8+SAaDkp06+aTw6k+5lfPrk9qiL//8Dvy
X-Gm-Gg: ASbGncsxnJ4u81B2yJEiX2ar7bFw7e2DuGnPBA8omwy3h/YlFZTzTH2MKxcR/i99gew
	4tBNK40xhLTFw0Ba0SoI7wOzYRivGLSAHL6dptywfdHEYyBdlPJ8XwW5Ju9/h/wvbrrtVe6sXBM
	cZ86JGRYibpeED3U7MUlimL1bhGLWimt4NfoQ7/V29ZNprBze2U7TYVbfXxEG49zcfKiFrrl8UA
	gY7ADRHck7c5X8qTXI6rkVpUpUiWro1afHNIWgEfGrTpLhOd417LYl+SCV9zCtTmKaITVL+t72z
	AlLOOVxTgkfx5eCHIQqrfC0R6PtPR8gnN1KCTA==
X-Google-Smtp-Source: AGHT+IG2egSK6E5waF0qfMYOw42JDtLIQeGq3MesEh2iJ65ftUkl6x4idX5IMNyLHjUy6CaOr6688g==
X-Received: by 2002:ac2:5fae:0:b0:540:1dca:52bd with SMTP id 2adb3069b0e04-543e4c038f9mr5550822e87.29.1738654323288;
        Mon, 03 Feb 2025 23:32:03 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebdf0fe1sm1522342e87.45.2025.02.03.23.31.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 23:32:01 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue,  4 Feb 2025 10:31:50 +0300
Message-Id: <20250204073151.16501-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_233206_568869_C9F59C6A 
X-CRM114-Status: UNSURE (   9.28  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] i2c: Remove dead link to struct i2c_algorithm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct i2c_algorithm is not defined anywhere.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 include/i2c/i2c-algo-bit.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/i2c/i2c-algo-bit.h b/include/i2c/i2c-algo-bit.h
index 91c8436188..e5c5fa817c 100644
--- a/include/i2c/i2c-algo-bit.h
+++ b/include/i2c/i2c-algo-bit.h
@@ -49,6 +49,5 @@ struct i2c_algo_bit_data {
 };
 
 int i2c_bit_add_numbered_bus(struct i2c_adapter *);
-extern const struct i2c_algorithm i2c_bit_algo;
 
 #endif /* _LINUX_I2C_ALGO_BIT_H */
-- 
2.39.1



