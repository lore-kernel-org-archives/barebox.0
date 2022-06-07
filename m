Delivery-date: Tue, 07 Jun 2022 12:16:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyWGE-006Ffq-9e
	for lore@lore.pengutronix.de; Tue, 07 Jun 2022 12:16:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyWGC-000880-VI
	for lore@pengutronix.de; Tue, 07 Jun 2022 12:16:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74w9srrFEmQpY4OWi/ok5zqkcNLDHlnCD9p+i4tBz+Y=; b=e0/9TUvd5FzElZ
	VpzgzUqAa8W5sZJENR4VSvo1x6ur/dfeO21v0WzRHTSSQQ9dexu6ISVixaeFrSE2QD+5XHt0m4AX3
	xxP+bwhDUsCEyaFVPIafNXF2f5J6Oq1oZch0YnDoDiPvQlWzSJ1No794L/Aba1xU2kmDvrOI1LHkJ
	y7nMfko3vnjOtdOgmufJDRTGIFRi5LBUQIfYvs9Q5NDPwH2pf4zsb9v1DY/T6iZEClDn24iCe/NOV
	ULX/VRLKNd1Ng/5hEAYpLzhzRaIX5jutZwieF37eA8zZtVP/5EU/X/1xP++hqidrQTqJlWChKRlln
	Hs1748zia318vqH6BKxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyWEl-006Z2t-TM; Tue, 07 Jun 2022 10:15:00 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyW3t-006Upk-48
	for barebox@lists.infradead.org; Tue, 07 Jun 2022 10:03:46 +0000
Received: by mail-lj1-x233.google.com with SMTP id b12so7622040ljq.3
        for <barebox@lists.infradead.org>; Tue, 07 Jun 2022 03:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5yByHDV/RkeOnj/0HhM6wJnRHb9WuZhjTH5ftKn4yp0=;
        b=GYOeQkrsf+YVk9o9wlXgSqaHYYJl74CdvrrDzSIfyiywf5suyh1smiwD9siSTePns2
         FJ9EwGEMMR7/zYh8c8cs2Kbr/nOiC9Fy9lg/wHjz/1oIwid74nMu7s6YS284rKIzzaLw
         vTEvh9NnNtgYC2QH5ZK7l35iriPF1YPbkdbP8rL2B/WGawo7jEv672pOmfZXxeIg7JRE
         Kr2613vzCP9zzWB4cuEf53DqucKU+pP4aZyBBBm9eUFYgTjXZG1Dj41rNcLATXKZOABF
         WOdBtywbidz4WQ0Q8I+lam6oHmggQm666xHspMZJI9gfIDr1zEM/ycunXdCHUU8CDJqM
         azcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5yByHDV/RkeOnj/0HhM6wJnRHb9WuZhjTH5ftKn4yp0=;
        b=wxseB3ppl7nr/0kHUG4lVVsikl9gwYlJcKaBck690dTC8efwMjOfGxNpyZ+ibhOd1w
         xBftT+TIQhFncFjWdczRlQvV0iBgnm8Y6LzcMXMTqeZWBPY/yd85MrkOvXORnI8wwgH7
         dSn4wBNxlOjhqA/IeOjpSGHMUFLDSW7EmoElCgoTKp//u2lPUFldWDv7SAFOVR+iyHVD
         0y5MgmJAu63ht4oSoRKsUHwqlsEZhaBOGVbIhLvXvnm1tUdRcPzA+47CZ4BL4wcqKIEE
         iP7L7eg7sYG1jtIHzsWFP5HJ4N8maDOzN8ar/EPEMZ9VbM1ojelEhrLidPjxQ5yEGVrq
         ESFA==
X-Gm-Message-State: AOAM531lCWfp1/HppZVmzAi1GF15jxL8ntB7Wv/cYtnmgJw6aKRq2mBM
	4O/Eoj4WanCD0D07bMbYuKszpeAtWno=
X-Google-Smtp-Source: ABdhPJxSjNfZ1PVtuDKMJXMxACSWCGC+MMyYDJ8ieYIeKvcausiPJhUeqkP+p8TKugVDOf+Or8QYSg==
X-Received: by 2002:a05:651c:902:b0:253:db4b:8f34 with SMTP id e2-20020a05651c090200b00253db4b8f34mr50372304ljq.46.1654596222791;
        Tue, 07 Jun 2022 03:03:42 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id c20-20020a056512325400b004795ebe653esm363791lfr.258.2022.06.07.03.03.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 03:03:41 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue,  7 Jun 2022 13:03:37 +0300
Message-Id: <20220607100337.18277-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220607100337.18277-1-eagle.alexander923@gmail.com>
References: <20220607100337.18277-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_030345_226296_F932D84F 
X-CRM114-Status: GOOD (  10.01  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] serial: ns16550: Remove redundant driver data for generic ns16550 variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This data is already set in probe() if the driver data is NULL.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/serial/serial_ns16550.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index fb6af42e00..6ba87a2544 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -526,16 +526,12 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 		.data = &ns16450_drvdata,
 	}, {
 		.compatible = "ns16550a",
-		.data = &ns16550_drvdata,
 	}, {
 		.compatible = "snps,dw-apb-uart",
-		.data = &ns16550_drvdata,
 	}, {
 		.compatible = "marvell,armada-38x-uart",
-		.data = &ns16550_drvdata,
 	}, {
 		.compatible = "nvidia,tegra20-uart",
-		.data = &ns16550_drvdata,
 	},
 #if IS_ENABLED(CONFIG_ARCH_OMAP)
 	{
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

