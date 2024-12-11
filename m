Delivery-date: Wed, 11 Dec 2024 16:57:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLP5l-006pvm-0B
	for lore@lore.pengutronix.de;
	Wed, 11 Dec 2024 16:57:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLP5k-0007qt-Mx
	for lore@pengutronix.de; Wed, 11 Dec 2024 16:57:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=806mdybFVQH20z/N7Awq5yCevSnmInkIcqMF2ij8wAc=; b=Nf7u/o9S8qTreZgql3o7Fe2Pmn
	H4bpwytDC1x9VTUUp0IxKsnCXquXm82KjKusjrOI6ylJIXyiML9nzNfXcKbl6iee5Z42FTIjo8dns
	fyxlaa1p2j+gQ1e0VKJy9aH/49chh4JZnHGR05reiIE48WVrAn0HzOBPMJuVu7mfHOg15u8FvldiG
	4LsA80V3psXprOhV6IQ5L5ZP8XUPuPuYi+1kFTd0GJhi5YkOSAZNQr9BuWHN2/JokAGYAtLJVHXaq
	KV4kG5AX4FbMZj7sqdjrO1VntFDTRuT39tdJEvQ5F9w3ONDiZ5ho/rHTiVfQT5k7tQbTzpc6v+hlK
	SEVJ5/1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLP5B-0000000FM1J-3Ray;
	Wed, 11 Dec 2024 15:57:01 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLP0d-0000000FL5O-0YhP
	for barebox@lists.infradead.org;
	Wed, 11 Dec 2024 15:52:20 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-216281bc30fso49518425ad.0
        for <barebox@lists.infradead.org>; Wed, 11 Dec 2024 07:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733932338; x=1734537138; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=806mdybFVQH20z/N7Awq5yCevSnmInkIcqMF2ij8wAc=;
        b=mLKrWzPqXU91kh6TNTXAp6MU9YjDtz8ESzF8PiZhns7gK/XcDdYrBcxIPkHJb56AFP
         bra1l2KDOGOgteyHPJtfLDiqlzLIkjQhIa3pYLgtAFmcHgR0UKJ5om/7+eLVELZiVvac
         tekO6HN5rXkLDv5Sq/eAsji2qLJqInY6R8waYl9f8Dcy9MmMjxPIkwSg+UUxKHmaWr6r
         zfRmNcgxbQW0edBwiURq+7C2AFisvPmn9Kywz0TS/vErgxYmrdJ91HzRFASDyntNXOLi
         drYCY7ExyAoTvwOcZHpLHIQTkHBwL0VsIogoiwqaZSUv3Ty/NjQcrYXV6QwWY8P902L+
         EdHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733932338; x=1734537138;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=806mdybFVQH20z/N7Awq5yCevSnmInkIcqMF2ij8wAc=;
        b=XFM87WygqxA/DC/U5Z97Z3XibenaZ94IFjw5JuPOyO5cSyfal9Z0L+az8IggMQtaxB
         VkV9qofxKe3COiwj2CwtYsUTOyAFeaS2zWkXckzbZT82Y25loskQhGyvkkvxLt5V15EC
         pwy8ebuuoASgXZGlP3CXuYpDXjE9Oce+aU0O7IYtgqZWXlaxLv5MQRLuB0Vmxpk3REs0
         1TCEVrEYEBNERbxcdHIq6ke0nS/3Tj/O3gu/V2E+5ueGPj43SmQL/nactq/MLyGlycKi
         USvG0ErRsVequTt2wZDBdXgIWV64CQnwUdwBZaBA5VwXJE8C01mV6fI7kIgDkHHTLkgG
         v+Pg==
X-Gm-Message-State: AOJu0YyC2c8AmCunBGlzYCKTUJcB/oglt1cO/A8GcOm5ueqrOjwB8BvG
	h4AU2fi0XOGhDo5Y3TxKYUbVNTkNckfbZZGKxIBdRcpk8Q7Oby6xteGJ8sx9bM6DZapIUKokrQ2
	5jOLgWcyXASumlQ/yomCNQVwYj4MHA07H
X-Gm-Gg: ASbGncsZY++m+o8o8rmSKP1fWc7/6Z8gpcn2Iceet5fuxUyIYfg2xTmBFmmogxnDxnu
	+t+qYKcphYrNuEAEt9PmNEgPRBfcksJZL9L43
X-Google-Smtp-Source: AGHT+IEM2+hTJxORt13ZWlJgIQKdyiJghL3PetH8NLqLYEJrYYLp+rFXptWE03N3YkJdG5/NhrhNgTz9jaVrLZWTzLw=
X-Received: by 2002:a17:902:dac5:b0:210:f706:dc4b with SMTP id
 d9443c01a7336-217785367cemr50602375ad.13.1733932338452; Wed, 11 Dec 2024
 07:52:18 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvQXh3sQz8exOva9oY-XFUh0ULrSuuAA5fNrCREdw8cxAA@mail.gmail.com>
 <Z1MJPVfJY7v2vEgL@pengutronix.de> <CAP1tNvSEpZ_==v4o0Om_vCBoN3iuGGu8Qr1SxGxRy4NqCzOB4A@mail.gmail.com>
 <Z1gqVVWyhdjB-u9w@pengutronix.de>
In-Reply-To: <Z1gqVVWyhdjB-u9w@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 11 Dec 2024 18:52:03 +0300
Message-ID: <CAP1tNvQMW5YmrAB0SwXZjmt+RtO7+ihHjBa=WMby4Lsq4UxBUg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_075219_173902_25C87A42 
X-CRM114-Status: GOOD (  14.90  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: memtest failed for rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far I have isolated several memory pages using reserved-memory:
<0x3 0xfc000000 0x0 0x500000>
and
<0x3 0xfff00000 0x0 0x100000>
So it looks like there is a memory chip bug.

barebox@Diasom DS-RK3588-BTB-EVB:/ memtest -t
Start iteration 1 of 1.
Testing memory space: 0x0000000000a00000 -> 0x00000000afcfffff:
Starting data line test.
Check for address bits stuck high.
Check for address bits stuck low or shorted.
Starting moving inversions test of RAM:
Fill with address, compare, fill with inverted address, compare again
        [################################################################]
done.

Testing memory space: 0x0000000100000000 -> 0x00000003fbffffff:
Starting data line test.
Check for address bits stuck high.
Check for address bits stuck low or shorted.
Starting moving inversions test of RAM:
Fill with address, compare, fill with inverted address, compare again
        [################################################################]
done.

Testing memory space: 0x00000003fc500000 -> 0x00000003ffefffff:
Starting data line test.
Check for address bits stuck high.
Check for address bits stuck low or shorted.
Starting moving inversions test of RAM:
Fill with address, compare, fill with inverted address, compare again
        [################################################################]
done.

Memtest successful.

=D0=B2=D1=82, 10 =D0=B4=D0=B5=D0=BA. 2024=E2=80=AF=D0=B3. =D0=B2 14:47, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> On Tue, Dec 10, 2024 at 02:29:59PM +0300, Alexander Shiyan wrote:
> > Hello.
> >
> > The dump does not cause a crash, but the output is very strange:
> >
> > barebox@Diasom DS-RK3588-BTB-EVB:/ md 0x3fc000100
> > 3fc000100: 940033fd b0000060 39477ea1 91274c00               .3..`....~=
G9.L'.
> > 3fc000110: 17ffffe2 91404001 b9428020 37f80180               .....@@. .=
B....7
> > 3fc000120: b9428020 32010000 b9028020 52800020                .B....2 .=
.. ..R
> > 3fc000130: b9420822 32000042 b9020822 b9420822               ".B.B..2".=
..".B.
> > 3fc000140: 521c0042 b9020822 d65f03c0 52800000               B..R".....=
_....R
> > 3fc000150: 17fffff8 91404000 34000081 b9428001               .....@@...=
.4..B.
> > 3fc000160: 12007821 b9028001 b9420801 121f7821               !x........=
B.!x..
> > 3fc000170: b9020801 b9420801 521c0021 b9020801               ......B.!.=
.R....
> > 3fc000180: d65f03c0 d37b7c21 71000c5f 8b010000               .._.!|{._.=
.q....
> > 3fc000190: 528aaaa1 72bdddc1 f9400400 b900ac01               ...R...r..=
@.....
> > 3fc0001a0: 529dddc1 72aaaaa1 b90a7c01 b94a2401               ...R...r.|=
...$J.
> > 3fc0001b0: 321c0021 b90a2401 b94a2403 12147463               !..2.$...$=
J.ct..
> > 3fc0001c0: 54000300 52808001 1ac22022 2a030042               ...T...R" =
..B..*
> > 3fc0001d0: b90a2402 b94a2401 32000021 b90a2401               .$...$J.!.=
.2.$..
> > 3fc0001e0: b94a2401 360fffe1 b94a2401 121f7821               .$J....6.$=
J.!x..
> > 3fc0001f0: b90a2401 b94a2401 12147421 b90a2401               .$...$J.!t=
...$..
> > barebox@Diasom DS-RK3588-BTB-EVB:/ md 0x3fc000200
> > 3fc000200: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc000210: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc000220: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc000230: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc000240: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc000250: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc000260: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc000270: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc000280: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc000290: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc0002a0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc0002b0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc0002c0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc0002d0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc0002e0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
> > 3fc0002f0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..........=
......
>
> See:
>
> | commit d8a6e1c2662aad2f5d9b4050a276b8e6b9fbb3b1
> | Author: Jan Luebbe <jlu@pengutronix.de>
> | Date:   Sun Aug 3 17:51:38 2014 +0200
> |
> |     ARM/mem: handle data aborts gracefully for md
> |
> |     Sometimes memory ranges contain inaccessible registers which trigge=
r a
> |     data abort when accessed. To handle this gracefully, we extend the =
data
> |     abort exception handler to ignore the exception when configured to =
do
> |     so.
> |
> |     This allows detecting inaccessible memory from the md command. It w=
ill
> |     show XX for unreadable bytes instead.
>
> I don't know why you get a data abort here. The answer is probably
> somewhere in the DMC section of the RK3588 reference manual.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


