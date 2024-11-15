Delivery-date: Fri, 15 Nov 2024 15:48:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBxcE-002Hm2-0W
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 15:48:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBxcD-0000id-Dl
	for lore@pengutronix.de; Fri, 15 Nov 2024 15:48:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MWDJo3TDZCnR0bzdEqJZ8zjTOTSKAoKiMLQmfB+1y9E=; b=MLva7u11PkBwFz3JhpMgoeDb6B
	/exiw7pheKoMznEsy8BBIsIK5Ib2Mv6D+SfziWLESkjoB92DNljCHQHngTCVcisBHVJhv5ltcxGZC
	mGoElFlq37dl12Vf2AFI9wZMzGvG6oesttW4u62im5KtdJTMq8UAInVAXAk7EX0RY3XLKSM2Y6oUH
	IvCZcbc8n7R6IGBPlq7JIxn2QNUZKa/cab0JRQIhvVQCdueq4rw0CaqubLL5PqWFfL6ArZ7FgFRI7
	jKQSOOo4kxq1Rs0mdNQzVXK6L2faEhVyteXBUQWfC+1H7raVdbLZqOXBUdOql/lm0IW6SnOHL3b18
	F9hhZEng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBxbZ-0000000328K-3TkB;
	Fri, 15 Nov 2024 14:47:25 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBxbX-0000000327s-2lSu
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 14:47:24 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3821a905dbcso1200508f8f.0
        for <barebox@lists.infradead.org>; Fri, 15 Nov 2024 06:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731682042; x=1732286842; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MWDJo3TDZCnR0bzdEqJZ8zjTOTSKAoKiMLQmfB+1y9E=;
        b=ZDu9dKyctCTBR6MXxzy0+wmNitSpgz1dB9MjJfS63SCgphDDZiwBSjI8rwiztHo35L
         JdeX5i4qoSgVy4MWXX3Yahb14GpL56/MSxadkIZfSOKJ1jw6ZArKwvMHR81dlX8QBLx3
         A7YFmCgN5lBdO4AVcQPgNVNeWFin7oS1XtYZfABbwizBVc8NLLTWExBOxgYtZ+A2poug
         wX9BMQsZ98Ks6pmuegvSsGF+hUzWnSsDuimbrDJKYo2oMJgQmFUkeLoDzY+6iPIOYRI2
         bpJJzuRljk/inYRoM6c3Lpka9Vk4pUJOgXTHf1zxNJ7yJVKWzReW356x7dwZeGdbGA0V
         9gSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731682042; x=1732286842;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MWDJo3TDZCnR0bzdEqJZ8zjTOTSKAoKiMLQmfB+1y9E=;
        b=PwySqaYyKST7Uf95fGit6t2pwPUcUq6J2kcZVghKkZYhv06R/Ms/nZYOEFIOfh+ZB7
         RBRPsWNxv90ita4Fw9bv7TyWysZf+yhqawecya97gMXwgCdDAGELfUsvVH1+6PVI4lcU
         jxj/gWL0/aaesyGGe1boJe9KUUSQqx9cGVqrC1LyoQOBqDHoKQYduURGyvu6I+ANesUN
         YG2RIT5GzVpDzVWWW0OUFJk1xaWfYVWeNcRPyXfYWDAKYO20whO3t01quAewFifCilRJ
         n1qjAQ5UllXWTIeSznLBzdMFAQHhMBrSdfcl6RDv9wTzWpuCmpqoT8mGuvrK8T2P1MhT
         hPaw==
X-Gm-Message-State: AOJu0YzHKnE7puPP7XIfvjSHXkaugmfNHqxaFeh4fYjtHjlE66LfOXpv
	aP7WMn5vUKpj91cvar6Z8x7cY/w4MtyYRfgJatBGt2zn6RUt0IwWmdmiX3OMwd47Fd2DIu3yuFd
	CO/b34L8J/zZwB6HSkxNxoWaWMfw=
X-Google-Smtp-Source: AGHT+IFDoQ4/ZIwTebnAm4XATRS8h157rSIfHQPmAwVBhU71cdyTKEkScQsGaQHKBa2XXAoeKrq9ME4veX3eqWuJgYo=
X-Received: by 2002:a5d:5c12:0:b0:381:f443:21d0 with SMTP id
 ffacd0b85a97d-38225ab4464mr2543940f8f.59.1731682041553; Fri, 15 Nov 2024
 06:47:21 -0800 (PST)
MIME-Version: 1.0
References: <CANn9nbiT8J+irgWYQxiTydNyOiTEiXBo_ZLqdVG1EGpHY9eyOA@mail.gmail.com>
 <ed999cd8-a8e3-4e19-ba7d-924e393945ab@pengutronix.de>
In-Reply-To: <ed999cd8-a8e3-4e19-ba7d-924e393945ab@pengutronix.de>
From: Stefano Manni <stefano.manni@gmail.com>
Date: Fri, 15 Nov 2024 15:47:10 +0100
Message-ID: <CANn9nbjCGMOavMYQ+_WSGvSXYVcvFsi6d4H89LWqYfjFP4Pk6A@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_064723_696358_D4D96765 
X-CRM114-Status: GOOD (  29.08  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: firmwareload fails for cortex-m7 on imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

patch [1] works fine when M7 firmware is compiled to run from ITCM. Thank you!

But when I use exactly the same firmware but compiled to run from DDR
(see [2]) I got:

barebox@NXP i.MX8MPlus EVK board:/ firmwareload hello-ddr.elf
remoteproc0: powering up remoteproc-cm7.of
ERROR: remoteproc0: bad phdr da 0x80000000 mem 0x3de4
ERROR: remoteproc0: Failed to load program segments: -22

Note that I can run it both from linux and u-boot.

[1] https://lore.barebox.org/barebox/20241115135242.1251691-1-a.fatoum@pengutronix.de/
[2] https://docs.zephyrproject.org/latest/boards/nxp/imx8mp_evk/doc/index.html#programming-and-debugging-m7

Il giorno ven 15 nov 2024 alle ore 15:02 Ahmad Fatoum
<a.fatoum@pengutronix.de> ha scritto:
>
> Hello Stefano,
>
> On 15.11.24 14:43, Stefano Manni wrote:
> > Dear all,
> >
> > I cannot run an ELF image on the M7 core on the imx8mp soc.
> > The ELF comes from zephyr and it runs as expected when I load it from linux,
> > but in barebox I encounter this error:
> >
> > barebox@NXP i.MX8MPlus EVK board:/ tftp zephyr.elf
> >         [################################################################]
> > barebox@NXP i.MX8MPlus EVK board:/ firmwareload zephyr.elf
> > remoteproc0: powering up remoteproc-cm7.of
> > DABT (current EL) exception (ESR 0x96000061) at 0x00000000007e0004
>
> https://esr.arm64.dev/#0x96000061 decodes this as
> "Abort caused by writing to memory" (Alignment fault) with valid FAR.
>
> FAR is the addresss listed here (0x00000000007e0004), which is indeed
> not divisible by 8.
>
> > [<ffd826f4>] (__arch_memcpy+0x48/0x13c) from [<ffd82a00>] (memcpy+0xc/0x14)
>
> The optimized memcpy used here expects misalignment not to trap.
>
> > As you can see the exception happens when rproc_elf_load_segments() tries to
> > memcpy a segment where the M7 expects it. The ELF has been compiled to run
> > from ITCM memory (0x007E0000-0x007FFFFF).
> >
> > Do you have any idea? Maybe may I have to put a reserved-memory for ITCM?
>
> I think I may have broken this when I changed barebox to map everything outside
> main memory as uncached.
>
> I did this, because we 1) don't want to risk the main CPU speculating into I/O
> memory and 2) don't want to have to use memory barriers for synchronization.
>
> The flipside is that drivers that access I/O memory must do this via
> readl/writel and friends or via memcpy_io/memset_io. This was already required
> before, but some drivers that didn't do this were lucky enough to fly under
> the radar. At least for remoteproc, this seems no longer the case.
>
> I just Cc'd you on a patch to fix this for remoteproc.
> Please let me know with a Tested-by if this resolves your issue.
>
> Cheers,
> Ahmad
>
> >
> > Thank you.
> >
> > Best,
> > Stefano
> >
> >
>
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


