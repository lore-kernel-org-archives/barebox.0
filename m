Delivery-date: Thu, 15 Feb 2024 15:30:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rackd-007Wmb-2J
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 15:30:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rackd-0003s2-2z
	for lore@pengutronix.de; Thu, 15 Feb 2024 15:30:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9t9BqUJFLNYlJH+k+i/22KcUePBmjKY7AudNPi+4vWY=; b=sOjVW146zVgqwTdoZmnge/SqA0
	EMemLLLl/vh6I7YjeqG0kAMvmOd/Et0nG/4XGzDPtVWzP9aN2cyRSh1zS3xZBStIakeYBOTONveVG
	F0DwWeGBJt0N/sHiPecbVrJ4yBt+144GzxHJJ8HgozjI/e8jbl7mFyS+delaQy2rQ7NW7qTltzDMR
	FZX2yZ7yeYuNb/Sl1upw05ylP4hbmUj4UJV951W533MmUvkjQi1fGD8YUPtab+AXdiVVl1I28UGqg
	aU93vN+nTgu432pF/hznDTJDXqlqIVz8mbVpYuLRNgoma769ZZrdMa/5sA3Axhj9j4pSYsM1H2IaU
	k6wRJ0+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1racjv-0000000GYXd-1NUS;
	Thu, 15 Feb 2024 14:29:27 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1racjt-0000000GYWp-08YY
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 14:29:26 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a3db0b8b313so35390166b.0
        for <barebox@lists.infradead.org>; Thu, 15 Feb 2024 06:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708007363; x=1708612163; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9t9BqUJFLNYlJH+k+i/22KcUePBmjKY7AudNPi+4vWY=;
        b=MCZUNsmaOx86uKEeL2lxZ5gnITOiUn4x3CCW2U7jxlFsdUzLpFlcoLQ1nq8icTieJY
         ySzgymurN1R3ByQgLmlth/Mgc8AmUohVEDVZqiNaB47geVPTR7FDJf6/+NoVJ7wjzCzj
         dgxlAyFJ07J/H4xaoyLgj3oep6nDFCFjuZIJFz21VjsuMYgEYOUgHbBFcsZhvLi0Wp+q
         U2E/DrBdSqvAmWsPshQRMSddG2S6/MtQgEXzxzIJIkERC5aKPxHlUHXBvuOhKh2LuJPl
         75OJdZuejLOdJfWiJzBdwpAhuLy2y6Ppc9ZY6NeUzvRSORMqtOw4c5oqT6Utmla1Cflo
         m6hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708007363; x=1708612163;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9t9BqUJFLNYlJH+k+i/22KcUePBmjKY7AudNPi+4vWY=;
        b=pVzCJHwekkPT7zfQ2JVCIzQTlE9aPhjLZ4gzzoohrLUyfcIa2XumkCuF81grmoDHhc
         vijqv375jUD16hOvOx2oa/5MO0Aas4sA4is7ZPJSsxOR66vF2g9ehdiA0DE/4E7iQSJY
         ice7zw+6rzURJRHU8a5ccK6oDrcW/dy0MFZkvhDaY0L+k2YcXkpPjukpSnB2b44lusm0
         4fonr7odBweiayI5eoVufJm9Z2dXx3Umn/DRdamC2LaHx1h+6rCW1s9rjCPnn+5K6hIi
         sFYfG223hQqwvCckqTMVn6NgRGjBtfSn3e5EZMAKUnpuBtneVcQLVw6PqlWHtW14WIdY
         FjCg==
X-Gm-Message-State: AOJu0YzR0VqtVrTYZLjzGVoaUL02G+JZk7nG0StmlZixyUlhGIziSDXI
	l+MDovk6P13oFyTg0/y54YdpkEvWjvks+VtjPlTM68wRKYSuKYhO7tOhcBi6zave0uaz4dZxAve
	j3Vt7KEtuiymZ8cuLhpOEKEaDqyg=
X-Google-Smtp-Source: AGHT+IERRl8EIpeNstZiF4Cqm9MbdfS/Z8IQDWD9IdH4V8pdoK2PJwkyVJUlrIFqzwmXAp1D54nbv1kL+255MdzCi5g=
X-Received: by 2002:a17:906:7196:b0:a3c:7fcc:3967 with SMTP id
 h22-20020a170906719600b00a3c7fcc3967mr1602711ejk.40.1708007362985; Thu, 15
 Feb 2024 06:29:22 -0800 (PST)
MIME-Version: 1.0
References: <CAKd8=GtV4EtC5Bx+t=YOfLXEFKB_-1N=HbU4hfCaLK6Lw3YMhA@mail.gmail.com>
 <5a7f3262-a549-47da-8658-afb81ff380fa@pengutronix.de>
In-Reply-To: <5a7f3262-a549-47da-8658-afb81ff380fa@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Thu, 15 Feb 2024 15:29:11 +0100
Message-ID: <CAKd8=GtP_q5at-=iJaU78Z9UYzHB7=SmFGnYxcHGUnOmxzDZ0A@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_062925_098571_3B9A0076 
X-CRM114-Status: GOOD (  28.30  )
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
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: barebox environment raw partition on beaglebone black
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad

On Thu, 15 Feb 2024 at 14:47, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hi Lars,
>
> On 15.02.24 14:01, Lars Pedersen wrote:
> > Hi.
> >
> > I'm trying to create a barebox environment by using af emmc a raw
> > partition offset on the beaglebone black.
> >
> > For testing I appended the following into am33x-boneblack.dts.
> >
> > / {
> >     chosen {
> >         environment {
> >             compatible = "barebox,environment";
> >             device-path = &environment_emmc;
> >         };
> >     };
> >
> >     aliases {
> >         state = &state_emmc;
> >     };
> >
> >     state_emmc: state {
>
> [snip]
>
> Keep in mind that state is unrelated to environment:
>
>  - state: power-fail safe set of predefined variables used for mostly bootstate
>  - environment: where you would keep scripts, variables and resources.
>     In the field, you'd probably only use the immutable barebox built-in environment
>     (+ state), but for development, the mutable environment is very handy.
>
> > state: New state registered 'state'
> > state state.of: Fresh state detected, continuing with defaults
>
> State looks ok.
>
> > environment load /mnt/mmc1.0/barebox.env: No such file or directory
> > Maybe you have to create the partition.
> > changing USB current limit to 1300 mA... done
> >
> > Hit m for menu or any to stop autoboot:    1
> > ---------------------------------------------------
> >
> > Why does it try to read the env on a partition on
> > /mnt/mmc1.0/barebox.env? Is it because barebox.bin also is read from
> > this partition?
>
> Check out omap_env_init(), which registers the environment if system boots from
> SD/MMC. This seems to take precedence over what's in the device tree. Indeed,
> upstream AM335x platforms only configure an environment in the DT if it's outside
> SD, on NAND or NOR.
>
> I think placing the environment on the FAT makes sense as the MLO is there as well.
> Why would you like to move it?

I'll check out the omap_env_init. I just trying to understand how it
was set, so I don't want to change anything :)

Thanks for the quick response.

/Lars

>
> Cheers,
> Ahmad
>
> >
> > Thanks.
> >
> > /Lars
> >
> >
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>


