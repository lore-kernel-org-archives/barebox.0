Delivery-date: Wed, 04 May 2022 11:41:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBVl-001WA3-4b
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:41:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBVi-0001jq-UX
	for lore@pengutronix.de; Wed, 04 May 2022 11:41:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyDDs9l9j7DHFnL8s3PZbMIs89Q/v1czixpmxpC8D/0=; b=GlEZgLFo+JaxSN
	fL0gO5csaGa1oGrjUSqQUZdz0A9cXEZEyaSrJMu8Wc5aWZI4FS2VP6v1T8sdCUioVpUGtIXygQ4hs
	ZJEqfuFKQbVBEpJl0HU9l10LG4dAX9euB4ANSy/cWD/G2aYOoNlJLA2uxPymL7LrYEBt4d+GrkQYg
	l0nsejCJoUB012rTXvCDU4/BnLc8MdxGfjgBB8bvnL+6Rmn14U9InsIYxwagh0hRtHi0UujGqA02A
	CXuEAk+e/gPCrsZmoRkCgUk1S5SaOeNOHAZyIZDreZxUPDeBSnw7QBuLJtvXterd/XPf1wIgB4J7b
	N//4Qb0ikEW7/9Tjopzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBUF-009xyC-LK; Wed, 04 May 2022 09:40:00 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBHh-009qSe-Pm
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:03 +0000
Received: by mail-lj1-x234.google.com with SMTP id c15so913166ljr.9
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aFyw+xCPhzhPlRsgMzNOLMoF13OG+r6UJYOxtzRGBeU=;
 b=dsGJIOUz312ruNftjv84dk6x50p2z3o9vO+FGf4rpGMBXRSQ6KivNA4EtRU658iaXu
 IsWnA3WCAIn+P5AhvccGCyKgD6O+VxXJqrojBpfrvodXh7aFl5daNspRme0H+wE05SkA
 4AlEhOnqqF2/UbEgTQuvyQkHAAOBG2qu/LyQ+0WidWyHymmcE/188ytFmWBu7Xxo+Aj8
 RN+IuSYGrLNSw3pNSt8yi27UoLo2wfjnb3DrBqdK9t5u52VX7HnqfYKdqRzsVGjzo5uK
 u2FYUFFwoYmVpBcGURaptuVaNplYubgZ1Tua8fyaSEWkXbW/NryCgX6a/HE83/13w06x
 Mofw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aFyw+xCPhzhPlRsgMzNOLMoF13OG+r6UJYOxtzRGBeU=;
 b=GsMPf1ASwuhHNmOqRsubwl6Aiq0QPj2Wp2qbb3UKJRJH5ewVe2iZ7qMHGDOvJj8OGF
 VMx2oC051s71FE77ANFJ1oWTqIX5YGyHU2b/yRbhVqdfkoTohDVuMW3KJs6UUff76Zrz
 r8uX1hOpYLlbhZeBYdkci3Ye4cQtoi0K9f11VdqanQ1wF5MiclXA2gvymge/QSrGkYjZ
 xIvSijpHHCmMXBtFNgUdbbYLDltnwlpe1CAwZObIdEX0qYClaARfpvt2rMsssmLu+Eva
 2HuhStTWJknIEW+cYEGoLZRZeJVAbG7Yk8Oihkc8QIQ7DvJEWDD4og2BfKM0l+fGj7hW
 6saQ==
X-Gm-Message-State: AOAM532DoBwVZyFii13OWtkZhN6mKMNviNvyL1cV6HEL7pO2AH7vdN1H
 f0DPpYxJPjHQm8d70OkPJbF5ZXklP228eQkf
X-Google-Smtp-Source: ABdhPJyjtnoxUQiBLVuwVI8jfCsq6aGkg4vK4OHqtVuOn0+ANr4Foae36FgJHhdOeTIfVlxYr6w04g==
X-Received: by 2002:a2e:9345:0:b0:24b:451:7ce1 with SMTP id
 m5-20020a2e9345000000b0024b04517ce1mr12014659ljh.258.1651656418478; 
 Wed, 04 May 2022 02:26:58 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:26:57 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:40 +0300
Message-Id: <20220504092553.27961-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022701_871230_CCF987DD 
X-CRM114-Status: GOOD (  10.58  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/16] ata: ahci: fix missing whitespace in ahci_add_host()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index c64c856f94..5aab81fcef 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -596,7 +596,7 @@ int ahci_add_host(struct ahci_device *ahci)
 	 */
 	ret = wait_on_timeout(SECOND, (ahci_ioread(ahci, HOST_CTL) & HOST_RESET) == 0);
 	if (ret) {
-		ahci_debug(ahci,"controller reset failed (0x%x)\n", tmp);
+		ahci_debug(ahci, "controller reset failed (0x%x)\n", tmp);
 		return -ENODEV;
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

