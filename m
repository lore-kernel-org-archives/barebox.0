Delivery-date: Mon, 27 Jun 2022 12:26:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxA-00GGNe-3Q
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:26:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxB-0001If-EZ
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:26:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N21GMHYlEHq8iShnNsFuYwk7BCt9XinlJiEhNYXer40=; b=jvwR9mF7iYV4laB7inOCQYNOm4
	o3e63udMOogZpl3QLzqQ08RkaJjeQwjqg+cWiiDX2mS9mLaZE/XK61rDGJoPiauH0qi1e3obbsJz/
	PnO2Y3Jq8w4OnqQNUkf1GdWyJflsZVtda88afELbzLL/C/dtagfdJaetMDCsE8pwzrbNricD1cFT+
	RWNNpKH6ZxvY4/Y+LfkEamezpCow2Q9nosSgrrDftQ6WafECMyAQOtCeAE8UM0YK96XoJwglaJhah
	VRjKZ0PB3y4rEc/92uLDM0koY3tXDYVCuPJyKVVRCyehft6f27jwbNqCByZyeNF3QRwBMHsEEMYxa
	asi/SLRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvi-0005e3-Bl; Mon, 27 Jun 2022 10:25:18 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvc-0005bD-PI
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:25:13 +0000
Received: by mail-lf1-x131.google.com with SMTP id t24so15806139lfr.4
        for <barebox@lists.infradead.org>; Mon, 27 Jun 2022 03:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N21GMHYlEHq8iShnNsFuYwk7BCt9XinlJiEhNYXer40=;
        b=EBP4aF8dp+MsKBr57O/SIxyz+LUsii+7HV9Z369+/aYGFobdq0BojFqRnbp9h3sT15
         zGpunfdnLPP4Oc80slYvsAwOJXvG1P+9dfd6ZvU0PnPd1AN3McjYY0A9vbuxucZlcb08
         29Yepsrkmay9M7IKLxg7EiK1uBLOD/uIwbZncl69Cz3sgojglRTSAq0rSR71ZseZfxj8
         L8My+uAeCiiEk2E5AbgKpsLA/cjoOj07oz7vEs4mQc03Ud0789jWCsYtZA0BKNl4PXx2
         aBpbnvxnCPgioeoRWNaR15TO2gcdTtJSkq/uYZHbxabVhHlcuhoIDb91RW8F7//Gqqz8
         K3PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N21GMHYlEHq8iShnNsFuYwk7BCt9XinlJiEhNYXer40=;
        b=DV7tzLNg1tF1JMJCNTfORm7W7Vqtx6HH52mfWh5yURwaICUCNYo43qrBKFcruuuWS5
         K3BW9VsYmpVyynIEJBLiUyzvgvzFn/cXGvWITlrGJmjYX2ksUnRyOzZH4CZGoDaUgUxg
         yBzWagV20yXfbi3ownYbpClfG/IX2sBrcAVIGcHxVIXu0OveeZpCLSUOl6Lc5gtx3ILC
         UIh+0oojKWGpjd4qzcYD/yC7qA/+EMUWcUU005uiFDClWpPG0J4o7AEPJekZMbHJSmT6
         xD3YNViby8s9I5AHf+hDRjKs+qm/ibvGWIWvtrrS9m80b05h1Epf7cAdlc+c8mxFPV1d
         GdOw==
X-Gm-Message-State: AJIora9D80gPR71h1A+I3P5o+Vwg5/swBww0PMXRoESAJXsNdF82PPuJ
	IxMSusLLGXIA5SGL/Jhwh1GLuTengsg=
X-Google-Smtp-Source: AGRyM1vBAXqp2Cv/cf4Y4LviVWfU8m4RW/GK/NkQAjyqsoX7SIJnhyVE0e1VkLdfwIE9osulkslqaQ==
X-Received: by 2002:a05:6512:2621:b0:47f:d228:bdeb with SMTP id bt33-20020a056512262100b0047fd228bdebmr7546556lfb.121.1656325510738;
        Mon, 27 Jun 2022 03:25:10 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f07000000b0047f5d390926sm1745622lfq.94.2022.06.27.03.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 03:25:10 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 27 Jun 2022 13:24:54 +0300
Message-Id: <20220627102500.18427-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220627102500.18427-1-eagle.alexander923@gmail.com>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_032512_858993_10C084F5 
X-CRM114-Status: UNSURE (   7.55  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] ARM: bcm2835: Drop uneeded headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-bcm283x/core.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
index f2528cf1f1..bcf2ecb204 100644
--- a/arch/arm/mach-bcm283x/core.c
+++ b/arch/arm/mach-bcm283x/core.c
@@ -17,19 +17,10 @@
  */
 
 #include <common.h>
-#include <init.h>
-
-#include <linux/clk.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-
 #include <io.h>
 #include <asm/armlinux.h>
 #include <linux/sizes.h>
-
-#include <mach/platform.h>
 #include <mach/core.h>
-#include <linux/amba/bus.h>
 
 void bcm2835_add_device_sdram(u32 size)
 {
-- 
2.32.0



