Delivery-date: Thu, 04 Dec 2025 21:48:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRGF9-007yiP-2g
	for lore@lore.pengutronix.de;
	Thu, 04 Dec 2025 21:48:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRGF9-000279-9h
	for lore@pengutronix.de; Thu, 04 Dec 2025 21:48:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VkOSnKO/oAovALob+llXK5dM+99H5AIF3w4SjNoj2Zw=; b=DjLX7yqA/ESNXgCGEVqh1vLisL
	fEe2/kilvYyw0zQTsgWkOjRgUoNTKDsLegIyrCQE4gUEEVtRZseDytjvPrI2rbNw4eFhda0FwjZdO
	BR/BFf2LyEoaAumcKmHxEzt3V20Q5N+6R0SQPc3v+bZoFVgW7mucHHo3+goxxFSlg9WV8XBkkwzCt
	K/77kzdVgUXuTZFUWoxnr4X12HNRV8M/thBaHf8EQMZhc4XQPwaw0lm1vQ9MsYXqYMvaVB7FV2U39
	0phokzC7wEIGRXEQX3PzlokreBSTOG/hw/kKVxs8sqynsjuCE9Ac8NlKNEyBx8/1g41dpQgMAiWOj
	jgq8FGSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRGET-00000008cvn-08E3;
	Thu, 04 Dec 2025 20:47:21 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRGEQ-00000008cuv-1F5B
	for barebox@lists.infradead.org;
	Thu, 04 Dec 2025 20:47:19 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so12920335e9.2
        for <barebox@lists.infradead.org>; Thu, 04 Dec 2025 12:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764881236; x=1765486036; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VkOSnKO/oAovALob+llXK5dM+99H5AIF3w4SjNoj2Zw=;
        b=bfUeO7gR18pfhkDSD+5UPh7TfvvpZWdhRRTMidC6rmzEr9OuYA9b8IXIUqqVgGpOcY
         TPTfMQ8xXac9eada7eXaD3tUr/YPxb6XDr1Bc0XIFa16oiZq3OfwLv9lnzNkxHXKGKzO
         x4FP3UU3wrH0d//jhsD/cj/Q4ULsA0jSpZjfetx1LS9/7OFYc8OvG7JdJSFoRYFwwpJp
         3Dx/gYAY3Llyh1ZFHejTCDiAeo2e7QKo4jsTSuzbsXJnqhYdqepLi05gKrymUwbSdM5B
         woxq20/MNJ1HqYvFboAvM44F5DAhP4r7q80DESswF/WW1x4i3mNijtC8Wn5feR4a8SUv
         mXXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764881236; x=1765486036;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VkOSnKO/oAovALob+llXK5dM+99H5AIF3w4SjNoj2Zw=;
        b=DYy9+FhVNfXBFb/BECfnlXWytUy6JN/icYOpcasC5iKJeyioM3XBh+AP/FUhZVooTu
         8Y4Dme47gGMGOCjVeMnJU3gusWSjZUHm/E30wG+0obtKzWHTzt2zVT8jn2Li68hUxzBk
         /hGH8lnQ77KtKlpHN6J2j58yFDjxx1iV6LgJ/5Nn/6AT48CxAA/9t+cUVoU4feLXydED
         JutX0ZAzE3JoCoInyBeTGaoL6UhH0SBRL8HMJzJXIHDFvoHhKUHRTGxTli2Ym9rHjdxb
         pBQyCXGRs3QSkK61dx0Q2RJooFWYdpz+eJB6QItFO8bc5Krbcik5Y5H7LN9zhVhujs0V
         uxaA==
X-Gm-Message-State: AOJu0Yy5D+wMrWMwlmoz5VfqVhrh3n65fj00RwYwKxDa0Lyf592WAKvq
	pECs2eWpMKaaIpQkueDFYhLHm2oPlOZenpVlOQ2KQQlTCqjAAPnR1pbPDpScvQ==
X-Gm-Gg: ASbGnctLEJNa7088KN4NCZ4VXaeyemwpGQsZZFP3FJohbSRLcOpPIHdm0bOs3s7RFbI
	QC7rnJ+RZYJPrOgPJHBBnBLaknuY4BayUHuFdLPaXH78C5T9vu0PP7O/eS2xANqgebyjLOvaGX2
	JmJC9Nqchp7KMqfMTUa40M4iRZ872XaKy7BKaPk59X15clftDt0Q7PaPz02lvQ8hE5Y80u+w+1u
	cw40XLPOM7RXCPodN/MPCQNLwfvK+eO3vF9VRcAKcgANPdRgoDT94zT6B9m1qIT/LLguQcoFJfH
	EF8pjEthAkLsTognnjFZyGSMmOHCGG29+q1Y2Z4GQgLHqc9+dJ8GRZDZcVsinEvP1Pnpeq5mSJn
	tMRTVYpfrYo5oOQCdRAW37EksK/4/whXDS6W4OZX4q9v8NYym4+RwLi9nZCB0XoyOSwkOFDCDFj
	LGLNQX3Ps+2RLlAN0IgcwTiyWQbT+Y7zcoDTIIDbWgygSlbYoCrdDCJ6Y7QSvhXI3LM6wnQ7rRD
	DbwkgIuXAS2Le0jyz67zP21hvB1mqHX6/QQc9TiWl+SEgxM5LY2iQ2T0QV4v+7LLYeLvljwHZ1H
	8fyXzUoYkjekaqQ0iyfWa192AuXxWtm4VAR8nPQwwvM/mzu6
X-Google-Smtp-Source: AGHT+IEbVeMfSSjqpPfw+DIRpCIUiA9ptu+gh/krLd8zRLOnoQCkm1UBqlVsA3tnYCqeIS4NHF6pyw==
X-Received: by 2002:a05:6000:230c:b0:42b:3b4c:f411 with SMTP id ffacd0b85a97d-42f79853d9emr4510992f8f.36.1764881235547;
        Thu, 04 Dec 2025 12:47:15 -0800 (PST)
Received: from smalinux (2a02-8388-08be-f800-4920-8166-c943-9952.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:4920:8166:c943:9952])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331aeasm4884956f8f.37.2025.12.04.12.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 12:47:15 -0800 (PST)
Date: Thu, 4 Dec 2025 21:47:13 +0100
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <cr5e6c2kuunfiywmeh4p4ocqoxjq5urpj4dzeeia5prwdmzq2o@jd445shmi4uz>
References: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_124718_374910_73E076E8 
X-CRM114-Status: GOOD (  14.57  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/3] ARM: stm32mp: Add Avenger96 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 03, 2025 at 06:13:15PM +0100, Sohaib Mohamed wrote:
> Add support for Arrow STM32MP157A Avenger96 board with bootloader
> update handlers for MMC and NOR flash.
>
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
> ---
> Changes in v2:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v1: https://lore.kernel.org/r/20251128-avenger96-v1-0-009b13bd8df7@gmail.com
>

---
v1 -> v2:
- Improved NOR flash handler commit message clarity
- Link to v1: https://lore.kernel.org/r/20251128-avenger96-v1-0-009b13bd8df7@gmail.com

> ---
> Sohaib Mohamed (3):
>       common: bbu: refactor flash operations into separate function
>       ARM: stm32mp: bbu: add NOR flash FIP update handler
>       ARM: stm32mp: add support for STM32MP157A Avenger96 board
>
>  arch/arm/boards/Makefile                    |  1 +
>  arch/arm/boards/dhcor-stm32mp1/Makefile     |  2 +
>  arch/arm/boards/dhcor-stm32mp1/board.c      | 47 ++++++++++++++++++
>  arch/arm/configs/multi_v7_defconfig         |  2 +
>  arch/arm/configs/stm32mp_defconfig          |  2 +
>  arch/arm/dts/Makefile                       |  1 +
>  arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts |  4 ++
>  arch/arm/mach-stm32mp/Kconfig               |  4 ++
>  arch/arm/mach-stm32mp/bbu.c                 | 77 +++++++++++++++++++++++++++++
>  common/bbu.c                                | 17 ++++---
>  include/bbu.h                               |  2 +
>  include/mach/stm32mp/bbu.h                  | 10 ++++
>  12 files changed, 163 insertions(+), 6 deletions(-)
> ---
> base-commit: a831f32782a5ce216301ccb52e4d27e3462632f3
> change-id: 20251128-avenger96-2b70277cdd7a
>
> Best regards,
> --
> Sohaib Mohamed <sohaib.amhmd@gmail.com>
>


