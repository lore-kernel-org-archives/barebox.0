Delivery-date: Fri, 06 Oct 2023 12:01:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoheW-008DhH-NP
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 12:01:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoheW-0007Js-3w
	for lore@pengutronix.de; Fri, 06 Oct 2023 12:01:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+0Zy2Tg+Bzvw+U3Rt3R4TCoDLMSUuWr0Z0U4rP4bLSM=; b=pJugQZu7T/VoTMkoLLmWcMw+ri
	nBjhDnf5yzni2vJYf8DxEOcQD1Ijka19KCVGqawuUWQyJEtTQBmatF8gV30Mj6H+JJ+7FlMs2rQMA
	00byqxydiI4/IcNxwQthQ7u1MWjia1xCxYiBqt6dFY/t1FpZamFlpyBWzRFP9kwIbol2jOSOYFxjA
	nIwPvUjkzf/EtRmRJclJlyL+BrGQnKZ6annjxuUZqqN7N8hsD3Kgi4MMo5HPh56yoSMvZsTGdx8bX
	62NssZoD8+osBRCgCHeL6Jjttg/BZRAqCPAyXL45U4rbAITCfIP//JSv9zokN9eKasmRVOy5Rm2Hh
	ss+fyfjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qohdC-005RBN-0q;
	Fri, 06 Oct 2023 10:00:26 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qohd7-005R8j-2N
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 10:00:24 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-2773f2e599cso1401686a91.1
        for <barebox@lists.infradead.org>; Fri, 06 Oct 2023 03:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696586418; x=1697191218; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+0Zy2Tg+Bzvw+U3Rt3R4TCoDLMSUuWr0Z0U4rP4bLSM=;
        b=H4qWdFgDOfkSGRa+cyoyb5pyT2jTawbmBdmPuWLNR2Il8SNQee+eH6CeU1zLRnCiCQ
         aLJ09POrhwyCt03a0Olc+3tsWT+0W5/JerGjI/L7XHC9vObg/GnLU9N61fV8TorhHzOS
         tkG9QO/4O+800BXdNFk5yOiualgcvqYo3Z8rLBSUl4kM+4m9ZVbe86XbWzMxxI3INHGO
         zWw8MgRX/2ciqiLsFuWLFNV1Qzd6MSm/RaimuLW93o9fYXGuT65gDYH1Khs80AAjCupT
         EFnYxQGkVEn3qkSzPnrcxawSpTyl4myszugxHntEqb+eHf8nb8sKTm1mmLuqzY6tsOMR
         xXfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696586418; x=1697191218;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+0Zy2Tg+Bzvw+U3Rt3R4TCoDLMSUuWr0Z0U4rP4bLSM=;
        b=TvUjlLB7EsJA3F0GW0UW2qNgWLDLoSkK7IkiWKzE4pMYYcKzi59NlbsZIzuciupd6w
         wzl1gqDv2bb+EiMEdpwJMlH3m4v4y86thczUL+ftxfBULuL3JP1bzkikks4kQ6bYJc4X
         MquusRfvFFJ1mPhnD6QEwDeUZfypNvc5hQQUiTzVXb/Fw5sz3869aILCC3YxSpMDP6T+
         cHbvwVUl3JHRLZKTnAVk9jx1KeNtDm1Dv44xc6dFDt+Nj/fwL4cFJM9YK17sNs95yTp4
         H5o8Cz3lJH+Kjy1vcdVMdnsmipMybHQw3BrIK+YPCqVpOaN3roXJ9YLMLERXtKRDBQnY
         BK3A==
X-Gm-Message-State: AOJu0YzE3NkkIwAWd3gWIMs9qARYGueJf3rJpJUH8lz0JGltwIW+PBmX
	enNTOZvSmFjJ8XwVutxIgsdyKHJvTsR/Q5EftlsWUvIk29poAw==
X-Google-Smtp-Source: AGHT+IGVHqxJx9DsAQ+6FFQQhIxGymStByRIoOwnYB172jsO752v6GT70oU7dfOYuqEt0DbNytX7tJi7kZNMEi6XFeA=
X-Received: by 2002:a17:90a:630a:b0:269:6c5:11a7 with SMTP id
 e10-20020a17090a630a00b0026906c511a7mr7602030pjj.17.1696586417863; Fri, 06
 Oct 2023 03:00:17 -0700 (PDT)
MIME-Version: 1.0
References: <20231006052821.3246-1-eagle.alexander923@gmail.com> <bebb4782-d1cb-e870-6837-7b00133193ca@pengutronix.de>
In-Reply-To: <bebb4782-d1cb-e870-6837-7b00133193ca@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 6 Oct 2023 13:00:05 +0300
Message-ID: <CAP1tNvQS9A-+B4NCVQ75ct+ZqUaskRkqzBLBrg+cyB5YeSqOSg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_030021_791807_B4D1FF01 
X-CRM114-Status: GOOD (  16.94  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clk: Fix return value of of_clk_get_by_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

> On 06.10.23 07:28, Alexander Shiyan wrote:
> > of_clk_get_by_name() is used by clk_bulk_get_optional() => clk_get() function,
> > so in case some clocks are missing we should return -ENOENT error code,
> > as this is normal for optional clocks.
> > The current implementation of of_clk_get_by_name() returns the -EINVAL error
> > that comes from of_clk_get() with index <0 if the clock is not described
> > in the device tree.
>
> I stumbled upon the same problem and found that of_clk_get_by_name() returning
> ERR_PTR(-EINVAL) in this case is documented Linux behavior (for of_parse_clkspec()).
>
> The correct solution is thus to leave of_clk_get_by_name() alone and align
> clk_get return values with Linux.
>
> I did this in
> https://lore.barebox.org/barebox/20230921080236.GX637806@pengutronix.de/T/#t
>
> Can you test with that and see if it solves your issue?

Hello Ahmad.
Yes, this patch works. Thanks!


