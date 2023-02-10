Delivery-date: Fri, 10 Feb 2023 18:00:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQWl3-003Hrd-C1
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 18:00:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQWl0-0001qp-0r
	for lore@pengutronix.de; Fri, 10 Feb 2023 18:00:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KWIlQial/XujZ6uopmOKeQt0FIu7ypfS7nz/qJlafUI=; b=Z62SF4JT199hi034NyxhPeEdE3
	CjPTU/8zi2qO3fHUU0nM0rSd7hocSfcTeyOQs8BZsrnxpSfmwu6r70veFUoe5P1yzRsEnqQ2QRL3+
	juA6YAfqvjLR5KwxGO31g/aoxz0tx3oW+qKxzQYdh2tBdBSdSZ8Y4CKASlvFsi3HTszPMkp57G7pp
	CIQe4ZXvhk/JlXboq5wUJGXYrm1X7nk7UXfWJawB63PoxSb9yAPTwxKtLnhUDuUhz76Uvd/Bu8UqO
	E0m2I/7vEDcM2rOp9wg0alP4l4/WIZM+pJX6/0M9Y7gzaIO7blgLYyLzu6ip0shcfLTtAEqcVBwj9
	vUxbvq4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWk6-006cvw-8q; Fri, 10 Feb 2023 16:59:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWjp-006cpv-Ng
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 16:59:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pQWjm-0001d3-E7; Fri, 10 Feb 2023 17:59:02 +0100
Message-ID: <6daa5a44-f0e2-5449-eeb7-4b800b9b848f@pengutronix.de>
Date: Fri, 10 Feb 2023 17:59:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <BL0PR07MB566568DCB4AD086C7C4C3961ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210112546.GW10447@pengutronix.de>
 <BL0PR07MB56659860B1E024CA7DA2AF55ECDE9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210122540.GY10447@pengutronix.de>
 <BL0PR07MB56657805EB651D34A18D40CDECDE9@BL0PR07MB5665.namprd07.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <BL0PR07MB56657805EB651D34A18D40CDECDE9@BL0PR07MB5665.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_085905_821650_F1DD9E01 
X-CRM114-Status: GOOD (  24.17  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] Initial LS1021-IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Renaud,

On 10.02.23 16:57, Renaud Barbier wrote:
> What about soc/fsl/immap_lsch2.h vs soc/fsl/immap_ls102xa.h.
> Lots of similarities but also a lots of differences (when excluding the prefix LSCH2 and LS102XA)
> Can I assume ccsr_scfg can be mapped to each other?
> May be a question to NXP.

Preferably, you'd use the already defined macros and for stuff where
LS102x differs, you'd add a prefix, e.g. struct ls102x_ccsr_scfg.

The goal should be to have as little duplication as possible
and still be able to compile a file that includes both
headers without them clashing.

Cheers,
Ahmad

> 
> 
>> -----Original Message-----
>> From: Sascha Hauer <sha@pengutronix.de>
>> Sent: 10 February 2023 12:26
>> To: Renaud Barbier <Renaud.Barbier@ametek.com>
>> Cc: Barebox List <barebox@lists.infradead.org>
>> Subject: Re: [PATCH 0/2] Initial LS1021-IOT board support
>>
>> ***NOTICE*** This came from an external source. Use caution when
>> replying, clicking links, or opening attachments.
>>
>> On Fri, Feb 10, 2023 at 11:54:31AM +0000, Renaud Barbier wrote:
>>> I have not tried yet. I was not sure if you like to have separate machine
>> support as there are some differences in the SOC .
>>>
>>> I will merge it and send you a new patch.
>>
>> I like it better when it's merged, eventhough it's never compiled together as
>> they are different compiler architectures.
>>
>> Sascha
>>
>>>
>>>> -----Original Message-----
>>>> From: Sascha Hauer <sha@pengutronix.de>
>>>> Sent: 10 February 2023 11:26
>>>> To: Renaud Barbier <Renaud.Barbier@ametek.com>
>>>> Cc: Barebox List <barebox@lists.infradead.org>
>>>> Subject: Re: [PATCH 0/2] Initial LS1021-IOT board support
>>>>
>>>> ***NOTICE*** This came from an external source. Use caution when
>>>> replying, clicking links, or opening attachments.
>>>>
>>>> On Wed, Feb 08, 2023 at 01:26:21PM +0000, Renaud Barbier wrote:
>>>>> The LS1021A-IOT is NXP ARMv7 Layerscape evaluation board.
>>>>>
>>>>> These patches provide a basic board support with:
>>>>>       - UART
>>>>>       - boot from SPI
>>>>>       - One Ethernet port - eth1*
>>>>>
>>>>> The content of the EEPROM having been lost so the MAC should be
>>>>> set in the config file
>>>>>
>>>>> The code is ported from NXP U-boot 2021-04. Like U-boot, the
>>>>> machine support i.e mac-lxxx lives in its own directory. However,
>>>>> it is very similar to the ls1046a machine support. This migth be
>>>>> merged. Please
>>>> advise.
>>>>
>>>> It would be nice to have this merged to arch/arm/mach-layerscape.
>>>> For example arch/arm/mach-layerscape/pblimage.c looks identical to
>>>> your version.
>>>>
>>>> Have you tried merging it? If yes, which problems did you encounter?
>>>>
>>>> Sascha
>>>>
>>>> --
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       |
>>>>
>> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!C
>>>> ZdG8RU9gQpSVfJzH_T4b8q5lFRdLrpGiJsD5H-
>>>> H351N8ycvCriKuoi6quenVmESFrbU0Iw9qhIlb5z4ifTE$   |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       |
>> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!G
>> os0mqldKVyCzyhvalaS58FEkUQ1osWODWWtH0-
>> MC4aIxC0d2rtcUzK3DWcfHooti_U0whPPLXjo8H3Xl87E$   |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



