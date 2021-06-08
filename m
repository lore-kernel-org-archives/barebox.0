Delivery-date: Tue, 08 Jun 2021 09:25:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqW7B-0000wz-HY
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 09:25:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqW7A-0007cg-Cj
	for lore@pengutronix.de; Tue, 08 Jun 2021 09:25:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JZqpqD67fL/vTPl5OR9wkvJSPQafE4X+/B6A5jsheEg=; b=1y3JY7dz4T7AxKmt8B4/GemwfW
	XrIryaYpWClJOFq7U2mwx8w1565mU88q9tRJ+92RbBK2w8Oxn6966CtC+pJ6OUO0NpTdbM/yD7rQt
	lB89J1+4uO1Ang0jP/jpSFB+VBYY7yutKrPpCL5KhQZSQl9ydGbx2CwI6OL625g8yG4yROR/Dx+9t
	v1UWuwpoB1yEFA5Z1rqemr/qN1eeA8AUwrXwOcPMSnjZSI+0jmye+iA/bzgKc1qoYJ+KNjyu59gaD
	Hq+gUm1XygFKqEFBX5DX6pWycD2xx6+/M0ZG8p9nvXI/LJBZndvjYenfDjOU9J0H638/r2CDOVD2Z
	Jz33WMvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqW5X-006qau-Kp; Tue, 08 Jun 2021 07:23:51 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqW5Q-006qaY-C7
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 07:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0SfT9queKhivOzowXp+ONGm454MT5/ElzGYFLBbyb9M=; b=LoQaVB4SV510NmVoxV4WlhUusW
 Qu/ZQOFl/qo2d9zl//n5D12m3mtnY9zrXcOBpX1D392pP1IrRSpYvfeVngE79nS+C6HfMYZH9mnrt
 P9dPDwOBTmzaJK/oEzbGq5udAqTv+oZtvSpc2thYROh8DWFkAQvE1g7+BRZxq1ff0fZcBA5FKtXes
 7DZdmyMgSvilYnEuWGnU9LtP1Ub39gmoyIOJHAozm7mka2Oe7FTs7sRFuUnd4M7rZKCZIFdaxKAoy
 Ln2zZYjk33OQ4p68lShknwwDn9vu+ukRCXQBlnssspKOBM+qKr9fy6KtoBch1RJjWjPbOMcY4XF2o
 PGXP4kuQ==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:56322
 helo=[192.168.69.215]) by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1lqW5C-003NOJ-Mi; Tue, 08 Jun 2021 09:23:37 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20210607090951.107269-1-andrej.picej@norik.com>
 <20210607090951.107269-2-andrej.picej@norik.com>
 <CAMHeXxNtHQdWBZdDc0fXJ1Q2Fj-=H2anmFGosKGrV12Ux1cncg@mail.gmail.com>
From: Andrej Picej <andrej.picej@norik.com>
Message-ID: <60b1751e-8409-a2a5-a5f8-ef4107d6db9d@norik.com>
Date: Tue, 8 Jun 2021 09:23:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAMHeXxNtHQdWBZdDc0fXJ1Q2Fj-=H2anmFGosKGrV12Ux1cncg@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20210608_002344_639846_26104A66 
X-CRM114-Status: GOOD (  45.11  )
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
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX: xload: consider ECC strength when reading
 page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Trent,

firstly thanks for your input. Please find my comments bellow.

On 7. 06. 21 22:03, Trent Piepho wrote:
> On Mon, Jun 7, 2021 at 2:32 AM Andrej Picej <andrej.picej@norik.com> wrote:
>> Some NAND update tools/flashers do not take the full advantage of NAND's
>> entire page area for ECC purposes. For example, they might only use 2112
>> bytes of available 2176 bytes. In this case, ECC parameters have to be
>> read from the FCB table and taken into account in GPMI NAND xloader to
>> properly calculate page data length so DMA chain can be executed
>> correctly.
>>
>> Tested on PHYTEC phyCARD i.MX6Q board with following NANDs:
>> - Samsung K9K8G08U0E (pagesize: 0x800, oobsize: 0x40)
>> - Winbond W29N08GVSIAA (pagesize: 0x800, oobsize: 0x40) and
>> - Spansion S34ML08G201FI00 (pagesize: 0x800, oobsize: 0x80).
>>
>> All NANDs having set ECC strength to 4 (13 bytes) despite Spansion NAND
>> chip supporting ECC strength of 9 (29 bytes).
> 
> There is a bug in NXP's latest imx kernel, lf-5.10.y-1.0.0, that
> results in the kernel driver incorrectly using the minimum ECC
> specified in the ONFI nand specs instead of calculating a maximal ecc
> value and using that, which is what prior kernels and the upstream
> kernel use.  It was caused by incorrectly resolving a conflict when
> they rebased one of their old patches to 5.10.
> 
> The common pagesize 0x800, oobsize 0x40 should use 8-bit ECC.  That's
> what the uboot, barebox, and linux drivers would do since the first
> mxs nand support years ago.  It's only the recent kernel bug in nxp's
> kernel that will choose 4.

OK, I wasn't aware of this kernel bug, but this is not what we are 
trying to fix here. Our use-case for this, is migration from eboot (some 
old WinCE version) to barebox with some proprietary flasher tool. This 
tool uses NAND settings used by eboot, which are hardcoded to fixed 
pagesize of 0x800 bytes and oobsize of 0x40 bytes (8 ECC bits). If for 
example some other NAND is used with different page size (e.g. pagesize 
of 0x800 bytes with oobsize of 0x80 bytes) the BCH ECC page organization 
will only use 0x840 bytes.

> 
> So rather than switch to 4-bit, it would be better to fix these boards
> to use 8-bit like they should.  More reliable ECC, and it will work
> correctly on barebox, u-boot, old imx kernels, current upstream
> kernels, and hopefully future imx kernels.

I agree that it would be better to use all of the space available, but 
if flasher used wrong settings to copy barebox binary to NAND these 
settings (although not optimal) should be used to make booting even 
possible.

> 
> Using the FCB data here might not be such a good idea.  While it seems
> like the right thing, there are some issues:
> The barebox main gpmi nand driver doesn't use the FCB
> U-boot doesn't use the FCB
> No Linux kernel uses the FCB

The main reason why I think we should use FCB here for this is because 
i.MX6's ROM already uses these values for booting into pre-bootloader. 
That's why we try to act in xloader like ROM does (reading NAND 
parameters from FCB). Nevertheless flasher tools should be responsible 
to match the BCH ECC page with what it is written into FCB. If that is 
not the case then we can only presume that the flasher used the optimal 
size for ECC.

> 
> If you try to read/write nand from any of those places, it won't work.
> The only way to make it work, is to have the FCB match what those
> drivers do.

In our case the described proprietary flasher tool only flashes barebox 
so only NAND pages with barebox binary are using not optimal ECC 
settings. If for example kernel, devicetree and rootfs would be flashed 
from barebox the NAND pages there would use correct ECC size and booting 
into linux and updating those NAND pages from linux works. Updating 
barebox from barebox itself (using barebox_update) would mean that the 
barebox binary will be overwritten in NAND with optimal ECC settings and 
FCB will be updated accordingly.

> 
> I think it would have been better if the original design had been for
> the bootloader to read the FCB, use that to load the kernel, and then
> fixup the ECC config into the device tree for the kernel to use too.
> One source, the FCB, which is propagated to all users.  Everyone will
> agree on the ECC and there are no independent settings to keep in
> sync.
> 
> But they didn't do that.  Each driver figures it out on it's own and
> hopefully they use matching algorithms that arrive at the same answer.
> But of course this fails, like with nxp's lf-5.10.y-1.0.0 kernel.
> This isn't the first time, this same type of bug appeared back in 2013
> in 2febcdf84b and was fixed in 031e2777e.
> 
> So while your commit will allow these boards using poorly chosen FCB
> values to work with the xloader, they will be corrupted if nand is
> written to from barebox non-xload or from linux.
> 

We are only using this ECC values to read barebox binary from NAND and 
copy it to RAM. If other NAND pages will be using different ECC values 
that doesn't break anything, I think. Only problem that I can see here 
is barebox or linux reading NAND pages occupied by barebox binary, this 
will most likely fail, but I don't see why that would be necessary anyway.

I don't think we are braking anything here, we are just fixing booting 
barebox from NAND whit not optimal ECC settings.

Please correct me if I'm wrong or if I'm missing something here?

BR,

Andrej

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

