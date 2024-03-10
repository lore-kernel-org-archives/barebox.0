Delivery-date: Sun, 10 Mar 2024 21:10:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjPVJ-00HSnx-1j
	for lore@lore.pengutronix.de;
	Sun, 10 Mar 2024 21:10:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjPVI-0003yu-Py
	for lore@pengutronix.de; Sun, 10 Mar 2024 21:10:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPJQzbFOlAY87+DDcW+b4JgesQBhOH65h22DCJDJt9M=; b=3Yqa+w7iz/891d
	dNQVhHMOmKyFUf48QXpryd6u/SBp6ohJfECqSYcPJ5JpZjqHYHO/iXOW2uV8VB7T+ZHbyiNVhNoOB
	a2E4OA/splWsf8GIkg8ctQU5mVS1WumvGTUjGBuo6UUxh393CFnF5UTYFFee7v/LPMtZplR5k3YT3
	Hm0edWjQy+girifNwhv36CdlP/9ZogKg1OVxp1jLLYHhp6P0fmnhXQ2Nh3TzEuOr2YMCP4ZHsoy6y
	WhZo0qpSJ7CRZq7KAVQ4LRscrcU/0f/VhZNdnhg1htKEAbGz8x6v27t6ReTJYR5sWBIhfq8tzcR0z
	gaBi8wGeoKflbF1/cWaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjPUR-0000000GVhk-1Lij;
	Sun, 10 Mar 2024 20:09:47 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjPUN-0000000GVgb-2lG8
	for barebox@lists.infradead.org;
	Sun, 10 Mar 2024 20:09:45 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-51336ab1fb7so2992102e87.1
        for <barebox@lists.infradead.org>; Sun, 10 Mar 2024 13:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710101379; x=1710706179; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mPJQzbFOlAY87+DDcW+b4JgesQBhOH65h22DCJDJt9M=;
        b=UshbWuAE7H+lEfv2hBb8fS1r9seujgoKtpXl5qYzkPT3r00WI6+QKApqdRRZ78PYac
         rmU1qwq0fV/qrGtqVVae5fz7CsjDbr57hDI1Idg4Ck9mcWjPiLvYGtB1T6pDukKj4jVX
         /ZSJgzS2LWWn4HPwx68p85hIT7hE5es7KrjZos4YvoyqKMCurpf6YykkNwo83PudeLZS
         9/M2eXml0NdsOxU91+7MfNt1V5KYScmkKO3G8foSkYuWRLzgxvtLJBtfgK3ounjI5VGZ
         M4voObGXLrEL84bNuXaqlz3FenVvvo6qk9pm+t3AA/HCbBDYfFKIQmTMtDiswq709CnJ
         DKFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710101379; x=1710706179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mPJQzbFOlAY87+DDcW+b4JgesQBhOH65h22DCJDJt9M=;
        b=vOWR3zMWYHM+w3uoUZ+OyHnjFv2pE+AOlPUZPbBiOZasHmUHiB9bVj8TpqM/mvByS0
         oXGlC+ZsKrVWJivfsRT4dJzjBkCWzo3lRHN5dCHqgsDuX4nSzUg8H1ztvnlUoc53RhLe
         XZUN2t4bum2ffqAwRHQHAnYkAqDlkq9dxe2dWAqw9u5d3DFpuV4P+pLp5CjHlYF5sn2M
         3WGHLi1JHFib14FAsk9HCuLBAjJf57woDUtJ4NhBT/S4ErLc4jboX9tEuVeDarswEG4w
         ZgXC+uFErv4nnswuZGzvZXMNpIfYgWzRuM8CZwfHelJBeKZ7qmoV514jNQmz8tK7x4b6
         XY3g==
X-Gm-Message-State: AOJu0Yy/i8KM7lJQkDqSqR8EzqOZwoWdKzHecNdaaUmYGF2nlHDei3k+
	AkzPeA0FlUGUgFcyUij4mYHtJ6pvq9CCZvVj4BzQKtzsopThyjdk
X-Google-Smtp-Source: AGHT+IGG1RHcXObO/f03C5Qw3psRjyJBs7xzpktwWrRBOXqS0lkQa7cPsxbzgErGL2hueRaSJET6yQ==
X-Received: by 2002:a19:e013:0:b0:513:1cfe:7cf7 with SMTP id x19-20020a19e013000000b005131cfe7cf7mr2728836lfg.22.1710101378932;
        Sun, 10 Mar 2024 13:09:38 -0700 (PDT)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id v3-20020ac25b03000000b00513a11014adsm543906lfn.189.2024.03.10.13.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Mar 2024 13:09:38 -0700 (PDT)
Date: Sun, 10 Mar 2024 23:19:59 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Message-Id: <20240310231959.cec6824859917350b25f0a83@gmail.com>
In-Reply-To: <ZeXfC5XjqFz-oaL2@pengutronix.de>
References: <20240303215803.f8693ec93f03fd048acd3a30@gmail.com>
	<ZeXfC5XjqFz-oaL2@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240310_130943_728683_8BBA4857 
X-CRM114-Status: GOOD (  25.66  )
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
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>, Dan Shelton <dan.f.shelton@gmail.com>, Daniele Lacamera <dan@danielinux.net>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: barebox + picotcp-1.7.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, 4 Mar 2024 15:47:39 +0100
Sascha Hauer <sha@pengutronix.de> wrote:

Hi Sascha!

> On Sun, Mar 03, 2024 at 09:58:03PM +0300, Antony Pavlov wrote:
> > Hi all!
> >=20
> > In the message [1] Sascha proposed to have the barebox network stack
> > and picotcp in parallel.
> >=20
> > This approach is used in the branch 20240303.picotcp-1.7.0 from
> > https://github.com/frantony/barebox/ repo [2]:
> >=20
> > * all incoming packets go through the barebox network stack and only if
> >   they are not processed by it, they are forwarded to the picotcp netwo=
rk
> >   stack (all incoming ARP packets always go to the picotcp network stac=
k).
> >=20
> > * risc-v virtual qemu machine with user networking (slirp network stack)
> >   is used for demonstration; one needs only qemu risc-v emulator
> >   for demonstration;
> >=20
> > * these barebox commands are introduced for picotcp stack capabilities
> >   demonstration:
> >=20
> >   * dhclient --- setup picotcp network interface using the DHCP protoco=
l;
> >   * ifconfig --- print/setup picotcp network interface information;
> >   * route --- print picotcp routing table;
> >   * picoping --- send ICMP ECHO_REQUEST to network hosts, receive repli=
es;
> >   * picohost --- perform DNS lookup (google DNS server is used);
> >   * app_wget --- download file using the HTTP protocol.
> >=20
> > * tcpdump code is incorporated into barebox for network stack debugging.
> >   tcpdump supports parsing most of the protocols supported by barebox
> >   (DHCP, ARP, ICMP, DNS, TFTP and TCP).
>=20
> I gave this a test on real hardware. I think the result is similar to
> yours, dhclient, ifconfig, route, picoping, picohost work as expected.
> app_wget does not work, it bails out with a NULL pointer exception.

I have updated my picotcp branches (see [1], [2]). I have tested
picotcp-1.7.0 on my Raspberry Pi 2. app_wget works on Raspberry Pi 2
without any exceptions.

I have found that using picotcp on real hardware has negative effect
on UART console (at least on Praspberry Pi 2 with USB-connected ethernet
adapter): console drops characters from time to time.

> I don't seem to have access to the Google DNS server, I switched this to
> our local nameserver. Here global.net.nameserver should be used finally.
>
> It's a bit odd that barebox and picotcp both use different configs, so
> that we have to call barebox dhcp and also dhclient to make a network
> interface usable in both barebox and picotcp. That should be a solvable
> issue though.

I have fixed this problem. Now dhclient updates ethX.* and global.net.*
variables. Please note that picotcp dhcp client does not handle
rootpath, device tree and tftp server parameters. I think
that we can ignore current disadvantages of dhclient, picoping and picohost.
These commands are used just for demonstration. They are just
slightly reworked demo programs. We have to rework them more
carefully to replace our traditional network commands.

The TCP support is much more attractive feature. app_wget is adapted
example from picotcp-modules repo [3] (not the main picotcp repo!).
app_wget relies on incomplete libhttp library. You can see that app_wget
dumps html-page with wrong offset. I used app_wget just for demonstration
because it was most simple TCP-enabled application.
Now I think that telnet-client/server would be more useful demo program.
Also please note that there is "the old" picotcp-1.7.0 and "the modern"
picotcp-2.1. I have the branch with picotcp-2.1 but it lacks
libhttp support.

My next step is to add tcp-enabled application to picotcp-2.1.

[1] https://github.com/frantony/barebox/tree/20240310.picotcp-1.7.0
[2] https://github.com/frantony/barebox/tree/20240310.picotcp-2.1
[3] https://github.com/tass-belgium/picotcp-modules

--=20
Best regards,
=A0 Antony Pavlov


