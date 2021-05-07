Delivery-date: Fri, 07 May 2021 19:43:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf4VG-00051S-Dp
	for lore@lore.pengutronix.de; Fri, 07 May 2021 19:43:06 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf4VF-0000XB-C7
	for lore@pengutronix.de; Fri, 07 May 2021 19:43:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ozj55r9eqslCCg0c/4uGbBfgcIqXP7dYH/L2V7x/7gU=; b=nIFxGFuNNx3LC0SAgwCwZnhIg
	ApdUBgeMullHfMU8siJV/8L/daCJzVtz0sjlIapin17ORw58n+oC7HNc4FU6zHxKSVzKqLUW1MwaK
	9APm9l42DErXeZIakfu9jwFVG1CcbWuw2afaHm28lFohD9QLZETezUbM5rEzY5qNJPFxb6JqKpye6
	2MgpRUxK/KRBENMdiHlHYjVyXM9030VMVjrHkXqefXmC7N9elrGO3ejdhHWUgHf71c+fXcIBEfFMx
	Z4zR7swfw5aDn6FywJEWVb+Ffiu6iX3S7HleO7mI9vPGW26k7xzylOJAbPu4yQ5sU0qK5J07qOHgF
	40qCdBzaQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf4U2-007hZs-1L; Fri, 07 May 2021 17:41:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf4Tv-007hZb-Qf
 for barebox@desiato.infradead.org; Fri, 07 May 2021 17:41:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=hD4sBExP18nQti8IT2nkOWeIqK/1/iEtFCSmJYxjqLI=; b=uFAyUNyyJanrYsU4NLmzy+nWZq
 ujqwj5yobzb1aIIcdS9SKZfDKHc1wn0izZc4/FJOS+Ph8YDrphJ3vzuXWEwPe3J2zn/IcnWr8E6/u
 Kw0iheKQARNdfhTswYHR963SOTHq7u9ihKX8U0DuOj5yE021gPpmaTArXAgbMrUda9zJxqgrWhyG1
 helCHofBS1j0IDtUlSKm0kfav5QdY/88gNQYVTKql54Ac2IE+qAtBsIQTGHiFjDuHVLN7ziaXZPoZ
 yz8IyS8rvAou7/LWNbQFug4CAPG6iOj+HsGKpFTy1ubAb2KNwouXl+F2I2KC/655YEicEtcfuk9Au
 rwzZLTbw==;
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf4Ts-00731c-EG
 for barebox@lists.infradead.org; Fri, 07 May 2021 17:41:42 +0000
Received: by mail-lf1-x12c.google.com with SMTP id j10so13793668lfb.12
 for <barebox@lists.infradead.org>; Fri, 07 May 2021 10:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hD4sBExP18nQti8IT2nkOWeIqK/1/iEtFCSmJYxjqLI=;
 b=AchGLi4N3azv4+9gvsOQv+UHoxS2GDAx/b3m03JMrA4fpu6M8zYC6bHEHltDsqogAh
 d2kym6r/OIdvCwF1lOWwJQc5yJrsMc0imf0HkCeoslIJumn8VLSO9BqT00p/m6dODWDB
 9guZjZVCkVGjFHYz/F3LyVfIGMeAy1feJP2Bfjf/vMmt6EbYgZyImCPestDQH2BihVcf
 Lj1qZh+rrix9fw6pj/LCOt2c24tiaoah/q8ccaMBENq7Nxm7btCpp+kqpfbKEkAi02Fe
 a3cSr/PYi6qfrJ+CJx9YmSZVU4u1nNZkQCv+11AMcKKLrsVpkNDxM24GwI4rMtsSd/RV
 8IGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hD4sBExP18nQti8IT2nkOWeIqK/1/iEtFCSmJYxjqLI=;
 b=uKAQReMs0IySU7cxF+BFTrYpC0ebzNH5lihi42HKanKOayO1EkQF23f5J8ZDsmX5C2
 wddMw+50w/ZHql52nVZJqqNLMicHrcqZHaqCpWzdPXga+DgHSHdLHKzT8pGaMlcJ5l3j
 ha2SqIc8QmTmBdJfQHFYH0lZW6w6y/wTB66vaT9uRwMivjGXQKHnlbkGt9NIUxv1/UNy
 d68+AfagASJ8Mo7OCE9sKoV3sY2RySTtTga/GnaI5GUHEs42+rJYK2M5VRxO+DpFdSBd
 ZI5YQbnHy2l5Hc5C2ctT7Awo87wfz/Ee1WsxlE4UfI0/1jEHYbF2OKm+8LysoT7HraHp
 F0KA==
X-Gm-Message-State: AOAM533YwRQWxv94idyb17/DD05Z/jGgVTJzp0PSX8RzPxyzwB0JzYqK
 mUv+CCcJIAJCg5i0EVUAGyM=
X-Google-Smtp-Source: ABdhPJxMBo/XseVR6T6vjMso1ZMetFq+SWfJ8wKxCGpnxCMZFBkDiNlIyD80RhzBUrsIxnaeTySNng==
X-Received: by 2002:ac2:532d:: with SMTP id f13mr6885877lfh.81.1620409298426; 
 Fri, 07 May 2021 10:41:38 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id a26sm1401901lfl.127.2021.05.07.10.41.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 May 2021 10:41:37 -0700 (PDT)
Date: Fri, 7 May 2021 20:41:36 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210507204136.0289302048cc5edb0c06596b@gmail.com>
In-Reply-To: <3683b25f-f736-6447-90f7-f62e1f9ccb64@pengutronix.de>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
 <20210506220834.223350-2-antonynpavlov@gmail.com>
 <3683b25f-f736-6447-90f7-f62e1f9ccb64@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_104140_520513_E5D6CA97 
X-CRM114-Status: GOOD (  33.80  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 01/11] clocksource: timer-riscv: select CSR from
 device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 7 May 2021 13:34:30 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> Hello Antony,
> =

> On 07.05.21 00:08, Antony Pavlov wrote:
> > barebox timer-riscv driver supports one of user counters:
> > =

> >   * 'cycle', counter for RDCYCLE instruction (CSR 0xc00);
> >   * 'time', timer for RDTIME instruction (CSR 0xc01).
> > =

> > At the moment in S-mode timer-riscv uses the 'cycle' counter,
> > and in M-mode timer-riscv uses the 'time' timer.
> =

> Other way round, right? cycle for M-Mode, time for S-Mode?

Yes, you are right, my bad.

> > =

> > Alas picorv32 CPU core supports only the 'cycle' counter.
> > VexRiscV CPU core supports only the 'time' timer.
> > =

> > This patch makes it possible to use the 'time' timer
> > for VexRiscV CPU in M-mode.
> =

> Is that allowed by the ISA? To provide time, but not cycle?
> Can VexRiscV boot Linux? If so, how does Linux handle lack
> of this CSR?

Here is an unobvious answer for all these questions at once.

The RISC-V Instruction Set Manual, Volume II: Privileged Architecture
Document Version 20190608-Priv-MSU-Ratified states that

<<
   Attempts to access a non-existent CSR raise an illegal instruction excep=
tion
>>

So you can even realize in hardware very few CSR for exception handling (ms=
tatus, mcause, mtvec, mie, mepc)
and try to emulate all other CSR in software !

As a result exception handler for VexRiscv emulates access to 'cycle' CSR (=
RDCYCLE pseudo-op)
by reading the 'time' CSR !  =

Please see https://github.com/SpinalHDL/VexRiscv/blob/master/src/main/c/emu=
lator/src/main.c#L239

opensbi do near the same ! Please see https://github.com/riscv/opensbi/blob=
/master/lib/sbi/sbi_emulate_csr.c#L64

Can VexRiscV boot Linux? Yes, it can boot linux!
Please see this demo: https://asciinema.org/a/7fLu84ytgtVd3rjPm7Li3GD4r
In this demo barebox loads emulator.bin into the RAM.
This emulator.bin realizes SBI for linux kernel and emulates all missed fea=
tures
necessary for running linux.


>  =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/riscv/cpu/time.c             |  7 +++++++
> >  arch/riscv/dts/erizo.dtsi         |  2 ++
> >  arch/riscv/include/asm/timer.h    |  1 +
> >  drivers/clocksource/timer-riscv.c | 19 ++++++++-----------
> >  4 files changed, 18 insertions(+), 11 deletions(-)
> > =

> > diff --git a/arch/riscv/cpu/time.c b/arch/riscv/cpu/time.c
> > index 39bb6a5112..59c8ca61d6 100644
> > --- a/arch/riscv/cpu/time.c
> > +++ b/arch/riscv/cpu/time.c
> > @@ -18,6 +18,7 @@
> >  #include <asm/timer.h>
> >  =

> >  unsigned long riscv_timebase;
> > +unsigned long riscv_use_csr_cycle;
> >  =

> >  int timer_init(void)
> >  {
> > @@ -32,6 +33,12 @@ int timer_init(void)
> >  =

> >  	riscv_timebase =3D prop;
> >  =

> > +	if (of_property_read_bool(cpu, "csr-cycle")) {
> > +		riscv_use_csr_cycle =3D 1;
> > +	} else {
> > +		riscv_use_csr_cycle =3D 0;
> > +	}
> > +
> =

> Any reason this couldn't happen in driver probe?

Because we already have riscv_timebase parse routine outside of driver prob=
e.
I tryed to avoid code duplication.
Why we couldn't parse riscv_timebase in driver probe?

> I'd also prefer another name, e.g. barebox,use-csr-cycle ?

Yes, barebox,use-csr-cycle is a better name.


> >  	of_platform_populate(cpu, NULL, NULL);
> >  =

> >  	return 0;
> > diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
> > index 228711bd69..b3ccf281f2 100644
> > --- a/arch/riscv/dts/erizo.dtsi
> > +++ b/arch/riscv/dts/erizo.dtsi
> > @@ -22,6 +22,8 @@
> >  =

> >  		timebase-frequency =3D <24000000>;
> >  =

> > +		csr-cycle;
> > +
> >  		cpu@0 {
> >  			device_type =3D "cpu";
> >  			compatible =3D "cliffordwolf,picorv32", "riscv";
> > diff --git a/arch/riscv/include/asm/timer.h b/arch/riscv/include/asm/ti=
mer.h
> > index 1f78ef4c00..555b3f5989 100644
> > --- a/arch/riscv/include/asm/timer.h
> > +++ b/arch/riscv/include/asm/timer.h
> > @@ -5,5 +5,6 @@
> >  =

> >  int timer_init(void);
> >  extern unsigned long riscv_timebase;
> > +extern unsigned long riscv_use_csr_cycle;
> >  =

> >  #endif /* _ASM_RISCV_DELAY_H */
> > diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/ti=
mer-riscv.c
> > index ef67cff475..c0deed40eb 100644
> > --- a/drivers/clocksource/timer-riscv.c
> > +++ b/drivers/clocksource/timer-riscv.c
> > @@ -13,7 +13,7 @@
> >  #include <asm/timer.h>
> >  #include <asm/csr.h>
> >  =

> > -static u64 notrace riscv_timer_get_count_sbi(void)
> > +static u64 notrace riscv_timer_get_count_time(void)
> >  {
> >  	__maybe_unused u32 hi, lo;
> >  =

> > @@ -28,7 +28,7 @@ static u64 notrace riscv_timer_get_count_sbi(void)
> >  	return ((u64)hi << 32) | lo;
> >  }
> >  =

> > -static u64 notrace riscv_timer_get_count_rdcycle(void)
> > +static u64 notrace riscv_timer_get_count_cycle(void)
> >  {
> >  	__maybe_unused u32 hi, lo;
> >  =

> > @@ -43,16 +43,7 @@ static u64 notrace riscv_timer_get_count_rdcycle(voi=
d)
> >  	return ((u64)hi << 32) | lo;
> >  }
> >  =

> > -static u64 notrace riscv_timer_get_count(void)
> > -{
> > -	if (IS_ENABLED(CONFIG_RISCV_SBI))
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
> > @@ -61,6 +52,12 @@ static int riscv_timer_init(struct device_d* dev)
> >  {
> >  	dev_info(dev, "running at %lu Hz\n", riscv_timebase);
> >  =

> > +	if (riscv_use_csr_cycle) {
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

