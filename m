Delivery-date: Fri, 05 Sep 2025 04:23:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uuM71-008HFH-1A
	for lore@lore.pengutronix.de;
	Fri, 05 Sep 2025 04:23:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uuM70-0000K1-3U
	for lore@pengutronix.de; Fri, 05 Sep 2025 04:23:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Lta8OHF766M7/mr+v/jd+wYQ4BoqV6Onr+yt/kw1nU=; b=SKm3E0NDGWPZLuWOh290z68G9u
	DAy0ektnokarUNxdDi/58xh3JEA3OwAlbApMX8ZOcmfNhTiBC7vX0XwRGUi49ymQewLFgT37jItIc
	zdPUyKN7zlTOM+QwflCIW0CuGVuhba3uEj2CwqUblVKW+Q2VeuaDOeCu+8o68OXFqVsfzYOjNDQSM
	4hlOv2WB1nZecIdRYyHZogk/wQUlvTphGqxk0kK9B0phyJ7MkGAcg0SqXzrwNpK1g7VXlqBV6l0Gj
	03FRkvy68Nktq5LLzaFOcY7GYgLqCFozzZhxT9RPER+lSMfPemtrzaCSYQlLOWn1ZTP+d7QR/bfJG
	wM/lEbJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuM6I-0000000G5FJ-2Bgv;
	Fri, 05 Sep 2025 02:22:54 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuITc-0000000Et35-0MW9
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 22:30:45 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-80b7a6b2b47so151860285a.0
        for <barebox@lists.infradead.org>; Thu, 04 Sep 2025 15:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757025043; x=1757629843; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3Lta8OHF766M7/mr+v/jd+wYQ4BoqV6Onr+yt/kw1nU=;
        b=il8uM6jUOxkNPTD7OR38EV/8R/kBbARrU2gx0/wrbX2ExZZXN/bwFhoNEm6axjjeR8
         mSRpfsz+pFxt2KgaLINn2gZziicOCkXvYXitDBbDEzEc1oY2xd9YQ9krDQU5X7JDB0MZ
         j7KPjgokoQ7TK7TdKBMI8WX1PzIKpzdkj+m7nmvMhi3AeyWRfl5PRYiGekZfBkPoMzda
         ZCNQPgM26ttxg5i0fxrazoJr833wr+rzadyetDrJsM+zlKlFQS/p/0vF7fTPP1uaDJYK
         qJZeTRiSMLB+L0Jiq/sg0NfSJ/ocW2Jbp+2BFCPxO7RizRxI7Ot/C75LvOh0zIl7tUrg
         7+sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757025043; x=1757629843;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Lta8OHF766M7/mr+v/jd+wYQ4BoqV6Onr+yt/kw1nU=;
        b=N2e9aNIOUAb6qWPH1CNY7mlHHvrD537T7vMbDJn2ZBewV3NyRSKY0vN6wdApvV7o40
         Ftd6tLSE2eW9uI1SXB7zpC2LXqT/52YSM850AxAIkeZxOHVIdcVxSMzey92AX1OQL/HU
         bFfHhA6q81I87Y/ZpkPkR8jrH34j3A3cp1Om9ACbvQKrN770TndmbuNFIJ2dRiG6iPip
         zzNw8hlNfTT+cKFF8KLodb24M9KTWwrTnc45LxsknbREsvbjeCPPOTQAmm5kZElgSY/X
         bNXzn8IPr1JJFelM8WQPbHpomVw4AJJtvh3MiYH5ncbr2F4jO7wZ2Nyw37w+LvDA/q9B
         doHA==
X-Gm-Message-State: AOJu0YzYAdDc7bG3ymYiZGt1CdxrXBw24b7qYk67LQKt9ytKomDxmzp4
	3W+7nxo9x9fmIcFxJX4YBXuihJ7+QyIn3SEMB5PyJsYV0IvmbJmOjgJpIGHoDwAch9o=
X-Gm-Gg: ASbGncsm47ieb6rPa77sQMLsJgVSPpgjtVykwdR0NvLvu2pv3c0ZoZuqLe50n+bliP+
	M8kKMgWrRx+Tl+BX5EjQ8vVQs+zJQuFpTkZSbmPD129tAiVEuZ41T7+ivpmZSKZnvPAPppSx/5+
	rdAeVtymODV0goktduv3MR/rO0AQx9hVjNj0mZSI8VIyQfwUdWncfwEawmBTNvDVCl7zL9g5tZ0
	gOUsX543LmJLPAQhGygc7blc+iKJstohuNR80ozkwuHCEVZWXrJ5qHi4Bxe5OCmjhvFn8UnPEb+
	nkUlkb98P0GbnpDgzhplYmsKnmi+1ZWi1iCCbrxaYz47gLk1SiFyg4KwMxqBmdIbQlPafgBzItb
	pmZn42gL5/Gu8g9KfQ98I/A7839tqhn/OW7rV+xarK7R6o6o6O/CcxO5TK3zAY3jFrd+fifm0cN
	UxFpNhytDgVWZm2IutgNhz8ixn8k+RkAkvU1tVT8I1GOKPvO1KVIqZ28m2Q+Q0SdwhJXhEaQ==
X-Google-Smtp-Source: AGHT+IHujpK4p1tUVvK05r0Lwv7cIAKA2/UpVa3lyMwUoZcxZnPsLWTW1niBseOSo9vwK5CKggEIfA==
X-Received: by 2002:a05:620a:6cc3:b0:7e8:1f79:67a2 with SMTP id af79cd13be357-7ff284b2c5fmr2321454985a.34.1757025042763;
        Thu, 04 Sep 2025 15:30:42 -0700 (PDT)
Received: from ?IPv6:2607:fa49:8c41:2600:dd39:d089:1496:e8e1? ([2607:fa49:8c41:2600:dd39:d089:1496:e8e1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-720ad2cbc78sm54037626d6.23.2025.09.04.15.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 15:30:42 -0700 (PDT)
Message-ID: <2d921c4127fd496c668ab5ef1a6ee874352ef25d.camel@gmail.com>
From: anis chali <chalianis1@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
Date: Thu, 04 Sep 2025 18:30:41 -0400
In-Reply-To: <4e375172-1a65-40f8-a3a5-f35ae6a515c5@pengutronix.de>
References: <20250831035542.1623695-1-chalianis1@gmail.com>
	 <20250831035542.1623695-7-chalianis1@gmail.com>
	 <4e375172-1a65-40f8-a3a5-f35ae6a515c5@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_153044_129775_E8E34217 
X-CRM114-Status: GOOD (  21.76  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 7/7] efi: payload: add options for FDT force and initrd
 direct install
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Hello Ahmad,

> > ---
> >  efi/Kconfig | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >=20
> diff --git a/efi/Kconfig b/efi/Kconfig
> > index 84f670fd23d3..c3811574920d 100644
> > --- a/efi/Kconfig
> > +++ b/efi/Kconfig
> > @@ -50,4 +50,21 @@ config EFI_PAYLOAD_DEFAULT_PATH
> > =20
> >  endif
> > =20
> > +config EFI_FDT_FORCE
> > +	bool "Force EFI provided FDT"
> > +	default n
> >=20
>=20
> n is the default
>=20
> +	help
> > +	  with this options we keep the fdt passed by EFI in the
> > +	  system configuration table, EFI has to suppot FDT otherwise
> > +	  an empty fdt will be generated when linux boots by efi.
> >=20
>=20
> These things should be runtime configurable and not in Kconfig.
> Why can't you take a user-supplied FDT if there is one and otherwise
> fall back to of_get_fixed_tree_for_boot() as fallback?

The reason why I ignore a user supplied fdt is the secure boot, in that cas=
e
I only accept a signed fit image fdt or keep the efi supplied fdt which is
already in the configuration tables so we can trust it, it is probably sign=
ed
and verified by efi. concerning the of_get_fixed_tree_for_boot, I think we =
can not
use it at least for now because, maybe I'm wrong but we didn't implement an=
y code
to tell barebox to use efi.dtb, we only implemented code to extract the fdt=
 from
configuration tables and write to /efi.dtb.

> +config EFI_INITRD_INSTALL
> > +	bool "Install the initramfs by barebox"
> > +	default n
> > +	help
> > +	  with this option barebox will install the initrd to the
> > +	  system configuration table, same as what kernel do after
> > +	  calling read file2 boot services, in this case the initrd
> > +	  will be read directly by the kernel as an initramfs.
> >=20
>=20
> Same thing, why can't we check for data->initrd and use that?
to answer your question, the same reason as for fdt, in case of secure boot
we ignore user supplied initrd. I think booti or bootm do the same thing, i=
n
secure boot mode they ignore overrides.

concerning the EFI_INITRD_INSTALL, it is an option to early install the ini=
trd=20
in barebox, instead of exposing a boot service protocol to linux, then linu=
x calls back
to barebox to get the initrd data and after that installing it to the syste=
m configuration
data, I added this code in the begining to debug and after that I implement=
ed as what did by grub2, u-boot...etc.

Thank you for your support,=20

cheers
Anis C.


