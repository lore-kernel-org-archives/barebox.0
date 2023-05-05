Delivery-date: Fri, 05 May 2023 08:14:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puoiH-005VhS-8p
	for lore@lore.pengutronix.de; Fri, 05 May 2023 08:14:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puoiF-0007xp-8X
	for lore@pengutronix.de; Fri, 05 May 2023 08:14:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uDWQv448/7RvxbnZYQykzggLS0fviqK86BQyxnj2XGc=; b=mn64mv3wKn1KEz34yS07fnc4Tu
	b4aJQLx/dfq/BWJdgpRBuNnO6i9rMDkm/iqY7kb7SKckx94mi3nAWQNY7dmCxhNdZoUj6SCHmqZSg
	WijOVT0THUif5LBZvf7QHy/Fk1D96XBWPOHtBqe0adRinAvt0/oxxaQi4eIS++etdFNgWKZe2DVxu
	UOQW3kCz3s6dQE9BrjrbZOKUKPRyIR6XZ7pRtnthxW6Yf8ZcCj9UX0N2LbLz4HQIy0Us9Z4sQSUcj
	Y+kapaHSwjBG8XQeqeWJkbDXgy/mK4YiEnVK9MWCDi62FNErYuGT5/UDPVmPTPJOaSxv2wMdq2OcF
	QTZnv6CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puogk-009oQj-0r;
	Fri, 05 May 2023 06:13:06 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puogg-009oPu-2f
	for barebox@lists.infradead.org;
	Fri, 05 May 2023 06:13:04 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4efe8991b8aso1598994e87.0
        for <barebox@lists.infradead.org>; Thu, 04 May 2023 23:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683267178; x=1685859178;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uDWQv448/7RvxbnZYQykzggLS0fviqK86BQyxnj2XGc=;
        b=MWIbkyWA5g8TRkoQpp/SXWMOhfPncq1IK2QXNf/N9V+J6C4v9Q8tnOO6yjzBkVlkqV
         PjvBDzRpv1FYl+twNYWL9CuM+HmgxGveirBzSDVVI/68pTFpKj7BgHs8mArHbpPWmFyI
         o8krGsYUvz+M+GLZ4qBkOtfBtwomaNwtYrufHbv2G13sPEX/7rELNji4v502tRH91S9o
         DkRa5Jk5IHzPlFIUXbaCSwygxJz/qIu1aJZ5jnyZfEJ+i6+gmh+1J9+QIJyUIL2TXcVL
         mcXI5k5Mpf22AGZa86VOv+bc7UEka3yj5OJOMnTsCgMr5sDocIfiqeWOG6olmrIZkuwU
         JbFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683267178; x=1685859178;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uDWQv448/7RvxbnZYQykzggLS0fviqK86BQyxnj2XGc=;
        b=UYJOpesgrYlF9tKcZPc9KC8fsBEmTYYgmMRYpPPyIWGZABN5tes380/KwfIMRIxXZ0
         JrxQk3mUO6raE+Y7z4fCyAdrojKDiF0TEpXHU28K+DHlOv43OOcvcENo6L+a33yGskkP
         W4qVHhsLS4DvU5vQUNwBDQtEIrYgTnPf483Vccfp/GZ5BHRrf6qs/i35inEmSlTnbQ9Y
         /PjP6ROfCBKv4pXxevbSMDoOVxH6PXBRE6u6rRLjjhcs/oBL7Uc4emkOMtnUq4f7Zdjt
         FU5zhPkLUpYRQ3JvVHoPAi93YhHlFfqLHMO7/jrz3hUHhaZSt4wXE/iSqfOapzRqf6hn
         5Lyg==
X-Gm-Message-State: AC+VfDwqhAYlmO3gD1rUEF/Rf6oQdV4rno+5yj6bIO+7Q78IHlPIkQIa
	tj6NeKCODW4EyhxU3hxUCOxJtvXTJUQ=
X-Google-Smtp-Source: ACHHUZ7mB+KpCVXwo3qSX9lCfOT0Sd9zfvUP4EURkzwo5n2sLGzx61c35ExzxP8/siENThG1rwLoAg==
X-Received: by 2002:a19:f812:0:b0:4ec:9df9:f11a with SMTP id a18-20020a19f812000000b004ec9df9f11amr225819lff.9.1683267177569;
        Thu, 04 May 2023 23:12:57 -0700 (PDT)
Received: from localhost.localdomain ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id o15-20020a056512050f00b004eedddd9de7sm162337lfb.77.2023.05.04.23.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 May 2023 23:12:57 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  5 May 2023 09:12:44 +0300
Message-Id: <20230505061245.463528-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_231302_863266_B7D4CA14 
X-CRM114-Status: UNSURE (   9.08  )
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
Subject: [PATCH] mfd: syscon: Remove unused helper syscon_base_lookup_by_pdevname
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Nobody uses the exported helper syscon_base_lookup_by_pdevname,
to lookup a syscon by device name. Let us remove it.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mfd/syscon.c | 15 ---------------
 include/mfd/syscon.h |  6 ------
 2 files changed, 21 deletions(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 5d1fed4aee..16d78de2af 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -142,21 +142,6 @@ static void __iomem *syscon_node_to_base(struct device_node *np)
 	return syscon->base;
 }
 
-void __iomem *syscon_base_lookup_by_pdevname(const char *s)
-{
-	struct syscon *syscon;
-	struct device *dev;
-
-	for_each_device(dev) {
-		if (!strcmp(dev_name(dev), s)) {
-			syscon = dev->priv;
-			return syscon->base;
-		}
-	}
-
-	return ERR_PTR(-ENODEV);
-}
-
 void __iomem *syscon_base_lookup_by_phandle(struct device_node *np,
 					    const char *property)
 {
diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
index b47aa1e160..3ccfd7fb5b 100644
--- a/include/mfd/syscon.h
+++ b/include/mfd/syscon.h
@@ -17,7 +17,6 @@
 #include <regmap.h>
 
 #ifdef CONFIG_MFD_SYSCON
-void __iomem *syscon_base_lookup_by_pdevname(const char *s);
 void __iomem *syscon_base_lookup_by_phandle
 	(struct device_node *np, const char *property);
 struct regmap *syscon_node_to_regmap(struct device_node *np);
@@ -27,11 +26,6 @@ extern struct regmap *syscon_regmap_lookup_by_phandle(
 					struct device_node *np,
 					const char *property);
 #else
-static inline void __iomem *syscon_base_lookup_by_pdevname(const char *s)
-{
-	return ERR_PTR(-ENOSYS);
-}
-
 static inline void __iomem *syscon_base_lookup_by_phandle
 	(struct device_node *np, const char *property)
 {
-- 
2.39.1



