Delivery-date: Tue, 07 Feb 2023 02:07:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPCSd-00GWHq-04
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 02:07:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPCSZ-0007Iz-Vr
	for lore@pengutronix.de; Tue, 07 Feb 2023 02:07:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D5tuEGu9pCwHaJ5BXsZ7+PNchigD9t7uXvqVXaI6BOM=; b=jqhtnAhr9GskJSIAuhOu5OFqy0
	OUJftgNW59GfahJpqohLz/G75nTkUM8D6DcK7Hf2A6VqIyPIiUV6eeUAhSfRbkbBGQEKbc0uhM7qA
	5ryRRMzgzF7gm41sY71WwYvEBn03bNgRtmZjMBdPMmKJvHBMB487yxAcvfNVeG/wwDPxz2xCFbdzg
	z5AuT3jgbGzkhMw5zC0Tr+DwieIeVz0PKvDqklWvYT+LMUMmLm8nPnvdhlIUa6lSok4cW0m7/RNgs
	9jX0mgNcXQdiZco3eTrADDdioBz73BmZzcDLIhas4PkamyRVaOPV206gkmr/eJ5j594lGmOMlkPyn
	oVg+jn8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPCRR-00AKOW-9Q; Tue, 07 Feb 2023 01:06:37 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPCRF-00AKJV-6m
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 01:06:27 +0000
Received: by mail-ej1-x635.google.com with SMTP id m2so39301583ejb.8
        for <barebox@lists.infradead.org>; Mon, 06 Feb 2023 17:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D5tuEGu9pCwHaJ5BXsZ7+PNchigD9t7uXvqVXaI6BOM=;
        b=IF5IYNI9z5W6UHZy8Cz/t0Hdup/VbLTtg5gg0KCrVPl/f9faxMu6WfJjja0e7RYWSr
         NHj9o/oiT+Mu7SzgPVZcHvBKEIjqgwnnVnPnCuCgcLJi95XxwqD8UMaqodBo8q7OobOl
         9dsUCmqr0g18yEFH6LKRvLJo6J+6407nMOGW47qNSplK7Mw5AOnu1Y1/NoUmGwr/SWmd
         75XbTV+iETH+wimniJcWMFvdPP07KCYgAmJU8tkeETEwTCszN12Vam0qpmxHdoCShV8C
         LdvPpCJgKaaIg6rFiu3kAaGJRGC4bDh9or5J/hMoVeSg1p0qlgZQxUSskNkMp/19BCze
         e6zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D5tuEGu9pCwHaJ5BXsZ7+PNchigD9t7uXvqVXaI6BOM=;
        b=aSHSZgvTz5gQDpSako4LjibTnt3VhvwxwPO6fn8xFvJDqrss1/mYJJmXz76ZY+Odv5
         HPViivz8FU+EEzEFCWk6PVuLNMooLPtC0j4JECJ0+qNeKamP1ONPm/c4bT45b1wVztc/
         PgzGhfHSijxHPAJkRmGFzcwJVD7Qd6y6hUU5bJFpXKfmiJG7ZoREjv7y4K34sxUj0rtZ
         JQjfxs+9yfe/QSsQOgwzau74ldvRRaL66N9LHLAGiBbrXtr27VY1wX45rZ8KKx2Yt5w7
         sT8eYXKmiSWBcbb9osMiT59sEwYJm3TcHghv7ni84+KF4fn4MKYem/oyjm8PMAlCsCLd
         YEUw==
X-Gm-Message-State: AO0yUKXYtnW583MMNnMakYaCdPQ5proWfaBoZEB26qqXdw/9z8LtGmdW
	df34K0HcRCrO+eMaJUN6fJhT18rXNew=
X-Google-Smtp-Source: AK7set+kLOq8bnGlwP5y5+F61cUcl3COIDClrxXIpNVL1pRr/GbrY/LFXB0hngujo+uhXjIv3wjSBA==
X-Received: by 2002:a17:907:3e95:b0:885:a62c:5a5c with SMTP id hs21-20020a1709073e9500b00885a62c5a5cmr1734455ejc.46.1675731983778;
        Mon, 06 Feb 2023 17:06:23 -0800 (PST)
Received: from localhost.localdomain (ip-78-45-34-87.bb.vodafone.cz. [78.45.34.87])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906391200b0088a9e083318sm6078754eje.168.2023.02.06.17.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 17:06:23 -0800 (PST)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Tue,  7 Feb 2023 02:05:25 +0100
Message-Id: <20230207010525.2693-6-danek.brat@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207010525.2693-1-danek.brat@gmail.com>
References: <20230207010525.2693-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_170625_275911_1AA8928C 
X-CRM114-Status: UNSURE (   8.52  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] ARM: rpi: enable reset source detection in defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Raspberry pi platform code added reset cause readout several patches
back, so enable it in the rpi defconfigs.

Signed-off-by: Daniel Brát <danek.brat@gmail.com>
---
 arch/arm/configs/rpi_defconfig     | 1 +
 arch/arm/configs/rpi_v8a_defconfig | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index 6019584d48..26968ad0a3 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -24,6 +24,7 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
 CONFIG_MACHINE_ID=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8a_defconfig
index 1ea86c5893..f826b96535 100644
--- a/arch/arm/configs/rpi_v8a_defconfig
+++ b/arch/arm/configs/rpi_v8a_defconfig
@@ -23,6 +23,7 @@ CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
 CONFIG_MACHINE_ID=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
-- 
2.34.1



