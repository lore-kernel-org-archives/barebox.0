Delivery-date: Wed, 28 Feb 2024 08:17:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfEBh-00CutX-0g
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 08:17:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfEBg-0006XZ-8w
	for lore@pengutronix.de; Wed, 28 Feb 2024 08:17:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O23BrsQXWCSYeyRUrqXkmS2CQonAS4eDEHh/hzaak/0=; b=Mf/FUqExknqMWr
	UErCQktXGgmkFxhTvo70l8ColSRTtQsJEfIk8Hc47ZQ5xLcFUX9srlA/l6WWejj1ceie9LqVZEWqq
	qwC1Vp1CBiqwgs3TwRj+1XiYCa/z3wHKZ/8XF9TKuXc9vRQM/lxLE9BCXTW0hW1OtXxQyYgkEJcgv
	CKSwxxs5HbVwPzIzOrssAJ+NVDuLfqsYYt7sStauU8wdJqg26v7AM4bMwjGQzgwdOLwjGuslGUIht
	x6rMgxR+WOvmHNk9DFdhjvJlcy/VkjDt6n6nxn/ZArWV+jrDgzMiCjA2YB6RkyJLfzWYrocjAnGif
	+9dXa5Km8g5LJrJqpbLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfEAs-00000008GwA-1ByG;
	Wed, 28 Feb 2024 07:16:18 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfEAo-00000008Gvd-3MLW
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 07:16:16 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2d228a132acso70001601fa.0
        for <barebox@lists.infradead.org>; Tue, 27 Feb 2024 23:16:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709104569; x=1709709369; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O23BrsQXWCSYeyRUrqXkmS2CQonAS4eDEHh/hzaak/0=;
        b=QjtUdQhNAnrqApb0AS0aKFNMWe2AvSsJ0RcuOY5U9HI5yOSb+z8wgPoyfyJOOI2psY
         zCziX53W/PKBEK11pZXu+JYyZI6v1r77Vo9wsr5EGx7GyO/6yHcxfAS0W9MJljjqSY9Q
         H6a/8B8r4PDnjFtGzSEhXJWQWC/AgX2FIPI5bfTcrELVttWRODwStdNu/gJ3dkmWV9wF
         KvgsIPkMWtzqTlD+K209ImE63KK0qZMFszdZQMAcRTOP7MhuPm7fGoG2sPEzqbcDHGd9
         SGqroO8Bti5PTou5x/SexhLZ4jHjR15kRtrQIPS/i7dbTcAzzM/f/jm3OWjpc52VmELn
         tWvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709104569; x=1709709369;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O23BrsQXWCSYeyRUrqXkmS2CQonAS4eDEHh/hzaak/0=;
        b=QmM6KFWQKlBDcbvnU8iRv525M7jg2AcDFRRccydeGL9REAa8mevpZpCyjDMXr2mU97
         us66mVWyTfHVGiQEY/fweFZwfC42FDyN9SQ8W/aRYtknlt6WcnQdfuj1zFrukXYRRi85
         9B2US+PAKiNv+/jL+tTALsCnsomUK1dTR9lceEfBV7wm+z5kYaP/Qmkp0c86BKLplQni
         /V3iBlugHXlUgSqZ/KsIGRWcTY95WziLt3kBN00LhEqkKz2hAfUOTrOedrw6jiY/DH8c
         o0YAS5fNnmRXE3ZWiywAUZ8vCrfojyzkmDcYFrx7uclWDL0Lh718VQ9jb5XGoNbQ2xF1
         MAvQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+uUFEUZNDr9aSR7P3/qY08rnBDJxrZZXGGgS1Wjba/O/auYQSLboeQGpAUIZQZ6qjQowoMbqhuDFnAt4i1uVqYMAjWFcbPQ0YYdw=
X-Gm-Message-State: AOJu0Ywjz21e3ExZGkHF5aOCrDCJBd0pSxEDiby/WmyZK1y0blX1AS/Y
	tohv6xBju28ahOBc8p9SFRToDG/yEG/uN+QBhYr8U4UZu+G5FUoZ
X-Google-Smtp-Source: AGHT+IHPJL1uNoFBXLd8T+1i5auNXhvOpP0IDy3CPdQuTdugnnCZ/F9H3jGdEOu67lRcBVbjsrMjpA==
X-Received: by 2002:a05:651c:33b:b0:2d2:bdc2:2f03 with SMTP id b27-20020a05651c033b00b002d2bdc22f03mr740365ljp.31.1709104568681;
        Tue, 27 Feb 2024 23:16:08 -0800 (PST)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id r4-20020a2eb604000000b002d0ac930578sm1529966ljn.34.2024.02.27.23.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 23:16:08 -0800 (PST)
Date: Wed, 28 Feb 2024 10:26:15 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Sascha Hauer
 <sha@pengutronix.de>
Message-Id: <20240228102615.938c123aaae9137aae26439c@gmail.com>
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
X-CRM114-CacheID: sfid-20240227_231614_875383_388D3CD2 
X-CRM114-Status: GOOD (  36.45  )
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
Cc: barebox@lists.infradead.org, Dan Shelton <dan.f.shelton@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sat, 17 Feb 2024 09:51:02 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi All!

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

Actually I made the first attempt to integrate picotcp into barebox in 2014,
see http://lists.infradead.org/pipermail/barebox/2014-May/019243.html

10 years is too long for this task :)

In the message http://lists.infradead.org/pipermail/barebox/2015-July/02424=
4.html
if I understand correctly Sascha asked me to keep network stuff
users (tftp, nfs, netconsole) as intact as possible.

At the moment I understand that this task is too hard.

The problem is: the network stuff users don't rely on "a network stack"
in the true sense. E.g. tftp_handler() takes an ETHERNET PACKET on
it's input, tftp_handler() skips Ethernet and IP stuff by itself
and modifies UDP fields directly!

This week I have connected picotcp code to the existing network code
in the way that makes it possible to keep dhcp_handler() and
ftp_handler() intact. The result is ugly: barebox netdevice driver
receives frame from network, pass it to picotcp, picotcp parses
network protocol headers and extracts udp payload, next
picotcp passes udp payload back to my picotcp-to-barebox adapter,
the adapter RECONSTRUCTS ETHERNET PACKET and give it to tftp/dhcp_handler()!
This horrible approach creates more problems than it solves!

I propose another experiment: disable old network
stuff and integrate picotcp with all network applications (dhcp, tftp,
dns etc) on top of picotcp. This approach was used in the
'barebox picotcp integration (2015.06.14)' see
http://lists.infradead.org/pipermail/barebox/2015-June/023749.html
This experiment is not for use in production, probably it will break
compatibility but it will allow us to assess the benefits and drawbacks
of using a picotcp stack.

At the moment I understand that in order to achieve success in barebox
network stack upgrade I need to put more effort into ensuring the
reproducibility of the picotcp demonstration. E.g. in 2015 Sascha was unable
to get my code work, see http://lists.infradead.org/pipermail/barebox/2015-=
July/024304.html


> > At the moment I have WIP barebox-v2023.11 with integrated picotcp 2.1:
> >=20
> >   https://github.com/frantony/barebox/tree/20231127.picotcp
>=20
> Cool. Looking at Oleksij's repo, it was based on your work. How well does
> picotcp work for you? What open issues remain with the patch stack? Is the
> barebox integration actively used in projects?
>=20
> Is https://github.com/tass-belgium/picotcp the official repository? This =
hasn't
> seen development activity in 5 years. lwIP on the other hand still sees a=
ctive
> development.
>=20
> Regarding the license, inclusion of BSD-licensed code is ok. You can chec=
k out
> the LICENSES/ subdirectory for the licenses covering barebox.
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


