Delivery-date: Sun, 26 Nov 2023 22:15:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7MTf-00AB35-2y
	for lore@lore.pengutronix.de;
	Sun, 26 Nov 2023 22:15:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7MTf-0007cF-To
	for lore@pengutronix.de; Sun, 26 Nov 2023 22:15:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rsPLRLfbpEdYl1z6hzJxpwRlSyCLQshusnXAOD1NX4I=; b=YC+/BBa6e43C7+Ky8403y5g0uq
	fz3r7UbFVXVaNOPD/sTYiG/MSUgm75N6VUcbMDwMCDgtc6bbiLPU57a/RtYmFgp9eEsaaRTzTvRNC
	Ssr+laOpu4iAJ3P4KSmOCGH9x3RbEMmdeoAKHWJD0BRjzbyifgebYG3LSH3uMVMX/j0dtzD0SSnIa
	u+FPj3AXB5/+E4COj+8zVukDO+w24dNkVqt5owMyFXi8z7UqmsrqTO6u7f2w64C7KLspk/qa+lrgK
	MzQYJTc7ua4SzSEKDymvJbYGMElXmyJXE+DN2f5xN/ovs0maiTQW3RJ+HRu97RC9E7i2P2iETaTrD
	HYlPlQyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7MRq-00FPsA-2t;
	Sun, 26 Nov 2023 21:13:50 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7MRm-00FPoo-2B
	for barebox@lists.infradead.org;
	Sun, 26 Nov 2023 21:13:48 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c8880f14eeso45148401fa.3
        for <barebox@lists.infradead.org>; Sun, 26 Nov 2023 13:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701033222; x=1701638022; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rsPLRLfbpEdYl1z6hzJxpwRlSyCLQshusnXAOD1NX4I=;
        b=I20ZqTfaKWMln+dXNuR2YDr1YKeYOmM/p/SfVYIZBj1BpWJum67lZLXS1P1E0rhcCk
         wu0NxJZ0vHJdzPQPJ6tOIStGo4Nhne4uwl9xHbBc24IKEcdZRrGJiD80JEEoAEJB5Knj
         pllomx7TRF89LVIpLDQ/L1HycBDlKMPNkVDWTxjjphu1S1mCPhHHydR6QpMeCoNwLCRl
         QiiTzjlme1zGnbNaJUTxrP/5BxzJfS0PdJVoTgEWs/41hlvAtXj5HYUJ0OFp2JUZUXSm
         UrIf6CPpbgoLjASd/CUUHenORgt9QeIZZilPu5X8ueP7fJZgv/WY8n/so26EgNQyrVPh
         aZoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701033222; x=1701638022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rsPLRLfbpEdYl1z6hzJxpwRlSyCLQshusnXAOD1NX4I=;
        b=aP9vpPqXQEq7PeRmBzO2z0COtcSXjLrPiLY7200Ps5FHXrEbRme4hNuZB7PF9Z62pu
         +vVPVRtelWICMnAOAWlVCpI/V6rDTVtUuTjBwiog0F6SP+mGfLeS/0TvGdP3kRjI7hH3
         eDRcoR1xkNqNRgibHgcIHwoqicuLHFejuDh8gnCeCKPfwTnyDEXxXhHftdhtru9l/uRZ
         lop+WMgtvs8bj7MW6ivpQS5YeDbIFtfhQhp/ikmsVIdZfiDnhm9B2G7bZByKa0XlG65m
         djsffUIkN/SsnYTCCmjgY+0VOmPA4U5jtcx7FRVhpD2gupN/JwAZZ8Ki/EsHZ+XBkQhr
         3EUQ==
X-Gm-Message-State: AOJu0YyrbaLJliufFY5VTPiO+omqfLKvJ5TyuX1lxDmziDCjZn2KzX5v
	Bt8KwDVm0thOhhOBit9TNz2/jqDg3GA=
X-Google-Smtp-Source: AGHT+IHeEVkU1mjrX1/kCLg2CfW0xBIOb8WuZH39cK9h8sI+Qfe2zclVY62C287iy5zMuiDXiKClqQ==
X-Received: by 2002:a2e:86d9:0:b0:2bc:b224:98ac with SMTP id n25-20020a2e86d9000000b002bcb22498acmr6362395ljj.31.1701033222163;
        Sun, 26 Nov 2023 13:13:42 -0800 (PST)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id u10-20020a2e9f0a000000b002c99eb9c39fsm230532ljk.26.2023.11.26.13.13.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 13:13:41 -0800 (PST)
Date: Mon, 27 Nov 2023 00:21:54 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org, Leonard
 =?ISO-8859-1?Q?G=F6hrs?= <lgo@pengutronix.de>
Message-Id: <20231127002154.fb6e1eddc6710cc6bbbdf76d@gmail.com>
In-Reply-To: <abeb91af-f3dc-552d-9889-f250e7dd6a3f@pengutronix.de>
References: <20230930121720.770d90611fc199200445dda3@gmail.com>
	<4275cfd4-3edc-785a-6fbd-7c5dea901b47@pengutronix.de>
	<f75521f6-87cb-c6f9-1102-7eb437352c87@pengutronix.de>
	<abeb91af-f3dc-552d-9889-f250e7dd6a3f@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_131346_772861_29B085D4 
X-CRM114-Status: GOOD (  23.09  )
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
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: barebox.org browser demo uses barebox-v2022.02
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, 24 Nov 2023 08:22:27 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

> On 24.11.23 07:57, Ahmad Fatoum wrote:
> > Hi Antony,
> >=20
> > On 06.10.23 12:24, Ahmad Fatoum wrote:
> >> Hello Antony,
> >>
> >> On 30.09.23 11:17, Antony Pavlov wrote:
> >>> Hi Ahmad!
> >>>
> >>> barebox browser demo (https://www.barebox.org/jsbarebox/) looks very =
impressive.
> >>> But it uses old barebox-v2022.02. Could you update it please.
> >>
> >> You're right. I will try to find some time to update it. Eventually, I=
'd like
> >> the tutorial to actually boot a kernel as well and have at github.com/=
barebox/
> >> a separate project (maybe Yocto-based?) that builds all the necessary =
artifacts,
> >> but there's still some work to be done until we can do that...
> >=20
> > I have updated it to v2023.10.0. Sorry for the delay.
> > To use it, you'll have to clear browser cache for the site.
> >=20
> > If you know how one could force an update for cache older than a given =
time,
> > I'd be happy to add that.
>=20
> We have migrated the barebox.org host a while back and Leonard tells me t=
hat
> the HTTP header now sports the correct Last-Modified timestamp, so manual
> cache clearing shouldn't be necessary anymore to force a new version.
>=20
> Can you confirm?

Thanks for updating demo!

I have no browser cache issue. The browser demo works perfectly!

I see only one thing that can confuse a new user: the blue uncommented togg=
le button is used for
selecting demo mode "just console" (default) or "doom autoboot". I propose =
to add more instruction
on running Doom or even change toggle button to radio buttons with appropri=
ate comments.

> >=20
> >>
> >>>
> >>> As barebox browser demo runs on top of RISC-V machine can we add RISC=
-V mention
> >>> to barebox.org/index.html page?
> >>
> >> I guess. Sascha, is that ok for you?
> >=20
> > I went ahead and replaced PowerPC with RISC-V. Sascha, let me know if t=
hat's
> > not ok.
> >=20
> > Cheers,
> > Ahmad
> >=20
> >>
> >> Cheers,
> >> Ahmad

--=20
Best regards,
=A0 Antony Pavlov


