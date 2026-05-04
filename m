Delivery-date: Mon, 04 May 2026 15:29:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJtMw-000uOr-2n
	for lore@lore.pengutronix.de;
	Mon, 04 May 2026 15:29:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJtMv-0002t9-Ex
	for lore@pengutronix.de; Mon, 04 May 2026 15:29:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mM+kvwfls4OwzU+tyJkNlCRuU0pcqeNHQgY455eGddQ=; b=k14uiR26vwh3CPVzJuOr3UQYT8
	o2kWExipuw9TejQmQvWxLR7vIIUtuBfovpvtRtItZdx8vA3zOBnYhdRAFcu9p4zMXbm4/76SUhoWB
	eRqmnkEzzZiV4bpc/G70qPzx3SDERQeeieaCnT88AVSsPhIb5imEaLPqLYiDRHnoPcMl5uFBF5ivs
	7eZPEIwnP7D5iy/ryLDGIdW7eJ33RTZflN2sWb96y/9fTMUZh5EkVr/lct6SCLKtZEFJIagaGJ9uV
	8NtaYjBFz/vhb4zPGcPNT0vE9smCfWukqPMyb6oKycgpefrQhGYRSQBBw5mFhv46VHdtsJmHYYBIM
	9rq0eDJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJtMP-0000000DJRZ-3G6B;
	Mon, 04 May 2026 13:29:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJtMN-0000000DJQu-1YRf
	for barebox@lists.infradead.org;
	Mon, 04 May 2026 13:29:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wJtML-0002hf-N2; Mon, 04 May 2026 15:29:17 +0200
Message-ID: <28f28738-0819-4e50-b2c6-12bc110246f8@pengutronix.de>
Date: Mon, 4 May 2026 15:29:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20260416134518.3282395-1-eagle.alexander923@gmail.com>
 <d437f1d8-c079-4e17-ab67-f9090be6af9f@pengutronix.de>
 <CAP1tNvSfV1Yz0f9NDaN-e88KYFzPNkC16ZjTRPSyBd-hNKXMyg@mail.gmail.com>
 <29fb6d15-f449-45ee-8b2f-485a618ec573@pengutronix.de>
 <ae8lJG6VB2CG-ukg@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <ae8lJG6VB2CG-ukg@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_062919_417098_34E5DF2D 
X-CRM114-Status: GOOD (  22.38  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 4/27/26 10:58 AM, Sascha Hauer wrote:
> On Fri, Apr 24, 2026 at 04:53:59PM +0200, Ahmad Fatoum wrote:
>> Hello,
>>
>> On 4/24/26 10:46 AM, Alexander Shiyan wrote:
>>>> On 4/16/26 3:45 PM, Alexander Shiyan wrote:
>>>>> This adds support for the extlinux.conf configuration format, commonly
>>>>> used by Syslinux and many Linux distributions. The configuration file
>>>>> is typically located at /boot/extlinux/extlinux.conf or
>>>>> /extlinux/extlinux.conf and defines boot entries with kernel, initrd,
>>>>> device tree, and command line options.
>>> ...
>>>>> +static int extlinux_boot(struct bootentry *be, int verbose, int dryrun)
>>>>> +{
>>>>> +     struct extlinux_entry *e =
>>>>> +             container_of(be, struct extlinux_entry, entry);
>>>>> +     char *kernel_abs, *initrd_abs = NULL, *fdt_abs = NULL;
>>>>> +     struct bootm_data data = {};
>>>>> +     int ret;
>>>>> +
>>>>> +     bootm_data_init_defaults(&data);
>>>>> +
>>>>> +     data.dryrun = max_t(int, dryrun, data.dryrun);
>>>>> +     data.verbose = max(verbose, data.verbose);
>>>>> +     data.appendroot = true;
>>>>
>>>> Not sure this is a good idea because of potential of clashing with
>>>> extlinux appended command line options.
>>>
>>> globalvar_add_bool("extlinux.fix_root", NULL); ?
>>
>> global.extlinux.strip_root to remove root=
>> and bootm.appendroot to add barebox' own root?
> 
> We already have the latter, so nothing to do here.
> 
> Shouldn't we by default remove the root= option once data->appendroot is
> set? Also in the bootspec case we do not want to end up with two root=
> options.

I think we can't get this to work properly anyhow. Besides root= there
are other options as well (e.g. rootfstype) that we won't be able to
exhaustively remove. Add on top of that, that an initrd may decide for
itself that another rootfs should be used anyway...

If a user knows for a given system that appending root= will work, they
can do that, but I think it's useful for the cases where it doesn't work
that there are two root='s, so the root appending is directly apparent.

We just need to ensure the appended root comes last, so it has precedence.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



