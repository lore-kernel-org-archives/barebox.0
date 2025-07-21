Delivery-date: Mon, 21 Jul 2025 07:07:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udiki-0027a4-28
	for lore@lore.pengutronix.de;
	Mon, 21 Jul 2025 07:07:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udikh-0007Mp-VI
	for lore@pengutronix.de; Mon, 21 Jul 2025 07:07:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+09zvi3I+djnR+YfwnWdAxdNqqOlEiRZsovb6U/IJgQ=; b=WRaja+6y4t+Ynm
	3J5/6h6SauNcPcxzEvzFgGYvZhMecJbAuV4R8tI3YNRSRk+8VYlwHiIdJmSZQJiprEtnhB7xDDuxp
	SvgGd+YMUUwjNqF+JQZBIR85tubSQ3VczVftQTw9YdzYj04ZQEgm3Jr6cfIFyYzdvz0ze2KfZHdOI
	b2vmxLJD+QoAfG09wneePozxkhTm5nhCtNRmCKMFAp88yxV4Ocw6KrN87kg2eLV/3r2e/9bvtljkf
	IiwEZvDTxDE/qO0pi6I8F0VuBoUMB1XBjPi71iRERXwBpLOhMqH8UXzvX76HNn+S1IEwSz/0WUomt
	FNiMkQQ62B9YwAmfJ8gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udik2-0000000GEEY-1kXC;
	Mon, 21 Jul 2025 05:07:10 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udijz-0000000GEDI-31aU
	for barebox@lists.infradead.org;
	Mon, 21 Jul 2025 05:07:08 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6077dea37easo6119972a12.3
        for <barebox@lists.infradead.org>; Sun, 20 Jul 2025 22:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753074426; x=1753679226; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+09zvi3I+djnR+YfwnWdAxdNqqOlEiRZsovb6U/IJgQ=;
        b=btXjvC1hlclwLqydroO9Qy/WEpJnpCFJ7NmxPpABMJ0DOTNQWVblZ5SvBM/oNxCW6F
         DT6/SSowy6hncHUHL78SdVhL3I1qDqIlBXMqCMtjsWsc6IVbhLD4vvAcl8eb+3oqc+4j
         mVpAeRFGCXQgDIhMfM095dfXg3R0Cab2n9HWhHmfpvgOqOReB2FsyaXqwhyXqFcNYKcq
         iAxIUD0CUbdoFSx24PhPYcIJk4pbEppiRPoaPoMHhw/xkhC2YybDwJeB/RPPs6KkQoqw
         QPXGHSFphNencfhq/4y8s2QeCZIG4vkhMgY6tuhwdp7f1OsPBQF5XMbW7qD4hQ5TjCP/
         5twg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753074426; x=1753679226;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+09zvi3I+djnR+YfwnWdAxdNqqOlEiRZsovb6U/IJgQ=;
        b=qPceC2OcIOwTyUyR8JjI7RT3lOzX0SmCmT3IURUZBn3SlBFLorp/f7968oE0FwP0J/
         6GeurXewtlaVMZtYZoPuz3UR/Bk79/P9X+1OB6rXbwzajRQet/e+/QHK4PAIB1aPoS4H
         6uY9isS3Pceprdj6xTpuFCqwmJRaDnG/Z1qd4vRImXlD7LSsqLPIIknjIWms0QWKINDP
         z6od+lJuHGZbF7TVasroQVkhFuJl80TJnAedZauczoKEsxqOkLgxuX1kKYmNy1voW4Ym
         MeWGki7ZimlI/rgqAeqMWgwZggR3/jdQ78BEitg30/BAvcn4z/7rt9VX3ayUiK2IKtgA
         lUrQ==
X-Gm-Message-State: AOJu0YxtcAPAEHGaShwCei52KdHNe5M7LKS9DGfgGEYTuYx3DR0DVv1i
	G8JYgAX3n0hojmaQobk2qID1YGsdfQ/QfEE4jBorK7p3iHLTIy+K/qMNu9Wsug==
X-Gm-Gg: ASbGncvkk5eNeWDe5xRNxlVNXPjC7NBH8W6I40dagCtHoAyK75n71rbze2kcRnWMclK
	VL1+zoW6WFktVSt7Ja9hTc+qBPp3ASD/qlOZNY2dv0cYG7RXacB639+Oh/VMNHqk2dwU2zALTwa
	knxmf+euSipQ7Wc8GowSYNtzOYNLH+fxB4NPnJkr0FAs8UMuQbP16cvBcF7322tH/qh7IJcYf4X
	muobouhwx7GEJZhFZCwls6Q+0mKD4ZzuhpBI0xcriB4jFc/92RBS3hpcpZNOG+F9Iy4qHTPLsO4
	ekvr7SiLpzwS9VOTZ4JLjI4HEPLiK4Kh09FMOfYQXC1xvDbIZtJps7V3zyUvr0wlrbhwrVc/o4B
	WE70l5B1I+szvngBZCC00OmI8IZNL+f//p4vT7QJYSatcjwckeOQdtW/UyrWnb8bn
X-Google-Smtp-Source: AGHT+IHdkXtKlUNoRD/fukTl9Z1diDwzu9pELATgkg5empmmlD6V8LSmq+J/k9xyJUzKt0aCCiv7sA==
X-Received: by 2002:a05:6402:5202:b0:601:fcc7:4520 with SMTP id 4fb4d7f45d1cf-612859190cdmr16938223a12.4.1753074425645;
        Sun, 20 Jul 2025 22:07:05 -0700 (PDT)
Received: from cinco.. (109-252-15-179.nat.spd-mgts.ru. [109.252.15.179])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612c8f5cf4esm4742135a12.32.2025.07.20.22.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Jul 2025 22:07:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 21 Jul 2025 08:00:43 +0300
Message-ID: <20250721050045.17310-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250721050045.17310-1-antonynpavlov@gmail.com>
References: <20250721050045.17310-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_220707_757002_C0DEBF32 
X-CRM114-Status: UNSURE (   8.37  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] include/scsi.h: drop unused declarations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Several U-Boot function declarations were introduced
in the commit 637b3aa727b5b4710b753563ccc3ee8128d0a71b
("USB mass storage device driver initial implementation").
At the moment these declarations are unused, so drop them.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/scsi.h | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/include/scsi.h b/include/scsi.h
index 23fc7abbaf4..cb8c95dc5ba 100644
--- a/include/scsi.h
+++ b/include/scsi.h
@@ -144,20 +144,6 @@
 /* values for service action in */
 #define	SAI_READ_CAPACITY_16	0x10
 
-/****************************************************************************
- * decleration of functions which have to reside in the LowLevel Part Driver
- */
-
-void scsi_bus_reset(void);
-void scsi_low_level_init(int busdevfunc);
-
-
-/***************************************************************************
- * functions residing inside cmd_scsi.c
- */
-void scsi_init(void);
-
-
 #define SCSI_IDENTIFY				0xC0  /* not used */
 
 /* Hardware errors  */
-- 
2.45.2



