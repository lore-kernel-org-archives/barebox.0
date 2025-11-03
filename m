Delivery-date: Mon, 03 Nov 2025 16:26:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFwSN-00Eti5-24
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 16:26:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFwSM-0003Bs-NE
	for lore@pengutronix.de; Mon, 03 Nov 2025 16:26:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UtQievaa/Bi1KmZAf2rU1CYMPSJNrIOSVao2srzSLfg=; b=uSIUziZG8guIqh
	a+0+LHXpOVbD6KlgO9U32Z9M7y7NMrVAc/tBYOIFXkX7WKJSDDSSClk8GaiGs7HgPJn+s6HOmwQ+R
	rFduDlhE4sqh9Z5pmi2gfGhcne375NHcgW8jo82Vr0Kuul3Es5nmrdi4jfZ3PmCbsRAlCQPxS5Tch
	ITZZB4YVKB6U4NQciEm0pZs4QuYRcXyLt8axqGCihKjscelQbTxnxRbzuUHXXTxyJB23AbJHbDuYZ
	PVFa3dNZmDLiY8frr+gQqf9cNWPIEbs6xuileydNMv7PayvOsFBHk8HOJSVTteMt6KZtUhIw9CioI
	EGOQxptAx+IUGXjPSSyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFwRu-0000000A99r-2Q3X;
	Mon, 03 Nov 2025 15:26:26 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFwRr-0000000A994-1opC
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 15:26:24 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso3084489a12.3
        for <barebox@lists.infradead.org>; Mon, 03 Nov 2025 07:26:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762183582; x=1762788382; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UtQievaa/Bi1KmZAf2rU1CYMPSJNrIOSVao2srzSLfg=;
        b=HI2BkyMgZpQNWvHE99nchnYc23IkeA4R41nW0x/MYsszUctxLdnFhpxvifJi7xQJnx
         HN+hpuPHsKiVVLaOU0yevwcbQP1TQNgYd9rtK5AOw/pQCKIHsuE4Dt1SXSndRvWMcOvb
         mdHaHgS3LV+8yEPTz5xYWBMFw9wEsfZPmnbiWLZUI6bQXvJpy8PItombFhNiYAfWKDpJ
         HqQtAh5WwHArPHEwfTwrNnEcAkKOVRoj/qYWbh49F3ROUyvdmcS0L/wol+zFnpp1Km4e
         kWP0DyJjd3oinU6K48pKMQ9araRrrz68DYxds+Z/Ut6uxXkVezq3+pHPzGMn+vPT7Q0y
         foFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762183582; x=1762788382;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UtQievaa/Bi1KmZAf2rU1CYMPSJNrIOSVao2srzSLfg=;
        b=WgDDgzOQgWe+55LddVucOfzPSmAKGtJbfehJgY6+el4b/EpWOvbXDeh316NoliHuYQ
         5J/CPQT/8s6vWVeK3IRPY8pEJRa+nDiVdGYVaXaJErOiQ6UJpocFQU9e5dVhDqhElDcu
         3ZpHs/9GhqqVeVE4O9lWeaNH+5dRLtdDEe5dG2T3nDuWmjdgCLNNMQB3sus8kHggZ5Cv
         AU2UfBl+wZhtvr2v6A2RRUAGHhTOiP9U4wpb2vwalLp2R9b4BINOriUfJ5V5XFL18SMi
         r1Nv1n/0zRllaL4Kg46s27jkERS8SYSYrrkopHWR/phHX30z72RQk5szP/d4NAzj7mZY
         juoQ==
X-Forwarded-Encrypted: i=1; AJvYcCV42NBAsNwGrUQQsVkHJ4wtAhzi0SBXfe6GEN2Zmt8ecuUUri58uK128ttPMeaEmQ/E16W+A0J6@lists.infradead.org
X-Gm-Message-State: AOJu0Yybw4JbSGOjajlQonEjQOE7qSCTOj5F3n8/j0gtDzseSCYYyJMe
	cTEiLrKwRLtN5an/TSqOc7rApKJw98ECgJd36ow1VvZorzZWayoLIuEnw4YLrYQe+q8H5DCxVTp
	xJnVH7j1A9pQMJRmgLdzhSm7pejQEn44=
X-Gm-Gg: ASbGnctv+wbsgfY7jx1AD8cEfveDUdphHhBxdfnCb8R42kC8jDaiNH5g6H1PF1uJDlg
	cp1f5EWv4hXjXMU75ZFgZtWwFwMOGdonJqY9gjgXgkWRTptkoG3wAcUyYV1zv8ae4svfHnxALDv
	i7TGmHTXhly3pljtuT6JJbILIqKRJShfYEXROROFS9chrFVEvajmazLrHl4O5AkiczFGjgaOmR4
	9kkgh6+ymtnbsbRxpNkt3/AGDm5Pr8E4ggwyUSml51LPI64nEd3kIjL6+mRCd5mD8EEi5ibPxjH
	ubzMpWB6MgQ=
X-Google-Smtp-Source: AGHT+IEKYvyUWp/W6Kev3P24NJbBPHgSnYSo6v7BGYC2FblNMr9DwewEHDMb3E9tqiAOcohVh3iC3HlmF67uKjcKzsI=
X-Received: by 2002:a17:902:e5c3:b0:27e:ec72:f67 with SMTP id
 d9443c01a7336-2951a3a64b0mr172494945ad.6.1762183582300; Mon, 03 Nov 2025
 07:26:22 -0800 (PST)
MIME-Version: 1.0
References: <20251103043833.149013-1-chalianis1@gmail.com> <e6fe90ea-3ba4-402b-9b9e-dbe2f386dc63@pengutronix.de>
 <CAL+1fyC5bD3k6rufJx6eYXjL4Fo00QOWRRC3JzgfcU-3maROhA@mail.gmail.com> <56c2bb1a-5e10-4f70-a241-88e5045a227a@pengutronix.de>
In-Reply-To: <56c2bb1a-5e10-4f70-a241-88e5045a227a@pengutronix.de>
From: anis chali <chalianis1@gmail.com>
Date: Mon, 3 Nov 2025 10:26:11 -0500
X-Gm-Features: AWmQ_bkpy_IMLuNN566ekTfcRnK5FPfp5I0ozfFifGKsNnydS9DR4ZBH_8NnBmE
Message-ID: <CAL+1fyAB0b8ygFiqPbsvWCNFQNh1sWfanCATL5LW71K=bmbXmw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_072623_478845_99C46447 
X-CRM114-Status: GOOD (  40.54  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] drivers: misc: external_state: add a barebox external state.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

> I didn't quite understand what you are hoping to achieve with this patch
> set, but if the command would serve the purpose, then that would be

Okay, I will come back with something soon.

Thank's for support

Le lun. 3 nov. 2025 =C3=A0 09:22, Ahmad Fatoum <a.fatoum@pengutronix.de> a =
=C3=A9crit :
>
> Hi Anis,
>
> On 11/3/25 3:09 PM, anis chali wrote:
> >>> strlen can't return negative numbers.
> > ack, right it is size_t (unsigned)
> >
> >>> The original function had a number of safety checks that are missing =
here:
> >>>
> >>> - It only ran the code when in EFI payload mode, as the same barebox
> >>>  binary could be chainloaded without EFI
> >>>
> >>> - It checked that /boot is mounted and gave a useful error message to=
 hint
> >>>  at e.g., EFIFS missing, which we are missing out on here.
> >>>
> >>> I am not yet convinced this is strictly an improvement.
> >
> > Yes you are right but I didn't reintegrate the code in generic driver
> > since it will just use Kconfigs to reference a state dtb file.
> > In case this code was accepted there is no context to do the check,
> > but I ensured that barebox gives a behaves in way that the user
> > will quickly see that there is no /boot directory with the message
> > telling No such file or directory, anyway you suggestion to add -f to
> > state command
> > is more elegant, I will do some experimentations. the aim of this
> > patch is to support a state.dtb given in runtime which permits
> > userspace interaction with
> > native board because I didn't figure out how barebox state command
> > could communicate with a barebox intree state.
>
> I didn't quite understand what you are hoping to achieve with this patch
> set, but if the command would serve the purpose, then that would be
> best, I think.
>
> Cheers,
> Ahmad
>
> >
> >>> If you have the need to customize where your state comes from, how ab=
out adding
> >>> a state -f /path/to/state.dtb command option and calling it from your=
 init script?
> > right, more elegant suggestion, I will try it.
> >
> > Thank's for feedback
> >
> > Anis.
> >
> > Le lun. 3 nov. 2025 =C3=A0 01:46, Ahmad Fatoum <a.fatoum@pengutronix.de=
> a =C3=A9crit :
> >>
> >> Hi,
> >>
> >> On 03.11.25 05:38, chalianis1@gmail.com wrote:
> >>> From: Chali Anis <chalianis1@gmail.com>
> >>>
> >>> Add a driver to use an external state dtb, gives the ability to defin=
e
> >>> an external state at compile time. useful for yocto or buildroot defi=
ning
> >>> a state.dtb that will be passed to barebox at compile time vi a defco=
nfig
> >>> fragment.
> >>
> >> We already had code that did this unconditionally for EFI.
> >> Can you explain why this needs to be customizable?
> >>
> >>> +config EXTERNAL_STATE
> >>> +     tristate "Use external barebox state dtb"
> >>> +     depends on OFDEVICE
> >>> +     depends on STATE
> >>> +     help
> >>> +       This permits the use of an extranl dtb state blob
> >>
> >> external
> >>
> >>> +       which permits to dynamicly at compile time specify
> >>
> >> dynamically
> >>
> >>> +       an external blob vi EXTERNAL_STATE_DTB_PATH
> >>> +
> >>> +config EXTERNAL_STATE_DTB_PATH
> >>> +     string "the external barebox state dtb path"
> >>> +     depends on EXTERNAL_STATE
> >>
> >> Really needs help text as EXTERNAL makes me think of a file on the
> >> build host.
> >>
> >>> +static int state_external_init(void)
> >>> +{
> >>> +     const char *dt_path =3D CONFIG_EXTERNAL_STATE_DTB_PATH;
> >>> +     struct device_node *state_root =3D NULL;
> >>> +     size_t size;
> >>> +     void *fdt;
> >>> +     int ret;
> >>> +
> >>> +     if (strlen(dt_path) <=3D 0)
> >>> +             return -EINVAL;
> >>
> >> strlen can't return negative numbers.
> >>
> >> The original function had a number of safety checks that are missing h=
ere:
> >>
> >> - It only ran the code when in EFI payload mode, as the same barebox
> >>   binary could be chainloaded without EFI
> >>
> >> - It checked that /boot is mounted and gave a useful error message to =
hint
> >>   at e.g., EFIFS missing, which we are missing out on here.
> >>
> >>
> >> I am not yet convinced this is strictly an improvement.
> >>
> >> If you have the need to customize where your state comes from, how abo=
ut adding
> >> a state -f /path/to/state.dtb command option and calling it from your =
init script?
> >>
> >> Cheers,
> >> Ahmad
> >>
> >>> +
> >>> +     fdt =3D read_file(dt_path, &size);
> >>> +     if (!fdt) {
> >>> +             pr_info("unable to read %s: %m\n", dt_path);
> >>> +             return 0;
> >>> +     }
> >>> +
> >>> +     state_root =3D of_unflatten_dtb(fdt, size);
> >>> +     if (!IS_ERR(state_root)) {
> >>> +             struct device_node *np =3D NULL;
> >>> +             struct state *state;
> >>> +
> >>> +             ret =3D barebox_register_of(state_root);
> >>> +             if (ret)
> >>> +                     pr_warn("Failed to register device-tree: %pe\n"=
, ERR_PTR(ret));
> >>> +
> >>> +             np =3D of_find_node_by_alias(state_root, "state");
> >>> +
> >>> +             state =3D state_new_from_node(np, false);
> >>> +             if (IS_ERR(state))
> >>> +                     return PTR_ERR(state);
> >>> +
> >>> +             ret =3D state_load(state);
> >>> +             if (ret !=3D -ENOMEDIUM)
> >>> +                     pr_warn("Failed to load persistent state, conti=
nuing with defaults, %d\n",
> >>> +                             ret);
> >>> +
> >>> +             return 0;
> >>> +     }
> >>> +
> >>> +     return -EINVAL;
> >>> +}
> >>> +
> >>> +late_initcall(state_external_init);
> >>
> >>
> >> --
> >> Pengutronix e.K.                           |                          =
   |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de=
/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0 =
   |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-55=
55 |
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


