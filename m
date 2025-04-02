Delivery-date: Wed, 02 Apr 2025 07:42:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzqri-007HUT-10
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 07:42:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzqrh-0007q3-O1
	for lore@pengutronix.de; Wed, 02 Apr 2025 07:42:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qPRD3Rg9JcYK4sa7a6iZw4Si4H7+QuadzxmROXsyRto=; b=VBB+AiF1ak/MxA3cAbv7UKkxT6
	HFsAelnzREGxlbtUpEfN0inr/Q9Ltb74pYRSLnpln9i6G57PMp7XBX7KV5TtPAczmDAD2ahLkuJI4
	kLGUnMCmfhPdOCXbV0g9pktYs+pvdFP6ala9vIXw0mxq+iiOTb5fA2Iou6SjZSLvhlaFPGrza+GQG
	uA1yiDZP3IijJALLn83yFIpAHJqOcWitwKg8stGQvV/rhBBcF4tqAWDLE3V84w6t0jgiv5/CMPQGn
	Wvg7SFlycmTPpkinTh/4TFyp1AdznCpN97BwCSFzry9WIFgrZuUJWAaEPCuWS6BGuDXzTv6QuZyiM
	Zcsn4o9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzqqx-00000005Ben-3Ziw;
	Wed, 02 Apr 2025 05:41:31 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzqqu-00000005BdB-3y7e
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 05:41:30 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-54addb5a139so6995191e87.0
        for <barebox@lists.infradead.org>; Tue, 01 Apr 2025 22:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743572486; x=1744177286; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qPRD3Rg9JcYK4sa7a6iZw4Si4H7+QuadzxmROXsyRto=;
        b=UEieZ/jzes6yWb98EKVlf2C8r63TfWlCh7nv9ZQHbFsZl+WCAC+TOvzUzBUkfs+Kin
         0LRTVU0CbhZHYAbmW+PYwbqQVcHc9Yw6P8wCmHatFJ0KN733sPgHI5JpbOa/lYHcchMf
         GSTF31Nen6Iqx8XERu7OJtEHTy6flMTDkUaj6tNHbxyKdT0BmXx9wl+64EcJIR7XiZr/
         QqsgRUt0+2VJ4Bb3ly/tpksuv6qDRCWXp1DFnS4WXCA4uzBXxRwbdYCnshpfZPa1MtdD
         xBUPZ5K5DBmvHptRUZCe7XrRVX6fkpwVd0x37R0Ypxwwy0kKm3Qw1+bTACWMSqJwOozL
         rWew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743572486; x=1744177286;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qPRD3Rg9JcYK4sa7a6iZw4Si4H7+QuadzxmROXsyRto=;
        b=BuzYFWbndsJmUDU92oR3El0ah1j2J/1ePpseWCOoKJeZ+VERDgzkdiGDtL3k9xbM1h
         D4WBeLRWLhH1zyiTeUAtTKRU0doPLXCz52AVyJ/gbspJ7+8VhbUspWZGwtj/VQrkCzxm
         HAvUyFlmwMeCKWxVAWAJyupCV5kykUuKpZwgOV3tucxlftPqmwyNmb8D+2iwXWPNqqJV
         s8Pw5VTpALJhlFxQzLgwQcJDRAqhv9HOBrGdzZ3ZJk1o4uOmePCh/wsodeY5TwC26whr
         RsMqLm0agWmMd9IHYJYa5CnNsARIpKb5gVES5j6zH2igI/B7ZEBClGgNgsCH8uKdLfXV
         60uA==
X-Gm-Message-State: AOJu0Yy/occHEELT2hxrmCZAjkdw5oigGPT/8kQnofZJxr4JH+cMUNje
	tXz7xqtnw8ruZ2XYGQ7QCdgCD6c6yaoshdXOac6o1xa0jYTpOpU6CFcGMkU4
X-Gm-Gg: ASbGncsEwNAscdDwxUI3330kEFZ9VvIv+dYYj+REooNdym5qZ9lKCjZq0KwkiDGgm6w
	eCGvdkiRVVzsfYRhd4/yy9xgBoa0gHyZqlfgXd/3kyPmL1YepDe/FXgCI041iH13euW3fQYEV7f
	c6X82UzC+F5vZnpPLGtuDI7MVezoM/sVobLitcyxISfFr1VBKOoO8Os6Vo+k+3pvYWGX44sbswv
	nYHacMF3Ip1bc7nlLZkLoN8nneBNhdn1jgI56kavCC+a5CkZTXdgcjxPTbPATTp8/x/a1DAMf8Y
	5rOerAv0x+mpDuwoqpwvzMA0fWFJ85uvU5gG0klGa56K6ZBCd04/DjTco29L0oXU+wo=
X-Google-Smtp-Source: AGHT+IGcHQjY4lMTToZlFga8LzTLHuxOb70DPFzrhpRPwcXrcozrFBtt3ylhQpRktU0EvudzUxT/MQ==
X-Received: by 2002:a05:6512:110d:b0:545:5a5:b69d with SMTP id 2adb3069b0e04-54b10ec9177mr4200809e87.31.1743572485936;
        Tue, 01 Apr 2025 22:41:25 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb0cbsm1540143e87.44.2025.04.01.22.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 22:41:23 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  2 Apr 2025 08:41:08 +0300
Message-Id: <20250402054109.20688-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_224129_020023_AAE89F85 
X-CRM114-Status: UNSURE (   9.79  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] regulator: core: Implement regulator_is_enabled() call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/regulator/core.c | 14 ++++++++++++++
 include/regulator.h      |  6 ++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 2c3b009ea6..be98f4a279 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -610,6 +610,20 @@ int regulator_disable(struct regulator *r)
 	return regulator_disable_rdev(r->rdev);
 }
 
+int regulator_is_enabled(struct regulator *r)
+{
+	if (!r)
+		return 0;
+
+	if (r->rdev->always_on)
+		return 1;
+
+	if (r->rdev->desc->ops->is_enabled)
+		return r->rdev->desc->ops->is_enabled(r->rdev);
+
+	return r->rdev->enable_count;
+}
+
 int regulator_set_voltage(struct regulator *r, int min_uV, int max_uV)
 {
 	if (!r)
diff --git a/include/regulator.h b/include/regulator.h
index 9785b8ac07..cb542b05c6 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -217,6 +217,7 @@ void regulator_put(struct regulator *r);
 struct regulator *regulator_get_name(const char *name);
 int regulator_enable(struct regulator *);
 int regulator_disable(struct regulator *);
+int regulator_is_enabled(struct regulator *);
 int regulator_is_enabled_regmap(struct regulator_dev *);
 int regulator_enable_regmap(struct regulator_dev *);
 int regulator_disable_regmap(struct regulator_dev *);
@@ -285,6 +286,11 @@ static inline int regulator_disable(struct regulator *r)
 	return 0;
 }
 
+static inline int regulator_is_enabled(struct regulator *r)
+{
+	return 1;
+}
+
 static inline int regulator_set_voltage(struct regulator *regulator,
 					int min_uV, int max_uV)
 {
-- 
2.39.1



