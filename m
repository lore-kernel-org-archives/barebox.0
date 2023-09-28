Delivery-date: Thu, 28 Sep 2023 14:59:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlqbf-00F7gP-U4
	for lore@lore.pengutronix.de; Thu, 28 Sep 2023 14:59:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlqbe-0006oi-2W
	for lore@pengutronix.de; Thu, 28 Sep 2023 14:59:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1KTBiaqeMpkEln/B4SV2xqEXbiyrYP+6SIu7oBm2JSI=; b=M3D8vtNv8SayQM0712b+pbgFm7
	O9aHaFU2QkRFJgA49zW4MOr5YKNriVEyr507qRsG7VGPpY1UjCuqBerIYF2IzG1H5t3xIiR+kpYA5
	LlgGjRMHb4P9M5npRrfYxLgQR/SthzpowdnlxftzDCg10qvtLbsteMQlB0tWmb2MAEGN6TaVP3QAo
	2QaO3tW/okWYAXWE+hJCof1TWODYaTq/EKB8Q4GAwmKmowk7adZlrvWqIk/HG4/UyATeOT5gixAMb
	eMFgBYRPuae2DpJQPTVW1Y5C2gW31a3108pnF3UDb+HEZVPI8yk/Ym9y9XUYBntRHgIUnnljZFw+y
	eU+1J6lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlqaL-0041eb-0i;
	Thu, 28 Sep 2023 12:57:41 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlqaH-0041am-1x
	for barebox@lists.infradead.org;
	Thu, 28 Sep 2023 12:57:38 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-323168869daso10071473f8f.2
        for <barebox@lists.infradead.org>; Thu, 28 Sep 2023 05:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695905854; x=1696510654; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1KTBiaqeMpkEln/B4SV2xqEXbiyrYP+6SIu7oBm2JSI=;
        b=YV7qgnOmz+rryGmrCf6VJNL/CDYj6aA0u99jhpjMnbSsE7v2DxJlt3vpxlOcb87lb/
         VJSeUy4vwPk49/lWYkPcNnae1FXni86pkpWQADwvEK/N3Bovdt3t7leru+3+cSLVIooG
         ncS7kYeHSOWBht7CVPUDXyKAXQ8VndaHDHf1JqeNy+XBsspFwbW4U1zzAEsoMI+ltElb
         84O6grZM9Sbkp5JZoyuO8cO1tZDC2N6g/idKigjcTNYlagw5NbTBJzT4EwHDrcDgwr0m
         JqOE1prTv51jO6BpSgOGh4BC6rMfjPXMcIBntd9Iw3nCpQRk2Opcmyq4KY2B8LumGMOg
         r1hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695905854; x=1696510654;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1KTBiaqeMpkEln/B4SV2xqEXbiyrYP+6SIu7oBm2JSI=;
        b=LV+z421XE+z7ZTCIiDANnY71x/U+3eIbRq909buXlc8qxhn1Lhanpmhi8DXoPIHYpU
         66ORRk25q2B9uogex41boQim253a74Dp+G9h/3QX5AzGgJN2RoIxv9v6lLAGQv4EWxYg
         mAXGkZ7mqGrjNo8KX0MN5YFdwabmLroxhn64lQmQH1e24ar6tuuhdcKU3LjRSB/o+seF
         0/EU9qTQO4VC3arKf2oBE8WlbjFfycU2SE/n0T4RltWxF4AeCJ6G9ulSXJb8G6WtfjSi
         TiqBk7GNoglXy9Wp2qyTtoWMDcQkkJKVNCQshwecoS9Um2kqs+JSiZJK1WpTg682ic5y
         Bhbg==
X-Gm-Message-State: AOJu0YyxA9qiqbK2c+WQYfvknnfIKQB3V+xai+lv9hy2GcCtQmb8NiBA
	6Ycuh9XIGoCNF3tTEskBvg0=
X-Google-Smtp-Source: AGHT+IEP9zdkbLRP3a+0tW09IcKLDpzyT50hmE+mlLouXKCgXPIf0o154ULv2J/gP7iakbaVh7rdYQ==
X-Received: by 2002:a5d:4049:0:b0:31f:a503:c05c with SMTP id w9-20020a5d4049000000b0031fa503c05cmr1223993wrp.38.1695905854121;
        Thu, 28 Sep 2023 05:57:34 -0700 (PDT)
Received: from lifebook.fritz.box (p200300da6717b700c6f31ab4101cd574.dip0.t-ipconnect.de. [2003:da:6717:b700:c6f3:1ab4:101c:d574])
        by smtp.gmail.com with ESMTPSA id s23-20020adf9797000000b003247f732c11sm2725257wrb.76.2023.09.28.05.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 05:57:33 -0700 (PDT)
Message-ID: <a6e68c463cdc13eb4ce31b994ff252d58af65d92.camel@gmail.com>
From: Denis Osterland-Heim <denis.osterland@gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Thu, 28 Sep 2023 14:57:32 +0200
In-Reply-To: <20230926113653.GB637806@pengutronix.de>
References: <9282a3854372e58d9641993d5fb0bada29818415.camel@gmail.com>
	 <20230926113653.GB637806@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_055737_650910_47707B63 
X-CRM114-Status: GOOD (  18.08  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 0/2] raspi: pass additional VC values via dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

Thanks for your fixup.
I use git-send-mail with a local transport and evolution to actually
send the mail.
Sounds like a HTML email "optimization".
I will check my setup, maybe I find something in the preference.
There is an option to reencode the mail before send.
Hopefully this prevents gmail from reencode.

I reviewed the patches on next and there is a unintended change in the
pr_err statement, which changes '\n' to 'n'.
In the mail, this is part of the context.

Shall I try to send a fixup?

Regards, Denis

> Hi Denis,
> 
> On Mon, Sep 25, 2023 at 01:09:36PM +0200, Denis Osterland-Heim wrote:
> > v2: fix whitespace error, add acked-by of Ahmad, fix line of 80
> > chars
> > 
> > Denis OSTERLAND-HEIM (2):
> >       raspi: support to read vc values via dt-2nd boot
> >       raspi: fixup additional vc created nodes
> > 
> >  arch/arm/boards/raspberry-pi/rpi-common.c | 69
> > ++++++++++++++++++++++-
> > --------
> >  1 file changed, 49 insertions(+), 20 deletions(-)
> 
> The patches are still mangled. There are additional linebreaks,
> spaces
> are replaced by UTF-8 character 0xc2a0 and tabs are replaced by
> multiple
> 0xc2a0. I fixed this up by hand this time, but please check your
> setup
> for the next time. Are you using git send-email? If not, I'd
> recommend
> doing so.
> 
> Sascha
> 



