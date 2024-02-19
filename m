Delivery-date: Mon, 19 Feb 2024 22:33:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcBGx-00FCV8-13
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 22:33:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcBGw-0003sd-Ec
	for lore@pengutronix.de; Mon, 19 Feb 2024 22:33:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w1PxiaqtXkyP90VorEsIa9l2weo5Fmu+NMV0lFzr2D8=; b=qklswGngi8zVuDFCuCi4hoHzS6
	1VPHroKh1t/tvWepf1AqI2smXUX6yS9zC+ehA+DcYZooCe4UZjjUcQyjecoSi3Fovr7/WpBF4qBDT
	Lu5uy59lsKMilQJ2gDAF4TD1ZFA6xkZcQoGAvGOL+faeS8B9go6kW3a9eUmH1dHLDRFKJYr4MIrAt
	ooewPvW5F8qIm591JcwVFjVlceyEJcjy7q8Dvnx1i7N2NZRFiysqHaC7eLHyriIQv45lCp3CtP428
	oxGcFQ/B7kK+7Ksb1MZ6bSMiWjikhPRGgvA34jiKN/VYmtBSZKUdTfa+Rh6AYP2vo/JJ5u6DAXSDx
	Yq9M5Rnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcBGP-0000000CFPI-3szU;
	Mon, 19 Feb 2024 21:33:25 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcBGM-0000000CFNw-1w7C
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 21:33:23 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2d244b28b95so4609671fa.0
        for <barebox@lists.infradead.org>; Mon, 19 Feb 2024 13:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708378400; x=1708983200; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w1PxiaqtXkyP90VorEsIa9l2weo5Fmu+NMV0lFzr2D8=;
        b=iAeH3ChNbhX4PKikTHQc9zxkQKEOlBAuCE4Bp2C7OiPQAozkiJE+KQ1KUVqbZ1pYdP
         WxchRk68zXEpGNXG2IkdFCfBJOu8V5QAgYrcDpoYLvk96jfg6bDJO5Osp7gXlJGaWlt2
         Q4zCnZmZWHMgPr13fxBNLLHTvJjBxfZLV6nBM/dYZV2ADLGeOyWqHRJ0OUMEexEBNxy5
         MlYwMtoUXdu8mFFPplop6WtyxA0BMz8/XlM7MuB7C3730CK9XJ2cRLekk/rFBUSKsmS1
         mqb5j5vjrzD8Nd2a+ja50wbhr+b9lr+BfMUbEv3UwBoo3yq5Y2WoimwI+Y6rdC138/nJ
         OG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708378400; x=1708983200;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w1PxiaqtXkyP90VorEsIa9l2weo5Fmu+NMV0lFzr2D8=;
        b=D0pcIahC816J3MQTYBGgqY7UVqWSH2czXBaI7BGE93zUZ7Lr1mjauRVR6lfwuGGNJk
         gokZQzrWXbHM07klOMU56KdTJc//ptAt0ooP6gqL4b07a/QGR6rUeOSxothYmr4a9Pxr
         u/eAqAYijcAvDywjxsBI8lIuXCtYzW/gvtA2W61UguGWa9tdfF0V13BzPeQB1YwgBO84
         XmOyEk/p6TaBeu5YCp38fHKiPxJ8VM4G6JrdeWdtiINkhcQCzXJoocVBBQT+RR7XedDU
         Q+zxnffaEDjsWVIdVs9ATeehXzf1d8y2Efl1sbAJMtXTwjgU9glWGWzBYnwkmLpsnnOR
         r49A==
X-Forwarded-Encrypted: i=1; AJvYcCUt0aZ+/54zogwQpPG3zxkUBuufQvgnYJh1Ulhxa8bo7McJcJhXZD8b9v9zYu4XSl7DUSyzbrd2/pL+y8sflMwVNCx3SCLA4mR11UY=
X-Gm-Message-State: AOJu0Yw+rw2CJfu65aL1siYM3r8r4gZbUlCCoViNm46+l3KAu4iP/8M3
	4UuvfRYMSFnWku3wocnKoNpL+BLEM/TgDawqGYkR7bP76PUrZbnG
X-Google-Smtp-Source: AGHT+IHO5GxOMqyNqD/EEzkh7LdKSHo/9vQZBCqnukx6bApS/JS5vHArUoAWwHpecnmZVyinn+PW9w==
X-Received: by 2002:a05:6512:486:b0:512:ac3a:5289 with SMTP id v6-20020a056512048600b00512ac3a5289mr3259580lfq.18.1708378399904;
        Mon, 19 Feb 2024 13:33:19 -0800 (PST)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id d2-20020ac25442000000b00512bff16fdcsm69044lfn.309.2024.02.19.13.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 13:33:19 -0800 (PST)
Date: Tue, 20 Feb 2024 00:43:16 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Dan Shelton <dan.f.shelton@gmail.com>, barebox@lists.infradead.org
Message-Id: <20240220004316.fdc79907089c7358a1e67f62@gmail.com>
In-Reply-To: <90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
References: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
	<a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
	<20240205125900.c4b182f57b6efe0152beee24@gmail.com>
	<90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_133322_534652_91A29147 
X-CRM114-Status: GOOD (  35.55  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sat, 17 Feb 2024 09:51:02 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

> Hello Antony,
>=20
> On 05.02.24 10:59, Antony Pavlov wrote:
> > On Wed, 31 Jan 2024 22:37:50 +0100
> > Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >=20
> > Hi All!
> >=20
> >> Hello Dan,
> >>
> >> On 31.01.24 22:03, Dan Shelton wrote:
> >>> Hello!
> >>>
> >>> Does barebox support booting from a NFSv4 filesystem, e.g. boot from
> >>> NFSv4 filesystem into a Linux NFSv4 netroot (diskless machine)?
> >>
> >> The barebox network stack only does UDP/IP. There have been attempts to
> >> bring a TCP stack into barebox, but none have so far succeeded to
> >> make it mainline. This is a hard requirement before we can consider
> >> supporting NFSv4. I hope that lwIP could fill this gap in the future,
> >> but no one is actively continuing this work as far as I am aware[1].
> >=20
> > I have started integration on picotcp into barebox in 2015, see
> >   https://lore.barebox.org/barebox/1436991230-14251-10-git-send-email-a=
ntonynpavlov@gmail.com/T/
> >=20
> > At the moment I have WIP barebox-v2023.11 with integrated picotcp 2.1:
> >=20
> >   https://github.com/frantony/barebox/tree/20231127.picotcp
>=20
> Cool. Looking at Oleksij's repo, it was based on your work. How well does
> picotcp work for you? What open issues remain with the patch stack? Is the
> barebox integration actively used in projects?

I don't use picotcp in any of my projects.
It is very experimental feature. At the moment my picotcp branch can't corr=
ectly
handle arp processing. Alas at the moment I have no much time to make picot=
cp work.

Instead of integration of picotcp into existing barebox code I think barebo=
x needs
some work to make adding new "external" network interface more simple,
so a "new" network stack picotcp/lwIP/uIP/Cyclone/iPXE can be added easely.

> Is https://github.com/tass-belgium/picotcp the official repository? This =
hasn't
> seen development activity in 5 years.

Please see https://github.com/virtualsquare/picotcp

> lwIP on the other hand still sees active development.

I agree with you. It looks like lwIP is more popular than picotcp.

> Regarding the license, inclusion of BSD-licensed code is ok. You can chec=
k out
> the LICENSES/ subdirectory for the licenses covering barebox.

Thanks for the tip, now I see that we can use BSD-licensed code.


>=20
> Cheers,
> Ahmad
>=20
>=20
>=20
>=20
> >>> We need NFSv4, because it does not need rpcbind, and combines
> >>> filesystem, lockd and other stuff all in one TCP port (2049). Site
> >>> policy also does not allow NFSv2/NFSv3, but allows NFSv4.
> >>
> >> Please note that this only concerns barebox and that kernel nfsroot is
> >> unaffected. You can load kernel and device tree over TFTP and supply a
> >> suitable command line argument to the kernel to use a NFS root.
> >>
> >> The standard net boot target does just that:
> >> https://elixir.bootlin.com/barebox/v2024.01.0/source/defaultenv/defaul=
tenv-2-base/boot/net
> >>
> >> It specifies TCP, but hardcodes v3 currently. I guess we could drop th=
e v3 and let
> >> the kernel decide on its own what version it will use? If that doesn't=
 work, you can
> >> override the file locally in your environment, e.g. via CONFIG_DEFAULT=
_ENVIRONMENT
> >> pointing at a directory that contains a boot/net file with the appropr=
iate
> >> changes (or just call your boot target something else like boot/nfsv4).
> >>
> >> Hope this helps.
> >>
> >> [1]: Some attempts I am aware of:
> >>      https://github.com/a3f/barebox/tree/lwip
> >>      https://github.com/olerem/barebox/tree/picotcp-2019.06.29
> >>      https://github.com/jmaselbas/barebox/commit/4a987bfdc2ad50c13126d=
d6290d2477c3fc0c87d
> >>
> >> Cheers,
> >> Ahmad
> >>
> >>>
> >>> Dan
> >>
> >> --=20
> >> Pengutronix e.K.                           |                          =
   |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de=
/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0 =
   |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-55=
55 |
> >>
> >>
> >=20
> >=20
>=20
> --=20
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>=20


--=20
Best regards,
=A0 Antony Pavlov


