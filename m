Delivery-date: Tue, 16 Sep 2025 06:02:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMtq-003YYj-2X
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:02:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMtp-00009P-GP
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:02:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hiGpOwuJ1owhSHf82WdYAJtsixw8nr2GwZ4mn2LD7dk=; b=hg8VxxXWtXdCSEWTcNV1Bv4WiA
	+JPGhoJufmeE9L5+CehX3EHeS6ctIyf1I4wreKT7w8i41/Hvi11SOmpupfNZJ7QzzG5OUlSnQOzju
	6+3QIjdDQIth13Ho/W2TusQf4wT64TX0P+Ikn4E/MlWNiWlDDJZeeL5qSQvR/Oy4rQd2SzVgrzmQ/
	YLSBMTwKTQV7bRSpvCIAJFVUx5BqORZJloeHEXroj19U1E0gbZrGVHRV8cuVzaPQO0tcSn5xMvAqJ
	8+/9JwB3Qphdid48p3pWWRMALSJd6fIaf9AamswoDXD3IRKE7HshNRq9aXvL+RGabq9TL8MQR1Aph
	FfsmiNRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtK-00000006eOx-2I5n;
	Tue, 16 Sep 2025 04:02:06 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtI-00000006eOS-0r4j
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:02:05 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3ebc706eb7bso725411f8f.3
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757995322; x=1758600122; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hiGpOwuJ1owhSHf82WdYAJtsixw8nr2GwZ4mn2LD7dk=;
        b=Ftjg9+0WE5Z74ZGV/sprpRxfPbTE5IgU3vQzJNGXuhDO8hBcoyYK+HBJ6Mnh9DfTSA
         /DLk+SHLYU/LI9jW43/X+dqIo4V0QyatVLH48DFRrgubzWbXyWBKMPftyOpkM9/ub98O
         vejn5PGEh7THTZPw7VJfW2ob8N3bZF9B0MDJb9LFp1XZlCdqZdZiPXYURvAFYKBGkwtK
         Ka8Qy3X/aGF6y0G4KRh2vP4N4bPJ0I/7lvnlT1QMTFs3PCRI0Pxu9sBeOoa3CVB65dsi
         mg8CJzHe5l2L44qCc7LIUfU54vO8CD5f0lZX4pAcj8m+A2XDOZT2KO5Unlx0Sm4jRWPY
         bh+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757995322; x=1758600122;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hiGpOwuJ1owhSHf82WdYAJtsixw8nr2GwZ4mn2LD7dk=;
        b=Efw9U/85/ugBfah3jFWtOqH9Y/NVHKi5aYwKmEuF/W2Sg7uAh5S42vFZhpJw28SYcY
         rJ1YS1HCsLab9BqGlInawmMQhQGEp50JBCGpNFPB176rwPhsCduILejJqEusUjIeHUoO
         3G4C018tkcYSgurGTddr+rRCeyUpi24uQALNEJT4h5FVt7V96xD5JL4Qfhcq/XnUaAQ8
         LwWstO5oa65108OKsOX1gJKHxS3a+XbUbFPDZJYXcMslZbQZIpsCWm0inAtUMS0aryol
         KkqV6lUzttxYe1MXwVHeFcL/EEDFqDs2/zZS2f7th6FCWkSlMohJsIyiZaqdbb8ZCMAu
         wGNA==
X-Gm-Message-State: AOJu0YzkVbsQGZ1Vh0W8txWGPhew1Dr4rQ/O7oxcOsw2pRJ7LUEQdHLh
	O8GcXaZg9RGQkT02xHfcgX7iAamY/aJR/lvWJibNJ628Xp1zRnYP9jv+
X-Gm-Gg: ASbGnctsL3vx0sPk+zfQbZW6FVLX+h+Vxsadt3pGJtj5vSBU0fKhzUFM/N+JkLrENAN
	DrEw7nrWSjp4mLqcAdrzwYisLEZmxGkEWYVDDdyrqGHlrwACH2yUEesrmHO38J5x6ZH5bWIZbON
	29oGmnrqKlmzKOLd9tnjenbTZGhbSjiM+xop5RopkKK6v9/XqEy2lRIBqauvO6OzG+PUWgdCDB1
	V3AW8knUZ8usZkQCXZ7AiY7ZEXZkhBxoOOYPVhlFnl/CuF3fevKijVd37jrAVXY3wS2OqFBVyud
	ooXI5EcOZI6RM8L9DsYpkxpBDoxD/a5leqqRpoBjrl+SkMuERD9r7WhiHJ+BdnkBmOi474G4jXW
	go39OlaPV0VcR6MTb9ZNNNsl6C2axzA08DzxZJGR9ExHUXP2hyKmSKlaFuFXaCEHrWFJBdHu7hH
	5ELsL5JkRvnJtxUvLkH4JibZahAL+gLW29
X-Google-Smtp-Source: AGHT+IEEXuFudT/wyO0QaDTcHpzW94tjSsEs4crunM9VcUaEvZCYmmnUMhR7TzM96Woeyej5Gn33ug==
X-Received: by 2002:a05:6000:2509:b0:3d9:70cc:6dd0 with SMTP id ffacd0b85a97d-3e765a05342mr12977292f8f.33.1757995322323;
        Mon, 15 Sep 2025 21:02:02 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm13594706f8f.23.2025.09.15.21.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:02:01 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:01:45 -0400
Message-Id: <20250916040155.814159-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_210204_242701_52A9C8D4 
X-CRM114-Status: UNSURE (   9.12  )
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
Subject: [PATCH v3 01/11] ARM: cpu: allow selecting CPU_V7/CPU_V8 directly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

We currently lack a way to build a barebox EFI payload on ARM without
enabling some other subarchitecture. As CONFIG_EFI_PAYLOAD has a global
effect and adds EFI stubs to all enabled board, an EFI subarchitecture
doesn't fit into our current model.

Instead, let's make it possible to enable either CONFIG_CPU_V8 or
CONFIG_CPU_V7 directly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20250904081626.93182-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/cpu/Kconfig | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index e61bcadc8c35..fe0d1e470578 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -79,12 +79,15 @@ config CPU_V6
 
 # ARMv7
 config CPU_V7
-	bool
+	bool "Generic ARMv7 support"
+	depends on 32BIT
 	select CPU_32v7
 
 # ARMv8
 config CPU_V8
-	bool
+	bool "Generic ARMv8 support"
+	default y
+	depends on 64BIT
 	select CPU_64v8
 	select ARM_EXCEPTIONS
 	select GENERIC_FIND_NEXT_BIT
-- 
2.34.1



