Delivery-date: Fri, 07 Jun 2024 02:13:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFNE9-001st9-0J
	for lore@lore.pengutronix.de;
	Fri, 07 Jun 2024 02:13:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFNE8-00085S-Dv
	for lore@pengutronix.de; Fri, 07 Jun 2024 02:13:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QMZJmb1R1Akp51v4OqAYj1xqaFY5oMAz1cMo1ltfihM=; b=aGdRRTTasPh6CK
	J7wRPcCvBuGqiG9FCOaw4VTYpTBD0Doyrg+qFe9SvP4tC8W+WLMd60MlzZqtBfKHRXc7PHTIjbHeR
	zZPU3WG4/P4tD0aR/5Bo8Vr6fZsGOExC58RSc0mS2FwZrN5OV0KFQbnQPYVOq/LySLK4Qc5qMTXTu
	MziKWCQfUIzrExWyYGHsQl5Ix/hoUOG7HSIuCH45KIgzJIdbFW/pmEAPFRQbLPZqyaeLN+TknIknq
	fycdNiMbsixe0NB8YCa/2+EW/LPJQ79zvio8NHaaJO3uamMkNjWx7H3nFzQ+yoLhY9QGMkuhteUGM
	hj9CqQjRoPgDUvml7reg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFNDa-0000000BmqB-4ADR;
	Fri, 07 Jun 2024 00:12:30 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFNDW-0000000BmoQ-39gQ
	for barebox@lists.infradead.org;
	Fri, 07 Jun 2024 00:12:28 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-52b912198a6so1973455e87.0
        for <barebox@lists.infradead.org>; Thu, 06 Jun 2024 17:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717719135; x=1718323935; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QMZJmb1R1Akp51v4OqAYj1xqaFY5oMAz1cMo1ltfihM=;
        b=gkllMDDEsCPK5z92Iv5m0vL0HHSWTaMu8rq3CZaOAYkcqfdhVJJ1wle3PBf1LLlDHV
         6pcWY53awwY8bIh9bWzxMbYxL07dLxqOfeujDOyKF81YHx+Zbak3GgXGenTrhLXz6AJE
         b9Rd0MIfqGpX4G7dVv+9Gb4RmMypP9wYZx6Os3CfctBgNVu71VKZ0n3SZVtvFMuVhI+7
         0BWm5JZeCSWANleGS3XMT7HkipEqhr2Iaw3ZvAK0yjhmHkKRu7g+dto6ThZPZKcXBlY6
         h7i0v01alg1pgNrS/602xXijKDwQxSPYS2uraWwr47WmqfXkuRsR60OVlxn8Vvez1rIK
         AL3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717719135; x=1718323935;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QMZJmb1R1Akp51v4OqAYj1xqaFY5oMAz1cMo1ltfihM=;
        b=lbK8mhA37RCYKK+5g7vMKn7dzyNHDK1mFLTbfE/m+Jk10v3LEuVjeeSaETQfKqOHaz
         DvMgLTJOFM0w14D3z1mAtaskcJi6BqSg3c4aIum+FhMLCM37nAubYieATCbAfi3p1WqF
         1L52yMKmbPJqQSyJqWI/jQSE8g0E2gWAE+/zhrn6X93pZrwh6kjhPXRi8gzrSZXLvf86
         Eq72x2xasmUq+IK1C3DUD/c2U17dSAG4zhrM4pnNhoY62Ed95//e73yYELVsRzWYvpnQ
         fP0cwZ1nCB6ngVtb6+lDDjIl7btYFHohZmbG+KCleKeGT2J1Sm6XUTltH58/L75/cFOw
         RiyQ==
X-Gm-Message-State: AOJu0YzvhXgHmeaG2YXN3ZcYrX1TZ+IgEZ1p2jqCQ2hGQc5M7jvuUDFP
	Od5kTb3lXcdoYpQ7L6MrLm8NaQMIMwxpbz/wByKJIjwyDcOy/hmBPbWiAg==
X-Google-Smtp-Source: AGHT+IGp6wcjamX8oTS8asI/uOMfNACznIvSkEy3ugJ7D/fXCagPNMrQ+N6mbX2lQGMAdEZcJPVq6g==
X-Received: by 2002:a05:6512:3e01:b0:520:ed4e:2203 with SMTP id 2adb3069b0e04-52bb9f64915mr1055326e87.8.1717719134810;
        Thu, 06 Jun 2024 17:12:14 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52bb41e1db0sm342594e87.18.2024.06.06.17.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 17:12:14 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 Jun 2024 03:12:55 +0300
Message-Id: <20240607001259.107805-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_171226_909192_5B1FA930 
X-CRM114-Status: UNSURE (   6.79  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] pbl and debug_ll fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Antony Pavlov (4):
  pbl: enable image verification for MIPS and RISC-V too
  RISC-V: fix crash on start if CONFIG_IMAGE_COMPRESSION_NONE=y
  ARM: bcm283x: fix compilation with debug_ll enabled
  ARM: vexpress: make debug_ll work

 arch/riscv/boot/start.c          | 11 ++++++++---
 include/mach/bcm283x/debug_ll.h  |  2 ++
 include/mach/vexpress/debug_ll.h | 12 +-----------
 pbl/Kconfig                      |  2 +-
 4 files changed, 12 insertions(+), 15 deletions(-)

-- 
2.39.0



