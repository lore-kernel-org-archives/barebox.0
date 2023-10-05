Delivery-date: Thu, 05 Oct 2023 08:57:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoIIk-006N2Q-Jx
	for lore@lore.pengutronix.de; Thu, 05 Oct 2023 08:57:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoIIj-0006p0-P2
	for lore@pengutronix.de; Thu, 05 Oct 2023 08:57:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F5R0dRd9vRaV8kwrDkQi8YUa3tnM8p4ynoi3lVphvtM=; b=NU3SPez1F54rStww/5fIPjIZFH
	TTvYIQuHe2MuYFvPwQmpvc+kLG6DvkI3aEN6xJYbJpzK3HIk+4w5FJr5IyWwMPSrwzB6vlCvCTos2
	hjwwGOrCT3weZH7J2UXcEVD4wfmjESExalWa+QD/v9Ga2N4J79/xSy9cJh9AW0mbD869U/Ymx2ZjL
	6rsnSPkzDqHSrYPqUEt2oe9DQ0IcgeWScsHdFKVXXwKNC5Jpvj/lCepK6Qk8KgA3dGf6f1TsZBjzu
	NYgISbKWAF9EHwCTbfJWNNPBEoAWLWnx5mcU4y1nUYicAc9hGq1rQbKC782Zk8dtLKIGAxWb3yCri
	E6g7cWQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoIHe-001YJN-1d;
	Thu, 05 Oct 2023 06:56:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoIHb-001YIp-1v
	for barebox@lists.infradead.org;
	Thu, 05 Oct 2023 06:56:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qoIHa-0006Xw-91; Thu, 05 Oct 2023 08:56:26 +0200
Message-ID: <471fed69-a964-dbce-7883-8c0ccf2d33a0@pengutronix.de>
Date: Thu, 5 Oct 2023 08:56:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org,
 Alexander Shiyan <eagle.alexander923@gmail.com>
References: <20230911155927.3786335-1-a.fatoum@pengutronix.de>
 <20230911155927.3786335-3-a.fatoum@pengutronix.de>
 <20230912104903.GA637806@pengutronix.de>
 <87e96b20-ae2c-9679-29e4-1c54ee24948a@pengutronix.de>
In-Reply-To: <87e96b20-ae2c-9679-29e4-1c54ee24948a@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_235627_760738_1B290013 
X-CRM114-Status: GOOD (  26.50  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] net: add generic MAC address derivation from machine
 ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 12.09.23 14:34, Ahmad Fatoum wrote:
> On 12.09.23 12:49, Sascha Hauer wrote:
>> I think this deserves a cleanup before we merge this. The original
>> reason to introduce a postenvironment_initcall() for getting the MAC
>> address from nvmem was:
>>
>>> We do this in a very late initcall, because we don't want to enforce a
>>> probe a probe order between nvmem providers and network devices. We
>>> can't do it at randomization time, because we need to fixup Ethernet mac
>>> addresses, even when barebox itself doesn't ifup the netdev.
>>
>> I think we should have one centralized function that retrieves the MAC
>> address for an ethernet device. That should be called when we actually
>> need that MAC address, so once in net_new() and once at of_fixup time.
>>
>> Right now the behaviour is inconsistent with regard to random MAC
>> addresses. Currently we propagate the random MAC address to the Linux
>> device tree when we use ethernet in barebox, but we don't propagate it
>> when we do not use ethernet in barebox. We should decide what the
>> desired behaviour is and do it consistently regardless if we use
>> ethernet in barebox or not. This could be cleaned up along the way.
> 
> Randomized MAC addresses are a necessary evil when barebox needs to do
> networking and doesn't have a stable address. If we have a stable address,
> we shouldn't randomize.
> 
> Fixing up a randomized MAC address is a lesser evil than having different
> MAC addresses for barebox and Linux. If we don't need a MAC address in barebox,
> we shouldn't generate a random one just to fix it up.
> 
> If we have a stable address, we should tell Linux about it.
> 
> That's the logic of the current code and it's sensible to me. Why change it?

We have had two boards trying to add something similar in the last couple of
months. I still need your input here on how to proceed.

Thanks,
Ahmad

> 
> Cheers,
> Ahmad
> 
>>
>> Sascha
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



