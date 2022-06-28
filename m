Delivery-date: Tue, 28 Jun 2022 08:21:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o64bV-00HVtR-3q
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 08:21:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o64bX-0001eO-Cc
	for lore@pengutronix.de; Tue, 28 Jun 2022 08:21:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eVpJ2Mb+xlbWCYr+ndjks0xZgMJ8RfFJIKym4S9jVEY=; b=ePAIaicAFm+7dnWeEUegkfYDi6
	zA/+7PUU8OJ3WXhoSHpkZm6/gDIspoFH+r5SVDGAx28IqyoXrtpcSBMor6xUQbFCjHR6FmpNl2iga
	Sz72BxVWtV7NCgQewVUCjS1lm2HYrgpArKR27St+P2d/PsBkSIvorIvdj4tTFY7+KM+/OHfKtfuZp
	isGtBFW6J5ni3OUBvM31ZRMl+j+nHhXI7vuVrmk0JIfDVT64g0zQ/+RHorrtwfsV3lbTPIJE1i16m
	oq8raV7N0uy8m1x/mNJ5lZ6VaIEw308qjgmx1Me21aPe6jvust6VAbA3UOVXfmmF2WQxL8MbLNf2b
	n37Dn7sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o64Zt-004ffs-He; Tue, 28 Jun 2022 06:20:01 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o64Zm-004fdC-Q2
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 06:19:56 +0000
Received: by mail-lf1-x12b.google.com with SMTP id f39so20501462lfv.3
        for <barebox@lists.infradead.org>; Mon, 27 Jun 2022 23:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eVpJ2Mb+xlbWCYr+ndjks0xZgMJ8RfFJIKym4S9jVEY=;
        b=PUSG03g8h5MyG7Eow1rzTWxAAF0W+JW4CxVEsk+zFF4kKEEaV5B7MtMKIbDOBdA0mj
         l/ht6CpGw3Qli1ruhIcyhYQd3k0eB/+jEXbNHNEJYQVqJ03l+UAC1DcSCpQ6nmQXNFv2
         INoeH8cVDN7H4O0cpubiGICt2G4uK6H2CGE19faatxxs4/0XHUY8AXbwTpVs2pFeiG4B
         BorAEtZHfg9PNrfDTsJ8kVTbuosu1LsQ62bBIMkbDeG/a8br/GhqTuhn1Jb/BSg9PYwL
         m96/2pk6YVKGFi7qV6uMXemUri/OstHzORa7IBFPiuUJYbLTbdm8yhCIPMGwcAbyXJmm
         bPpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eVpJ2Mb+xlbWCYr+ndjks0xZgMJ8RfFJIKym4S9jVEY=;
        b=Av/U8ObejIlbyKSjczQwX9DkaYUSNHa03AjVBk5oFUJcueENUKPekLUJk4DIF4/UtR
         QdBftZ9D8H9iPii0CoLzffcqpt9yZRGYzST0+ai6ooxB6txpth7dCC257HNQXImjhBOs
         C+/LdWKUNc0/dqjWDkEkPc7yGfEfpP8kHzJEox6bZXSsKlea8x7Ujbl5KJCsh1IftRNm
         u7BKmoo58ow877oyu8gVchkBDSLkmm1zLqEw6rkK8QMe+ymse3wvouoim0lwVtx6IGEm
         NXGLqsawq+PCK/6tnpP4JrI1M2zGgz8DcOKuxwvGMMuYG4l4UoKMlGuqjaKe8pYz7r5/
         pLhQ==
X-Gm-Message-State: AJIora8i6N7ylQMzwshrfKnDgDvPN8DgMVqMwn0n9L+dLy6lZvgIZR9F
	TsK6hMyfCrGGgEVwNFysmpDGmk684gs=
X-Google-Smtp-Source: AGRyM1vAD354m492CPM0m6hAPYEXzV3YnKKtrdiE2NFDgaNatIzGtqMQS+XY2YX0Qq4+r1kXWbl+hQ==
X-Received: by 2002:a05:6512:1698:b0:47f:b5a6:6870 with SMTP id bu24-20020a056512169800b0047fb5a66870mr10562944lfb.578.1656397187525;
        Mon, 27 Jun 2022 23:19:47 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id b14-20020a056512070e00b00480a75d54a3sm1739014lfs.72.2022.06.27.23.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 23:19:46 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 28 Jun 2022 09:19:39 +0300
Message-Id: <20220628061941.24199-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_231954_884377_B4301350 
X-CRM114-Status: UNSURE (   8.54  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: imx: src: Use postcore_platform_driver() macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-imx/src.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/src.c b/arch/arm/mach-imx/src.c
index 8272d5b720..8366397e10 100644
--- a/arch/arm/mach-imx/src.c
+++ b/arch/arm/mach-imx/src.c
@@ -43,9 +43,4 @@ static struct driver_d imx_src_reset_driver = {
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
2.32.0



