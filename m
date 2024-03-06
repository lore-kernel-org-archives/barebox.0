Delivery-date: Wed, 06 Mar 2024 06:53:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhkDm-00Abc7-0v
	for lore@lore.pengutronix.de;
	Wed, 06 Mar 2024 06:53:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhkDl-0002xx-Og
	for lore@pengutronix.de; Wed, 06 Mar 2024 06:53:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9jNL1n9InnDpUCvKp8KbivT/cITWM6205s/9RZtKPJw=; b=g6fkh3NDSB9gXc
	+YFi+7K8ATZBwUHctQtXWtQ/NaAUgKuMtEKHpcGZG0NIxytnBIJVAMqlPNvd40i662OytfqT7U3O0
	zrXfpGU/PCmfANXPmIuklGO4+GHDu4hFOz/CzWJZHes+PeFI7fH9BVibEGnnbZD2zetQIlZdmpzrQ
	hWc95br6cBN1y9qkC8S41HDnTTzLaK0O5OyGhY2lElPCia18jrzeuaqErIghcOdT9AhvN0jlM4Dth
	mwFZANPNh7B2MxM0b+tTK97NuuJXTGG+G3WcZtz/0bciRnIaj1scPLjFs1EKEefhnBbKFiDaSdKVa
	gleV+PjcCUKxWcNdGUvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhkD4-0000000GSZ1-1RX3;
	Wed, 06 Mar 2024 05:52:58 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhkD0-0000000GSYS-3UhQ
	for barebox@lists.infradead.org;
	Wed, 06 Mar 2024 05:52:56 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2d26227d508so5790101fa.2
        for <barebox@lists.infradead.org>; Tue, 05 Mar 2024 21:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709704372; x=1710309172; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9jNL1n9InnDpUCvKp8KbivT/cITWM6205s/9RZtKPJw=;
        b=hVYzD7TSEwaM/KZkEiknSRPy1ANrjRl8xf7/tKtoZXKSASVo0z+qXVJhcwEmJTddA6
         JfbvVlA4vpFL90EEhNe1TX33LgDSv4XzLufU+R0Hhv9/lifOrH0LyDMw4bCFna1OpKsH
         r+8pRpU5XP7/jUfMekfIyn3hNMeDfaYBz62RjDKEYNF58Ogqin9nmY99fRGb9EoMmH37
         rOalNFqEvV1WHxeIzkxK7IwU2mNynt2sa2jNdik6ntOLlLP+qCu8d7USCYUpgA11Ztw/
         iFlbDF0COioEB1EuB7HuMW3magf8hTs7qh8Soc/fS4i2FUK6FHKGyHadt090ckmWpBrB
         AJ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709704372; x=1710309172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9jNL1n9InnDpUCvKp8KbivT/cITWM6205s/9RZtKPJw=;
        b=xMbFzXTGrm7H7dUFanuLphKhW30diUw6H1G46C1Ys8J7vmnXGD+F+kFDABvWelG5sV
         lMrvjjErStj1V89rhXb0cTu4PpxxUkEw18vHChyWj+stgMc5srXqQYcHJNt0mrqj9bOw
         WKZhdIA549KX6oG4Z+drks5QOKERVnpnpfjnBoXOngh4pH+etEceeqZCxHzu66EB72Yf
         ODOHGUwikeM7fgTT62IaSenYv9e1pb4J2SL8boN0mTzS3Kpab+cuT18k86DjF1abCWDM
         GQwkbfikNYWC4jpAP1NlHJJQ+a7kWEBRvnIAsiuC5oosBIYML+BHEB45Pp2QDre2zveE
         TSug==
X-Gm-Message-State: AOJu0YwTVuV2kdmdUfWzOfooKcXx6lJvvHOQR/IDJkwd2+bGUeO1aGwl
	Ahi2zQdZd5QIAx9BdyKF6+P8o3Bc3tf6dxIZX93lWAdGsyUaEKKX+dtfc29t
X-Google-Smtp-Source: AGHT+IEmmEudSaXRDymfUDtg20wQ9mj9s9+RjEfFTYZsAVhr+cZgRniBW2NuRVCpRWsCpK/7nFPvKw==
X-Received: by 2002:a05:6512:6d3:b0:512:d6b6:dc44 with SMTP id u19-20020a05651206d300b00512d6b6dc44mr3318489lff.66.1709704371316;
        Tue, 05 Mar 2024 21:52:51 -0800 (PST)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id w23-20020a19c517000000b00513583a9598sm384594lfe.40.2024.03.05.21.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Mar 2024 21:52:50 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  6 Mar 2024 08:53:26 +0300
Message-Id: <20240306055326.593436-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_215254_896048_E12203E6 
X-CRM114-Status: UNSURE (   6.54  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] gitignore: ignore *.dtbo and *.dtbo.*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .gitignore | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/.gitignore b/.gitignore
index f0afd899e1a..5e1b0c2b68f 100644
--- a/.gitignore
+++ b/.gitignore
@@ -38,6 +38,8 @@ binary.0
 Module.symvers
 *.dtb
 *.dtb.*
+*.dtbo
+*.dtbo.*
 
 #
 # Top-level generic files
-- 
2.39.0



