Delivery-date: Wed, 14 Apr 2021 14:56:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWf41-0002Fa-FR
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 14:56:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWf40-0002TU-Mp
	for lore@pengutronix.de; Wed, 14 Apr 2021 14:56:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x4Cz0+6X2v6F7jK3Ldk07T+T2XaX9rYdq7KZbMkuifY=; b=RTdui/F3+t1SseTDvc4148Ex5
	JUSAr08FnpfEhAbKn3whzcaR2a2x7+7cQpSHCZcpaOelbfNJdhY8BBl0Bvq7tnIbusPwS6joye7ge
	vGSHa0rbOrS9j5IYwhvEOxQwVeP4W69rG/3+tl3t4sKslmgGpPRY2bCXQ9nfg7AArHiVcqoPMuvBh
	0v1ZUkGOCGcsYo+Mw6HHWOAEjPU8/U+bhRvBvMWCYGq10odEEWawhmEBpDNLOgchG5jHOkl80ybv3
	AlTxSARyb4hUyVUENrSPlQgPA1Ti5FuX1/oQ0JL5EXuUftnFZVl/zvvwsEpS57AiT85/7QtisyiYc
	OIxvCz8gQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWf2u-00CeOC-2v; Wed, 14 Apr 2021 12:55:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWf2g-00CeNc-1E
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 12:54:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=E49FzmCJYCgaioWTg1bHzxLQy15ErmC7oBB8UYneukg=; b=wxrUSfyz/OMZFxrbq3gkYuhmvU
 KCdfcwb+PT8lqU4mEVQufqRFxplpMmV6He2ka8DZE9xF6DCmhE6IEiRmsFjf9vok24IKoZ241jV2r
 UvubeVR3MS72Xet29hrELaoREfQNaOm7cO5iKrjh5Q/BJLNbMCIjqwhtKkkH47xmMudL2risd52xT
 I0dzS5hnQhTp7hvmJSn8svQK7iIeQOeuhgu3/NQfnuQeJiCnmmJl5NkFVEKF+Pa4WiB7PZSKYWstY
 J3zZ7Gw7tNWVauMDFt3l/2C7/j9iMBXnuSma2yTOTtDAf4ClarxiSUxoyXtIvIRq4nVYyN0P2fznD
 +rACrpLQ==;
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWf2d-007luT-BR
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 12:54:48 +0000
Received: by mail-lf1-x12a.google.com with SMTP id j18so33067799lfg.5
 for <barebox@lists.infradead.org>; Wed, 14 Apr 2021 05:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E49FzmCJYCgaioWTg1bHzxLQy15ErmC7oBB8UYneukg=;
 b=OllsdNNHuP1/8hgKBRO91/AHQLotgXI5QybLEXLtdMMec5IaMOaf0GSNagWycLqDXC
 u881IDGBe+e2p/I6j12FzV0KFRp2+vZ8k1rw1BeRa6mUYOOUlI4rMXFi88JwDzKM/+wx
 lTIrKtyuNcy4KdkDRu0m0SI5C0p8EdwIQ/wIUS6ikHA3FEP2CDqbLL5rrOfqCJXJokJV
 D84EmrFw5zT2Es55YrCZdzkkffRf9BBD8r/Q90miMjBhxoYg1BSr9E5+qZbi7boUe44V
 8Ievu5Ik5dDaUp81Do461h84MJb26W+QcTquGXzGdPIEr6dZLjbhnDEAztPEvrIZpWvm
 rv3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E49FzmCJYCgaioWTg1bHzxLQy15ErmC7oBB8UYneukg=;
 b=AKLWM2vNb3VUFCTURJZta5Q+6ywQG00zrahHv7q89xBTp3aYKn1bRRKEWStcrkIPIB
 H5t8OnHDBaeSf6OWp/Nh1SUfWPWt+vHMEJLDf6etvK2ZCQQUyLnnOyvbJ/J4WImcd1J9
 SoP1MNX2wpLjIMGesgiW5i6NAfNvNcG08pHaNPzNEF6/qIkg1aV6msGEgr62lfgpLNr0
 yfD9c5w7MOW4msfBxsryxPk0QbUPhuVC00mWhvlBkj5qavtKSzErymbZOGY9PwkkzXxv
 eR1FMfioBrZl8XqXChedc0Uy1u9MPjBpOKbL5RS72Styk5dxYXDjWmjcPWPNyL3nx2i9
 Q1Pw==
X-Gm-Message-State: AOAM531xKepMBR9znmglqPClyePYT6PydEHrKQ6eS6lapzXEA7XQziI3
 H3Fe9tjBvZ/ugEqQWHxw0Qceh0lRvNEifA==
X-Google-Smtp-Source: ABdhPJw3yHgOx2tZVLuLJ61TTorj4U0R2ZzH6GMkHPxaJLiV48uIB7lEsDNcTOR/cJDUBMf81bDKlQ==
X-Received: by 2002:a05:6512:519:: with SMTP id
 o25mr2646733lfb.602.1618404885179; 
 Wed, 14 Apr 2021 05:54:45 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id s7sm4370063lfi.140.2021.04.14.05.54.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 14 Apr 2021 05:54:44 -0700 (PDT)
Date: Wed, 14 Apr 2021 15:54:43 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-Id: <20210414155443.f6f4c5b2c125a6581a7b5f75@gmail.com>
In-Reply-To: <5b740bc2-c0a2-2592-557b-f5da2540025f@pengutronix.de>
References: <20210414085422.ea70e3d7a89787a1ceda4b2c@gmail.com>
 <20210414095427.GS19819@pengutronix.de>
 <20210414140736.bf2d10eed1149d407434575a@gmail.com>
 <5b740bc2-c0a2-2592-557b-f5da2540025f@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_055447_416723_3DC56DA3 
X-CRM114-Status: GOOD (  19.79  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: RISC-V: erizo: large gap between bss and stack regions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 14 Apr 2021 13:20:44 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> On 14.04.21 13:07, Antony Pavlov wrote:
> > On Wed, 14 Apr 2021 11:54:27 +0200
> > Sascha Hauer <sha@pengutronix.de> wrote:
> > =

> >> On Wed, Apr 14, 2021 at 08:54:22AM +0300, Antony Pavlov wrote:
> >>> Hi Ahmad!
> >>>
> >>> Here is the iomem command output on erizo:
> >>>
> >>> barebox:/ iomem
> >>> 0x00000000 - 0xffffffff (size 0x00000000) iomem
> >>>   0x80000000 - 0x807fffff (size 0x00800000) ram0
> >>>     0x804ffd00 - 0x805ffcff (size 0x00100000) malloc space
> >>>     0x805ffd00 - 0x805fffe6 (size 0x000002e7) board data
> >>>     0x80600000 - 0x80636b1f (size 0x00036b20) barebox
> >>>     0x80636b20 - 0x8063ec9b (size 0x0000817c) barebox data
> >>>     0x8063ec9c - 0x80643147 (size 0x000044ac) bss
> >>>     0x807e0000 - 0x807fffff (size 0x00020000) stack
> >>>   0x90000000 - 0x9000001f (size 0x00000020) 90000000.uart@90000000.of
> >>>   0x91000000 - 0x91000003 (size 0x00000004) 91000000.gpio@91000000.of
> >>>   0x91000004 - 0x91000007 (size 0x00000004) 91000000.gpio@91000000.of
> >>>
> >>> I see large unused region between bss and stack regions (>1600 Kbytes=
).
> >>
> >> That's normal. The compressed barebox knows the size of the uncompress=
ed
> >> barebox, but it doesn't know the size of the bss segment above it. For
> >> that reason we have a very pessimistic estimate of:
> >>
> >> #define MAX_BSS_SIZE SZ_1M
> >>
> >> The barebox binary itself is then aligned to the previous 1MiB
> >> boundary, so barebox usually starts at 2MiB below the end of SDRAM.
> >> That's a bit wasteful for boards with very little memory like the eriz=
o,
> >> but that's how things are at the moment.
> > =

> > Can we make it configurable via Kconfig?
> =

> Or even better: Could we easily add to the piggy data the size of bss
> it contains?
> =


On MIPS we already have:

   bss_len =3D (unsigned long)&__bss_stop - (unsigned long)__bss_start;

On RISC-V we have __bss_stop and __bss_start, but we don't use them as MIPS=
 does.

P.S. hmmm... why there is '&' prior to __bss_stop on MIPS and there is no '=
&' prior to __bss_start?

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

