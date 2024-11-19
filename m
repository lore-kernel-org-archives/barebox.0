Delivery-date: Tue, 19 Nov 2024 20:58:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDUMr-003xSl-0K
	for lore@lore.pengutronix.de;
	Tue, 19 Nov 2024 20:58:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDUMq-0004ID-Iy
	for lore@pengutronix.de; Tue, 19 Nov 2024 20:58:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dt7/goNfyI0XaOGPRD6LBYuiPHJZGRhxzyemQ6rJo2o=; b=OtULIQExba56LnS4hFbYBeui98
	2ufTb3vn5Y8B7ZyfRvBO6afS2riLk10DVCl/DWg0XvHbl53wii8mBdCJbmxOCoOizYYsP0mIzkwLB
	E/Z2X87ptHdq+s9elgkwU28DITGJcLmhr9K/C355hm2isa/jQOR98Sr/usyNujt0ljyhaumh9qGWG
	uaEhA+FpqHXvs0WI6x8LMKjNWlADqJzr5Hj64JBTwOWL4R4pONrcwlQ/QMGXj5k+EVv5T3f3OiLIH
	JgctQIi3aSQyGZYNEzobgwFFsEg1EwSZk2zvzqMkwL/UrT6dcvW4NPJ6omH39q87J188K+jxEhrQl
	2epzCcjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDUMK-0000000DcEp-0L0e;
	Tue, 19 Nov 2024 19:58:00 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDUMH-0000000DcBR-0YeF
	for barebox@lists.infradead.org;
	Tue, 19 Nov 2024 19:57:58 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2fb518014b9so12033261fa.3
        for <barebox@lists.infradead.org>; Tue, 19 Nov 2024 11:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732046275; x=1732651075; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Dt7/goNfyI0XaOGPRD6LBYuiPHJZGRhxzyemQ6rJo2o=;
        b=ibPi8txPiVB8TFBeDVhSve1+N82moVUsCLHHFOw8k1iGG9iSgwMICjRCfzh2ioc0ks
         nWvfOWaljLhXqwe7cRWFou9G1CEEJ/KnGP82rkuViamOeEFMnlF21EOsNhv9mGKRsBua
         /CQyFCtgRdFgnbC7Z3UvWPQVlBqFjSeiv9kwWoQGpmIBZNoeo+RJu/l3Nnde8Jk43RjQ
         rM+QZdBACHz6hIAwa5qiKkboPgJN2dl2fhggIs5O0hEXmdas/r6BoMquDq4mPCfAbq7z
         8LjD4hhHMDOi+PdlfVUvEEiJA7slpu0RuZv0/EozTIR6kR8/QEqYpZGlQ8B5R8lP2Vf7
         kpIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732046275; x=1732651075;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dt7/goNfyI0XaOGPRD6LBYuiPHJZGRhxzyemQ6rJo2o=;
        b=K2PQG8+TOwCzsDXNUM5Pu45PmHaAeaOZCUPOdq1fdCuBUuEB4RNI1wSgHY474dkuI4
         djrJ8BAndd2kl/uZeywGpyKDpmv15XIzc8lIyzSMlQvik5CouARJ6YxCwt+XIywNr+1x
         623aK2v8bV8lDPJzBx6UJKeiiIA0Vp7MyYtgN93h3PT/LbTrzhOHqF0+xo8gYjJjadig
         g4wKbeAPRtm1ImnVTQegQz+YNpYiThI8QefrHEEcUoDVZHhSeIUvr0MKXSbv65yTfLQt
         0FqZcwRG2rAFfEX7mb0DQ8c7jiEYC4UrfnAMgxBiilJs1oFhP9VCz1XFmRCDpTkMSmqF
         5NSQ==
X-Gm-Message-State: AOJu0YxhTS0rlnpTjnRj+IwHZ6nigzcPubadheq8K+jV81mPGJPC6aqR
	WIYVEn4uI3eJR/FpTPD8y57wIJu/36JijmerN33TyYL9GCXoQymFwQahY7QkzVFiUokM27nCRPQ
	6ekDjewIFsIa/U9s3FreAT7CEFDc=
X-Google-Smtp-Source: AGHT+IGo8QUFJ/d3Nc6q6RW2T3a5QmL3eeEd3qh9xe7lOXtVnWc/ndVC8oabh8N0HxniiAw4D0qL0g5Q3HzCavrOajE=
X-Received: by 2002:a2e:9a0d:0:b0:2ff:59e9:98b7 with SMTP id
 38308e7fff4ca-2ff8dcb735cmr1659711fa.37.1732046274705; Tue, 19 Nov 2024
 11:57:54 -0800 (PST)
MIME-Version: 1.0
References: <20241119183530.1629261-1-abdelrahmanyossef12@gmail.com> <9452ada7-6515-458e-80e0-a5da01fec3a0@pengutronix.de>
In-Reply-To: <9452ada7-6515-458e-80e0-a5da01fec3a0@pengutronix.de>
From: AbdelRahman Yossef <abdelrahmanyossef12@gmail.com>
Date: Tue, 19 Nov 2024 21:57:43 +0200
Message-ID: <CABwgSGax8zFmJnRWQNFqy8=wEHJZUi5t0su-s1VAakSvjrRHzw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_115757_167260_2AF992A5 
X-CRM114-Status: UNSURE (   4.82  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] of: fdt: fix overflow caused by fdt_prop extending beyond fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Yes, It should be inverted.
I will send a v2.

Sorry for the inconvenience.

Cheers,
Abdelrahman


