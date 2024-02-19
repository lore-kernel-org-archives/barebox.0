Delivery-date: Mon, 19 Feb 2024 03:18:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbtF8-00DLoQ-1f
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 03:18:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbtF7-0005ZN-TV
	for lore@pengutronix.de; Mon, 19 Feb 2024 03:18:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wrRfnXzF2T/cTbBiNQyOI9nYIG+lN3p+i/diFFW5zNA=; b=k+pwnEI5IqUmvxJGIyr2ls2NWg
	e+F/k7NZAY5nJjjXXmX11ROJOH88otYTT78mWO5OvTK874V+RLTbwWv593Rt2bsCtBV+sKjHJ+tmc
	PvSyEYmP81Z8o6ryjVLL7j1RWhwXum+7+r4EzgkJ9OeNR7jEcAzKIZ+37BV5ktiKnIMpHH6aXHX/e
	dQQH41jvMfqLH5+i5zOZ9J8Ck0bcOuN34apP5s/SDvMXFDPdNTiv9Rfv2z4XWYi8pxCO2V7iRrsTb
	wLd+UwXH6B25ezUyrw/aj2/0n9FUKNKkJwg03xyJDCa5JjLFp7J5lA9kDODHBH9u7IiyFBDriuhUl
	Tbh8kJcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbtEM-00000008qgP-3UwU;
	Mon, 19 Feb 2024 02:18:06 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbtEJ-00000008qfl-2oOv
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 02:18:05 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-512b354d3e0so507584e87.0
        for <barebox@lists.infradead.org>; Sun, 18 Feb 2024 18:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708309081; x=1708913881; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wrRfnXzF2T/cTbBiNQyOI9nYIG+lN3p+i/diFFW5zNA=;
        b=aKHMeC9zOY1mdwSPNiC4Ll7G6EpLfOHu1Hk1NqCqj5tET+Fg5NwiGpwF6Gnsd2O2EK
         hAQu3PsiMa0649oz4NwX2/OCDhq4yRIwM9WFDCuZoha+AljVC3Rskh5s82t4RCe9GveF
         WEVWvTXMSOhkBYEGCo7RGdZwz/O4KZ5sACVhfz4PHTdSqEunSKSzDjAEv7vcd5RhSDjv
         UVpxD2C361cdyCth2gVeEZkIHVWx77sDPK6eceY59vyZfRb6lIJwMaCum3YXV1OvZyiG
         5vYamUJx8PsK9Pz5O/rmgKCNbi6g+lCdWv0QL+6jHpIcaEvR941SrGsiOw3raXm2LEsD
         JObQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708309081; x=1708913881;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wrRfnXzF2T/cTbBiNQyOI9nYIG+lN3p+i/diFFW5zNA=;
        b=OecbKT+pMwvfH75fKfMQg7xMEoRru9IN2f2qc9zic/qL/YZw7OigAhLtXXjMMg9e6h
         746Oz5lTNFaq6ThrVa03KjUSleLwewk+Wv9KkpqrU5ickhmnmacpjma11JgIE/HOOc5s
         8LDTuHHfZKlSjQpwucB+zORdnjTdazE776F/ufosMm5Tgvvx1+mVvW856t9RJ7qXSqDz
         O5qeWm6BmSm7WHyLJ78BvLYo0uXPrll8W0f/TKxPmM+gWcJj7mJIsoRErbArK/OkHigO
         95BfOpq4tx/O+eH67ThbVimI1xlqI1/JLNCi0VocTme4pxAh5eJQodIU3tibGVxLONXC
         TY5g==
X-Forwarded-Encrypted: i=1; AJvYcCWVTXhwBD2IOwj1V4pv2voQwa7hrpXqCgcXlhGLAb5Qxn3xxqS+Ue57Ah7+0DOSYQIIKIdnz4UWAVKYtcjOxdrMZBu5r3+YyV25/Oo=
X-Gm-Message-State: AOJu0YzmQRoWpcxDAKkdTViqrcv/DTQzjCMQfSkvs/nY2hre9dOpER6h
	UjXiPtDMjdRVMFn6CGYq4nDY/wxZ8P6xm9h285Q4RqcAQA/cpXbxwgszi1aTrPpx8W7tzZBR5Tm
	sWam0HRDhh15aOFv8hVMaBL3r5Jc=
X-Google-Smtp-Source: AGHT+IHenqPlxsa6rTUFsoCMMWcdHUOOIKQYOzq1eu3/SlqiDgP845VPDG1m2V1iuvFMniHHLZOUceMi5/6mhzUI2Fk=
X-Received: by 2002:ac2:4835:0:b0:512:b24d:d472 with SMTP id
 21-20020ac24835000000b00512b24dd472mr1019643lft.64.1708309080719; Sun, 18 Feb
 2024 18:18:00 -0800 (PST)
MIME-Version: 1.0
References: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
 <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de> <20240205125900.c4b182f57b6efe0152beee24@gmail.com>
 <90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
In-Reply-To: <90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
From: Dan Shelton <dan.f.shelton@gmail.com>
Date: Mon, 19 Feb 2024 03:17:32 +0100
Message-ID: <CAAvCNcBMxLkEKgqysqiP66T7fEbtWjb5uFfz-MEOfc-oJKfYig@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_181803_730811_C3B9FEF7 
X-CRM114-Status: GOOD (  18.56  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sat, 17 Feb 2024 at 09:51, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Antony,
>
> On 05.02.24 10:59, Antony Pavlov wrote:
> > On Wed, 31 Jan 2024 22:37:50 +0100
> > Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >
> > Hi All!
> >
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
> >
> > I have started integration on picotcp into barebox in 2015, see
> >   https://lore.barebox.org/barebox/1436991230-14251-10-git-send-email-antonynpavlov@gmail.com/T/
> >
> > At the moment I have WIP barebox-v2023.11 with integrated picotcp 2.1:
> >
> >   https://github.com/frantony/barebox/tree/20231127.picotcp
>
> Cool. Looking at Oleksij's repo, it was based on your work. How well does
> picotcp work for you? What open issues remain with the patch stack? Is the
> barebox integration actively used in projects?
>
> Is https://github.com/tass-belgium/picotcp the official repository? This hasn't
> seen development activity in 5 years. lwIP on the other hand still sees active
> development.
>
> Regarding the license, inclusion of BSD-licensed code is ok. You can check out
> the LICENSES/ subdirectory for the licenses covering barebox.

If TCP support lands in barebox, how fast can NFSv4 support be implemented?

Dan
-- 
Dan Shelton - Cluster Specialist Win/Lin/Bsd


