Delivery-date: Tue, 04 Mar 2025 22:54:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpaDY-009vhY-0R
	for lore@lore.pengutronix.de;
	Tue, 04 Mar 2025 22:54:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpaDW-0004tn-T1
	for lore@pengutronix.de; Tue, 04 Mar 2025 22:54:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7N/wij7i8DtZZsxC9tJnsNtPT9PqDVzr0R4ZHJOwUnM=; b=Th3DRVvrsfmx71kg6pvcQShHAX
	bFCHqS//dlx7NGKUYJ7uu7IEaqvIa6HfrTsL3p6ZwFoJxJa/CAKkehrl/nRPY56K4MzMu821vH3A5
	rZBM7jSIbNS4m9LS6ct8z284L7+WclhhMDNWo1GWtASnA5mthHcFtKUH/oDjMyIHIPzWk4kiapgO9
	2057xbc3TXMTmBLK6l1nVica6uZqsnSBM1Q922fNGOMP1wm+uQLgDKV4pWAen9+wQE+tVIZZoQroz
	H+8l+3cTh/VoZqVUAtCK98REYH8Luu5Kw3+DYrF4lMPlEReokNSjoPyDacPQ2kj6YOsoTL8CAeG2W
	+rHyD0Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpaCv-00000006LFk-1HVM;
	Tue, 04 Mar 2025 21:53:45 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpa9X-00000006KpR-1Ror
	for barebox@lists.infradead.org;
	Tue, 04 Mar 2025 21:50:16 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5e04cb346eeso10584079a12.2
        for <barebox@lists.infradead.org>; Tue, 04 Mar 2025 13:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741125013; x=1741729813; darn=lists.infradead.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7N/wij7i8DtZZsxC9tJnsNtPT9PqDVzr0R4ZHJOwUnM=;
        b=G08sqLRupGKC2scC7Kwjnj4rlZ7B3gKo0MYS+ww1+1QMDwNJqnodvhDsk3ZaL8q6KH
         cBZyLSzwWIcbnznWINE+KUi2R/4gjacMS3bXzQiR5L93TfPSYXPFRxywXfRUnzTg6DuV
         T6hmA1tYtIOCXUOUo91aKAJRnM3xmsxbxA9WZmnP5QNIeNey6LH+SLIUfgxL8BwD3ern
         c93vRM1nV7N60blsJbbtcW2o1RcQN5OeeVpzGrmEvjvRbCU3buE6Dkszk3xutYBpFi7g
         l6LH6PMkB0Qvo44/Fk49rZ6CPKm+turwmlh2RyVZvuJj/HpkTN8MhXC5/dpi6mChby+w
         hPpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741125013; x=1741729813;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7N/wij7i8DtZZsxC9tJnsNtPT9PqDVzr0R4ZHJOwUnM=;
        b=YyVuwZIT8tAj4xInRsjWATpxXQ8Fl7m7AzPGPTRhosC65lGGPDl6av8JqM81UFC4hN
         l8pJ1LZKyPnc2kMK5qqucYVFar6lfEHF6Gu0P5PEDklz2oWbGEpG8JIt1hN0XagnH/ci
         uEkOTjsxNx0p4AtcfgPGgCpOT4ebR7IB8+I8vnzPi7e90MsoGVeulnL84zxpXkreQGzD
         w+f6skIYzTRbdMhZnw2AjHdtFUX6vDn+wm61hDe7rCsCFhPtIDSnb4If4uISo5MV1KlL
         63yS9NrmPC6oXQVRtRyMfT62ObEgYSluyXzOoYItODCzfZOb+/EcZDoRfvGhurHh/Ggx
         ve5w==
X-Forwarded-Encrypted: i=1; AJvYcCUyMNLFKUos4fephqb4WGrVbDYeGhErGjR6H/iVKC9alOXl1JK75kJVezbKRq2F27yhP2r4voaQ@lists.infradead.org
X-Gm-Message-State: AOJu0YyPTGwCRYsMzAj0demz3mvgjRRd4AVOAAB/j8yz/sd7Up1EI2xZ
	Z1IbNeuDUWOv+5+se1Lhp4IytyzFgdywPjyQ1V/4YowZURr7Va1P25jjzHk6geFPuSkOeNJmM6V
	+vcMq5IxqhVVQ/D9pK50VLFnPR+CzaB7B
X-Gm-Gg: ASbGnctavnCTI/UQ+WuCxQ7ZjVWRKSS6OGtkE0PcLj7voPFQkJ7hWmUHiwrGH9PcP/b
	BtK9L/8BjmK0pXw9bSmQu5Gavkcx91Xz+DpXG6U71wxZNSJs5mJCT9Q6vnV3uniP5l4MbuXnEIx
	4aQ2Nt178ldx9KZISdx0WvvPnScA==
X-Google-Smtp-Source: AGHT+IEJAswJvdj5lHaiJUHvb4y+C2EC7soBOnbhX5XmjLFedse3EbLrrY8gP8VauQ4MYjdOjZtY5ugoTQOTuaMhQqI=
X-Received: by 2002:a17:907:3f29:b0:ac1:e889:c2a with SMTP id
 a640c23a62f3a-ac20da47762mr80097566b.11.1741125012918; Tue, 04 Mar 2025
 13:50:12 -0800 (PST)
MIME-Version: 1.0
References: <CANH4o6Njc3uHE=NbasRJrRr0W5B89R8MTM_BwGwab7t5fNWuaA@mail.gmail.com>
 <Z6yxUVTp0vGWqs7Q@pengutronix.de> <CANH4o6NRK2+ekNe_LrUaoAi8PVbi-MC3hWerv4g6F-WmXmyK5w@mail.gmail.com>
 <Z8GWfv4oIhB7CDSU@pengutronix.de> <3ba4d5f3-9679-4a32-a3e7-a8c958107df9@pengutronix.de>
In-Reply-To: <3ba4d5f3-9679-4a32-a3e7-a8c958107df9@pengutronix.de>
From: Martin Wege <martin.l.wege@gmail.com>
Date: Tue, 4 Mar 2025 22:50:00 +0100
X-Gm-Features: AQ5f1JohgCTa3TYxRp_ZAavCXwBfXYIgjny7UEEsDjveqN7K5vOdP47PQBKMF4w
Message-ID: <CANH4o6PN3tJC+zLt_eLeKzJ6BVFnGo+vYFDF+9Hjp9x6oz626g@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Dan Shelton <dan.f.shelton@gmail.com>, 
	Cedric Blancher <cedric.blancher@gmail.com>, Barebox List <barebox@lists.infradead.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_135015_387794_D63E12C1 
X-CRM114-Status: GOOD (  23.23  )
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
Subject: Re: Mount NFSv4.2 filesystem in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 3, 2025 at 9:40=E2=80=AFAM Ahmad Fatoum <a.fatoum@pengutronix.d=
e> wrote:
>
> Hi,
>
> On 28.02.25 11:57, Sascha Hauer wrote:
> > On Fri, Feb 21, 2025 at 12:54:00PM +0100, Martin Wege wrote:
> >> On Wed, Feb 12, 2025 at 3:33=E2=80=AFPM Sascha Hauer <s.hauer@pengutro=
nix.de> wrote:
> >>>
> >>> Hi Martin,
> >>>
> >>> On Tue, Feb 11, 2025 at 01:56:58PM +0100, Martin Wege wrote:
> >>>> Hello!
> >>>>
> >>>> Does barebox have support to mount a NFSv.2 filesystem?
> >>>
> >>> No, not yet. For NFSv4 we would first need TCP support. While we star=
ted
> >>> to integrate a TCP stack we are not there yet unfortunately.
> >>
> >> How long is this going to take?
> >
> > I don't think this will happen anytime soon. It's quite some work and
> > our bandwidth for adding such a feature without (paying) customer
> > demand is limited.
> >
> > That said, the lack of NFSv4 support is nagging me personally as well.
>
> We had a discussion about this last year, but it didn't result in any
> upstream code yet:
> https://lore.barebox.org/barebox/CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_=
HFyHfSi7WFA@mail.gmail.com/
>
> One question that I still have, is what do you use NFSv4 for?
> Is it just for development and your IT is disabling NFSv3?

No, NFSv4.1 (NFSv4.0 is obsolete due to bugs) offers better
performance, more flexibility, smaller footprint, better caching
(delegations), ACLs, SELinux support, and can be tunneled through
firewalls because it only uses TCP port 2049 and nothing else.

>
> Do you use it in the field?

Yes, we do

>
> Knowing about the use case helps with prioritizing future work.
> As it stands, NFS is mostly understood as development feature and
> it's expected so far that interested users will be able to provide
> a NFSv3 UDP server in their development network.

No, NFS is not only a development feature. For example CERN uses NFS
boot (with patched NFSv4.1 stack) in radiation environments - that
saves a SSD per embedded machine, which is typically one of the most
affected pieces from radiation. AIRBUS also uses nfsboot in their
equipment and flight deck systems.

So yes, you would have customers for NFSv4.1 support in barebox.

Thanks,
Martin


