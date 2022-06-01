Delivery-date: Wed, 01 Jun 2022 08:04:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwHSv-00Gt4S-Lf
	for lore@lore.pengutronix.de; Wed, 01 Jun 2022 08:04:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwHSt-0005Ii-Kl
	for lore@pengutronix.de; Wed, 01 Jun 2022 08:04:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TjfrLzSpZyBH9FRIoCVwUScoG/P7zMVqb9TWxixDGsI=; b=4YDrW2H6URlLlS
	qFtkj6qTbneZSNQSXLtyQ/X0kPeEgfYOxVfltRelLPPTKHnScbU75wN6caIDYkA50FCApq3t4U//N
	S7plJP4cCLBXBpgYf7uLhgBaz4/QV0NwL3W2x74rE7QBDjCJiM7XZcX9PWKoV3EnXPOXBI2AfJZK6
	TQH4ZoiFT4yqjKzYFuTcWE/s96ec6TY8jVvSjekhwtQZ3HAWF143T7HJFhNydgxjZgFD1PMifQcif
	rXeNGD2QU7Z6Qx8Nyxn+J86E7oxp5NhDMSVd9jTPXnFu2M3Joktwj/CgQ7KGw5W7a8GIEJ5yrP1t6
	qxHGLHDQ6KDCgxF487+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHRW-00E2VB-6V; Wed, 01 Jun 2022 06:02:54 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHRJ-00E2Rs-I7
	for barebox@lists.infradead.org; Wed, 01 Jun 2022 06:02:42 +0000
Received: by mail-lf1-x12f.google.com with SMTP id a2so1022771lfc.2
        for <barebox@lists.infradead.org>; Tue, 31 May 2022 23:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0MRrzionL6GMFty2oF/Iyzb7UaZ8FpmrHj9x7Np5uuw=;
        b=mgYSwO1gKPQj8CZUC1lHbZ/X7MI53jRvmg97aiLTWe98bFQBy408vmzUmDf0QZZXA2
         GiBfaabZ8vDKWO4Qn12snGK487aCNvB6tWc/5uPhhGfGVukrvZ4RKPAWdLQOvd12mzZh
         ScJbVvM/SfQIA9OshGHc7C7uw6u6S2Nbpc/dbkpJn9Pur1CKHU2ed00qHFj1nkC5a/tf
         evGRdDYW8LFTp2DssfBZt/KrZmpc4k7DfbPe666BIhMx5KycsMjJSRA3B9S7d1RS8KNX
         gW+DETRKD2VAgklTmCQJbGqJRjwPZ5PVYiiDrH+JnCKknoCIwlRvgHmSSOBvtstiXq3L
         oBaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0MRrzionL6GMFty2oF/Iyzb7UaZ8FpmrHj9x7Np5uuw=;
        b=t6ze5XPzNbDW0fXHsKW+Z15Q57hpMgbEH0LvlDnDg1kBffLPTFDqpSrC6QBUe2v/RI
         OV0WURRC6vd1xeEMZSG1FW+p9ABcv2WrjtN7FIOnbkAhzvi+xHKXfOqM6X8qbAn4LHQl
         PrhT1+yCOOxbtrwCh243TYFNxRGk676GS8W402GVQTw1oR4kSg8na71odLpoMMUUVFyN
         u6OXQxNezC5A+E/nv8TtUjozDSEgSX2zlOZwUzKQNCfmsKQik33yZZIOXaNwuus09Vt7
         nZ9RgWaFkWOHLrus1Omin4UD9fxM08mFtxG7lLIrPRR3wDQ9QBom0Ix73nU2TtFlOGoU
         txxQ==
X-Gm-Message-State: AOAM5336SbybetiikbxTl81pHHBWM2EGLa4vcmQ4KjtCm+wloIfaudb1
	ODJdUcFGjzhh68yrNBd/Tl1BZVjIOvQ=
X-Google-Smtp-Source: ABdhPJwNep3Gw3PLdAlfllPs06ZJj6CAVjYEARc9j1tqp+kIlOYUc0ioj5I+ze+33oH/xd6U4vK0ww==
X-Received: by 2002:a05:6512:3d18:b0:478:ff6e:78d7 with SMTP id d24-20020a0565123d1800b00478ff6e78d7mr2098575lfv.541.1654063358684;
        Tue, 31 May 2022 23:02:38 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 4-20020a2e1644000000b0025552d57beasm129691ljw.89.2022.05.31.23.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 23:02:38 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  1 Jun 2022 09:02:26 +0300
Message-Id: <20220601060226.3756-6-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220601060226.3756-1-eagle.alexander923@gmail.com>
References: <20220601060226.3756-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_230241_637306_845A4A03 
X-CRM114-Status: GOOD (  10.36  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] of: Fix of_prepend_machine_compatible() defined but unused warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 include/of.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/of.h b/include/of.h
index 3a8e32f69c..46b96277d5 100644
--- a/include/of.h
+++ b/include/of.h
@@ -835,7 +835,7 @@ static inline int of_autoenable_i2c_by_component(char *path)
 	return -ENODEV;
 }
 
-static int of_prepend_machine_compatible(struct device_node *root,
+static inline int of_prepend_machine_compatible(struct device_node *root,
 					 const char *compat)
 {
 	return -ENODEV;
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

