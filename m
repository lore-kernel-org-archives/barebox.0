Delivery-date: Fri, 17 Jun 2022 23:55:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o2JwE-005fWq-Ic
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 23:55:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o2JwE-0000Gf-P9
	for lore@pengutronix.de; Fri, 17 Jun 2022 23:55:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=14uVe1z6N17rAB7d6fZQb0PMcIeAIshj2h6cN4eqoqw=; b=SCetmO3E9h/BZ965WkOJdAmLus
	yHZgtJCW/IQUDcPhBiD0iHsnQX3l+NVl+dQMDggq07/gwgt5cQgdOcThclMnPbe8P4WWp+fcQ9Keo
	nrqB+/haAYMQ3tCgrSVYfWcqfhy0dkYlXkRU/mlMEKMX3u4XZ+1qxjBis0t2MufC9c7yWh0nIVkF3
	n2qhohwuJ/ybR+N3ihgI0lUMw6SyueP8KK4uoPxpfwNPzp8oCag5MnmlFkQ15y7kv4YZnAbsdCbi2
	HmEcqjrCONsuw1z7pE7vHl/YD1MfZXxJ8lcttfqaB2oef5LfJQEEVfDWnNk/FWHpl1aoWvSa+9fJN
	dfpz5E7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2JuT-009JsF-I6; Fri, 17 Jun 2022 21:53:45 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2JuP-009Jq3-Da
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 21:53:42 +0000
Received: by mail-ej1-x62a.google.com with SMTP id kq6so10979500ejb.11
        for <barebox@lists.infradead.org>; Fri, 17 Jun 2022 14:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=14uVe1z6N17rAB7d6fZQb0PMcIeAIshj2h6cN4eqoqw=;
        b=moQkjPKvpwMBMFz+KdlTlkhpBFObaTSiQOG3c8JTp8YzytNoJ7RgJQ8a377QJZesrV
         Pvfcy/G8t+oIglmaJrlsAZs8uq4VfDq9oS5VOiDtTpnFl7tWU42hjSRaAvdKewMOYxIs
         0KXKapgAhIVSpHCOdrwxMsv6wb3lucLw3I6aHJbWU7INKA5xfHlDJTtVgbPSAXk6Vyvj
         DzecNA66bw8tBrRp90nXRIv3TQJMTEijaF48EQ0dMWXQqlttG8tjybcLQ65YORumod4M
         NTkZyL4+KwIdp1cQ7bPftsJXnD1BEuKmUmuVI38TMQV1oRHJyW69FWjwnfWZsaUT2507
         9OTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=14uVe1z6N17rAB7d6fZQb0PMcIeAIshj2h6cN4eqoqw=;
        b=Huy75ftt2a7pH7WJ+XPqcmRHnX5DNUATj6D0CMn2dQCgEP54fYCJOyaYWDATCqLz2I
         nAueqAqMQmuHE1/HzPZurfZvKgAV0TrAdZ1Y5AJlr2601LE2drSwPkw5C7jzjte7YGgK
         0jzVwAiLdaIbFosfAjXavyEmbP1c4B3xGkaOFLbDaozsYHoa1T0q2Q8tqtM2egNgIwBU
         HWTHB5uI6YYRKwpEFv6Ofg+rJOkBLuS6RSvw5tpqCqqLnjRlVxpEOoIgq5Jr/RST5tLr
         bWKHudkMPise9ozZw6KhNBucnNM8bKeecbvfu0QDIoa+09D1/XvXCUDbQcZ0CL6lLCaM
         R3bQ==
X-Gm-Message-State: AJIora/70YtXiSKR730yeuNbRCwOlOYsGMM3bxcJy8i8VZ/HiHKq1AK0
	IB7tvqVfhZsYzskKO+2frpB4YSn9dTzuJQ==
X-Google-Smtp-Source: AGRyM1vgk+aE65n10S0besUlAtTUvOU3WMJkhpJpffIgJt08cfAiV7GJeKLkl91u22mJycAmillbow==
X-Received: by 2002:a17:907:868f:b0:702:f865:55de with SMTP id qa15-20020a170907868f00b00702f86555demr11366221ejc.24.1655502819020;
        Fri, 17 Jun 2022 14:53:39 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-69-229.net.upcbroadband.cz. [78.45.69.229])
        by smtp.gmail.com with ESMTPSA id n12-20020a170906840c00b00706c50870a0sm2603548ejx.194.2022.06.17.14.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 14:53:38 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
Date: Fri, 17 Jun 2022 23:53:38 +0200
Message-Id: <20220617215338.5497-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220617080533.1194160-2-s.hauer@pengutronix.de>
References: <20220617080533.1194160-2-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_145341_493593_E3101004 
X-CRM114-Status: UNSURE (   5.30  )
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
X-Spam-Status: No, score=-1.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SCC_BODY_URI_ONLY,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] treewide: Simplify setenv() calls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since this patch, I am getting a bunch of
'warning: format not a string literal and no format arguments [-Wformat-security]'
warnings when compiling for aarch64 rpi. I am using 'aarch64-linux-gnu-gcc 7.5.0'
on Ubuntu 18.04. Full compmpile log: https://pastebin.com/iCsBJbXU



