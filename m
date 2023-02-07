Delivery-date: Tue, 07 Feb 2023 02:07:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPCSS-00GWFo-G8
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 02:07:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPCSP-0007Fn-ND
	for lore@pengutronix.de; Tue, 07 Feb 2023 02:07:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BMVuhkQtymVG5Yf1Q1/rjCfpz1J/1sr61gjWu3eeZA8=; b=yVE6P4AtiCPm9cXeHD/uEZ3nM6
	xMQLnVJFUeRJEGMqdiBWi9t0nrngvHzJGEx1/8FyNYGBKemtwWVydw0R0oyRU5tPt2G+/Xty2kbtQ
	kBL3KoDcbbkmEhS3aokvrclzhUOFGpdJT2vPo+lRpXPY9MjnIWCUboclFbAKvUfTfShrkEx7Evz8s
	Rw2JCSnAb2fmd1qsrhG/pXCrbv3knsS+o5kgr2Dm/PVXnRgH7sJSPrOBk5DS36Of/HDChe7nxOcSb
	7owiGvK72RNKOD7c1l1VvmMTt1EwCD0MRd/Lq7mXjiuAZ1ZnQk4m+cQ0q5r3M0y9k/6GLWsIp25xe
	2uv/AeyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPCQs-00AKFi-CV; Tue, 07 Feb 2023 01:06:02 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPCQn-00AKF7-Rj
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 01:05:59 +0000
Received: by mail-ej1-x630.google.com with SMTP id p26so39194866ejx.13
        for <barebox@lists.infradead.org>; Mon, 06 Feb 2023 17:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BMVuhkQtymVG5Yf1Q1/rjCfpz1J/1sr61gjWu3eeZA8=;
        b=BKw47ZhU7CC9/NRWOdnXJZtBgiKxg6uyNxltE33lUafJVMJrhRgWvUXU6me9YF6WRf
         QkgJ6vxF6j8h2VrB7+gOXb8XZvzvmY5DHI+FxdOyu4hWO8CkQ8nO4eDmSNI+Cx+cCsoz
         08kzk8yme0a9h2sKQDYR1aIVO97y0Gzyz9949e6p6EtD7YgWIlwff71J4bIAvxNJz2Kc
         guLPE3yE8c1hNgXVvLDedNnQw6QMhgxkvzNa5g1B+5KsWTBGdvEDB5nJeRS1JfX9GNAF
         kL5qn398UWaGiKHqPnV+r0TdAgQI+qrdVBKnJ1ZhoQBs1E4HGt07eNHm/3cz0EVTf55k
         IiJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BMVuhkQtymVG5Yf1Q1/rjCfpz1J/1sr61gjWu3eeZA8=;
        b=ycUSLpukVcM+lyuu6J+kgt6rcq+a4A2zS57suKLD5AjlRCRI71KuoxpeqN1HO1icPz
         NJkvwH9tKocIC/SG2R0LjClyV9BEaBw60i9P4fmWOh3aggXlzkwRs7o0t65xasRjJ/fq
         EcCv2BRECWXlFDl5nECtXqiX8+6JD/E3IVrkEh010LaWlRIH1eFlb2uqWJ5bAB0Up7JD
         GF0NjBfKgrKQOxEa1qbs7bbsYoWKNuKpCNLe2n0POWdMkKgYmqSb1ZOJDvi3aVVwb1NT
         yJlUqCYxiNI5EHk66/C6bopyT2zUMofRDvNqVrOTShCm/KeT6egTRm8cm/cS7z6ePBlQ
         /5+g==
X-Gm-Message-State: AO0yUKUJ7OGCHpto8AsHYgTWA7BJHb28KTUS4fjSdviFUnp3oeV2FCcq
	ba18f/DC6HxaXwWE1OW0cK5kayFwXng=
X-Google-Smtp-Source: AK7set+wL6McVZgj4xf4PdzNSuV8HiXV26fB/8JfmeUqdwoNfaFL1Q8WcHnJc9WP+iIDBI1nXdUtpA==
X-Received: by 2002:a17:906:85d2:b0:879:767f:6e45 with SMTP id i18-20020a17090685d200b00879767f6e45mr1448515ejy.17.1675731953096;
        Mon, 06 Feb 2023 17:05:53 -0800 (PST)
Received: from localhost.localdomain (ip-78-45-34-87.bb.vodafone.cz. [78.45.34.87])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906391200b0088a9e083318sm6078754eje.168.2023.02.06.17.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 17:05:52 -0800 (PST)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Tue,  7 Feb 2023 02:05:20 +0100
Message-Id: <20230207010525.2693-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_170557_931850_DEC054C5 
X-CRM114-Status: UNSURE (   7.57  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] rpi: platform code improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series focuses mainly on init handling of rpi board variants.
Init of ethernet, usb and leds for known variants is generalized and
serial number and machin-id support is added. This series also allows
bcmgenet ethernet driver to use the hw-assigned mac address on bcm2711
based boards.

Daniel Brát (5):
  ARM: rpi: rename function getting mac address
  ARM: rpi: add serial number readout
  ARM: rpi: rework rpi board init code
  ARM: rpi: add machine-id support
  ARM: rpi: enable reset source detection in defconfig

 arch/arm/boards/raspberry-pi/lowlevel.h     |   3 +-
 arch/arm/boards/raspberry-pi/mbox-helpers.c |  29 +-
 arch/arm/boards/raspberry-pi/rpi-common.c   | 439 +++++++++-----------
 arch/arm/configs/rpi_defconfig              |   2 +
 arch/arm/configs/rpi_v8a_defconfig          |   2 +
 arch/arm/dts/bcm2711-rpi-4.dts              |   5 +
 arch/arm/dts/bcm2835-rpi.dts                |   1 +
 arch/arm/dts/bcm2836-rpi-2.dts              |   4 +
 arch/arm/dts/bcm2837-rpi-3.dts              |   5 +
 arch/arm/mach-bcm283x/include/mach/mbox.h   |  13 +
 10 files changed, 265 insertions(+), 238 deletions(-)

-- 
2.34.1



