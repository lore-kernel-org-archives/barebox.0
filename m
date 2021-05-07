Delivery-date: Fri, 07 May 2021 16:26:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf1RG-0004a2-Qm
	for lore@lore.pengutronix.de; Fri, 07 May 2021 16:26:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf1RF-0004wE-MS
	for lore@pengutronix.de; Fri, 07 May 2021 16:26:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=txtDTwSXgiAADZ4HyaNOxRTnw1qmf2vkG20TeuNz9gc=; b=Qf+Zb716wB1sLIxFxHW1eLG7C
	dIIwg1nbj9yjTZ2Llq82cxHa135e1XBo9ubovdhXMnRWd0Qiuczuz7o56qOEwicg0vycOy0lCh1at
	pR3pXcRyxiWvOJejyDyHgk92KZDz4bvznDSx9rY1D94S3+h27oq/IOyb5hoJ+hBkk6KmixDHoWIit
	nBUYXod4ddtwixoLxkm9PkErGIKIYSjN6NFRV8l6EkKgNKsvyU+6ZWM0kJcuQ80Cg8pt6/Xg25M7j
	zv6/uz5PF+LKs8fI6biwfbDvLILL6W+Uz14NdqvLBoAsZS+pG/JZL0rzDUBXH/mUTpdrGMzON8pvK
	4Yr5Kxd0w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf1QA-007Jf0-8X; Fri, 07 May 2021 14:25:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf1Q6-007Jej-L8
 for barebox@desiato.infradead.org; Fri, 07 May 2021 14:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=/723o5GwA35z+dBnAGCqI+agwcMj06jzqsd+4ylKpJM=; b=Q3+C+KlKBDxGDZqjI7ARdOAI6K
 j5G9EYYZV3iw8OWGPMk56dKDYC6jbg/lAEsMsJ1hitFY6us76c1c+16ipPNs988sivpROpazLcSK/
 rtJvP+5E787xBWPbF6ZqsNpuJ3jTDGvcE6BQdwgC+vG15WHFBcWSSNozb0r7xSQDh77uXYZBvr2Q0
 9dqZjszYJZhyi2K6a577mCHHiO8PkeGjpW4Jo9rxzJT++Xl8bLajz8+GdGiM9IOtzon3tANjRDmj0
 9SgqTYFnr0W/fI3oIFcJdwBX9f9IFhF0TbNwdecaeVyylG0SvGdYf5eKhY69s53dbmNksCPuLXF9p
 vlyg4dPw==;
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf1Q3-006vk2-M6
 for barebox@lists.infradead.org; Fri, 07 May 2021 14:25:33 +0000
Received: by mail-lj1-x22b.google.com with SMTP id w4so11788090ljw.9
 for <barebox@lists.infradead.org>; Fri, 07 May 2021 07:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/723o5GwA35z+dBnAGCqI+agwcMj06jzqsd+4ylKpJM=;
 b=dJFZGfqDu4efrd3I1I826uIj7pHCnri5DofIxn3QSh35seiJL+zDJJVdYEKa9F85si
 7ZW/QUqpZ8xjOtM4vrvjw5hrpqANtouCQyHub2Sk0+PNGPBO4M73haY2lBRtI87t7oJn
 FQM2GkACRz5s1s0NMCPMFHDQwmjy4KAI8PFR8cvFR/t7zDZDIsL3Iuz28UHSZ8QHDrsK
 nPCW1X7WaCaHHG9z1hw9rICpAmBJhuh2OXcBa72SOLKjYdnalacpCuCmy649cUe5Jh2Q
 NvtU4PWlR4575vGIpIBjkjfe9rL/q+7M1hwPtHGEjZqzAtP83RIZMecX8EpplFYSgnHL
 shHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/723o5GwA35z+dBnAGCqI+agwcMj06jzqsd+4ylKpJM=;
 b=XCyQgSAX52FBl2zIRAXNIcb0Uviyjtsvh5rXeT6AAmqu9LEKuQ7K4ua5StKN7MHGdA
 X+5DTEHvv/OucZlcgalmS9mRa7wLiq3FjqdH7Y406HFDg/+Mjqgy3TzDGHr7yk4LXz+m
 CjGizCiO7DnI3M2DY6Jt+uSrYLwT657p/bgYpz8GmDzq5WUNxEDJ0gRHZNnBfLqNulq+
 0nh74Tdx20h/ZgGUOc2IGJyi6DqKu6lnpC0+JYYmt7GtrQ0I+IgvubZQpeasB/gWLihN
 CiX/htxe4orKuXwApEd84rBorp9cPAg+hiziu5TnxyHIMmGoF4rRrqaVQKedQceWvq71
 3OwA==
X-Gm-Message-State: AOAM531eQLdx3c2wKTSqadzwydCpDKsJzJmSRDIvrYSp/+0GLUkB5kRP
 kDVljgr3dUkopnOWXfPgtP0=
X-Google-Smtp-Source: ABdhPJw9PxKIMwwfnE7WQkZ2Oh7DxVb2TuyWEb4fO+NJmoM6fD0ei/WydvE90HxLfpGsyF0Ikiw2IQ==
X-Received: by 2002:a2e:9a14:: with SMTP id o20mr8030143lji.309.1620397529712; 
 Fri, 07 May 2021 07:25:29 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id f3sm1834676lja.107.2021.05.07.07.25.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 May 2021 07:25:29 -0700 (PDT)
Date: Fri, 7 May 2021 17:25:27 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210507172527.cf80cf7cb749560d2e8200cd@gmail.com>
In-Reply-To: <c1791cb3-2837-eb3e-aa58-9d1eb2a3d7b5@pengutronix.de>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
 <20210506220834.223350-3-antonynpavlov@gmail.com>
 <c1791cb3-2837-eb3e-aa58-9d1eb2a3d7b5@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_072531_746345_744F6CC8 
X-CRM114-Status: GOOD (  29.62  )
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
Subject: Re: [PATCH v2 02/11] RISC-V: make RISCV_SBI and RISCV_M_MODE
 explicitly mutually exclusive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 7 May 2021 13:42:00 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

> Hello,
> =

> On 07.05.21 00:08, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/riscv/Kconfig                         | 22 ++++++++++++----------
> >  arch/riscv/Kconfig.socs                    |  4 +++-
> >  arch/riscv/configs/erizo_generic_defconfig |  1 +
> >  3 files changed, 16 insertions(+), 11 deletions(-)
> > =

> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index a4aa799acf..dcff00d63f 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -38,6 +38,18 @@ config ARCH_RV64I
> >  =

> >  endchoice
> >  =

> > +choice
> > +	prompt "Privilege level"
> > +	default RISCV_SBI
> > +
> > +config RISCV_SBI
> > +	bool "S-mode (supervisor mode), use SBI calls"
> > +
> > +config RISCV_M_MODE
> > +	bool "M-mode (machine mode)"
> > +
> > +endchoice
> =

> Hmm. I am wondering if we shouldn't just make both selectable
> at the same time and fix code to call a function that determines
> mode dynamically? e.g.
> =

> enum riscv_mode { RISCV_M_MODE =3D 1, RISCV_S_MODE =3D 2 };
> =

> static inline enum riscv_mode riscv_get_mode(void)
> {
> 	if (IS_ENABLED(CONFIG_RISCV_M_MODE) && IS_ENABLED(CONFIG_RISCV_S_MODE)) {
> 		/* somehow determine it dynamically */
> 	}
> =

> 	return IS_ENABLED(CONFIG_RISCV_M_MODE) ? RISCV_M_MODE : RISCV_S_MODE;
> }
>
> =

> I would really like to have a riscv{32,64}_defconfig that can just build =
all boards
> at once. Do you know if this could be dynamically determined?

At the moment I have not answer.
I'll try to investigate dynamic mode determination, it's very attractive id=
ea.

On the other hand compile time mode selection is not the show stopper for
"one defconfig to build them all": we have to make STACK_SIZE and MALLOC_SI=
ZE
per-board parameters not per-defconfig parameters like now.

If we could make STACK_SIZE and MALLOC_SIZE per-board compile-time paramete=
rs then
we can make RISC-V mode per-board compile-time parameter too. Is this solut=
ion
acceptable?

> > +
> >  source "arch/riscv/Kconfig.socs"
> >  =

> >  config CPU_SUPPORTS_32BIT_KERNEL
> > @@ -97,14 +109,4 @@ config NMON_HELP
> >  	  Say yes here to get the nmon commands message on
> >  	  every nmon start.
> >  =

> > -# set if we run in machine mode, cleared if we run in supervisor mode
> > -config RISCV_M_MODE
> > -	bool
> > -
> > -# set if we are running in S-mode and can use SBI calls
> > -config RISCV_SBI
> > -	bool
> > -	depends on !RISCV_M_MODE
> > -	default y
> > -
> >  endmenu
> > diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> > index c6875738d0..f767942f34 100644
> > --- a/arch/riscv/Kconfig.socs
> > +++ b/arch/riscv/Kconfig.socs
> > @@ -3,10 +3,10 @@ menu "SoC selection"
> >  config SOC_ERIZO
> >  	bool "Erizo SoC"
> >  	depends on ARCH_RV32I
> > +	depends on RISCV_M_MODE
> >  	select HAS_ASM_DEBUG_LL
> >  	select HAS_NMON
> >  	select USE_COMPRESSED_DTB
> > -	select RISCV_M_MODE
> >  	select RISCV_TIMER
> >  =

> >  config BOARD_ERIZO_GENERIC
> > @@ -15,6 +15,7 @@ config BOARD_ERIZO_GENERIC
> >  =

> >  config SOC_VIRT
> >  	bool "QEMU Virt Machine"
> > +	depends on RISCV_SBI
> >  	select BOARD_RISCV_GENERIC_DT
> >  	select CLINT_TIMER
> >  	help
> > @@ -23,6 +24,7 @@ config SOC_VIRT
> >  =

> >  config SOC_SIFIVE
> >  	bool "SiFive SoCs"
> > +	depends on RISCV_SBI
> >  	select CLK_SIFIVE
> >  	select CLK_SIFIVE_PRCI
> >  	select RISCV_TIMER
> > diff --git a/arch/riscv/configs/erizo_generic_defconfig b/arch/riscv/co=
nfigs/erizo_generic_defconfig
> > index 247a179130..16168eef66 100644
> > --- a/arch/riscv/configs/erizo_generic_defconfig
> > +++ b/arch/riscv/configs/erizo_generic_defconfig
> > @@ -1,3 +1,4 @@
> > +CONFIG_RISCV_M_MODE=3Dy
> >  CONFIG_SOC_ERIZO=3Dy
> >  # CONFIG_GLOBALVAR is not set
> >  CONFIG_STACK_SIZE=3D0x20000
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

