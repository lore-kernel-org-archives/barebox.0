Delivery-date: Tue, 08 Jun 2021 14:48:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqb9r-0005ZR-Ho
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 14:48:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqb9p-0000eE-Gp
	for lore@pengutronix.de; Tue, 08 Jun 2021 14:48:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtz5aQCD2+BmY6Yde21Jd+0lHcW5ROzy6brRx7cbunU=; b=BpEWfF2IUacLSj
	Lxh+tR5fdN4ZHPfH1UGeHwGGkU8NneqFTHxlVKuXftoPusZ0mAt1OGtkEPaOY+2nRjeOhx5aPNluh
	zxStepGoY5EREs7z/gL730POPZhFbxIu08C8yb3/MyFAZHyKGC71wedDL2oocBR3S2fDLO8c5e1iT
	y0njUNOTrS8GR9I5Zzp5zDOVhEckZztr2kcMaWRBKEygHFrZgDhqvGbib0UH7pMCERxII//l+YM5y
	BYQKW6cQES5vZh3pgLkOA7r0815fCbKof+xDO25uOf09zFoQBQGvupCSQuzwYkMgkI97Rv8hEN8bX
	ueqziqXZh5wakJa1G2vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqb86-008SFu-Gz; Tue, 08 Jun 2021 12:46:50 +0000
Received: from mail-lj1-f177.google.com ([209.85.208.177])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqb1X-008PkI-IW
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 12:40:05 +0000
Received: by mail-lj1-f177.google.com with SMTP id e11so26749609ljn.13
 for <barebox@lists.infradead.org>; Tue, 08 Jun 2021 05:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wmRxa2g+ckie6/8ryLLY3iDZoIS4uaSA/vuywdcWCs8=;
 b=Ahldyi43kO0FT/vLIW4fI5Su8CtlGdJlJJaYQl/X8N9NkUKv+g8IRi51ZrI3CH5QC/
 PkccgNKpcM0Tx27x86pNvthr9OnzmQyEWBpOhLqstCxDtdrfGMq4jZFAMkhNZIXmQtQh
 aTrzLl8phB7JXMY5XuunoQhMj/XR8HOlHlRjs1ZDYNHBVW7iH2AQU8ICb2UJhfiYP9fs
 Ey8pvFJuzwwHWkJUK71UWTwHFoERm5TV1htooN5WMQxk0bFwVVFl9Uh2S4tiAFjCyij/
 TfKx2e+dMu9V5oOcUYkC39VidP0YqgaRM2MA6bnIDfiOGkPZp7eAGYN0pOLZEN1cvTz2
 QUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wmRxa2g+ckie6/8ryLLY3iDZoIS4uaSA/vuywdcWCs8=;
 b=Mm4j9pUdijJ90p7jSIwBdQ5V6ZkB0vGltqrEtal5ZrDW1HqhqvZZ7y5dDNkgjTYlDq
 yKjGCYy/QC5jgZlF1X9PPhgQ6wPvTcB3CzeYDD2oox9GLlZY0gpg8XgninRGYhQ26if8
 1v8VY3wXqm53HQ8l0zki0pTSAYoPUdj3x+Soh/s9aqEJROjWEa21WXaXdw2rirDyOAd0
 2kuQZZmFnJUgGll7etYWd6Mh8f3aJd1ggsf5hXGHN5+CtKyQ6YEohhjWP10uBSeH4+Nw
 h0/4k5l0FGkeB909/sRR8DoYJZZy5UA4B5lt1T2bgBToiAeFYRoYXBhaRIbNn7E/FjMR
 uUnw==
X-Gm-Message-State: AOAM531z1PXog8DRu5HEyspKi0p3T3M7ltiojpQaX7vnH0A0tmjsjj5y
 Pnq16zQGLIdLmDZLoisrFxeVBnuiwugPU7aM551D2MH8fTQ=
X-Google-Smtp-Source: ABdhPJxGtEjmrTCL239Phq6VgLAToDZqifCsLUfppNtG1ruUZV3nWkCWIwY3wpyHBCYCC+T6xo5Ml2/Ivtz2CAX8Xqs=
X-Received: by 2002:a2e:9194:: with SMTP id f20mr5489578ljg.373.1623155939818; 
 Tue, 08 Jun 2021 05:38:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210607090951.107269-1-andrej.picej@norik.com>
 <20210607090951.107269-2-andrej.picej@norik.com>
 <CAMHeXxNtHQdWBZdDc0fXJ1Q2Fj-=H2anmFGosKGrV12Ux1cncg@mail.gmail.com>
 <60b1751e-8409-a2a5-a5f8-ef4107d6db9d@norik.com>
In-Reply-To: <60b1751e-8409-a2a5-a5f8-ef4107d6db9d@norik.com>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Tue, 8 Jun 2021 05:38:48 -0700
Message-ID: <CAMHeXxPNjNYmBdvob3LnAN36ccq8nT0UOjPtV0PGUeFO-PwDxw@mail.gmail.com>
To: Andrej Picej <andrej.picej@norik.com>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_054003_882919_20F486CF 
X-CRM114-Status: GOOD (  40.66  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX: xload: consider ECC strength when reading
 page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 8, 2021 at 12:23 AM Andrej Picej <andrej.picej@norik.com> wrote:
> On 7. 06. 21 22:03, Trent Piepho wrote:
> > On Mon, Jun 7, 2021 at 2:32 AM Andrej Picej <andrej.picej@norik.com> wrote:
> >> - Samsung K9K8G08U0E (pagesize: 0x800, oobsize: 0x40)
> >> - Winbond W29N08GVSIAA (pagesize: 0x800, oobsize: 0x40) and
> >> - Spansion S34ML08G201FI00 (pagesize: 0x800, oobsize: 0x80).
> >>
> >> All NANDs having set ECC strength to 4 (13 bytes) despite Spansion NAND
> >> chip supporting ECC strength of 9 (29 bytes).

> tool uses NAND settings used by eboot, which are hardcoded to fixed
> pagesize of 0x800 bytes and oobsize of 0x40 bytes (8 ECC bits). If for

Ok, so 4 ecc bits was used for testing, but your actual use case is
for flash that uses 8 bits when NAND has 128 OOB bytes, which the
current code uses a value different than 8?  My calculation is that
0x800+0x80 would use 18 bit ECC.

But really, the exact numbers don't matter.  Just that your nand flash
tool, barebox xload, barebox main, uboot, uboot spl, linux, kobs-ng,
etc. don't all agree on ECC values.

> I agree that it would be better to use all of the space available, but
> if flasher used wrong settings to copy barebox binary to NAND these
> settings (although not optimal) should be used to make booting even
> possible.

But, how does one know 2nd stage barebox is flashed with the same ECC
as 1st stage xload?  See below.

>
> The main reason why I think we should use FCB here for this is because
> i.MX6's ROM already uses these values for booting into pre-bootloader.
> That's why we try to act in xloader like ROM does (reading NAND
> parameters from FCB). Nevertheless flasher tools should be responsible
> to match the BCH ECC page with what it is written into FCB. If that is

I think it's fair to assume that the barebox xload is using the ECC
from the FCB, otherwise it would not boot.  But does barebox 2nd stage
use same ECC as xload?  In your case, the answer is currently yes.
But is this always the case?

I don't know of a specific board where it is not, but I do know this:
It is common that a Linux based software update system will not update
the bootloader.  It might just do rootfs, or rootfs+kernel, but
bootloader is less common.  In two a stage system, xload + main, maybe
the xload is not updated.  It is a pain from Linux, with different
versions of kobs and/or kobs-ng, which are poorly maintained and
documented, a special attribute in sysfs that old Freescale kernels
had and that isn't around anymore that is sometimes needed and
sometimes not, etc.  And as I have just discovered, iMX6UL and iMX6ULL
use a different encoding of FCB that all other iMX and of course some
kobs-ng versions don't know this and create a broken FCB.

I even made a system that did this: barebox-xload had A/B support for
2nd stage and 2nd stage was updated, but the xload wasn't, since it
wasn't fail-safe.  But this was for CycloneV and doesn't apply here.

So, suppose we have updated barebox 2nd stage from Linux (or barebox)?
 Now it uses "common" ECC values (IMHO, "optimal" is not an accurate
term here) from Linux kernel.  Barebox-xload current works to boot
this, but your change will break that.

It is a difficult problem, either choice of a ECC values could be the
correct one.

> In our case the described proprietary flasher tool only flashes barebox
> so only NAND pages with barebox binary are using not optimal ECC
> settings. If for example kernel, devicetree and rootfs would be flashed
> from barebox the NAND pages there would use correct ECC size and booting
> into linux and updating those NAND pages from linux works. Updating
> barebox from barebox itself (using barebox_update) would mean that the
> barebox binary will be overwritten in NAND with optimal ECC settings and
> FCB will be updated accordingly.

Does barebox_update run in 2nd stage barebox update both 2nd stage
barebox and barebox-xload + FCB?

Consider what happens if barebox 2nd stage is updated from Linux.
Usually software update systems run on Linux, e.g. rauc or mender.  In
this case it will use Linux ECC settings, not FCB settings.

You've got boards with barebox-xload and barebox using different ECC
settings than kernel and rootfs.  And not just two different settings,
but also 2nd stage barebox and Linux don't know this.  I predict this
will be a source of much future pain.


> We are only using this ECC values to read barebox binary from NAND and
> copy it to RAM. If other NAND pages will be using different ECC values
> that doesn't break anything, I think. Only problem that I can see here
> is barebox or linux reading NAND pages occupied by barebox binary, this
> will most likely fail, but I don't see why that would be necessary anyway.
>
> I don't think we are braking anything here, we are just fixing booting
> barebox from NAND whit not optimal ECC settings.
>
> Please correct me if I'm wrong or if I'm missing something here?

You've got ECC settings for:
(xload barebox) (kernel rootfs)
But if someone had this:
(xload) (barebox kernel rootfs)
Then it breaks.

Why would they have that?  As I describe above, everything in the 2nd
set is updated from Linux using some software update system.

Of course, the most common way is this:
(xload barebox kernel rootfs)

With just one set, when the xload has two choices, FCB vs common
values, both are the same, so even if barebox is updated from Linux it
still works.

A solution that works for boths cases, but is also ugly and difficult,
is to try both.  If xload sees FCB values != calculated values, then
just try both settings.  One is virtually assured that the incorrect
settings will produce massive numbers of errors from BCH.  Read a
couple pages and the settings which result in uncorrectable ECC errors
on all pages are the wrong ones.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

