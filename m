Delivery-date: Tue, 29 Jul 2025 22:37:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugr4z-0052Qv-2m
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 22:37:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugr4y-0007hE-Ra
	for lore@pengutronix.de; Tue, 29 Jul 2025 22:37:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qx/1oTWM3SfOgSRGJxZ0aQlJKR18RE3Pn5feG9LXGoo=; b=k2ZyVd9mM//kwbLnmRuuBwGQsd
	ELhEqS5utl4AilETZZjVOlSJBhCDozcoH8SnDKyjIfK2lbQDJeFDYwOVXzW8J5DelVUUcP448KIb1
	3voSEWcAv89MOZYU6i/i5dgtxlyk0BbzLQfBkC7+ZOjuTcjCzdzR4XQHKf+yqv6c14g1EVSPvOxZE
	cRN6PWK/RulUJf+s8RGnXgMdAXiEdVVHrmixWSTu/twry7iHLok6i/QbEbsFdZrzS+Clt8JBTaQD8
	80+z80eUrtDQo5KQlJXMA6Rk3pE9b3GNUxN+nIre4BCrUuSqhywXevilSWZXf9rarHjAPm2ZrDGpC
	rAjzGcAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugr4P-000000003yi-0ZyB;
	Tue, 29 Jul 2025 20:37:09 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugr4M-000000003xj-3L6A
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 20:37:07 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-455b00283a5so35068475e9.0
        for <barebox@lists.infradead.org>; Tue, 29 Jul 2025 13:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753821425; x=1754426225; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qx/1oTWM3SfOgSRGJxZ0aQlJKR18RE3Pn5feG9LXGoo=;
        b=g7Msapv5V2SQSmRvEWbRe0lTeG/8+UFosPaXR5Cuq6cBDQYxoIEXu784egOWEN/S3n
         ZvkqvYqgQuqskmF4/mhEWbECu+o1IZuH+50qmhq/tnweN+TF0XvdzI0ThTXkFdc7kRZA
         KMoCs2knQ5pd50S8/oesh2v+sf7c0UT/xz/415hEGbM8sC5J8MUeoTSHxs7SvhSn+2sD
         t86lJNTAFNQhHDCYGsttlXnI/60pxHbU0B1+tYw/ygmxtehrNduE9Ebfdy07cN/ee4cJ
         bCOc+TzHro73G5BlPydbgX+xBpzYmkoeHb4kNQlU5IquZGu4k8MfvIoqFT5BIF6y1i2U
         0suA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753821425; x=1754426225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qx/1oTWM3SfOgSRGJxZ0aQlJKR18RE3Pn5feG9LXGoo=;
        b=C1KaY7atIeNt66o8PgLEz+EaVq+Wkc67/3Qdl5q5Wo2X8ARMY+Kc0ebohRU6f1XBFp
         76lXEcFxVkZwJxL3g/3inIpsuFwI18E+FHQalvx2Fbn2tZxfVCCDxp+P2JTCMwx7parp
         +KxWRbAgVfqZHSdFY1AepGWQ+Jw07OjDT5V5En2yDvXMGUClYjukft7C51t3E0gk17fU
         IHT2Smu3wSur3SBOkAzUDIxz1CyoB/qBi72QDo5DJOjK7TOIsUJCej1LCODcjd7vN8Ti
         r0meD9pIU6wvwFFXAfHhsZ/DZfBHLvRoaxweln033t1hL4EcvRKXx+slH/cfWaJpZlEV
         ggmg==
X-Gm-Message-State: AOJu0YytXkqRsCKRxEOCH7hacmW+td/N6r2xr9y1zdQw3DvO4/a59j5n
	SpjylHLxncgYYnV0fpWEK5KePYNvO+unh2xCMxmXzbxkXCtYnJi5Do6R
X-Gm-Gg: ASbGncthgjVxEpfZ7YDkl7Jrhich7Sq27ZZfYDX0JuKHO1M3WEn4WKmpEGxVvvm59Sq
	AAbw2Xt3bmqv2WczCSX9Xq48HpFGV5i0r98Cfms8kFMg/4d6Xg6yL3pPtxZJTEmauv+7mRnKq9O
	bl4Q7KDVhWv9HMm+NmvBI+uwBaEkbIkr7PrTCgo3fXfqmDNNH47BXIyLKCFkjQ19wU+xs9KUTzs
	Gs9R/j3GwznCkIRL8ly7cugjHSa6UiEgw94trAJfHrkNxSHIY8asrD27vxdaMi+xJiouFKaCZzD
	VlkdTmAbfDCldIHu2i1Adx9cHYB9Fk0HkvwcWVBKihjuke1Rfd5hfnu31yaJbjD85v4KJ+Oje60
	TJXilPCs32pAp7yeNLVY/2unzpXIUVldY2wiBpO3npt2p90nVrko65wK3+cooQAsl+asVxiWgTQ
	==
X-Google-Smtp-Source: AGHT+IH2a7aSbwvxB0MqyzC7IR8fIbWO2CyuOxwzcmU+kcUbE/MrKcnRTHUuDzj+IGtZnGslivNOrQ==
X-Received: by 2002:a05:600c:138e:b0:456:237b:5e4e with SMTP id 5b1f17b1804b1-45892bdf4abmr7789885e9.32.1753821424934;
        Tue, 29 Jul 2025 13:37:04 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45895386627sm481325e9.19.2025.07.29.13.37.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 13:37:04 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue, 29 Jul 2025 23:36:57 +0300
Message-ID: <20250729203659.1858575-3-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_133706_832054_88C65756 
X-CRM114-Status: GOOD (  13.08  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 2/4] clocksource: arm_architected_timer: support clock-frequency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some platforms, like the Samsung Galaxy S8, leave CNTFRQ_EL0 unset in
the previous stage bootloader. Therefore reading it causes a hang and
the boot proccess is halted.

Since on such retail devices there is no way to set it without replacing
the entire boot chain, allow setting a value from clock-frequency
whenever it's passed.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 drivers/clocksource/arm_architected_timer.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/arm_architected_timer.c b/drivers/clocksource/arm_architected_timer.c
index 9a1f2d2b..daced94c 100644
--- a/drivers/clocksource/arm_architected_timer.c
+++ b/drivers/clocksource/arm_architected_timer.c
@@ -24,7 +24,16 @@ static struct clocksource cs = {
 
 static int arm_arch_timer_probe(struct device *dev)
 {
-	cs.mult = clocksource_hz2mult(get_cntfrq(), cs.shift);
+	u32 cntfrq;
+	int ret;
+
+	/* Some platforms don't set CNTFRQ_EL0 before barebox */
+	ret = of_property_read_u32(dev->of_node, "clock-frequency", &cntfrq);
+
+	if (ret)
+		cntfrq = get_cntfrq();
+
+	cs.mult = clocksource_hz2mult(cntfrq, cs.shift);
 
 	return init_clock(&cs);
 }
-- 
2.43.0



