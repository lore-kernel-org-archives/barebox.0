Delivery-date: Tue, 15 Jun 2021 00:20:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsuw9-0004Kr-0v
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 00:20:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsuw7-00063g-UH
	for lore@pengutronix.de; Tue, 15 Jun 2021 00:20:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0f8nnlo3170Gk2Y5HamyTNamSx3KxjWKnV0fAu3/qIs=; b=bdvxp4DkHyt+FL
	f/p1KdQuYd3fR0W7jbzaqlJORCR+mpiYSLCCUBuDBFmo89mv8LouCU9Vy18bmBSrKqGPWBvd4Xyid
	TlvpiRDkWDy0BCw6qxRkX7gWtBgQhu3USGLNL+9nj9zfO+XfGVzEJCl8XKfbNlzMu7dcJ2qc/Tr+O
	K2mjlkFbSbLd8oYzhRsk4jlOsb0MICFh8stgJjvGCkrU5CJ9iSCK4FGBETWys/OR1RRZNvIQryLDR
	ROVRFuYXrg2+LKkhoMAgMONk+sbNAt6y7bUMHXsDrP6EYYHKSo11P44uXMJJbj2hQV2sHYQeBxAg6
	8YqsraJmKXcqiWg/Py/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsutq-00GNsW-BP; Mon, 14 Jun 2021 22:17:42 +0000
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsutk-00GNXD-RC
 for barebox@lists.infradead.org; Mon, 14 Jun 2021 22:17:38 +0000
Received: by mail-lf1-f46.google.com with SMTP id m21so23471957lfg.13
 for <barebox@lists.infradead.org>; Mon, 14 Jun 2021 15:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PMKF9phLR1ngjVum8jp+jW9/S592czDd7u4JvozyZJw=;
 b=0I6I6ZQoGEolJdLEqWcItxk5zNBI3Nt4u8bdRaF+Lfgu4kH9Hp+CneCaye694Yukl8
 elwL8nBcomWkcFuw3EtnnCTvLPKm3SRtUTVASs/9gcsM61K8c3ZZnHfYB9yDNwd7uE52
 Jb1IhCoH1rScbU0tAzmslvgm6Zci9updasBffXSZzRh0Lom/qVsYad2+9/t9dy65Usj6
 AyQ0OIyfb2ELTMP3skm+a7MKvYj7EcZnU0Cs086EzJRc7sNHs8qVCPeC3OGf9HqCZTR+
 0xT7SH+Vvxqxx1u1WLd7VXTm/nd6Ym/jCv8fU5ugFZcGRg+NOvweOaMuH/8sRE/ytbd2
 zahw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PMKF9phLR1ngjVum8jp+jW9/S592czDd7u4JvozyZJw=;
 b=ZSYnE3McTFXH+M/z4y/erLrI0bpjslc/sbAI1XFyJkdiY+07JSNHTDD70umd+1J1KY
 uBgLdIvO9pNuQsMWpw9m84FKYEwydmLJW+mbF3mTlQSYwBJj8sxyJfw2N8dh3vixIGy1
 2Ehd7zfseBP1EVAr0ZDeRWS9/5RtTtFH35KQIbVWNTVY2REx2zNp6RB9XAI+UjMR95kO
 vHzs2sXN38dOuq8dw+69++f4On+mR37y1v3WiuXbCUvB11KVSXYjQXgZYcLosbRslA48
 QgUpOKfMUOtZsHx3+2Up0rzx4sZY5FCdJ/NVeOUxjdKtKEhqc7u+4hD4U/GZXOeKbqP6
 3PcQ==
X-Gm-Message-State: AOAM533XJdoRF82Y3NMSmQBkbCNgEPMgxCyFwrMUas2uNYi7a6tZKF+D
 wfBfBE1RC58y9ogFgdCPd364993LlGz2X82fpU4tZ7i+HxQ=
X-Google-Smtp-Source: ABdhPJwm9mXDC9GMYN0HHxEhWNL9XQR5xPWlIsYXcGg03c/AF0IS2Yip1/00un4IC6str5dMBd7aKp1MREHOiIEjSh4=
X-Received: by 2002:a19:384f:: with SMTP id d15mr13352236lfj.410.1623708873126; 
 Mon, 14 Jun 2021 15:14:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210607090951.107269-1-andrej.picej@norik.com>
 <20210607090951.107269-2-andrej.picej@norik.com>
 <CAMHeXxNtHQdWBZdDc0fXJ1Q2Fj-=H2anmFGosKGrV12Ux1cncg@mail.gmail.com>
 <60b1751e-8409-a2a5-a5f8-ef4107d6db9d@norik.com>
 <CAMHeXxPNjNYmBdvob3LnAN36ccq8nT0UOjPtV0PGUeFO-PwDxw@mail.gmail.com>
 <79d8549e-fa99-6412-cbb0-dfce46083060@norik.com>
In-Reply-To: <79d8549e-fa99-6412-cbb0-dfce46083060@norik.com>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 14 Jun 2021 15:14:22 -0700
Message-ID: <CAMHeXxNttLL84+xoJXALcK7dnBSUVJUDj9fR=wUBEfSg8eG7=A@mail.gmail.com>
To: Andrej Picej <andrej.picej@norik.com>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_151737_126751_A15A18AF 
X-CRM114-Status: GOOD (  37.23  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX: xload: consider ECC strength when reading
 page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 8, 2021 at 11:34 PM Andrej Picej <andrej.picej@norik.com> wrote:
> On 8. 06. 21 14:38, Trent Piepho wrote:
> > On Tue, Jun 8, 2021 at 12:23 AM Andrej Picej <andrej.picej@norik.com> wrote:
> >> On 7. 06. 21 22:03, Trent Piepho wrote:
> > Ok, so 4 ecc bits was used for testing, but your actual use case is
> > for flash that uses 8 bits when NAND has 128 OOB bytes, which the
> > current code uses a value different than 8?  My calculation is that
> > 0x800+0x80 would use 18 bit ECC.
>
> Actually 8 ECC bits was used for testing. Maybe it was wrong that I
> named EccBlockNEccType (from i.MX 6Dual/6Quad Applications Processor
> Reference Manual) as ECC strength (in commit message) as it gets shifted
> to the left for one bit to get ECC size in bits. So yes, we agree, 8 bit
> ECC for 0x800+0x80 (4<<1 = 8) and 18 bit ECC for 0x800+0x80 (9<<1 = 18).

Ok, I see.  I discovered this too, as the kernel bug caused Linux to
use 4 bit ECC instead of 8 bit. I instrumented Linux driver and found
it was using 4 bit.  I inspected the FCB manually and it was 0x04, so
4 bit ECC is connect?  But I have all these NAND errors! I was sure it
would be bad BCH config!  Maybe NAND timing?  Bad PCB?  Nope.  FCB ECC
field is half the real ECC value and this is not documented in RM.  If
the FCB is 0x04 that is called 8 bits in all BCH documentation in iMX
RM and also Linux driver, dts properties, and so on.

> OK, I see. This is a valid point. Didn't really understand that updating
> only 2nd stage barebox is a common practice. Do you know of any imx6
> board that does that, because this xloader is imx6 specific?

I do not see any imx nand xloader users at all in mainlinux Barebox
codebase.  Which is annoying, since I'm trying to boot barebox from
NAND on iMX6ULL and there are no boards in barebox that do this.  So I
have to do it from scratch, even though I know such boards exist and
in fact you are using one.

Do I do not know of any specific imx6 boards that do this.  As there
are apparently no imx boards booting barebox from nand....

I do know of a specific cyclone5 board that does this.

There is also plenty of documentation that calls for writing 2nd stage
bootloader in Linux with nandwrite.  So I think it's reasonable
someone would do this.  I think if I setup rauc to do a software
update, I do not see support for FCB update, but there is a raw nand
partition that can easily do 2nd stage bootloader.

But consider that even if barebox spl can support two different BCH
configs on same nand device for booting, neither Barebox nor Linux
support this concept at all.  BCH must be the same for entire device,
even with ecc info in the device tree it cannot be done.  If there was
a manufacturing step that did a post programming re-flash on first
boot, which reprogrammed to standard BCH parameters, this would almost
certainly save future pain.


> > A solution that works for boths cases, but is also ugly and difficult,
> > is to try both.  If xload sees FCB values != calculated values, then
> > just try both settings.  One is virtually assured that the incorrect
> > settings will produce massive numbers of errors from BCH.  Read a
> > couple pages and the settings which result in uncorrectable ECC errors
> > on all pages are the wrong ones.
> >
>
> Yes that would be an ugly fix for this.
>
> But I see one problem. If different ECC values are used for
> pre-bootloader and main bootloader (like it is the case in example that
> you provided) we would have to read pre-bootloader and main bootloader
> with different ECC settings.

Since only the ROM loader boots the pre-bootloader, then it should not
matter if linux can read it.  Well, it would be nice if it worked, but
it doesn't need too.

> So the xload would look something like:
> - read a couple of pages from pre-bootloader and select appropriate
> "readtotal_pbl"
> - copy pre-bootloader to RAM with selected "readtotal_pbl"
> - read a couple of pages from main-bootloader and select appropriate
> "readtotal_main"
> - copy the remaining pages (main barebox) to RAM with selected
> "readtotal_main"
>
> Now for this we would need to find out where PBL ends and main barebox
> starts (probably from boot data?).
>
> This would solve all of the problems right?

I think only the last two steps are needed?  Since the xloader is
already in RAM, it only needs to load the main bootlaoder.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

