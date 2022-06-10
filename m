Delivery-date: Fri, 10 Jun 2022 07:42:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPm-009fKe-Mp
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 07:42:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPl-0007L9-4A
	for lore@pengutronix.de; Fri, 10 Jun 2022 07:42:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZb+jbnphJVbNaQWwTimtI4lxOfW21pp1pp2RrrH1fs=; b=tI8YZFUs/4OS3v
	rYOqjoRajMc550IbHW5k9PhI91qIzQv+asA95s9Qu6mjGxfkllLGGeniSse4mxKrgd9B2GN75MGNt
	kKRMHbavLpPq3WPq/BB+Wvdm+i5Ueyy7DX0VROCYSE3/Z12Kv8zfu+2JujQTBrYbFtYfwSoJldUgV
	zfYuX9uxuQTqlzlaOHqApfBAUH8PInOSf4y4OO61NprHy1/BrsNbNGzvHYTN/2iEgrodzxAkbXg9B
	+AUWpHjtA+rOeai27bjCJXVoo74A6sFHEv501js/karHAGO5fw64XXSdxyjivJWUdexyMx/lHVnos
	2vJLru3cv0op678Tq6bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOS-005zwV-BP; Fri, 10 Jun 2022 05:41:12 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOG-005zrS-6P
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 05:41:01 +0000
Received: by mail-lf1-x12a.google.com with SMTP id a15so41161346lfb.9
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 22:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=g9JDKqCLDZmD2pa6bau6xusajVRExSME7fmq11+z+XY=;
        b=HSZ5WONxzpfGdYlbxNr2I64dMolNh35vlnykzOB1EYxk6a95OI8Gyh/tXxlSL/c3+0
         NGSp1Gj7xV3Ul7xQy6KC0CSEAO7Dq59Pb0VKGvdlHhWNmctSFDRt0blPWZ+Rl6mfVVPT
         h4BbiH0WySkSUbbN5Bl1yHuZnHxkP9BcPbKrAbEAZHWV/XJcYnFs+HfJNBWSdWEeSQ2Z
         kTFACnt+Eim1yPtGfuKgXtwjylKdd3qdUH1k+m0yCTeK5xPnRU51y7KpzezwH9/b9jyc
         Hbo9cJ4xCU5iXvH4R1Hl7rtH4Jg0ArTOpdyej9KpVLvtRY7TS+b/CUXNu7YA7ZtAB70w
         ERHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g9JDKqCLDZmD2pa6bau6xusajVRExSME7fmq11+z+XY=;
        b=yWqUU/rQN5jkFW7Bt95A0omsbJRnSND2DBWBzMNeo4hXH/sK0+ShmjvSL2d/1sUn7x
         esbuXxM+PbyGSQ7Rr4o0qnlxhBkqz1beiYUFl/et6oWxlzLsUTcP6R0b+TCCJcbA6AW7
         spbtdxvAKC6ZM8CU7mQslcPVNmPwL44F0bBVW/ayN1++GeBT0Fzyem4M2LGIlDWpjWwi
         V8FB+jFtAsYdfjEMQQOoon6vO4+P9QEY7ReIGfejL03GpIduNNlD9fZRNy7Q+jvHbBcu
         +x61q0YhkyK7la+e4/wdJI5UbNfboUOIDRELo6hgOhQTKDe3+oPEkrddVHI9wUmz0MaF
         qfWg==
X-Gm-Message-State: AOAM532AKhsKzg2ILkDK2OHX/xoSzu20JUufQWscXX0XvzzBIF5KlFj+
	kBNgkr42C8s0+3i+hhGWeWHM4/PiPf0=
X-Google-Smtp-Source: ABdhPJwgrXUKF7RDBInM9hLKmYoz3jFrpzdG5u6+qhgkKiC8nGJlv1y//IaMBw7wx5jTDunmX6TFXA==
X-Received: by 2002:a05:6512:acb:b0:479:50a4:67b0 with SMTP id n11-20020a0565120acb00b0047950a467b0mr13604534lfu.332.1654839658548;
        Thu, 09 Jun 2022 22:40:58 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id v21-20020a2e87d5000000b0024f3d1dae84sm4009770ljj.12.2022.06.09.22.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 22:40:57 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 08:40:47 +0300
Message-Id: <20220610054051.4911-6-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220610054051.4911-1-eagle.alexander923@gmail.com>
References: <20220610054051.4911-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_224100_275098_366D171F 
X-CRM114-Status: GOOD (  10.31  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] ARM: versatile: Add missing "noreturn" attribute to restart function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-versatile/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 9a2a9cad80..9a81b5b6f3 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -173,7 +173,7 @@ void versatile_register_uart(unsigned id)
 	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
 }
 
-static void versatile_reset_soc(struct restart_handler *rst)
+static void __noreturn versatile_reset_soc(struct restart_handler *rst)
 {
 	u32 val;
 
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

