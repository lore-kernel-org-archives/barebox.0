Delivery-date: Wed, 04 Oct 2023 17:24:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qo3jP-00591v-R0
	for lore@lore.pengutronix.de; Wed, 04 Oct 2023 17:24:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qo3jO-00037V-3S
	for lore@pengutronix.de; Wed, 04 Oct 2023 17:24:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:Date:Cc:To:From:Subject:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8erNN9wvGdWQuE4TP3T954yfHg088EnVOXtvt697UNA=; b=sUEhZIxe+lkbA8K7aXuguMqk/R
	5m2vzPBdUyIrBNgdHof2+m1TKIStR9U8OyYmiLA9DQOf8IlcHSfbh3dlf1JJ8TTYQTPY+FIqvD/X/
	JEyqHOAirjFwrE72f0aphdETzcdHoWZ88agmXNuoYEVRfWnkKzEgzAwt/xxQHRN62T4xF0nYr/6A9
	OkZd0hpJDOGWNWcM5fZPIboBgebh2FTXZiKIEdaUyg1WBxdJFqtA/6mJV/Xh/5mQxXF3x9H0cIJ5F
	XtKgJq0cLGiiBVQJ4YNOYwRc5cb2b/m3Kbd98J/UraPZto3PP4Ig37itZq/psbMx356X9xDULGgrF
	97tsH3Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qo3hq-000LA5-0n;
	Wed, 04 Oct 2023 15:22:34 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qo3hn-000L9J-14
	for barebox@lists.infradead.org;
	Wed, 04 Oct 2023 15:22:32 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3247d69ed2cso2249815f8f.0
        for <barebox@lists.infradead.org>; Wed, 04 Oct 2023 08:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696432948; x=1697037748; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8erNN9wvGdWQuE4TP3T954yfHg088EnVOXtvt697UNA=;
        b=TUV3VqafrZr09QyGe0e9qW2zw0i+Q+vT+c/2dajWF7C4c+tCrnMbwPRXEK2lFD/G3n
         a47ki9j2zID467fnSuNspUpNGwFP1XIlwd8GOI7yOMjo9DYiZA2S3zYTYLlVzK8bVlfc
         fFFkUOdTiXPGNypqc/o3lXV2tLGfuZgyTvAgf/7bTYh1ccdz3FGJdkP++ZT2F9UTil5J
         lgRnuIDuz0gT2flStB8vhCKJXF5Cq0km97vY6+tkMjEJxL7suiHLom6QwcpkG/Lpa22n
         pxlow2zXlA2E8c0n7SRI2xOphqLgRhc77t1BUBpY6tF13rbYtR0GjYI81OYIlaqN/DQ7
         5GPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696432948; x=1697037748;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8erNN9wvGdWQuE4TP3T954yfHg088EnVOXtvt697UNA=;
        b=Lw6dXK7Ai+SNohughBD+gYaSHfxXKCa25WPoCMWBPRGnzXSQTtbbUPhU5zPe2U11Oq
         RTH/1TOCYGx5guUpY5PcdbTPUytNuh2yLvaAjoC6FF1/gpI1z8L4+Sbb/zxgdEUxv3An
         tftFrBP+ReIxms9Zd9qGxeCFi5Y/kElEkB0uUClDfmirRfO841Lteg65VfUNH8uQ7f0q
         sB4kRzx/oAO3ykGpaBFuwN3WR3g48gXUFPstA9E7qUi4AInijE4AHPkKMe5Q9xb66qNv
         SRHcXYfVmmkQYA7WrL8X58kSeXrIptmoI3+p/F+UNuY6Hdl4M/riJL8TVYGJiF0Kc06s
         sctg==
X-Gm-Message-State: AOJu0Yx575uozdvSDYg9ERqbOJyL0xIMbxB4tzXmrVcvfEnjwCkxprcm
	LqfXjU0GGBDPhKZsNy2DHEv2ojWqAIQ=
X-Google-Smtp-Source: AGHT+IEdFjdp0xtKtkKkHcvEtTINhzNT8sddqL3/F/JNbeRweWxBA1MJ/lX31zcX6vSv97KWDTXnRw==
X-Received: by 2002:a5d:5448:0:b0:31f:d8b3:e9f5 with SMTP id w8-20020a5d5448000000b0031fd8b3e9f5mr2599352wrv.34.1696432946906;
        Wed, 04 Oct 2023 08:22:26 -0700 (PDT)
Received: from lifebook.fritz.box (p200300da674f2d002c8094b9b12534ba.dip0.t-ipconnect.de. [2003:da:674f:2d00:2c80:94b9:b125:34ba])
        by smtp.gmail.com with ESMTPSA id i15-20020a5d438f000000b003250aec5e97sm4277011wrq.4.2023.10.04.08.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 08:22:26 -0700 (PDT)
Message-ID: <3e9f5043021557628589260747c28ad7921fc16b.camel@gmail.com>
From: Denis Osterland-Heim <denis.osterland@gmail.com>
To: barebox@lists.infradead.org
Cc: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
Date: Wed, 04 Oct 2023 17:22:24 +0200
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_082231_364503_2BEF7CE7 
X-CRM114-Status: GOOD (  10.26  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] fixup! raspi: support to read vc values via dt-2nd
 boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>

---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
b/arch/arm/boards/raspberry-pi/rpi-common.c
index 56887abbc0..ea3c72fb94 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -406,7 +406,7 @@ static struct device_node *rpi_vc_fdt(void)
        }
 
        if (magic != FDT_MAGIC)
-               return ERR_PTR(-EINVAL);;
+               return ERR_PTR(-EINVAL);
 
        size = be32_to_cpu(oftree->totalsize);
        if (write_file("/vc.dtb", saved_vc_fdt, size))
@@ -475,7 +475,7 @@ static int rpi_devices_probe(struct device *dev)
        const struct rpi_machine_data *dcfg;
        struct regulator *reg;
        struct rpi_priv *priv;
-       struct device_node *root;
+       struct device_node *root;
        const char *name, *ptr;
        char *hostname;
        int ret;
-- 
2.39.2




