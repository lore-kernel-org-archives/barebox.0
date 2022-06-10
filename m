Delivery-date: Fri, 10 Jun 2022 10:58:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzaTA-009qOU-Qi
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 10:58:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzaT9-000538-3x
	for lore@pengutronix.de; Fri, 10 Jun 2022 10:58:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOeyZdb36ZzNaaZSjsE5zfvErTmwWJ4ED/FFO8wuwFw=; b=xieZSxu4AnPf3d
	Hj2brT800w6osnVEvdFplW0jsO1o2DvEZXE0k69EjWQwoIMa+5iiq8C/EKNrKA4mOTihdwgk++myb
	IQbExaxZrQVR1BuqPxjj4hhrOOS5yDoIBJyHgnvftlJmNXcgUsPQoy94YqHWpTZ/P3WtqLLBbtVOV
	PyM1eQ1eWEWCz3YtieRxPSpYyTcKMo+f5ElIYaBzs/OfzU8QgiOPNu4GBUc64pyGHxctDU2PHSE8F
	exjnHxhN1z6C+JODvvWGampVaspXKLaTuQfSDtn2U7E/YORvLt1kUzxBfC71VBEoB1HEaBTj2h/2d
	3hhgCDwxEK59THLqRJ1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzaRm-006xVK-DI; Fri, 10 Jun 2022 08:56:50 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzaRh-006xTy-Sg
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 08:56:47 +0000
Received: by mail-lf1-x12c.google.com with SMTP id t25so41760083lfg.7
        for <barebox@lists.infradead.org>; Fri, 10 Jun 2022 01:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hupuD9M7wGLrFEOcQNleoj8YYSARLZ236rMrZcTfSaY=;
        b=SXljiLL1YVXJWS6GNw/kFzBZfN1f58WNLY4s8f2xeXuFQ7blOdsAUtucs29uVimagt
         QYnVgu1dMf6uKAO3XL5voyn7EtIoGIeqy0JmeBlG2BIo2XqtehCj4ThGPftpEYpXxMPb
         a8Yn6V3uWF+Wdi+waopKFXGHKKDC2bn7ZlcwPIMywQZ4k05BYTbb73chsNg1R8oGAX97
         sYaapL53jwpNZJfjLyJTmNuVXE5g4cdFxVwXFqQTOLK46yFGTQc3Y37VkKlXn5jFrVXE
         ibUqb5YEzLTL23QcD1yNoYtFJ41STs4C3j1EtS+mkOKMYfvY2CKw+P0vYrRZNbwKBAl7
         V6Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hupuD9M7wGLrFEOcQNleoj8YYSARLZ236rMrZcTfSaY=;
        b=UMPzWATp8XW0QeIKnsodzdzbvc9okNC7S7UpFV5UZkFP7x5RckcUcYRBWETGCpjTPY
         +4NCepODssry2urNNBsCsu4/wnBL3ozwwkwM1mQxDDzsczlz140UMWCY0JSScehUGAuD
         wMxwdqjXs0dLRuXLmCeYfWFkZQ3kzWWLpRncwltITyf9NjeSqcJ3Eo9gEBNSmE7ePCWq
         4J4qAK/Rl1pw1v72kczAltfTAB44fw8sbWMHhyHg2srNMvX4+VMDf4BTbMUfkLGAGzY+
         kGjU8zqXxdpgduRVklLnYS34vJbBQQu/8h3fJRg6DCRe+iICKx6Pt/nMF/ACQiRNjmne
         vvPg==
X-Gm-Message-State: AOAM5335VUQNxcfmStejkXPdLr9TaJjqJgx6si1AM3X9oFTo0XAe6a/3
	DJXJzpE6ZuAEqZ/Q3UeVZK1s6o218zc=
X-Google-Smtp-Source: ABdhPJxyp1O4p4GIuuudZNMEGLzkgxsjAqReyOYO49n9H0pXZb09WBeSI4NUDcEUi/cjxzcPniSFCQ==
X-Received: by 2002:a05:6512:3d22:b0:479:4ac2:14e9 with SMTP id d34-20020a0565123d2200b004794ac214e9mr14210626lfv.38.1654851403001;
        Fri, 10 Jun 2022 01:56:43 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id q9-20020ac25109000000b00479395286ffsm2484410lfb.107.2022.06.10.01.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 01:56:42 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 11:56:32 +0300
Message-Id: <20220610085633.21606-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220610085633.21606-1-eagle.alexander923@gmail.com>
References: <20220610085633.21606-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_015645_968747_145FD62F 
X-CRM114-Status: GOOD (  13.03  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC 2/2] clocksource: arm_global_timer: Convert driver to use clocksource context field
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clocksource/arm_global_timer.c | 27 +++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/clocksource/arm_global_timer.c b/drivers/clocksource/arm_global_timer.c
index 6e2fae9ba4..3e9b90059a 100644
--- a/drivers/clocksource/arm_global_timer.c
+++ b/drivers/clocksource/arm_global_timer.c
@@ -27,8 +27,6 @@
 #define GT_CONTROL	0x08
 #define GT_CONTROL_TIMER_ENABLE		BIT(0)  /* this bit is NOT banked */
 
-static void __iomem *gt_base;
-
 /*
  * To get the value from the Global Timer Counter register proceed as follows:
  * 1. Read the upper 32-bit timer counter register
@@ -39,6 +37,7 @@ static void __iomem *gt_base;
  */
 static uint64_t arm_global_clocksource_read(void *ctx)
 {
+	void __iomem *gt_base = ctx;
 	uint64_t counter;
 	uint32_t lower;
 	uint32_t upper, old_upper;
@@ -56,11 +55,25 @@ static uint64_t arm_global_clocksource_read(void *ctx)
 	return counter;
 }
 
+static int arm_global_timer_init(struct clocksource *cs)
+{
+	void __iomem *gt_base = cs->ctx;
+
+	writel(0, gt_base + GT_CONTROL);
+	writel(0, gt_base + GT_COUNTER0);
+	writel(0, gt_base + GT_COUNTER1);
+	/* enables timer on all the cores */
+	writel(GT_CONTROL_TIMER_ENABLE, gt_base + GT_CONTROL);
+
+	return 0;
+}
+
 static struct clocksource cs = {
 	.read	= arm_global_clocksource_read,
 	.mask	= CLOCKSOURCE_MASK(64),
 	.shift	= 0,
 	.priority = 70,
+	.init	= arm_global_timer_init,
 };
 
 static int arm_global_timer_probe(struct device_d *dev)
@@ -86,17 +99,9 @@ static int arm_global_timer_probe(struct device_d *dev)
 		return ret;
 	}
 
-	gt_base = IOMEM(iores->start);
-
 	cs.mult = clocksource_hz2mult(clk_get_rate(clk), cs.shift);
 
-	writel(0, gt_base + GT_CONTROL);
-	writel(0, gt_base + GT_COUNTER0);
-	writel(0, gt_base + GT_COUNTER1);
-	/* enables timer on all the cores */
-	writel(GT_CONTROL_TIMER_ENABLE, gt_base + GT_CONTROL);
-
-	return init_clock(&cs, NULL);
+	return init_clock(&cs, IOMEM(iores->start));
 }
 
 static struct of_device_id arm_global_timer_dt_ids[] = {
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

