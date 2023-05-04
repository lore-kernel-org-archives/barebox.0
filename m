Delivery-date: Thu, 04 May 2023 07:41:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puRix-004CK0-18
	for lore@lore.pengutronix.de; Thu, 04 May 2023 07:41:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puRiv-0004pA-5d
	for lore@pengutronix.de; Thu, 04 May 2023 07:41:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ONSB5smZ4qifOluR0zwZ8cn9cJpaxbcddEYn48ciU3Y=; b=4TlBnTMzXgzmQv6FVwgO9GlBFq
	xwm07aFKNQcavRczZTMr5pmuLC6bRaT9H+vhVT4xq5jcHR8abG0lxv9M++eC55ZgsobInFfYoalyv
	4Fn03i7hzlgPaJ3KksNNbHg9SoxeXXomfQcCu5KJ61uSOfceLstQL2etqnUDN2QDH5YdRFEWSGvMU
	ts174rQ9IEtAdziw/NEwsaEO1cdcZRHbHarpnoBa8i9NypwhUxoIUnl5N4vL6gIew/2wSiTGtlwC/
	Rs61FyqN/21ZIZPvdKWFN1+rUvtSvRiHOaE7PmYVEoTXZYQxNhCLlIYenOLWVUolk6PsXl9PHX0eX
	Kz8YrJoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puRho-006fLt-06;
	Thu, 04 May 2023 05:40:40 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puRhl-006fL0-1Q
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 05:40:38 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2ac7f53ae44so788811fa.2
        for <barebox@lists.infradead.org>; Wed, 03 May 2023 22:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683178833; x=1685770833;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ONSB5smZ4qifOluR0zwZ8cn9cJpaxbcddEYn48ciU3Y=;
        b=pu5vvnA6m6xR+BT/oJhmM//gbmqipdYnydYVbHsIMpSCT0eV3o4xD8QRhai5wwKAqB
         tzd1P7D6n1p5D5nOSaVZt1PK1eYs6q+lUSh1HT7QsO4Y6UTZjNR3TbCfGwGl+rieGKie
         C5T9aWxezhRInqE2dF93zSAVjEdXTDc2aB1aTHtmOJIJWkRs74rlgXVIb0ACNX4L7YBi
         ik6gS2E5MulTmEUZFu35E1am3eSS3cTIECyHHCnR6ApjfsQNzNbhrCHiQfilz0mN2Zzx
         7mcf0bLHP7Flob1EE72zV9+8MjR3rDCta+NcGhvnTpwniFJlw+ibHteFIVOAPOUSw/8Z
         mWgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683178833; x=1685770833;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ONSB5smZ4qifOluR0zwZ8cn9cJpaxbcddEYn48ciU3Y=;
        b=Ze7Iwz/7+m0hByJIKTV8RuEMH6e6Aj2RsZ7eBZZ/ExFTNbQFiTzxyXUK4Mo/GcH6jS
         ckp5P+DgSycI3IPYIofzp+7a0q7m3pUN/53MIrt0QM1l9NrLb37em8DdsQVj5RZgarEp
         aBgw8zAl0J79SReurje7etIcI8CWQXIm1DWDF4dofm4JmrezE/ChLHA4UafQCi6QLOyz
         B5XMdLrEThtp66mMu1SqwBAzyt4jHLN2ISF34uCJ00tKG/k837R55dotvkugLFM4m9PV
         ltIJNTYm2pZY2CyN77LiksnHkRJi2FdyqEcyKxXqJlMnSV+wU74ugG0vrrEgfbX4iLJO
         ovNw==
X-Gm-Message-State: AC+VfDwVKV+s5ZPdNhKSs8Z8qv38BTr4XfwRrLt8gkcZliqeXGpOupLQ
	EKElaI1GECzS12liSng/jUYIaQc5aWo=
X-Google-Smtp-Source: ACHHUZ79aFKQRZZZBgt0HrwIPe+7nLSCy7mQp1oc7nGNt9v0Yg3Cj5z03+mlJjA+t7PpZngUlZcO1Q==
X-Received: by 2002:a2e:7d07:0:b0:2a7:6e94:751a with SMTP id y7-20020a2e7d07000000b002a76e94751amr580900ljc.50.1683178833115;
        Wed, 03 May 2023 22:40:33 -0700 (PDT)
Received: from localhost.localdomain ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id t6-20020a2e7806000000b002a7853b9339sm6419970ljc.119.2023.05.03.22.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 22:40:32 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  4 May 2023 08:40:22 +0300
Message-Id: <20230504054022.5174-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_224037_479028_451CF0E4 
X-CRM114-Status: UNSURE (   9.27  )
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
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: Use postcore_platform_driver() macro for imx src driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-imx/src.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/src.c b/arch/arm/mach-imx/src.c
index 4557e623a6..8cfc3878b0 100644
--- a/arch/arm/mach-imx/src.c
+++ b/arch/arm/mach-imx/src.c
@@ -43,9 +43,4 @@ static struct driver imx_src_reset_driver = {
 	.probe	= imx_src_reset_probe,
 	.of_compatible	= DRV_OF_COMPAT(imx_src_dt_ids),
 };
-
-static int imx_src_reset_init(void)
-{
-	return platform_driver_register(&imx_src_reset_driver);
-}
-postcore_initcall(imx_src_reset_init);
+postcore_platform_driver(imx_src_reset_driver);
-- 
2.39.1



