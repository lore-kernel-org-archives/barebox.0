Delivery-date: Thu, 21 Mar 2024 06:53:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rnBMg-00G3ZL-2u
	for lore@lore.pengutronix.de;
	Thu, 21 Mar 2024 06:53:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rnBMg-0000lF-BI
	for lore@pengutronix.de; Thu, 21 Mar 2024 06:53:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+MAcY8I5GJGxxmaCJwnfkGRJErYnNskO2S1p4ELyGgc=; b=4D4AubU4mUZ+60
	zLaudR6vEtskgN+jMCo+Hgi7Q9cdV7M9RemZqHZjtiPi4c/Z7VfLtGHjTdIXqvy4rEQ7Of1iO8n4e
	EN4UN2aUWM11ZhKp/CSdGtQznz4yrQfZEEqv3OWca3kdQRy9Gpz/cUpItVRISH6mr5qO+z3OUkQb/
	1ARqPIMisbFGxzHMqNnZRLcKWFz8hXUlZjrMOEaqTDQbSs9C1+lTxlWF/A2kmqI4OJ4as5pRUmLWv
	hcZ6xaF9Q7pl3yNhahZvzKjh530whdaS8xTUaMN4eirU0uTMSXqRxuqr4A7v8C1fX3ew7ej0bh/de
	BdkwTnITKyrrr63weFKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnBM3-00000001yRG-2IW3;
	Thu, 21 Mar 2024 05:52:43 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnBM0-00000001yPm-06Dj
	for barebox@lists.infradead.org;
	Thu, 21 Mar 2024 05:52:41 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-513dd2d2415so637265e87.3
        for <barebox@lists.infradead.org>; Wed, 20 Mar 2024 22:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711000356; x=1711605156; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+MAcY8I5GJGxxmaCJwnfkGRJErYnNskO2S1p4ELyGgc=;
        b=C/1tOnW21iHiKkNKuOw3SK60sM2Asmfx1oKLt0Gglfv5wgzrUWZ8uQjcNddawHgDdA
         fFdYL/65UT6fyxotgFws05Owlpm2T3JhqN60ofTZ7mOzJYH/SwgdwlYcgt3XLDMFD6vo
         s5p2WqSrMS2UpcmV6lmlIlvOBexHCggmfrgXgD5RMBPJuf+wfV4BSst4iUoXIWgSxgV6
         PQOmbjUwJJlmVa2qF5wdXpk4TwI+PyarrOrwSG7tvvImYRi/84NwN1D/p/9XfH2m5aiQ
         fqsA0kPLMmXPKzpnREmFu6y65mUNzaSbY03mqcd0/M9MAuN189GVkLM52JdRkbA1dLe5
         arWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711000356; x=1711605156;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+MAcY8I5GJGxxmaCJwnfkGRJErYnNskO2S1p4ELyGgc=;
        b=pd8Bbk4cpTVyIZZKPJckseHb3nulPStr8iEqUD99F7/iuyRgXWEetzZ7X8q0d7ppah
         O/BN02x3O1HD5LAgZaIdXkpMnaa5YHrTPi7f4LaOnBozQSYaZibQeW+ifukk6v1TzHOP
         cGjgLyzmeCYS4wIpr4p8QCBowWj57ndIHP6zLbjGjtkb86sCQYRrzhFwEY8mfqXbY4Lb
         AHWe6UuhBChqGB9I32Aa+06tVXsahCKEzEqyOqF/ya41H14V9Nty5ZzH8ET1Lj4TEZLx
         6W70UagQXgS3i0nplDp51fKNj2dTS7pMA1gUCmchmcCHZ+SrA2E6TKK7uJmStBje5Tzh
         AcIQ==
X-Gm-Message-State: AOJu0YyAJVUru+jA8GBotRF2sjQOmui3o5clh1VyCH7AIN7MOM8a1FEh
	oUhzJjuDOiD6NBEM2d5kRfC+Tc1IyD4NSAmYdt5WOw3hmzAKo8TR0aBVY4d4
X-Google-Smtp-Source: AGHT+IEmz/bHK5Q8bl/x0zbaOPryni5lka8VxwG9XTvZDtOyjpG6zdQXUDWblNz19NsW5765L2bJKA==
X-Received: by 2002:a05:6512:4d9:b0:513:97d5:245e with SMTP id w25-20020a05651204d900b0051397d5245emr652780lfq.31.1711000354191;
        Wed, 20 Mar 2024 22:52:34 -0700 (PDT)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id l24-20020a19c218000000b00513d1ff9eb2sm2374066lfc.208.2024.03.20.22.52.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Mar 2024 22:52:33 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 21 Mar 2024 08:53:12 +0300
Message-Id: <20240321055312.1664676-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_225240_222091_5DB0BD75 
X-CRM114-Status: UNSURE (   8.98  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: deep-probe: fix DEEP_PROBE_UNKNOWN misspelling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/deep-probe.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/deep-probe.c b/common/deep-probe.c
index 931e5a17709..b270a10f7fe 100644
--- a/common/deep-probe.c
+++ b/common/deep-probe.c
@@ -7,18 +7,18 @@
 #include <of.h>
 
 enum deep_probe_state {
-	DEEP_PROBE_UNKONWN = -1,
+	DEEP_PROBE_UNKNOWN = -1,
 	DEEP_PROBE_NOT_SUPPORTED,
 	DEEP_PROBE_SUPPORTED
 };
 
-static enum deep_probe_state boardstate = DEEP_PROBE_UNKONWN;
+static enum deep_probe_state boardstate = DEEP_PROBE_UNKNOWN;
 
 bool deep_probe_is_supported(void)
 {
 	struct deep_probe_entry *board;
 
-	if (boardstate > DEEP_PROBE_UNKONWN)
+	if (boardstate > DEEP_PROBE_UNKNOWN)
 		return boardstate;
 
 	/* determine boardstate */
-- 
2.39.0



