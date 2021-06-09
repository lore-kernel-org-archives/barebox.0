Delivery-date: Wed, 09 Jun 2021 08:36:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqrpG-0002Dn-Fc
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 08:36:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqrpF-0005F9-1h
	for lore@pengutronix.de; Wed, 09 Jun 2021 08:36:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Cc:To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GiJdQuOoA5BwIS5PH31YntlDSPtg9CeeB64RAL52DSU=; b=IkZ0YyPUe+gpB7NodaQBhEIFJC
	xTdb2SCsI7WqvSpkNjTlHAVcL4DtmOcP9qjR/na+8AeFCw+Pcb0vPwLQW+XXWvOGGDw/X6l4XaFaV
	yTY3G9GeaNmGppn3Rnd5eTXXEY4czTZ+tr3pyDlgnCiUywT7FkMlzopqT/lzWyEXaILqy22NIeB+b
	UtUgxGqi1PHiZcto4/s9BLBkShQ22fSqXTLv5NpSbOpNPKoBughguoq9dA0c1f6+oPewwzjAxo9rb
	H0GQPmD6Ljp34GP7RdCjyJGewacyvhhwl1SHN/VYCZDyV0080RD+x1HjkAliKHbs34NslasxcQZMK
	u/XbYQaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqrna-00BvMG-Ls; Wed, 09 Jun 2021 06:34:46 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqrnU-00BvLW-6h
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 06:34:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+wS77llRqDG+HIGhJXVg9N6C10ecbedfik2v3PH3Dpc=; b=NOcYgUt8/zc+Tmh02Dnx9AtM8Y
 xo9y2F7xXjj6cIRiLYYAQp7h4z+NZ9rXK2Xq0qiuHVTiz7o5/FOE/ov/AXaMRPsUG4uNXktjDRQv/
 hPsTz7ScKPMg8Lx5oJtxqGRL0MOS+4FOXtRsmW9gg1iWSrTBjuOIDBtY39hzcYPH6FQnW82acfhyG
 FqUT539TRDwR4ug/X40t2lZ+vq1bloFYi45pSh793kVtxIIfZBeN01MIedoeqqIY+O+/PU/uSIJIV
 gJAiiQWEw26CCcqPfY2zG8edrv34fab/X7wDVv+GTqkHtbZXm977Y8NsM8IU94hrbNKuyzCDctBA3
 KMt5RhMQ==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:55900
 helo=[192.168.69.215]) by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1lqrnE-008idA-Ii; Wed, 09 Jun 2021 08:34:31 +0200
From: Andrej Picej <andrej.picej@norik.com>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20210607090951.107269-1-andrej.picej@norik.com>
 <20210607090951.107269-2-andrej.picej@norik.com>
 <CAMHeXxNtHQdWBZdDc0fXJ1Q2Fj-=H2anmFGosKGrV12Ux1cncg@mail.gmail.com>
 <60b1751e-8409-a2a5-a5f8-ef4107d6db9d@norik.com>
 <CAMHeXxPNjNYmBdvob3LnAN36ccq8nT0UOjPtV0PGUeFO-PwDxw@mail.gmail.com>
Message-ID: <79d8549e-fa99-6412-cbb0-dfce46083060@norik.com>
Date: Wed, 9 Jun 2021 08:34:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAMHeXxPNjNYmBdvob3LnAN36ccq8nT0UOjPtV0PGUeFO-PwDxw@mail.gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_233440_467865_37374F1E 
X-CRM114-Status: GOOD (  56.98  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX: xload: consider ECC strength when reading
 page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 8. 06. 21 14:38, Trent Piepho wrote:
> On Tue, Jun 8, 2021 at 12:23 AM Andrej Picej <andrej.picej@norik.com> wrote:
>> On 7. 06. 21 22:03, Trent Piepho wrote:
>>> On Mon, Jun 7, 2021 at 2:32 AM Andrej Picej <andrej.picej@norik.com> wrote:
>>>> - Samsung K9K8G08U0E (pagesize: 0x800, oobsize: 0x40)
>>>> - Winbond W29N08GVSIAA (pagesize: 0x800, oobsize: 0x40) and
>>>> - Spansion S34ML08G201FI00 (pagesize: 0x800, oobsize: 0x80).
>>>>
>>>> All NANDs having set ECC strength to 4 (13 bytes) despite Spansion NAND
>>>> chip supporting ECC strength of 9 (29 bytes).
> 
>> tool uses NAND settings used by eboot, which are hardcoded to fixed
>> pagesize of 0x800 bytes and oobsize of 0x40 bytes (8 ECC bits). If for
> 
> Ok, so 4 ecc bits was used for testing, but your actual use case is
> for flash that uses 8 bits when NAND has 128 OOB bytes, which the
> current code uses a value different than 8?  My calculation is that
> 0x800+0x80 would use 18 bit ECC.

Actually 8 ECC bits was used for testing. Maybe it was wrong that I 
named EccBlockNEccType (from i.MX 6Dual/6Quad Applications Processor 
Reference Manual) as ECC strength (in commit message) as it gets shifted 
to the left for one bit to get ECC size in bits. So yes, we agree, 8 bit 
ECC for 0x800+0x80 (4<<1 = 8) and 18 bit ECC for 0x800+0x80 (9<<1 = 18).

> 
> But really, the exact numbers don't matter.  Just that your nand flash
> tool, barebox xload, barebox main, uboot, uboot spl, linux, kobs-ng,
> etc. don't all agree on ECC values.
> 
>> I agree that it would be better to use all of the space available, but
>> if flasher used wrong settings to copy barebox binary to NAND these
>> settings (although not optimal) should be used to make booting even
>> possible.
> 
> But, how does one know 2nd stage barebox is flashed with the same ECC
> as 1st stage xload?  See below.
> 
>>
>> The main reason why I think we should use FCB here for this is because
>> i.MX6's ROM already uses these values for booting into pre-bootloader.
>> That's why we try to act in xloader like ROM does (reading NAND
>> parameters from FCB). Nevertheless flasher tools should be responsible
>> to match the BCH ECC page with what it is written into FCB. If that is
> 
> I think it's fair to assume that the barebox xload is using the ECC
> from the FCB, otherwise it would not boot.  But does barebox 2nd stage
> use same ECC as xload?  In your case, the answer is currently yes.
> But is this always the case?
> 
> I don't know of a specific board where it is not, but I do know this:
> It is common that a Linux based software update system will not update
> the bootloader.  It might just do rootfs, or rootfs+kernel, but
> bootloader is less common.  In two a stage system, xload + main, maybe
> the xload is not updated.  It is a pain from Linux, with different
> versions of kobs and/or kobs-ng, which are poorly maintained and
> documented, a special attribute in sysfs that old Freescale kernels
> had and that isn't around anymore that is sometimes needed and
> sometimes not, etc.  And as I have just discovered, iMX6UL and iMX6ULL
> use a different encoding of FCB that all other iMX and of course some
> kobs-ng versions don't know this and create a broken FCB.
> 
> I even made a system that did this: barebox-xload had A/B support for
> 2nd stage and 2nd stage was updated, but the xload wasn't, since it
> wasn't fail-safe.  But this was for CycloneV and doesn't apply here.
> 
> So, suppose we have updated barebox 2nd stage from Linux (or barebox)?
>   Now it uses "common" ECC values (IMHO, "optimal" is not an accurate
> term here) from Linux kernel.  Barebox-xload current works to boot
> this, but your change will break that.

OK, I see. This is a valid point. Didn't really understand that updating 
only 2nd stage barebox is a common practice. Do you know of any imx6 
board that does that, because this xloader is imx6 specific?

> 
> It is a difficult problem, either choice of a ECC values could be the
> correct one.

Yes I agree, either way we break booting in one of our use cases. In my 
case pre-bootloader wouldn't get correctly read and in your case main 
bootloader wouldn't get correctly read.

> 
>> In our case the described proprietary flasher tool only flashes barebox
>> so only NAND pages with barebox binary are using not optimal ECC
>> settings. If for example kernel, devicetree and rootfs would be flashed
>> from barebox the NAND pages there would use correct ECC size and booting
>> into linux and updating those NAND pages from linux works. Updating
>> barebox from barebox itself (using barebox_update) would mean that the
>> barebox binary will be overwritten in NAND with optimal ECC settings and
>> FCB will be updated accordingly.
> 
> Does barebox_update run in 2nd stage barebox update both 2nd stage
> barebox and barebox-xload + FCB?

Yes, it does.

> 
> Consider what happens if barebox 2nd stage is updated from Linux.
> Usually software update systems run on Linux, e.g. rauc or mender.  In
> this case it will use Linux ECC settings, not FCB settings.
> 
> You've got boards with barebox-xload and barebox using different ECC
> settings than kernel and rootfs.  And not just two different settings,
> but also 2nd stage barebox and Linux don't know this.  I predict this
> will be a source of much future pain.
> 
> 
>> We are only using this ECC values to read barebox binary from NAND and
>> copy it to RAM. If other NAND pages will be using different ECC values
>> that doesn't break anything, I think. Only problem that I can see here
>> is barebox or linux reading NAND pages occupied by barebox binary, this
>> will most likely fail, but I don't see why that would be necessary anyway.
>>
>> I don't think we are braking anything here, we are just fixing booting
>> barebox from NAND whit not optimal ECC settings.
>>
>> Please correct me if I'm wrong or if I'm missing something here?
> 
> You've got ECC settings for:
> (xload barebox) (kernel rootfs)
> But if someone had this:
> (xload) (barebox kernel rootfs)
> Then it breaks.

Yes I agree, as i already wrote above, I didn't know this is common way 
of doing bootloader update.

> 
> Why would they have that?  As I describe above, everything in the 2nd
> set is updated from Linux using some software update system.
> 
> Of course, the most common way is this:
> (xload barebox kernel rootfs)
> 
> With just one set, when the xload has two choices, FCB vs common
> values, both are the same, so even if barebox is updated from Linux it
> still works.
> 
> A solution that works for boths cases, but is also ugly and difficult,
> is to try both.  If xload sees FCB values != calculated values, then
> just try both settings.  One is virtually assured that the incorrect
> settings will produce massive numbers of errors from BCH.  Read a
> couple pages and the settings which result in uncorrectable ECC errors
> on all pages are the wrong ones.
> 

Yes that would be an ugly fix for this.

But I see one problem. If different ECC values are used for 
pre-bootloader and main bootloader (like it is the case in example that 
you provided) we would have to read pre-bootloader and main bootloader 
with different ECC settings.

So the xload would look something like:
- read a couple of pages from pre-bootloader and select appropriate 
"readtotal_pbl"
- copy pre-bootloader to RAM with selected "readtotal_pbl"
- read a couple of pages from main-bootloader and select appropriate 
"readtotal_main"
- copy the remaining pages (main barebox) to RAM with selected 
"readtotal_main"

Now for this we would need to find out where PBL ends and main barebox 
starts (probably from boot data?).

This would solve all of the problems right?

But is this all needed for such extreme use case?

As I said, I don't know how common it is for user to update only 2nd 
stage barebox, and how common it is to use flasher tools which would use 
different ECC settings than barebox and kernel for example. Both of 
these are needed to get ECC mismatch. And I can't think of other cases 
where a mismatch between ECC settings between pre-bootloader and 2nd 
stage barebox would happen.

BR,
Andrej



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

