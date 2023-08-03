Delivery-date: Thu, 03 Aug 2023 11:49:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRUxs-004sCE-Os
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 11:49:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRUxr-0008S0-4z
	for lore@pengutronix.de; Thu, 03 Aug 2023 11:49:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=60qXUMVIUIrd8gFRnWyoyBkXGxcLpCDLXNrmJGif4GE=; b=TzaeTzH1MLPQaoosOfq4ftNUsI
	FKWDysfXxHPVIoVrd4Y7C7a3Om5v42NKlUxiPl9yz73Ecxj8xK9IL6n+Du4YOsqskg8Cve4eBGH2R
	8B20wuMsc872CDvLsv3trrQwQpUFWU51PrdNLRCZBGdSqDnMBLutsAfTQ0El3vXsLsYshHaHw5WOo
	i0qchbQWrEClX6pKB23NswicPjQuKmJJ99573CaREpw91hcUTsoo+phwvU8rzU2uKyCQMPRoZdtA3
	Izn9B+XJNQeiDHfZ7UlkxQdaAT4dt+fCD9kZmoDj2zcpqHYOnFEdrUgC/i/IugzvkdKc/MZk0A58y
	zhpTX09Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRUwb-007Flu-1Z;
	Thu, 03 Aug 2023 09:48:33 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRUwX-007Fkv-2W
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 09:48:30 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4fe2de785e7so1350829e87.1
        for <barebox@lists.infradead.org>; Thu, 03 Aug 2023 02:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691056105; x=1691660905;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=60qXUMVIUIrd8gFRnWyoyBkXGxcLpCDLXNrmJGif4GE=;
        b=TYHnK/jG9Y3brgfIOxq/bieiKQ7P44cLPdH46YMaDqP0820GnykJQUc/QhjwSJ1lcv
         jIVImN1DKFq1gZM0BOu+jMz8sCqQOCFvmeq3TCI4cO6f6B992n+pJAHrtMyw/ypxvdR9
         0hLcrEINPgrYGt5tejbmpiDyzAXp5k9PZEIChCMg/UHPq2lRBk92WnYyN4PO0S/LI8js
         Z3rdGTSQaOYSCc2/+/bfXOIDdkxb+PTcJCh+wCpxzgWBKWmGnjXWsHVaq24KYJNwYFt0
         GQQlZsy4tTYcCIq6Q2zQPHJ9qk3EER5bOqxPiWxrER1j5EKp6x2Jc8JJz4pu5YNMM9A2
         nIeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691056105; x=1691660905;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=60qXUMVIUIrd8gFRnWyoyBkXGxcLpCDLXNrmJGif4GE=;
        b=TTBpZEvaEVuRT4w8/rhHTDbCPHeYI6srHGMejUoMc3DgVRu9QfVQIhNceCVwgTxvzP
         7XJAqO/JLLnkBrbI6+8dCo9qT93FFpPfXTJjZVuaUp9SnR5b+SMNYnPqrE6S/ZcpYxGJ
         dajBRvhEdpLPf3VR63Hsfe/Eo3qT0VFjIgRCmSoiTl9EHnLMAcUj71RM7tYrzuI7WM/K
         aCkLVkPTIZ1urSv8B8NkbrL5+2w3H0WXLHRSBmIAegrrysYv3nu6mw0ypXrwlb7ZcrSd
         h33iPZyPB7UpCSN+JFZH5DYkfcLbj2RBUVW9aZKEZZRfHoIVd07cWqqZ/62t2SKGAMAh
         edLw==
X-Gm-Message-State: ABy/qLaPhuC7sk054lKEorWUa2zdlmm9uxAdHAZGLakGnJjF+wBheYug
	XQhCK+D4pR9SisYcgxjnqOayq5vAa7fytQ==
X-Google-Smtp-Source: APBJJlGt1v3qlbxs7VG63wM7qGfkGDdDBf+ulcSTgadZSJ2uHmQXFo6QTlFFBFCk3Gf6DDZm4CzY1A==
X-Received: by 2002:a19:ca0b:0:b0:4f6:2b25:194e with SMTP id a11-20020a19ca0b000000b004f62b25194emr5407154lfg.58.1691056105001;
        Thu, 03 Aug 2023 02:48:25 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id a16-20020a19f810000000b004fe1d8f058asm2927140lff.113.2023.08.03.02.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 02:48:24 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  3 Aug 2023 12:48:14 +0300
Message-Id: <20230803094814.43327-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_024829_845397_5CE74FEE 
X-CRM114-Status: UNSURE (   9.88  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] include/gpiod.h: Fixed path in error string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 include/gpiod.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/gpiod.h b/include/gpiod.h
index 23b88c9031..a23b82221f 100644
--- a/include/gpiod.h
+++ b/include/gpiod.h
@@ -2,6 +2,6 @@
 #ifndef __GPIOD_H_
 #define __GPIOD_H_
 
-#error "API changed from numbers to descriptors. #include <linux/gpiod/consumer.h>"
+#error "API changed from numbers to descriptors. #include <linux/gpio/consumer.h>"
 
 #endif
-- 
2.39.1



