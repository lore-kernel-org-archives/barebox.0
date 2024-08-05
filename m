Delivery-date: Mon, 05 Aug 2024 18:56:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sb10p-006YNc-0x
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 18:56:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sb10o-0001BI-L1
	for lore@pengutronix.de; Mon, 05 Aug 2024 18:56:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B6JAvQFRGmJIdusXftWveN6hIwUdzkskmFhLWqtlvhg=; b=0G+0PN/+z6taYvtNtcbt2YAZhw
	KT8/ICmOrihGanxdzht2xC5EHamEjHI/9yRQ7RCaez+Ufpb23oDxNb0KCaKh9tUu11bXxeINN4cjM
	Q8+KqJLOfo8YEaYcWJ88b4ofJUqsSjZZQ0HN1d8kQedq6PIGpBxHcAhDxlxnLc1hd11/Hy1O0an2H
	wv9C1N4GRAv5ogAmeeNdBzoCa6LhOT3YNQJYdTAJp1UHzjcbc0vGoHbAZVPouKyJ7emDhnmhARTlF
	4VrBMnnL5lhNMrY4Vf2dd81mHT+xyuKwQM4H3CwZJrnvzEk2kfrxaAMGhndM7HuigufVS2uR9mPGg
	CHndMgjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb10G-0000000GagP-3aXy;
	Mon, 05 Aug 2024 16:56:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb10D-0000000Gafj-1c1A
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 16:56:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sb10C-00015g-01; Mon, 05 Aug 2024 18:56:08 +0200
Message-ID: <8f9841c5-8d32-43f7-a663-6e2ca869f118@pengutronix.de>
Date: Mon, 5 Aug 2024 18:56:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>, barebox@lists.infradead.org
References: <ca751c63f894078f566cf8de12d3f5a81ce252b0.camel@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ca751c63f894078f566cf8de12d3f5a81ce252b0.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_095609_460247_F987CF6D 
X-CRM114-Status: GOOD (  26.42  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: short entropy delay causes RNG hardware error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Stefano,

On 05.08.24 18:01, Stefano Manni wrote:
> Hello,
> 
> on a custom board based on imx6ul once linux starts I see lot of errors
> like this:
> 
>   caam_jr 2141000.jr: 2000005b: CCB: desc idx 0: RNG: Hardware error
> 
> approximately every 10 seconds.

Do you have rngd enabled? You don't need this anymore with a recent
enough Linux (>= v6.1 or perhaps earlier).

This doesn't fix the underlying issue of course, but it will save you
some CPU time.

> And if I try to read from device the
> same error occurs:
> 
>   ~# dd if=/dev/hwrng of=/dev/null bs=1 count=1
>   caam_jr 2141000.jr: 2000005b: CCB: desc idx 0: RNG: Hardware error
>   dd: /dev/hwrng: Invalid argument
> 
> No errors are fired in barebox where the RNG self-test is run
> succesfully:
> 
>   rng_self_test: RNG software self-test passed
>   caam 2140000.crypto@2140000.of: Instantiated RNG4 SH0
>   caam 2140000.crypto@2140000.of: Instantiated RNG4 SH1
>   caam 2140000.crypto@2140000.of: registering rng-caam
> 
> Here [1] I found that enlarging the entroy delay may help so I tried to
> do the same in barebox by changing RTSDCTL_ENT_DLY_MIN from 3200 to
> 4800 and it succeded, I no longer see those errors in linux and trying
> to read from the device works perfectly.

That's the correct resolution, yes.

> The strange thing is that on another board based on imx6sx I never see
> those errors.

There can be quite some variance in the time needed to collect enough
entropy, even for SoCs cut from the same wafer, so this is not unusual.

> Is it something new to you? 

This issue has been there for a long time. Optimally, NXP would
store a suitable delay value into the OTP in the factory or at least
public suitable initial delay values for their SoCs, but unfortunately
they don't.

> May we change the delay? On linux-imx 6.6.3 3200 is still used.

The driver starts at 3200 and increases the delay in steps of 40 until
it reaches a suitable value. There's a maximum (12800), but it's not
used as that would slow down the RNG. Thus the search at probe time for
the lowest possible delay value that still allows instantiating the RNG.

Unfortunately, a successful instantiated RNG doesn't necessarily mean that
actual runtime usage of the CAAM won't trigger errors.

Increasing RTSDCTL_ENT_DLY_MIN to a value appropriate for your board is
thus the way to go. I think it would be appropriate to add a device tree
property, so the minimum delay value can be set on a per-board basis.

Cheers,
Ahmad


> 
> Best,
> Stefano
> 
> [1] 
> https://lore.kernel.org/all/CAOMZO5D0m1xCfgFifKz1H+oYQSfxsfuZp4U39rPMACmzv1fvjQ@mail.gmail.com/#t
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



