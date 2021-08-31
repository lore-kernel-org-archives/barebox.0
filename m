Delivery-date: Tue, 31 Aug 2021 06:09:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKv5k-0000zb-1D
	for lore@lore.pengutronix.de; Tue, 31 Aug 2021 06:09:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKv5f-0000ZZ-LD
	for lore@pengutronix.de; Tue, 31 Aug 2021 06:09:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnrExexCsFxMf+QbRD5lJ29h5UOodlqa3d5oi80xeT8=; b=bSLmCCD8AIyKYE
	DnNcci/RN/9e/TjRW43EQpxh/aaOlVn7Gyntw9lAdBBJ13gsjHNo3G2Xt8kVbU352yrbnq7RcPWjJ
	6sUza7GdwL3JKaZnFQuocHXASsvvgaXY3eJQhmWjE5lh22Edd2U5aeuPmWd82FStlj9oYujW8r+iz
	Hcpurehtnu6arrsC/792uaxIKNe3SRXITYE44SRRUqLl6c5bBqqWTpK4IFq6hXVh5Y80X+dUkALLO
	ylI2wju2mxmUs/O/JE97Xlt9rMa5bbV6GUU7Q9obIG9yS9ADX9QAsvP+9MTnmBb4KnbD3U3Fqf61F
	cgpDgtwPRKHvVfSKDM/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKv3T-001JMH-B8; Tue, 31 Aug 2021 04:07:23 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKv3L-001JLt-DB
 for barebox@lists.infradead.org; Tue, 31 Aug 2021 04:07:19 +0000
Received: by mail-lf1-x136.google.com with SMTP id g13so35617995lfj.12
 for <barebox@lists.infradead.org>; Mon, 30 Aug 2021 21:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yVDtrP2SfZo02wcfDMytZN+WLdEq9vHzW3wy0/kNMV8=;
 b=YZ36CPJXth/lTiKSwmDZq6G+azrzEJoCPRUKiO3tkRUrxs1bVNCgubbYpJDp999Tzd
 yCyBWYTbJuF42sEhn43piK26tp4G+txQg0cFTPYmIXx+PRZ8DoTwKcwCtawS/Kl0gQo0
 HJFgyfj8eZAgMOSm2Qu8OjnaW3Gq8ajzD7p5FB//GzD4Ol7LJGxoVbtME4cQv8/bLNTt
 lfaQ4qzaw3Od8vP3eg0OQB79qG7bwtdnEk2MRYhDTigeJjwEwHV2MsOa1BjAsHjwJQiM
 977Ewn6B/epkDpnpsDd0C44XTiXQIsVArTlFig+cE1NYFySigGNryx1lnn9YO8kmfC8y
 MI6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yVDtrP2SfZo02wcfDMytZN+WLdEq9vHzW3wy0/kNMV8=;
 b=asR4mMMTaZg01DUETsoMLVWQfzNmgnwu0BzJ8Kl9JabvFbHAY6cLx0rLWu21O/ozX+
 UIFRITxiLu31TsKErdP97/n9lQV/mPjL3mq9BH5XnYHzVoaZw7PixpKwZjA9DO0m0hiL
 2dB6DLnigqfMGSvkfe2NvZgpfUsC4ywW/+SRaCGHVC2JQGDmOqeCnbnwSO23IAUuSyTd
 /plK2nujSQPSLqqg4BZiqKtCeSCJxjHDda5Ojr9VDl74zsmn4xLkCAsLaXHsp1idjiUt
 XS+7CzXHQXh+0L4zdQGAuHnOko23yFpNUedRkJqEkFKpi8MVDh2g45v9vWZCrnTtZsaP
 9EMQ==
X-Gm-Message-State: AOAM531K7rHzM3LskzAsTakv1+OB7u1UYFYFneLxOHnUGgTd2fJgTmEr
 zePgZP1ecPb8a/mExMpsrw0bZQVxKgA=
X-Google-Smtp-Source: ABdhPJytcjohvnxXHkiJQcg5Z2vLUG+b6kL9kmLbYt1SG28tprCBKj8sngjJyg6rSmITuyEc7PMiOg==
X-Received: by 2002:a19:c7c8:: with SMTP id
 x191mr15671796lff.652.1630382832658; 
 Mon, 30 Aug 2021 21:07:12 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id s9sm2028219ljp.34.2021.08.30.21.07.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Aug 2021 21:07:12 -0700 (PDT)
Date: Tue, 31 Aug 2021 07:07:10 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210831070710.3b6200eff8e7adb22bdf1454@gmail.com>
In-Reply-To: <ce1667b1-e42f-3836-9747-393a5fd8afc7@pengutronix.de>
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
 <20210817101104.114945-2-antonynpavlov@gmail.com>
 <ce1667b1-e42f-3836-9747-393a5fd8afc7@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_210715_500332_FB1581DF 
X-CRM114-Status: GOOD (  32.33  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND v4 1/8] clocksource: timer-riscv: select CSR from
 device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, 23 Aug 2021 14:08:52 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

> On 17.08.21 12:10, Antony Pavlov wrote:
> > barebox timer-riscv driver supports one of user counters:
> > =

> >   * 'cycle', counter for RDCYCLE instruction (CSR 0xc00);
> >   * 'time', timer for RDTIME instruction (CSR 0xc01).
> > =

> > At the moment in M-mode timer-riscv uses the 'cycle' counter,
> > and in S-mode timer-riscv uses the 'time' timer.
> > =

> > Alas picorv32 CPU core supports only the 'cycle' counter.
> > VexRiscV CPU core in M-mode supports only the 'time' timer.
> > =

> > This patch makes it possible to use the 'time' timer
> > for VexRiscV CPU in M-mode.
> > =

> > See also http://lists.infradead.org/pipermail/barebox/2021-May/036067.h=
tml
> =

> Comment from earlier series:
> =

> "It also changes the default for M-Mode from cycle to time.
> =

> I can't comment on whether this is ok, I just copied the logic
> =

> from Linux."
> =

> Can you say why this is ok?

v4 patch removes riscv_mode() mention from timer-riscv code
so timer-riscv uses the 'time' timer by default disregarding
M-mode or S-mode is used.

I suppose that the 'time' timer is "more popular" than
the 'cycle' counter.
So IMHO it is ok to use "more popular" feature by default.

> =

> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/riscv/dts/erizo.dtsi         |  2 ++
> >  drivers/clocksource/timer-riscv.c | 24 ++++++++++++------------
> >  2 files changed, 14 insertions(+), 12 deletions(-)
> > =

> > diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
> > index 228711bd69..4eb92ae6f1 100644
> > --- a/arch/riscv/dts/erizo.dtsi
> > +++ b/arch/riscv/dts/erizo.dtsi
> > @@ -22,6 +22,8 @@
> >  =

> >  		timebase-frequency =3D <24000000>;
> >  =

> > +		barebox,csr-cycle;
> > +
> >  		cpu@0 {
> >  			device_type =3D "cpu";
> >  			compatible =3D "cliffordwolf,picorv32", "riscv";
> > diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/ti=
mer-riscv.c
> > index 5a517fe6b4..96637f988a 100644
> > --- a/drivers/clocksource/timer-riscv.c
> > +++ b/drivers/clocksource/timer-riscv.c
> > @@ -12,9 +12,8 @@
> >  #include <clock.h>
> >  #include <asm/timer.h>
> >  #include <asm/csr.h>
> > -#include <asm/system.h>
> >  =

> > -static u64 notrace riscv_timer_get_count_sbi(void)
> > +static u64 notrace riscv_timer_get_count_time(void)
> >  {
> >  	__maybe_unused u32 hi, lo;
> >  =

> > @@ -29,7 +28,7 @@ static u64 notrace riscv_timer_get_count_sbi(void)
> >  	return ((u64)hi << 32) | lo;
> >  }
> >  =

> > -static u64 notrace riscv_timer_get_count_rdcycle(void)
> > +static u64 notrace riscv_timer_get_count_cycle(void)
> >  {
> >  	__maybe_unused u32 hi, lo;
> >  =

> > @@ -44,24 +43,25 @@ static u64 notrace riscv_timer_get_count_rdcycle(vo=
id)
> >  	return ((u64)hi << 32) | lo;
> >  }
> >  =

> > -static u64 notrace riscv_timer_get_count(void)
> > -{
> > -	if (riscv_mode() =3D=3D RISCV_S_MODE)
> > -		return riscv_timer_get_count_sbi();
> > -	else
> > -		return riscv_timer_get_count_rdcycle();
> > -}
> > -
> >  static struct clocksource riscv_clocksource =3D {
> > -	.read		=3D riscv_timer_get_count,
> >  	.mask		=3D CLOCKSOURCE_MASK(64),
> >  	.priority	=3D 100,
> >  };
> >  =

> >  static int riscv_timer_init(struct device_d* dev)
> >  {
> > +	struct device_node *cpu;
> > +
> >  	dev_dbg(dev, "running at %lu Hz\n", riscv_timebase);
> >  =

> > +	cpu =3D of_find_node_by_path("/cpus");
> > +
> > +	if (of_property_read_bool(cpu, "barebox,csr-cycle")) {
> > +		riscv_clocksource.read =3D riscv_timer_get_count_cycle;
> > +	} else {
> > +		riscv_clocksource.read =3D riscv_timer_get_count_time;
> > +	}
> > +
> >  	riscv_clocksource.mult =3D clocksource_hz2mult(riscv_timebase, riscv_=
clocksource.shift);
> >  =

> >  	return init_clock(&riscv_clocksource);
> > =

> =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

