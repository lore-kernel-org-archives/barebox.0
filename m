Delivery-date: Thu, 04 Sep 2025 04:11:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utzRL-007ruM-2s
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 04:11:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utzRK-0004HE-IQ
	for lore@pengutronix.de; Thu, 04 Sep 2025 04:11:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dl7nhDk8/FCejiTJ4JTlv/m1PQdJ3xBGNbyvgDWJGZg=; b=hI2FHZTbACEmUy644joc8K/UvR
	lih9u+HEBbN2TSi5wnNLMwet//mbeaZ72z1hYv/nQqIWaZAWUiL+sDJp+KDYsdtKlFUFyJUKUstPq
	KjK/2uCwoP/jVcQzCN8oEdg2KIYkxzx8ts6wKRmNtZDPGUAdEkhMUmme8bVkgippe+juDhqVNiNax
	rX6WNAEyC/J2OyJ056FOiEP+vEYjXIzdzFNBd6NnmY65YO+SGS6Jn65d3R7MFX1pdsi99dQ4g1ipc
	bt33LiRoQbE/cSGztqgnp6Vzn0qaE32Wv8vTa5ot2vQ576bbCLeg2nYgqadVZHra4UyZiB+3nAO9U
	9UYI7n6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utzQX-00000008E3s-2Kic;
	Thu, 04 Sep 2025 02:10:17 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uttwi-00000007YCI-3E2R
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 20:19:10 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-55f6017004dso286509e87.0
        for <barebox@lists.infradead.org>; Wed, 03 Sep 2025 13:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756930746; x=1757535546; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dl7nhDk8/FCejiTJ4JTlv/m1PQdJ3xBGNbyvgDWJGZg=;
        b=Dpp2OKpEq0TUczKAdgWQVRwP+bFTFPks4Jf/yDHjw5M3viSHSpDUxaKqdFnuv+aXRI
         EXUeRhZy7bZAEIVqRzXb3nZFE3i6tKWteUUtyfN8IWtq/Hm/U6JP4VPC3/vKRdSGqkMd
         S7FgNuU6WiTDjMZZtz+pItJxK3gvgEo9bLIKxDfrzrxzpkwVxCu/4VN3a3eN+dHSFgd3
         YsfQzlupwDeQORsPVLyQWqJx7YtpVi2/w+jkwBlewv9PzoZOq5xWpoEmlniQsaVGMSY8
         +QRAF35TOVFQprIT+iua3ci+TfH5AUe0Qp2UJUVIvRVzag9BXPt+NoP/6cddNbcm799k
         IFwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756930746; x=1757535546;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dl7nhDk8/FCejiTJ4JTlv/m1PQdJ3xBGNbyvgDWJGZg=;
        b=gCWjYfsfbxERfGHQ7V5JgnsgRtD73lpJejuDeiBM3eY6owIR3kgvOfVPMNqT1S5/6g
         oX5suIdwX0Wocb9AE7PfMOx3wCc2VW1ph8iFf1Gfo5bmBlBE8qnluIQ2Phdb2+rtuEw9
         Dzir6ucY+xTuBp1F+LilqNTsPRGFJoBXbhAKnOn5FphDn5EdCRti4cjxOxYNNkldTWx6
         cjb7kVzcMrBEEeSsUoTUWn8lphzQtwrLCJvmtIDOwUqTfTc9H4ekobSY0ibvQBP8sjjE
         ++Ehv27U9QJ149It1OdBtsvtblVOOf6wjy+4OovrZmoa98kpJ0b45pkAldsUhNKi8+54
         yQtA==
X-Forwarded-Encrypted: i=1; AJvYcCU+m5z2avvl7Zp5/wVpexlPLE59lv9+7wjf9XKErQlTj1EGn8/6MgIqz5sMXzw+ESHWBI/49hqI@lists.infradead.org
X-Gm-Message-State: AOJu0YxIKig5HYj1qOxLu9jypBjRLjqqw6JH3NTEzBAFIdumLQbFX5iZ
	1ewxcV7Mn/z7UMhAt1XnY+Hq9FhMHsVb1y/EbJVYzOF9z8QDwzp7O5P80TakC8nuBCQ=
X-Gm-Gg: ASbGncvCyy1LoAvJNgT0lkNM0NVEOk+EW4YTuaY/W1FhNkarcBB/rocEGiAcmRxMSt2
	5TM+AtkFIqbQfRXcSHhhpF0VbgO9UQ8SL73MPzAEY/qEfi58CvzkOcdBZkmVrwtanHhxivZcobg
	4sTBzhZCdyd9HC60/qOii6L229hZQQFuGKrO5dz3fJTVxpb9VMKk1woF9Ks7IYgNFslLup5xrtw
	JLFx07WVqqlx1YDIAy7cWFr8Fwf+FqYXk0HpSkOjrKFI/+kXwe3E1fftR8kzNBh5qQqEHtSdC/l
	CQSo7bMhQ/ROR9IKsGqZdPTAJ5VK5dSiTVlRu8eneSw289IfodfXcYtQj3YY07pAiRlVFnVkFOn
	g44tGGxJ4vwa7eUg1zATe4ca8N/nVntbkST5DyxbUv9zLNMZnHFvq9ho=
X-Google-Smtp-Source: AGHT+IGlcJVYTyGhJd64t+YQSLwJSJrMAygYEu8CEsMl2UwzoS+szYwWkGvyaeITF7q6ODtfBJYvZA==
X-Received: by 2002:a05:6512:2455:b0:55f:6d57:50df with SMTP id 2adb3069b0e04-55f708a2c3emr4299577e87.6.1756930746019;
        Wed, 03 Sep 2025 13:19:06 -0700 (PDT)
Received: from wkz-x13 (h-176-10-159-15.NA.cust.bahnhof.se. [176.10.159.15])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad104ccsm706223e87.113.2025.09.03.13.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 13:19:05 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Jan =?utf-8?Q?L=C3=BCbbe?= <jlu@pengutronix.de>, Ahmad Fatoum
 <a.fatoum@pengutronix.de>,
 barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>, Michael Olbrich
 <mol@pengutronix.de>, anis chali <chalianis1@gmail.com>, Marco Felsch
 <m.felsch@pengutronix.de>
In-Reply-To: <234808b66fb792f4b9ab50654dd3c018e90db6b8.camel@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
 <87frd83p9h.fsf@waldekranz.com>
 <24ac7ede-0f36-4283-b654-9cccdfa97a37@pengutronix.de>
 <28a00db6c1bdf69f93e6ef7210e11c5dfa368411.camel@pengutronix.de>
 <874itk4jzn.fsf@waldekranz.com>
 <234808b66fb792f4b9ab50654dd3c018e90db6b8.camel@pengutronix.de>
Date: Wed, 03 Sep 2025 22:19:04 +0200
Message-ID: <871pon47d3.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_131909_036690_865F195D 
X-CRM114-Status: GOOD (  32.34  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On ons, sep 03, 2025 at 08:50, Jan L=C3=BCbbe <jlu@pengutronix.de> wrote:
> On Tue, 2025-09-02 at 23:34 +0200, Tobias Waldekranz wrote:
>> On tis, sep 02, 2025 at 16:46, Jan L=C3=BCbbe <jlu@pengutronix.de> wrote:
>> > On Tue, 2025-09-02 at 11:03 +0200, Ahmad Fatoum wrote:
>> > > > Yeah I noticed that, _very_ useful. For Infix, if we end up going =
with
>> > > > LVM, I suspect we won't be able to send all of that info along wit=
h the
>> > > > commandline, and will end up needing to figure that out (again) in=
 an
>> > > > initramfs - but for most cases I think it would work really well!
>> > >=20
>> > > Ah, didn't think of LVM. If mix-and-match is no problem for you, then
>> > > doing it in the initramfs is a workable solution of course.
>> >=20
>> > If you are thinking about LVM, you may want to take a look at how Andr=
oid is
>> > using dm-linear for "dynamic partitions":
>> > https://source.android.com/docs/core/ota/dynamic_partitions/ab_launch
>> > https://source.android.com/docs/core/ota/dynamic_partitions/implement
>> >=20
>> > This is also related to virtual A/B:
>> > https://source.android.com/docs/core/ota/virtual_ab
>> >=20
>> > The components are "snapuserd" and "dm-user" (which was not merged):
>> > https://lpc.events/event/11/contributions/1049/attachments/826/1562/20=
21%20LPC_%20dm-snapshot%20in%20user%20space.pdf
>> > https://lwn.net/Articles/838986/
>> >=20
>> > I'm not sure what they use at the moment...
>>=20
>> Very interesting, thank you!
>>=20
>> I get why they want something like that for Android, but it does feel
>> quite daunting to deploy for the systems I typically work on.
>>=20
>> If one was to ignore the business of background-merging of COW data
>> etc. and was just looking to have a way of allocating volumes from
>> persistent storage, do you see any advantages with Android's metadata
>> format and/or tooling over that provided by the LVM2 project?
>
> LVM2 in general is quite complex.

Oh yes, full LVM support would be mind-bendingly complicated in a
bootloader. I am aiming for an extremely small subset:

Being able to parse a VG made up of a single PV, containing LV's made up
of only linear segments.

> Some people don't like that it's not easily
> possible to know (in udev/systemd) when all volumes are found and set-up,=
 making
> boot time dependencies difficult.

I see. Is that because, in contrast to most other devices, userspace
needs to initiate device creation? Are Android dynamic partitions better
behaved in this respect?

> The Android metadata (or something similar)
> seems to be simple enough to implement in a bootloader. So, as we only ne=
ed a
> small subset of the full LVM functionality on embedded devices, perhaps t=
here's
> space for a lightweight alternative? :)

Agreed, I am not exactly thrilled about needing a parser for the LVM
ASCII metadata format in Barebox :)

Android dynamic partitions undoubtedly seem much better from that
perspective.

Here is my concern with it: wouldn't going this route mean that you have
to either (a) build your own tooling for working with Android dynamic
partitions, or (b) have some semi-automated way of extracting the
existing tooling from the Android source tree? In contrast, the LVM2
package is just a config option away in both Buildroot, PTXdist, and
Yocto.

> Jan
> --=20
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


