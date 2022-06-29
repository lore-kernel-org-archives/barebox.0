Delivery-date: Wed, 29 Jun 2022 08:32:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RFG-000w5c-7f
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:32:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RFI-0005v6-2L
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:32:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xF2ZbdtRgoaAB5tUIRirrHPWsRkyA/fhXJ68Gnwccpo=; b=08258sT0E3KPnBqsxW03gI4qUp
	0wBWBjqx3sAxzVNn0fkctkL9sT+3ZcvlARjhHGuErdtxvFG3p3xXN3NyQ03nFiyIlYNWKzgn/rCVk
	P5sYOFokpywMfmZXcjsUqyyiew3TYgr8a2FLjrfmDHBiTKTfUsEjswckv3NNh9tjb9pH7c8AOk4sF
	aVmZvG+YZEGDfqNaCpRyW61pWySedkhe4Xd82zazASQybkxBUEEY1KDLcR8Y+JNdfZIBIC9zCrKFY
	6R6NFBtn2XRK7gXnmVMKC3aQsj4ejVPAgQlvb7g71xHaiUlJAbdIzH3aLluiCJnwRMPQiVrCzD9Hl
	iBaxtvkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RDm-009mZi-1l; Wed, 29 Jun 2022 06:30:42 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RDc-009mWW-OC
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:30:34 +0000
Received: by mail-lf1-x12d.google.com with SMTP id a13so26231440lfr.10
        for <barebox@lists.infradead.org>; Tue, 28 Jun 2022 23:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xF2ZbdtRgoaAB5tUIRirrHPWsRkyA/fhXJ68Gnwccpo=;
        b=dagxbuQCRJKlFHuGPHBvPV2s/fYAQyfgT4RhlC8pQ45cHYtowUByGeNqowRoF8BZ2M
         WYY+YE1LnHX6Op935GDD5XfcRMjrYP6v3r6LE7d+ij0yG44bGKMZPPJwpLBF/zPSjtwQ
         PA+bdz5iGkIohFv6xI6immIGe4kYxYixBS77o0T9RswyGN1rDMjlPpmUztL1cHEkJ3Gv
         lb0+PSLqgE+uNY10aE7GzF72eIV7JOmSFj6hjxcKI1Fz+D/3N1OdkomyQ25PNUTQIeoR
         Lf3lmuuJtTFk3TtpRkn3gLFoG99r5J1WsgC1+fbX4ByCCjYDCmvby2wLezhZV4k5A5ZO
         uRhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xF2ZbdtRgoaAB5tUIRirrHPWsRkyA/fhXJ68Gnwccpo=;
        b=1m1q7km/bTyDKW42+QBsrEuficYP4bX4qibgvZ4FUzfxyetJaHzih1+yYQuK9AWx2d
         ID3GnT2G+SVgYbO49ybz3fDJ75nprlWdZWCLNi9ZqOpvWSNYMe9Rkn224fCGGZzXYTSp
         ZXoGy5Re219vI+3yJdO95MCH2H81Q9TxeDZwqSa3UYq0jdNPM3UCfRboeUTjAAA76Pcv
         jPCIu2uZ+eHjOjeB3FtgOl7HK9rPxdeloNsf12L+Wbg/DFyodx+7DelCKj0pQbS7sfEc
         YkEbeIS+yWnngqhYx6JhL0dObfk4HvD7yJYSedVmw4RMcGkObg6JNACnlgYBCVFWLcMj
         y2ow==
X-Gm-Message-State: AJIora/iJupDV+96XokBQzY1zyTjUjz751TpxEOrdksROlxqB4/2zd8y
	S7a/a9tq601ilwYgLNO9ZGiBqpfRH98=
X-Google-Smtp-Source: AGRyM1u79vwK00agAdYeJy0OWM5MHM3OeT97d/F0uWPq7U7k9fj80iRB8mRtNQOPUgydaCRpucXd6Q==
X-Received: by 2002:a05:6512:2a8d:b0:47f:b3ba:4922 with SMTP id dt13-20020a0565122a8d00b0047fb3ba4922mr1131013lfb.38.1656484228687;
        Tue, 28 Jun 2022 23:30:28 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id r25-20020a2e9959000000b0025a70f7ea3asm2019078ljj.138.2022.06.28.23.30.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 23:30:28 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 29 Jun 2022 09:30:20 +0300
Message-Id: <20220629063024.3945-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220629063024.3945-1-eagle.alexander923@gmail.com>
References: <20220629063024.3945-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_233032_826717_323D7DBE 
X-CRM114-Status: GOOD (  10.89  )
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
Subject: [PATCH 2/6] drivers: rtc: abracon: Remove redundant variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/rtc/rtc-abracon.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/rtc/rtc-abracon.c b/drivers/rtc/rtc-abracon.c
index 6144fc0aa9..585b95c4a7 100644
--- a/drivers/rtc/rtc-abracon.c
+++ b/drivers/rtc/rtc-abracon.c
@@ -84,7 +84,6 @@ static int abracon_probe(struct device_d *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct abracon *abracon;
-	int ret;
 
 	abracon = xzalloc(sizeof(*abracon));
 
@@ -93,9 +92,7 @@ static int abracon_probe(struct device_d *dev)
 	abracon->rtc.ops = &ds13xx_rtc_ops;
 	abracon->rtc.dev = dev;
 
-	ret = rtc_register(&abracon->rtc);
-
-	return ret;
+	return rtc_register(&abracon->rtc);
 };
 
 static struct platform_device_id abracon_id[] = {
-- 
2.32.0



