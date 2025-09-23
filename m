Delivery-date: Tue, 23 Sep 2025 17:32:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v14zx-000EnB-0C
	for lore@lore.pengutronix.de;
	Tue, 23 Sep 2025 17:32:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v14zw-0001DR-Gq
	for lore@pengutronix.de; Tue, 23 Sep 2025 17:32:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gsuOPVBuSMi/axZ5LmrXMVIWUEgiSZlI083S30FfCCo=; b=zrQxMIHnC/q+IEfTzY5A0dnJN0
	L1xYY5IxFjCpFA4yIc27nGTGxGUEQqP+QnThpfDmfB2pqtXW7h+w2czjpXjetpI22jsSrs7sV65EQ
	gn6f0zjt0xf8PNrG1xobIe74SXyKTTgDmtWKqe08GnwFL1f5ImDaf2dlAusc8PMsSM8syZHTUwwkI
	Sv4OQmBN8BDUMxdSlHHTxkXhwDPiUUXD4BNffs2yTfCsBQNbvh1vDSmibwoTmbGrk7kMydOsfngci
	WjEQmRUk+48IL0oSxbu7KGKqbbU+jppsdbkXVWhbHxEU0ScBTXlzMaznAces3x1pO+b/euKOv1pl9
	scRO/Qtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v14zJ-0000000E40g-2r3r;
	Tue, 23 Sep 2025 15:31:29 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v14zG-0000000E3xu-1LYa
	for barebox@lists.infradead.org;
	Tue, 23 Sep 2025 15:31:28 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58NFVMRM030283
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO);
	Tue, 23 Sep 2025 17:31:22 +0200
Message-ID: <0afb7e25-5660-45d0-bfc5-90ce2582e6c4@clermont.in2p3.fr>
Date: Tue, 23 Sep 2025 17:31:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Picard <david.picard@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
 <20250917-boards-enclustra-sa2-add-support-v1-6-2de8f69107a1@clermont.in2p3.fr>
 <aMukQcvHZOMExEzw@pengutronix.de>
 <00327370-bbd5-4e70-863a-c7cb5a801bf4@clermont.in2p3.fr>
 <aMwTP4-1s7pB1gsd@pengutronix.de>
 <96208dcc-fbd7-478c-b8dc-cad04e04b169@clermont.in2p3.fr>
 <aNFL-L4yQGPBU_IM@pengutronix.de>
 <e1c99c7a-2f02-4638-b491-2929c84c9291@clermont.in2p3.fr>
 <aNJq8zmFkM9KXJw1@pengutronix.de>
 <6099cd02-f779-4cbd-af0c-daab487bb8ef@clermont.in2p3.fr>
Content-Language: en-US
In-Reply-To: <6099cd02-f779-4cbd-af0c-daab487bb8ef@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_083126_630550_8E223C59 
X-CRM114-Status: GOOD (  10.96  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/11] boards: enclustra-sa2: read MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I figured it out! I tweaked the DT a little bit, and I get this:

barebox@Enclustra Mercury+ SA2:/ md -b -s /dev/atsha204a00.mac@10
00000000: 20 b0 f7 0a 6c 08                                   ...l.

Same as what I used to get:
eth0: got preset MAC address: 20:b0:f7:0a:6c:08

David

Le 23/09/2025 à 13:50, David Picard a écrit :
> It works! https://paste.debian.net/1397791/
>
> However, I don't see how I can use the driver to read the MAC address. 
> Could you give me some hints?
>
> David
>
> Le 23/09/2025 à 11:40, Sascha Hauer a écrit :
>> On Tue, Sep 23, 2025 at 11:07:39AM +0200, David Picard wrote:
>>> Hi,
>>>
>>> The driver crashes and causes immediate reset.
>>>
>>> I could track it as far as this line:
>>> https://git.pengutronix.de/cgit/barebox/tree/drivers/nvmem/core.c#n473
>>>
>>> Boot log and some more details: https://paste.debian.net/1397772/
>> Seems *i2c_priv is not zeroed. Could you replace the devm_kmalloc() in
>> atmel_i2c_probe() with devm_kzalloc()?
>>
>> Sascha
>>
>
>



