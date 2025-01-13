Delivery-date: Mon, 13 Jan 2025 17:07:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXMxz-000f0B-16
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 17:07:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXMxy-0007ZB-Mf
	for lore@pengutronix.de; Mon, 13 Jan 2025 17:07:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r3ftCufrb3zaYr6hyHQzbNXS0FCIIvpbI6J4yQkCXNc=; b=smhNaoL+7uiFKMXTrJrUQ7Mvjv
	WnjPmGOdtfkKz+0m3BLGRX9RQV43UiuJ3GFyBYl6hxVpgjQ0LCDf8wWIQ8AL+1ufQLYfQlHYG8z20
	ofr+VbDJt4TQAlLe+7T6fruwNhbcbO4JWxKJmE4J8ydEwQftIEEin+rFIozCAuK8Po5WJdrQ6ckMl
	PFKJyGtQOcAmcHpow4dB3/5/LmB9z4uFdzjxGH58zdLouebFcN2UhWwNJRRt4xeaabvIhK4LdnYsW
	+FbCAKIU5JttpcItsF63qMGAHev0JxDQWfS80h1/vhqDuQGnoiqgNZuXX6ZYTunyykpVOsmt1GZRm
	0REmsFIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXMxW-00000005mfz-30qs;
	Mon, 13 Jan 2025 16:06:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXMU1-00000005fR3-2rJ6
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 15:36:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXMTz-0005Hc-Hl; Mon, 13 Jan 2025 16:36:03 +0100
Message-ID: <54710d9d-59b7-4e75-a07a-a4f8eb0537a2@pengutronix.de>
Date: Mon, 13 Jan 2025 16:36:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <DM5PR07MB3532BD01391995069161C80BEC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
 <28c492e7-028f-4247-be7f-3edf699578fa@pengutronix.de>
 <DM5PR07MB353218A5AE678C5F358831C5EC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
 <757d7d40-a066-4dc7-80b0-b14dec016fbb@pengutronix.de>
 <DM5PR07MB353242B3BFE08BF509D9E78FEC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <DM5PR07MB353242B3BFE08BF509D9E78FEC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_073605_722023_68E4028C 
X-CRM114-Status: GOOD (  19.59  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: nvme sanitize command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Renaud,

On 13.01.25 16:04, Renaud Barbier wrote:
>> On 13.01.25 15:03, Renaud Barbier wrote:
>> So this is a single command that erases the whole device, but doesn't take
>> block offsets/length as arguments? Do you know what value the erased data
>> can have afterwards?
> 
> Indeed. No block offset/length as far as I can see from libnvme and nvme-cli Linux commands
> 
> I have added the erase entry point and ran the sanitize block erase command. This wiped out the whole device 
> barebox@LS1046A RDB Board:/ md -s /dev/nvme0n1
> 00000000: 00000000 00000000 00000000 00000000                ................
> 00000010: 00000000 00000000 00000000 00000000                ................
> 00000020: 00000000 00000000 00000000 00000000                ................
> 00000030: 00000000 00000000 00000000 00000000                ................
> 00000040: 00000000 00000000 00000000 00000000                ................
> 00000050: 00000000 00000000 00000000 00000000                ................
> ...
> 
> Whatever the offset I give, I get 0.

Nice, assuming that's guaranteed by the standard, we don't need
to add a new ERASE_TO_DISCARD or similar yet.

>> Isn't this what you want? Erase the whole device at once?
> Yes. My number one goal is reached.
> There maybe a requirement for pattern writing with several passes later.

For that, ioctl is the way to go IMO as described in my last mail.

>>> Unless a way can be added to set features for sanitize.
>>> At present, erase is all I need so I will add the erase entry point with the
>> sanitisation action being NVME_SANITIZE_SANACT_START_BLOCK_ERASE as
>> default.
>>
>> How about you implement erase in nvme, but check that size arguments
>> indeed describe the whole device: If it does, you do your sanitize operation
>> and if it doesn't, return -ENOSYS.
>>
>> Would that work for you?
> 
> Perfect. Thanks.

Cool. Send patches. :-)

Cheers,
Ahmad

>>
>> Cheers,
>> Ahmad
>>
>>
>>>
>>>
>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       |
>> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!AUi
>> 6RmEZIZYR-
>> U1OlElGWJEdi0g1ZCeRGBk5zYyXFu6ifUk_2PdDAdTfmpe_cMMuA4dN5J9hJ3
>> bQtQzKggqYiqQvkqc$   |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


