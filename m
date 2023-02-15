Delivery-date: Wed, 15 Feb 2023 15:12:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSIWH-008U2I-T1
	for lore@lore.pengutronix.de; Wed, 15 Feb 2023 15:12:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSIWF-0007Rc-8x
	for lore@pengutronix.de; Wed, 15 Feb 2023 15:12:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BqkI2gnnsZhRCMBRuAY5Ug62O8mAkxEf7PhTLUkCorU=; b=zGauOEUCfak7vxDbtbCtz+QjTA
	8/zrG7oE3fYRxhNmP4X5x1lCaBmSiJiZ5xuWa0m5NLq8r0ypz8tKDHNlxKwaSW3WJHsFe3fbD1fjh
	BRpuB8yANocHQW2y78kx3+HH003Q66d6xUAk4DAW1n11ox7qXAmTthpjIBUyRuI6Eo0aq2eprQ8Nd
	OCh/ciHq2nFh57nHrYqsBabsolWpRuP+wLMXh6qp5ubhznXce4HrjsV7NpF2CjEVa/kRm0OkbYgtV
	8eYkILj/NOeYj8Oguu4Imsgrdp7HReGx0LRgD6qqCG8E6dlzgQXFASlC8ihdtonf18vBWBqtlwCL2
	mPh7aGNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSIVT-006ANL-HZ; Wed, 15 Feb 2023 14:11:35 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSIVO-006AM3-AG
	for barebox@lists.infradead.org; Wed, 15 Feb 2023 14:11:31 +0000
Received: by mail-lf1-x130.google.com with SMTP id v17so27740534lfd.7
        for <barebox@lists.infradead.org>; Wed, 15 Feb 2023 06:11:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BqkI2gnnsZhRCMBRuAY5Ug62O8mAkxEf7PhTLUkCorU=;
        b=i9mZowSKgak+9zBJSVRtqSqN71zaDpb10njuYogsCmdUbkcKvijMracldkAt1O0GTY
         GXvWAbhQFv7TlgGIZd0m89aT0N1Cs/j47Xbkdr7l0HmE2sN1FWNFU+Qubap92dG8mh4r
         r+C1pXw2CCVKeqXZHtZBuCCO6qvg5C+iAGG/1KcjG5pPoPj2tP45NDL8r2tZ2XZCfe4d
         m0JBEwlwevmoH/jHwyTlcliC7Y6z/gQpW8lFehNIbiu3sWtHmy3OikvwTaR1HSCqlRaZ
         WiLb8bSRHR8HO9Dw4o7jZz1dp2hegl8eK/ARHkGwayLRvseG6TFmV7GdbsZXQAH9YYph
         68NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BqkI2gnnsZhRCMBRuAY5Ug62O8mAkxEf7PhTLUkCorU=;
        b=CG774dlyYCTdfjHVvw1Q+LTwWtcHI5m8ynxl7IrTt5RSaSYjVEHuUIoZ7GWZm4cL1b
         tQvBRfymnVWwQgodstm0rR+1HNckkE4axfH0yh3GAOrmVDx/WgmPl380lq11blC38c0R
         ycdSjHAAx/qGpSEp/+oDsdP/lUgY2KiO1+sJJhcpZRtTrBVN21yYyqOFnUQedQmXYbWP
         RLMxFIZr2lMi99o27f8D0//6i/Hh+2oUo47yoUkPPLhaP9H2/tjdJZoW+mA9/pQgWkpL
         gYPm23lVOSXatm4tIi49dfwAWFEoV2IeE43rOjhBWd4nlyYOl5MOe9Pwx+UaSW7rlFHJ
         f09w==
X-Gm-Message-State: AO0yUKXW+eHgPfKLbtImmlh6L+84ITzthztXUi1i23WW1IjlYuPRV4yq
	8G7f9tt+vvEiZ1t2862s1WKye8o6ah32OHOGRYg=
X-Google-Smtp-Source: AK7set+WhAHUEIkS/FG7I6wQPivOwnaFZY/LO6MOPuvDjLvEhjgCbs1MYhLsPmp4mEmjCY/V+bKO8v89azhvthtkEgA=
X-Received: by 2002:ac2:4439:0:b0:4d5:ca42:aeed with SMTP id
 w25-20020ac24439000000b004d5ca42aeedmr515146lfl.13.1676470287521; Wed, 15 Feb
 2023 06:11:27 -0800 (PST)
MIME-Version: 1.0
References: <20230203135011.2061939-1-m.felsch@pengutronix.de>
 <12e370a3183d04572da1c5749d8e64dcf5091a0c.camel@linuxfoundation.org>
 <acf8b79c23675a2b4c7225e55e4ab369fbcf7f54.camel@pengutronix.de>
 <7f5ebf2315c969ce7c76d024ec373f45cc8eff3f.camel@linuxfoundation.org>
 <CAP9ODKokQpGL3ttukqRaq3-8m0ci7qp8mckbgudGJx1HOu-fPw@mail.gmail.com>
 <CANNYZj8_RkjMASpozi+oSu3XOHCW04n9YUC5UgHKy+2vm=cDrQ@mail.gmail.com> <CAP9ODKqjkCuhyVkfhskOSdF3g57=R9MO6Bcy2R5zBV9fVd6wZQ@mail.gmail.com>
In-Reply-To: <CAP9ODKqjkCuhyVkfhskOSdF3g57=R9MO6Bcy2R5zBV9fVd6wZQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 15 Feb 2023 15:11:16 +0100
Message-ID: <CANNYZj_jLK-FXrGx+bF6fXrSsc-so6G_kpyZKNTpatqJKxQeRg@mail.gmail.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	=?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>, 
	Marco Felsch <m.felsch@pengutronix.de>, openembedded-core@lists.openembedded.org, 
	yocto@pengutronix.de, barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_061130_387190_4467BBD0 
X-CRM114-Status: UNSURE (   8.26  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [yocto] [OE-core] [PATCH 1/2] barebox: add initial support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 15 Feb 2023 at 14:53, Otavio Salvador
<otavio.salvador@ossystems.com.br> wrote:
> I think the Barebox inside OE-Core allows a bigger integration and
> reuse of existing tooling for signing and other classes currently well
> integrated with U-Boot. For me, a critical point for decision is if
> Pengutronix will commit to support it.

You should be well aware there's a history of people contributing
stuff to core and even assigning themselves as maintainers, then
disappearing. And then it falls (largely) on me to keep things
(barely) going. What happens if ptx withdraws its commitment? Can I
then send a commit that removes barebox from core? Imagine the angry
lynch mob that will show up after my head.

Adding things to core is a decision that cannot be easily reversed, so
I'd rather have barebox in meta-barebox for a while, with any needed
fixing to classes and infra in core.

Alex


