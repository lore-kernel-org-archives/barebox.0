Delivery-date: Wed, 22 Oct 2025 13:01:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWak-00Aa8L-2L
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 13:01:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWak-0005sM-6I
	for lore@pengutronix.de; Wed, 22 Oct 2025 13:01:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JDSFeXfMjPIijxoRcZAtA4AHWrGDOkIjLLABJ0Xn/go=; b=GSt3p1UIznLsGgCybpZw/ppidB
	eHQpxV2ZpaaALvLP6Q90HNt9/9hp1TXfBhSmRnGl5M2Jwd1vH9KF2vuc7bi48qYUoRQT/HQN+DxDq
	f0fTrdiCJLtnMXgavUkcuM48Rx/2GrlL/4TvKdCUxwzsTf3DAAS+eQrzbix2uZQ/7lHsaiFmpkpIz
	XyvP81GPdQkBY/T2iabq3eFoMVtI2HTgDEII238DOOrMGdwUW8VebqeAGM1HaDAZQeD5PHQlXjEwY
	LyPL+SnApiy7clOVba1EKCYjfe8p3G7uY93qcxMc9ME9jPDSEwEjxCo/e2hmXtRGB0QhlUv+RfYcg
	SuASs65A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWaE-00000002Z7C-3rWB;
	Wed, 22 Oct 2025 11:00:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWaB-00000002Z6c-1RSz
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 11:00:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vBWa9-0005cz-Dg; Wed, 22 Oct 2025 13:00:41 +0200
Message-ID: <04cd71cc-7ef7-44f0-87d8-81f8613f325d@pengutronix.de>
Date: Wed, 22 Oct 2025 13:00:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-10-7a8aaf95081c@pengutronix.de>
 <2072764b-59e0-4ffc-9218-5a3010185220@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <2072764b-59e0-4ffc-9218-5a3010185220@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_040043_407732_00081245 
X-CRM114-Status: GOOD (  13.08  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/15] common: tlv: default decoder for signed TLV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2025-10-22 12:01, Ahmad Fatoum wrote:
> Hi,
> 
> On 10/14/25 1:03 PM, Jonas Rebmann wrote:
>> Introduce a second default encoder that behaves just like barebox_tlv_v1
>> but uses the "tlv" keyring.
>
> [...]
> 
>>>>   static struct tlv_decoder barebox_tlv_v1 = {
>>   	.magic = TLV_MAGIC_BAREBOX_V1,
>>   	.driver.name = "barebox-tlv-v1",
>>   	.driver.of_compatible = of_matches,
>>   	.mappings = mappings,
>> +	.signature_keyring = NULL,
> 
> I'd drop it given it's explicitly meant as optional parameter.

It is, but I'd like this to be a bit more explicit here. Something has
changed in barebox_tlv_v1 with my patch: It is now to be considered /the
unsinged decoder/ as opposed to barebox_tlv_v1_signed.

>> +};
>> +
>> +static struct tlv_decoder barebox_tlv_v1_signed = {
>> +	.magic = TLV_MAGIC_BAREBOX_V1_SIGNED,
>> +	.driver.name = "barebox-tlv-v1-signed",
>> +	.driver.of_compatible = of_matches_signed,
>> +	.mappings = mappings,
>> +	.signature_keyring = "tlv",
>>   };

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


