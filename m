Delivery-date: Thu, 04 May 2023 07:47:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puRof-004Ckm-6R
	for lore@lore.pengutronix.de; Thu, 04 May 2023 07:47:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puRod-0005Jq-F9
	for lore@pengutronix.de; Thu, 04 May 2023 07:47:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dCGl/ZwA6s08fO2av0kCA17Z+fYOdglUmIdaoGqZLmc=; b=SVEf0exnROMAjDsH7VuiY77nFt
	QF0qD7QmQbTkpvqfVa2jivDjHvpfHnOQAV1ZFYowm1Bm1hwuzrMmSWeB6LKZLO2UkF3Sr+My4jGfE
	W1hDe9OdD87uAxwcA9d8m+6iy8ITahH7afccByB+b6n/Yu3xV+Lc503MOBVmGPwHx3Yr7ZEBhhw+W
	SMvpe1gyxn3mhA37sS8H72Gj/ZsFpnsff0V9GRYDQEyRs9tcZgK5bVQPfuBmwlQ/lE085C5NYoSLJ
	BrlrGSG1UUUQc+jXD/Or1ZQwvhlM/c53aZ66NVROM7nBI1ilvTbZ0BMkltqeh8u1+Y90A38m4xVcT
	37qxfmjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puRnV-006fza-0f;
	Thu, 04 May 2023 05:46:33 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puRnS-006fzB-0z
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 05:46:31 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2ac785015d6so949391fa.0
        for <barebox@lists.infradead.org>; Wed, 03 May 2023 22:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683179188; x=1685771188;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dCGl/ZwA6s08fO2av0kCA17Z+fYOdglUmIdaoGqZLmc=;
        b=pgeBWWJ9DnfeVE2qU2p6n5WKYyAZEWAkYMo2QIbpBt2qNDMSBJwk8PzHjy8JHsnplX
         /NuLoSZAa+ZFm0eBz48MjmsWA5KHinpyBnkhD99GLV1LtXyHelAE30en972w8ZPEu4nL
         USDPx0IT4E1h3M5/+Y5jRje882sD/3iny6kYrpPvGLhoUwGCAd3fDba2ZpqOYovdTR8l
         V1Z3dDGe6xUp6aPfZd+DW41TE7Y9KXcM6Bv6fHxOTyhifwyt2U4zayw5UbsiZMcORrBO
         qrYq3yDrf2m1wdLnieA5iJu5IFdXWFAm0veuezaf5hhBpJ38SEuHNBlwJKn5Dk/8DSvQ
         grYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683179188; x=1685771188;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dCGl/ZwA6s08fO2av0kCA17Z+fYOdglUmIdaoGqZLmc=;
        b=WYErsVAXTeWHlmzP8pSefE7Eq19gA3u1MC5Vru63oaSps2r7UP8lN/3otvSvj9HpZK
         j79qib+RtGkZjiotn1UfWbpRL2i8Kr5s/N4KYuIkScLsBbJGLTtZz3MH/+YlGp+ERwup
         tPsCJGzbWY3WBp1zg12GgtfW7p4I1CDqxsEJlSm9SDsg9oNQSM7OmawKsosHO7FHxA8i
         bQ5eTm7c9sRMLde4c6OlbpR5r7SSDXFMJun8i782Kp3LeNFFFJaxp9NJejFJxcVvycPW
         Yff8zkeAhVmLAdltcPLDDWOJlhNWniJhxspJG0E9Z1J8yBXo8WyjoWbSRRRz/NfIUUgF
         BE2g==
X-Gm-Message-State: AC+VfDwuQhxBD4u6YEee3/MHULFGwLw0kzCXWgWFMizm49AaA1JyLlUy
	AbjXUCvjqrJtBSq79iRra4ZoQ0sDPw8=
X-Google-Smtp-Source: ACHHUZ6Gi3Bz3xiYNSvQ8CU45Qqr/2cV+M0UDHwTaV6hgeX4Hbv5NhUpJClLS4oPbMDM5ygQ6sG+wg==
X-Received: by 2002:a2e:918c:0:b0:2a7:7690:8dec with SMTP id f12-20020a2e918c000000b002a776908decmr587089ljg.39.1683179187685;
        Wed, 03 May 2023 22:46:27 -0700 (PDT)
Received: from localhost.localdomain ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id n21-20020a2e86d5000000b002a77792f2c5sm6245540ljj.62.2023.05.03.22.46.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 22:46:27 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  4 May 2023 08:46:18 +0300
Message-Id: <20230504054618.5582-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_224630_341698_CF06CE1F 
X-CRM114-Status: UNSURE (   8.82  )
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
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: am335x-myirtech: Cosmetic: Remove empty extra line
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/dts/am335x-myirtech-myd.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/dts/am335x-myirtech-myd.dts b/arch/arm/dts/am335x-myirtech-myd.dts
index 54050816fc..5061f65d2a 100644
--- a/arch/arm/dts/am335x-myirtech-myd.dts
+++ b/arch/arm/dts/am335x-myirtech-myd.dts
@@ -19,7 +19,6 @@
 			device-path = &nand_environment;
 		};
 	};
-
 };
 
 &nand_parts {
-- 
2.39.1



