Delivery-date: Wed, 04 Dec 2024 06:14:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIhiH-003mly-1M
	for lore@lore.pengutronix.de;
	Wed, 04 Dec 2024 06:14:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIhiH-000130-7S
	for lore@pengutronix.de; Wed, 04 Dec 2024 06:14:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=F9qN2qHtpotommPLBr+UnJeELWTNAQnTNWk6q5oWu2Y=; b=un8fpcH1z4GGVCqAaBhtecSSGK
	4uI3BGOkCDJBtqizU1yTeSVmVbc3BzZwrJRaPihpb+JvL32PlheNh6ru0y0loBbqLGR9jZuqyH5Td
	yD2LuQStKvN0nYmsDyKv29Frk10XbRoYqN5CnMnoqvw4/CosYGjSyTEuque6c4/xaZ9L8zbKuLoDX
	My9fwYMNKdx7bf9TI66ozswYU0ZgWWwT8JUqZZKGOcPq+jhsM3X2EaM9ABEqjlj0MHMExDwPLzRqv
	UW4UVTutWwBW7uWvaeaYQnSqYgK5Ss+Am3RT62viVhr6kXPEbh+3EwjK8s6IC3qh2xgaQdrTamZKI
	K7pjoyvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIhhf-0000000BVvy-1VOo;
	Wed, 04 Dec 2024 05:13:35 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIhhb-0000000BVv9-2uyN
	for barebox@lists.infradead.org;
	Wed, 04 Dec 2024 05:13:33 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-53de556ecdaso6464485e87.1
        for <barebox@lists.infradead.org>; Tue, 03 Dec 2024 21:13:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733289209; x=1733894009; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F9qN2qHtpotommPLBr+UnJeELWTNAQnTNWk6q5oWu2Y=;
        b=T2xSiDpAbGJaNeAMvuOviI58lzPysJLL13qg+su7Zzg7mznDkHSp7b87/MY3u6kfmQ
         JCaRZHIdVJJxJfM3h2gAesbf2oMEpXb63jSkUFxwsZphQKqIvdRAIPcAiDIzoEzeiFaP
         ljeXMVCIxTMm0nuMNlCEyVyZKSh8Dhv+i8K/N++IPrB9P2mLWmr13/IbCdZroT6cOCAC
         wujfpfAKitolh2iduAsU1DoNAc9UJ7SP1Cq6zA38T+8fLUwtK89yxIMlN0DqCQ3zdYLQ
         UyOXyzZ+8iXGA9zPOnE6wzVL1yBI/G0ISQPoSk/XZpY2GsZJXhIv3u1hXTTn5Uwi2+ZU
         5tTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733289209; x=1733894009;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F9qN2qHtpotommPLBr+UnJeELWTNAQnTNWk6q5oWu2Y=;
        b=GIig8KAgphIQU6aEidjoh+djrmmJ2Mh1oGUl4E/G5y8hKw1FB3ZSIhgchP8K6ZBkeq
         9FN0caOFdlDEoomPG81KvIfmRRKsRSn7fZcPxPglwq8Fo0v2X872+WR1OuEr7XfZkMsx
         T8y65djpsO68z1qTgIVoqO3BUg9XJOK97emhp6MT7JxdLwgMzeLY6iZSaFAztFF6sY5D
         LvxPhQoSRilD9EnFWRMtLZg+sNPqTY0LzQ/28+wwY9R/bMM9PvtwWsaFFlubQjRie8Id
         J/VoovpXSIBqXAHj8gk8A/E3AbEf1sOUOkuvE2ffcijGiy+hZ5I+40Cue8m2JCxm8+9o
         jN+A==
X-Gm-Message-State: AOJu0YxY3Ri8KiCBv5bo5Toyl7c8v66a8AvFIQdGhIeevpUej/6HBeCr
	INT7UdnAZxZgjIBkS8HYj1fF8H7NxiJBo6Fy24Vi4KuWBcM+deWwLJLcig==
X-Gm-Gg: ASbGnct0KN9UzUKNI4dlXnQTfn59YIE1bxFLpmsJHLkmHZkSLMfNIdD1KqwfXvGhUYB
	gWtXFQxeMsAbSm2MzccSrSaRmbDNH7dGdwI/VzI/GceMRHyWrPkfHim48maVT0OBJh0nveQst8z
	sdnb1gHfpbwrElCaK3ELtTZMwsVuvf9mC2hktRNsKPrvPzj/F7aHhKCQC2RA+fa/Vs0McuvAnTp
	MhQm+qiiKYQ1+Dh27kWu1jgDGCUIO73UMAT2hannMUsdldOefjbBeBMNq22jlDZEHpLZ4XcXNM=
X-Google-Smtp-Source: AGHT+IGsUj3/LZay9aCwDRdlgFJGMeSguV3ClEcSY4gnbwqvDf8ZdEnPwOZEmir3aoq4ciHG6QX88g==
X-Received: by 2002:a05:6512:224d:b0:53d:f82a:deb8 with SMTP id 2adb3069b0e04-53e129fdd73mr3165975e87.14.1733289208834;
        Tue, 03 Dec 2024 21:13:28 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df646f097sm2055276e87.161.2024.12.03.21.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 21:13:26 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  4 Dec 2024 08:13:12 +0300
Message-Id: <20241204051312.433022-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_211331_730489_C2A5E1C9 
X-CRM114-Status: UNSURE (   9.89  )
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
Subject: [PATCH] ARM: cpu: dtb: Drop unnecessary check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/cpu/dtb.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
index 9aa979ca08..e84d317661 100644
--- a/arch/arm/cpu/dtb.c
+++ b/arch/arm/cpu/dtb.c
@@ -18,14 +18,13 @@ static int of_arm_init(void)
 
 	/* See if we are provided a dtb in boarddata */
 	fdt = barebox_arm_boot_dtb();
-	if (fdt)
-		pr_debug("using boarddata provided DTB\n");
-
 	if (!fdt) {
 		pr_debug("No DTB found\n");
 		return 0;
 	}
 
+	pr_debug("using boarddata provided DTB\n");
+
 	return barebox_register_fdt(fdt);
 }
 core_initcall(of_arm_init);
-- 
2.38.2



