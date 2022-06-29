Delivery-date: Wed, 29 Jun 2022 08:32:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RFG-000w5p-S7
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:32:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RFI-0005vP-PU
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:32:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2IYu8rEOVP6jziEu4leoNLDeyoKyhxzgGqGQqFoE2W4=; b=ohiZTFd3/H1NbHA5+EMvqT+Y8o
	96NijN3RwEvKJnb/jA/2PQZZ6fHdyHUyMgrul+x5xBwAT1SlllAMPBfM2GEVTHh1uAXbPWqgw3AqH
	cI0vQAQwrCT2vSQMzcwsgrQepDtq3GpoNmxNN/fzaXhLXX9tC6SMQJMUNHPlF7ijWntR04vpg+Hrr
	Cmz5rq1CAHmUmppdBftaEL5iWKFChEJrEeateFzeCeZeuFTZSkhhnaONPoTusG2Cp5e62AUQ2ehVw
	u0K2XF7sRSArvOXVXdhpSl0q+TWpec3Jus6ddQQ7q4mT+FFUqjAV0TmzdoD5cbc8es1+0xix29aoF
	CPYa8LBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RDj-009mZL-EY; Wed, 29 Jun 2022 06:30:39 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RDc-009mWd-Cs
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:30:33 +0000
Received: by mail-lf1-x12e.google.com with SMTP id t25so26224713lfg.7
        for <barebox@lists.infradead.org>; Tue, 28 Jun 2022 23:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2IYu8rEOVP6jziEu4leoNLDeyoKyhxzgGqGQqFoE2W4=;
        b=oN5D0s9QPi4cEhfaa8dbrkkdJE5jeIwJSd4iqwjSb4uUPgeUCwA3BjoRFARiudur4e
         ds27Krs+h6MfAyMtQLuM9VhAJ7zBh/poM9t3J0TgLbHMPn9Rx+I4UO7KtGUJK3b1wofh
         HtclbQxsKzZfyGju5x3QxB6c0RX0bwpHJDK5B8F7sZ4ogJPs1R1k1jhqgoVFwaqtvYJ6
         TfiTfcVmJCmT2P5oc2QX3oH+YHO9QKO9mFflwbveGtSmdi1k5CSq2zwNlIDrXasOT+uA
         FKkKsQWEZrUtMWyyLIjW7kU5O2/uJ7fYnkLizxXzQImM2VMkZtKMntwHS3EKS7DbDkKU
         Cmcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2IYu8rEOVP6jziEu4leoNLDeyoKyhxzgGqGQqFoE2W4=;
        b=rbOD1m4m0qnQZtbTY1kSEcSltF447BLAZIIzErO38kZ5pw0edgXTaxU/A05JllIg/6
         UMtq5gQxJqrKxQM/BI1ie/5M/m6XJBuu5LeyGXye3p+VgHU41OcrqyXkB55n8cTrXzIT
         ClF5q/XKvejWNO5Pn6eocrWD2WWq3JHHBXMjOcAGsE+J/sK9REu19urP1Y992/pOUU6O
         GR9PjZlO5JHDOG+iYL97X/mRqVokvue9Nb+lrS7Gu4anIjK2t8hO9KaR2pBjDsZI7z9g
         W188TWChmAw4tYnQaF4QSCzcWCoQcUpNpLPpa95j8sgx3gFa5wj8/luAyMpfAqJbXmqk
         b9Jg==
X-Gm-Message-State: AJIora94BovDL+lsgn97IaoP4sEXOnwsMqdr7ZZnWRjnEoEIP8CkUDNS
	hgJN32zdnKQZsNjpE4X5txtacxY5UD0=
X-Google-Smtp-Source: AGRyM1v52zapFAnaVgmEz0u07pGtz0pctEjDZZmHdICxvQLVZETH0pE631m8f/QkUMQyMM0l+PF5ug==
X-Received: by 2002:a05:6512:4c3:b0:47f:6f6e:a7e7 with SMTP id w3-20020a05651204c300b0047f6f6ea7e7mr1080585lfq.674.1656484229545;
        Tue, 28 Jun 2022 23:30:29 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id r25-20020a2e9959000000b0025a70f7ea3asm2019078ljj.138.2022.06.28.23.30.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 23:30:28 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 29 Jun 2022 09:30:21 +0300
Message-Id: <20220629063024.3945-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220629063024.3945-1-eagle.alexander923@gmail.com>
References: <20220629063024.3945-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_233032_468256_84E5FDE4 
X-CRM114-Status: GOOD (  10.64  )
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
Subject: [PATCH 3/6] drivers: regulator: fixed: Fix error path in probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/regulator/fixed.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index f068fded62..ddcc1bcb97 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -78,10 +78,9 @@ static int regulator_fixed_probe(struct device_d *dev)
 	}
 
 	ret = of_regulator_register(&fix->rdev, dev->device_node);
-	if (ret)
-		return ret;
+	if (!ret)
+		return 0;
 
-	return 0;
 err:
 	free(fix);
 
-- 
2.32.0



