Delivery-date: Fri, 17 Jan 2025 10:03:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYiGf-000wuF-3A
	for lore@lore.pengutronix.de;
	Fri, 17 Jan 2025 10:03:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYiGg-0002eR-4d
	for lore@pengutronix.de; Fri, 17 Jan 2025 10:03:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bNUaXrRmrbQi6VDWuKCAki0ZYVJYZIpLCu/eif1XbpA=; b=jDQJys9lkycfv7jPz8JKwluc5h
	UAhBtFdqW92o+0sGfaH/C1M/76tZoImYKtT0R4cCcD1p+3NPxjIyv8sFsdGKiiy3hSP43gHe4SphY
	S1dDlEv09E268xckLFSoRjJgoCs/hqmxwppthVmolVMcSochd9Nr85hNkGKqyhV97QjoAPbgYD2BD
	FosXscTTrPXOVAEIAprBkjmCTe5wvnN7jCiT3HrxJpQH78vyacBtVDALStSrGZzHbgWlaFYjRLp2i
	W0fiMOq6WUc+WIFPlp71e6f5L4kkCMInTdtl477GlantA1OFSIfhn2NcvkqvARri7TqLvCiTLItjb
	ECpzh+fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYiGE-0000000HOwZ-2Oaw;
	Fri, 17 Jan 2025 09:03:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYiGC-0000000HOwF-0SbN
	for barebox@lists.infradead.org;
	Fri, 17 Jan 2025 09:03:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYiGA-0002Xa-RO; Fri, 17 Jan 2025 10:03:22 +0100
Message-ID: <b5506841-68f9-496b-9b59-8c9d5fbe0d77@pengutronix.de>
Date: Fri, 17 Jan 2025 10:03:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Felix Singer <felixsinger@posteo.net>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
 <20250112083432.320215-11-a.fatoum@pengutronix.de>
 <Z4oVpYra9gKbDoGM@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z4oVpYra9gKbDoGM@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250117_010324_151114_20FF2293 
X-CRM114-Status: GOOD (  16.41  )
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
Subject: Re: [PATCH 10/13] images: add barebox FIT image target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 17.01.25 09:32, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Sun, Jan 12, 2025 at 09:34:29AM +0100, Ahmad Fatoum wrote:
>> +MAKE_FIT := $(srctree)/scripts/make_fit.py
>> +
>> +# Use this to override the compression algorithm of the DTBs
>> +FIT_COMPRESSION ?= none
>> +
>> +quiet_cmd_fit = FIT     $@
>> +      cmd_fit = $(MAKE_FIT) -o $@ --arch $(CONFIG_ARCH_MKIMAGE_NAME) --os linux \
>> +		--name 'barebox-$(KERNELRELEASE)' \
>> +		$(if $(findstring 1,$(KBUILD_VERBOSE)),-v) \
>> +		$(if $(FIT_DECOMPOSE_DTBS),--decompose-dtbs) \
>> +		--dtb-compress $(FIT_COMPRESSION) -k $< @$(word 2,$^)
> 
> I had to drop this and the following patches from this series.
> 
> barebox already has a cmd_fit which you are overwriting with this patch.
> The existing FIT target is used for the beagleplay board to build an
> image to be started from U-Boot. I suspect we can just replace existing
> FIT target with your version.

I renamed it to cmd_itb in this patch that you picked:
https://lore.kernel.org/all/20250106091935.3435710-1-a.fatoum@pengutronix.de/

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


