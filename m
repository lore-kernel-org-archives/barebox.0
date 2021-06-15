Delivery-date: Tue, 15 Jun 2021 19:11:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCak-0002kJ-2R
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 19:11:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCag-0007jp-7D
	for lore@pengutronix.de; Tue, 15 Jun 2021 19:11:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0qeeJopYRsWvhTOE48jNfvpMfq+LHqhtg6dmhvsRPnU=; b=EqpajiAhs1yyWuSn8DWJnL+EDV
	C2SdnaSuZBbUZogQnYIvrUWawzV1dOxY8W3iss2pRaW+rerc06SaYrXv5sj6AHRdwoQiUXt8ox5r0
	qnOC5razCRibcB1BQMngHxQcr1TMgeAFXOksj8u4v4dGfbitjyc40Q4rZJJ2TMd6pziuMbmFbdkLu
	MTYFcDLJsxfPPX5H8BayX2twtVuYbMHJ7gTvmQHwLVmxO4OE3QkecC2tQDz6zEbtdat6Xa+V5QCrO
	dPEkjIt+JxFYyuMTiIyIk7cqhOMa8ule0Azp5xlgXjK1ru6ODfq3srRn+nVTYHefMsxtS8RwcEvWT
	SYlPdjwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltCWl-001ao4-1x; Tue, 15 Jun 2021 17:07:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltAAI-000dUr-Mv
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 14:35:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Xi/4ZjD6trIaM5xdEcUrEYXtrUElXI7JP7+M4GS8vBk=; b=ISQ6lsBQ1FTurSa7tO5dBxnK+u
 fWVdeCU4DptuIn2gYUIBEUcFOA0jmVsMHoGNSCvp12Lji2X85MA0YNsn4Rhg6GUqGAysJiAN6GjT2
 J85mwX/nK9mJwcY7BNQFOoz5CU3bfSPYWvwffNNDP4+5+am6nNMIhvCIofLCbRkmv4Tgh/Xn0a5hr
 bcywxak22E2sM0Wd/FfGOn6XwN1Lf+yADAroyBJY6Ec5j1RFlryG1fE05IylzejgqOYnKmPuYCbHE
 wpOhz8CeFTDFXDCYbnH1GcZjuo0MP2cToJQ+rlzlzaoMMeCieARRr5MxiI07cI0k6XJQ/DqH3dzdK
 4Vm5LDYQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltAA7-0080EL-Oj
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 14:35:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltAAC-0003es-Mx; Tue, 15 Jun 2021 16:35:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltAAB-0000nI-ME; Tue, 15 Jun 2021 16:35:35 +0200
Date: Tue, 15 Jun 2021 16:35:35 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Andrej Picej <andrej.picej@norik.com>,
 Barebox List <barebox@lists.infradead.org>
Message-ID: <20210615143535.GJ9782@pengutronix.de>
References: <20210607090951.107269-1-andrej.picej@norik.com>
 <20210607090951.107269-2-andrej.picej@norik.com>
 <CAMHeXxNtHQdWBZdDc0fXJ1Q2Fj-=H2anmFGosKGrV12Ux1cncg@mail.gmail.com>
 <60b1751e-8409-a2a5-a5f8-ef4107d6db9d@norik.com>
 <CAMHeXxPNjNYmBdvob3LnAN36ccq8nT0UOjPtV0PGUeFO-PwDxw@mail.gmail.com>
 <79d8549e-fa99-6412-cbb0-dfce46083060@norik.com>
 <CAMHeXxNttLL84+xoJXALcK7dnBSUVJUDj9fR=wUBEfSg8eG7=A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxNttLL84+xoJXALcK7dnBSUVJUDj9fR=wUBEfSg8eG7=A@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:18:59 up 117 days, 17:42, 119 users,  load average: 0.06, 0.09,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_153538_711716_1133B4D5 
X-CRM114-Status: GOOD (  45.47  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX: xload: consider ECC strength when reading
 page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 14, 2021 at 03:14:22PM -0700, Trent Piepho wrote:
> On Tue, Jun 8, 2021 at 11:34 PM Andrej Picej <andrej.picej@norik.com> wrote:
> > On 8. 06. 21 14:38, Trent Piepho wrote:
> > > On Tue, Jun 8, 2021 at 12:23 AM Andrej Picej <andrej.picej@norik.com> wrote:
> > >> On 7. 06. 21 22:03, Trent Piepho wrote:
> > > Ok, so 4 ecc bits was used for testing, but your actual use case is
> > > for flash that uses 8 bits when NAND has 128 OOB bytes, which the
> > > current code uses a value different than 8?  My calculation is that
> > > 0x800+0x80 would use 18 bit ECC.
> >
> > Actually 8 ECC bits was used for testing. Maybe it was wrong that I
> > named EccBlockNEccType (from i.MX 6Dual/6Quad Applications Processor
> > Reference Manual) as ECC strength (in commit message) as it gets shifted
> > to the left for one bit to get ECC size in bits. So yes, we agree, 8 bit
> > ECC for 0x800+0x80 (4<<1 = 8) and 18 bit ECC for 0x800+0x80 (9<<1 = 18).
> 
> Ok, I see.  I discovered this too, as the kernel bug caused Linux to
> use 4 bit ECC instead of 8 bit. I instrumented Linux driver and found
> it was using 4 bit.  I inspected the FCB manually and it was 0x04, so
> 4 bit ECC is connect?  But I have all these NAND errors! I was sure it
> would be bad BCH config!  Maybe NAND timing?  Bad PCB?  Nope.  FCB ECC
> field is half the real ECC value and this is not documented in RM.  If
> the FCB is 0x04 that is called 8 bits in all BCH documentation in iMX
> RM and also Linux driver, dts properties, and so on.
> 
> > OK, I see. This is a valid point. Didn't really understand that updating
> > only 2nd stage barebox is a common practice. Do you know of any imx6
> > board that does that, because this xloader is imx6 specific?
> 
> I do not see any imx nand xloader users at all in mainlinux Barebox
> codebase.  Which is annoying, since I'm trying to boot barebox from
> NAND on iMX6ULL and there are no boards in barebox that do this.  So I
> have to do it from scratch, even though I know such boards exist and
> in fact you are using one.
> 
> Do I do not know of any specific imx6 boards that do this.  As there
> are apparently no imx boards booting barebox from nand....

There are several i.MX6 boards mainline that support booting from NAND,
one of them being the phyFLEX-i.MX6 board which I am using all day. It
doesn't use any xload mechanism, theres's only one stage in NAND. We
also have imx6_nand_start_image() which can be used when a xload
mechanism is desired for cases when the SDRAM shall be initialized in
code rather than using DCD data. This part indeed has no users in tree,
but there shouldn't be much to implement to get this working.

I wonder which parts are missing that make you think that booting from
NAND ist not supported?

> 
> I do know of a specific cyclone5 board that does this.
> 
> There is also plenty of documentation that calls for writing 2nd stage
> bootloader in Linux with nandwrite.  So I think it's reasonable
> someone would do this.  I think if I setup rauc to do a software
> update, I do not see support for FCB update, but there is a raw nand
> partition that can easily do 2nd stage bootloader.
> 
> But consider that even if barebox spl can support two different BCH
> configs on same nand device for booting, neither Barebox nor Linux
> support this concept at all.

At least the OMAP NAND driver in barebox supports different ECC configs
that are switchable during runtime. The ECC scheme once switched is used
for the whole device though, what's missing is indeed to attach an ECC
scheme to a partition rather than to the whole device. I have that dream
each time when hacking OMAP NAND...

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

