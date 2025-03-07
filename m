Delivery-date: Fri, 07 Mar 2025 15:42:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqYuP-00B38r-2J
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 15:42:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqYuO-00050O-5U
	for lore@pengutronix.de; Fri, 07 Mar 2025 15:42:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5AMMD0m9+Dppg2FTuGVrr+teXuH7lHI1dUAkDn3ZU7s=; b=W231pnlS1119ji9gEuzUbEbkX9
	GsGv16r6SEUjRlP2AmXblNnwBMG51K0/Ts/lBaZXqbPMXj50VdBw2N05DswJkMhsPUyZke3VApKSU
	YxTECHEFEXuYdGPORAohK28w5TLgKhG+NHQlGTLDHtADuz/2l2iubCWg2i0FtKpf8C9eehHr/LWk0
	z7GioHC10HXD+3srP0WlDKMnS3hX323u1aZC4CLBTCJkfhgchneAz+BGgL6VAZ3V5gVtJwnCOaoPs
	HKei1Ugz8F+elQkrqmpycJhVjhNJIWETnNgSeFvOOBFYZIlGCYZKHSvkOqMR8l9lZcLeBwmeSMyYS
	Rb7J2eHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqYtg-0000000EUQd-1ESo;
	Fri, 07 Mar 2025 14:41:56 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqYsg-0000000EUH4-21nw
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 14:40:56 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3f3f4890596so1059804b6e.2
        for <barebox@lists.infradead.org>; Fri, 07 Mar 2025 06:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741358453; x=1741963253; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5AMMD0m9+Dppg2FTuGVrr+teXuH7lHI1dUAkDn3ZU7s=;
        b=HeX1CQ3MDwZFFMQTLNJRAFPQjWhdbRtTfPViyUqKcz7hYJhgOA9Pthlr5I4tIvZsLS
         C/uLWalUy2Ir9yyPRtj2tSF+cs6P47OWVqKd4HiWQzqkU2P6c1MS/jk64OAB2UIFMB+j
         ZPs7KM+L/GgIeDvLnOtpjEeFqXenlAyCghjO67WgNL5FA3gZbl61seBd34Go/OESAYwr
         j3qdn1yklSceagaMV2bMlqv7+IuPwZ/RFC6Bueki1PdlQ4uhLKHcU6PZRuCf/mUlBSiV
         bvuL9diY4Sj4OgPG9K7D1agR/aFqa2PBiImy3DQQxmNN/YSUMKJMhgiuEmwbHWCeE8sZ
         JWhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741358453; x=1741963253;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5AMMD0m9+Dppg2FTuGVrr+teXuH7lHI1dUAkDn3ZU7s=;
        b=mi+M4knq/te5ElE5rVYmVY58kfj2h2YGpNR8iL6cBUd7vAb+dvsugTFtLHXB7A4Khf
         5wY4sD0ceqdHGZ/hZBNMcRKgkGWTydio5ayBmr62fBJ6OlV4tlzZo/dQWVTPrPNhA3hh
         VJZn1H8/EDQHi6bNH9aV4MBjeQWqjCzf/n8tdXfUAJvF7xOn4IqJhlXVvUiveFkj0gcv
         Ckh6cYAEDzLUKWMZs75wWrR/xgKs6K7Zr+TT5bCLqeJpipwTc3TvbjoI+893PCVUVVhe
         VX3QGB6rezWuZLM385a54ZgypODy5RewqflqVknwhguVcNNQbWf2IMSdfcFzc+qkSZOO
         ruCg==
X-Forwarded-Encrypted: i=1; AJvYcCUHiIX+x+BmGEyxt2p63EaLW5/YLC7frGHELbGhFGW9l9b7U+WSdIgRQttLO31H7q1bMbfvt/y3@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4kDGM6dTynQvdTdFIk23yP1fn29kWetI8T37Rn0JkIKukKEdn
	U/0XfVn+0N/lxj/rwDs3aVs+8Ybrf8IER8Qq4OZUgpSJ6th9Q6SLJoYzkop0LU1FsBPyEjXHE9E
	H9voA3KtjGehZcsN+ODVP2rLDhzg=
X-Gm-Gg: ASbGncvbjzxqXKqaZYxu1OWjmOsMqBqpI1GNwobbe+bcJ3v0SGE+NZihTB2bT4OKDGQ
	TGeG1ZqfT1FYJFhMvwQ/GnSiLY70cqRuiHnbH4vj1MZPOUVLWCnvUdc/Iy83ISdGPUbZfBqVtyE
	fFHyImp+QKammf1weT0rK+UfACfA==
X-Google-Smtp-Source: AGHT+IFq5O6Qm8nj0oY/7PzByUCzfyHZyBeWmOykJlzGQCNo1oUMgxD9ZyDsP21Oh5ClX1wYKbosorpwb1N9dtXvEo8=
X-Received: by 2002:a05:6808:2286:b0:3f4:177c:a4af with SMTP id
 5614622812f47-3f697b2d39emr2256997b6e.11.1741358453138; Fri, 07 Mar 2025
 06:40:53 -0800 (PST)
MIME-Version: 1.0
References: <CANH4o6Njc3uHE=NbasRJrRr0W5B89R8MTM_BwGwab7t5fNWuaA@mail.gmail.com>
 <Z6yxUVTp0vGWqs7Q@pengutronix.de> <CANH4o6NRK2+ekNe_LrUaoAi8PVbi-MC3hWerv4g6F-WmXmyK5w@mail.gmail.com>
 <Z8GWfv4oIhB7CDSU@pengutronix.de> <3ba4d5f3-9679-4a32-a3e7-a8c958107df9@pengutronix.de>
 <CANH4o6PN3tJC+zLt_eLeKzJ6BVFnGo+vYFDF+9Hjp9x6oz626g@mail.gmail.com>
 <20250305123032.2b2c7768@erd003.prtnl> <7b73bca5-c1a2-4260-9c8a-510887ba4be8@pengutronix.de>
 <20250305145543.30c3c8fa@erd003.prtnl>
In-Reply-To: <20250305145543.30c3c8fa@erd003.prtnl>
From: Dan Shelton <dan.f.shelton@gmail.com>
Date: Fri, 7 Mar 2025 15:40:00 +0100
X-Gm-Features: AQ5f1JqQTZnmfPHFpPMv6N0syhaE54ZVBbfjGHPbWvirj0dkxQLYrofhZU72Guw
Message-ID: <CAAvCNcAYO7TK-i=vMLuJkhD0Ze0YpyXXfhvH94h+o0ssn_DXJg@mail.gmail.com>
To: David Jander <david@protonic.nl>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_064054_557665_FBFAA77E 
X-CRM114-Status: GOOD (  46.72  )
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
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>, Cedric Blancher <cedric.blancher@gmail.com>, Martin Wege <martin.l.wege@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Mount NFSv4.2 filesystem in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, 5 Mar 2025 at 14:55, David Jander <david@protonic.nl> wrote:
>
>
> Hi Ahmad,
>
> On Wed, 5 Mar 2025 13:51:51 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> > Hi David,
> >
> > On 05.03.25 12:30, David Jander wrote:
> > > On Tue, 4 Mar 2025 22:50:00 +0100
> > > Martin Wege <martin.l.wege@gmail.com> wrote:
> > >> So yes, you would have customers for NFSv4.1 support in barebox.
> > >
> > > Just wanted to chime in to amplify this a bit, since we are also using NFSv4.2
> > > netboot (though only TFTP in barebox for now):
> > >
> > > Your arguments are solid, and make a lot of sense. If you are going to replace
> > > more and more microcontroller based nodes with Linux capable SoCs, because it
> > > makes a lot of economical sense (hardware costs are very similar nowadays, and
> > > software development is 10x easier and cheaper on Linux than on a uC), you
> > > will end up inevitably with a lot of Linux nodes inside of a machine or
> > > industrial plant, where you previously had uC's. So, do you want to continue
> > > using 1970's tech (RS485/modbus) or 1980's tech (CAN) to communicate between all
> > > those nodes, or will you use Linux's native language (TCP/IP) which also
> > > immediately means another 10x reduction in software development costs of the
> > > networking part? If you choose the latter, you will also get significant HW
> > > cost savings basically for free if you also net-boot (via NFS and/or TFTP).
> > >
> > > In other words, why are we not already doing this?
> > >
> > > At least we are. We are starting to use Single Pair Ethernet almost everywhere
> > > where there were other field-busses involved traditionally. So we noticed that
> > > we end up with a lot of boards running Linux connected together via anything
> > > from 10Base-T1L to 1000Base-T1. Replace the eMMC chip on all but one of them
> > > with a cheap 2MiB SPI-NOR flash to load barebox and netboot from one single
> > > board running an NFSv4.2 (and TFTP) server serving the kernel and rootfs for
> > > all the others from a single eMMC, that can be updated with a single RAUC
> > > bundle guaranteeing consistent software and trivially easy updates on all
> > > nodes at once. Not to mention the benefit of trivial repairs because all
> > > boards are basically dumb and don't need to be flashed with software that
> > > matches the machine they are being replaced in, etc...
> >
> > Which I think is very cool. :-)
>
> Thanks :-)
>
> > > To be fair though, it isn't strictly needed for barebox to have NFS support
> > > for our use-case, since it suffices to load the kernel (and possibly an
> > > initramfs) via TFTP and mount the nfsroot from the kernel, but IMHO it is
> > > certainly valuable to have basic NFSv4.2 support in barebox. It would
> > > facilitate the use of just 1 protocol instead of 2.
> >
> > Ack.
> >
> > > I also agree that NFSv3
> > > support in that regard offers little value since you really don't want to base
> > > everything on this obsolete version with all of its limitations.
> > >
> > > But also a bit of caution to be mindful of: Cybersecurity. Of course barebox
> > > can be made to only boot signed fit images, but are there other potential
> > > attack vectors?
> >
> > We have been fuzzing the security critical boot path and issues were found
> > and fixed. Our network stack and NFS implementation are not currently part
> > of that. The documentation now spells that out and explicitly advises
> > against using any unsigned file system at all (whether networked or not)
> > to contain a signed FIT image:
> >
> > https://www.barebox.org/doc/latest/user/security.html#avoiding-use-of-file-systems
> >
> > As we gain more confidence in the implementation (or rather import mptcp and focus
> > on fuzzing that), this will change, but as things stand now, it's is not advisable
> > to do network boot of signed images.
>
> Aha. Interesting. I suppose you mean network boot of signed images from
> something like NFS (a complex filesystem) as opposed to TFTP (which is more
> akin to a raw partition in terms of simplicity of the protocol)? Or is TFTP
> already outside of the security comfort zone of barebox?

TFTP is outside the comfort zone of almost every enterprise IT. Most
of Intel&Win&co label it as "legacy" for a reason

>
> > > What if the NFS server needs to be secured with with GSS and
> > > kerberos? Barebox possibly won't be able to access it unless it also supports
> > > that.
> >
> > Yes. I think HTTP(S) support may be a better investment of time, even
> > if it means having to use two protocols still.
>
> I agree that if secure-boot is involved, the net-boot solution for barebox
> should be the most simple protocol possible so that we always have some
> transport implementation that can be hardened with the lowest effort, whether
> that is TFTP or HTTP(S).

1. HTTPS is not always viable, in case of firewalls which unpack, add
headers or content, and then repack HTTPS traffic. Given that kind of
problem HTTPS is often unuseable. Plus, many managements no longer
trusts HTTPS, because it has become a jack of all trades, and a gaping
security hole for all trades.
2. Booting or getting a boot image via HTTPS is basically not a
standard, NFSv4 is at least IETF+RFC+already in use. barebox is just
late in that game

> It surely won't be NFSv4.2+kerberos or anything like
> that. Still, there are likely a lot of cases, where a physical access barrier
> is secure enough, and bare NFS can be used, so let's not immediately shoot
> down the idea of having an NFSv4 client in barebox ;-)

There is NFSv4+TLS, which should be pretty easy to implement, because
it is just sticking TLS in front of libtirpc

Dan
-- 
Dan Shelton - Cluster Specialist Win/Lin/Bsd


