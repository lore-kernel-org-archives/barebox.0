Delivery-date: Tue, 20 Jun 2023 08:19:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBUi1-00E4xp-4M
	for lore@lore.pengutronix.de; Tue, 20 Jun 2023 08:19:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBUhy-0001XW-PC
	for lore@pengutronix.de; Tue, 20 Jun 2023 08:19:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S0sWaw+6W3D1nouwYf9QUlxJXo7VAQ2xBNG3iWbP+yw=; b=cujjjuEa6p8Y4JSPrm0Ml3lKZz
	j+N2iA1CYIfKngHd9uTZPV9+/0rOszoY8hjXywACzrOLlyoLWwTUvJ972qecgvmmkmD9gWiQiBuka
	b2r10qFVtSXB6piatJ9hm74ddGOoFgdNBAPzopu/auwKR0pZloV8dBGj2z8h/dR4ejdz13sCmOkHa
	bLhrY0mLYaJk1V9zkZfc+2B6kIv8nbwZKjFG7Y393bQIKEGl5VWC8HWPrK1opjlLUVQPqa/whz23B
	aHENLrhSLnYPtBGX1646QbEDYQ6ze9sqzOmB0enZJ7RRvhpI38ad9S2AmZ6HGsR+brdPS0It1Ae+j
	IOdhrObA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBUh1-00AG3j-2V;
	Tue, 20 Jun 2023 06:18:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBUgy-00AG38-2U
	for barebox@lists.infradead.org;
	Tue, 20 Jun 2023 06:18:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qBUgx-0001PK-DW; Tue, 20 Jun 2023 08:18:15 +0200
Message-ID: <ca3946ba-916e-7714-8b2d-9a9c27cbcb3e@pengutronix.de>
Date: Tue, 20 Jun 2023 08:18:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
 <20230614135452.1884124-6-a.fatoum@pengutronix.de>
 <20230620052045.deruonvmw3sq42is@pengutronix.de>
 <3aa4d7ba-1b78-7efc-493f-9e4144fe0c17@pengutronix.de>
 <20230620061335.y3fs5wulabyetp7f@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230620061335.y3fs5wulabyetp7f@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_231816_832002_71236219 
X-CRM114-Status: GOOD (  16.93  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 05/10] gpiolib: export proper gpio descriptor API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 20.06.23 08:13, Marco Felsch wrote:
> On 23-06-20, Ahmad Fatoum wrote:
>> Hello Marco,
>>
>> On 20.06.23 07:20, Marco Felsch wrote:
>>>> -static unsigned gpioinfo_chip_offset(struct gpio_desc *desc)
>>>> +static unsigned gpioinfo_chip_offset(const struct gpio_desc *desc)
>>>
>>> Why do we stick with gpioinfo_* here? IMHO we could use
>>> gpiodesc_chip_offset() since the gpioinfo is gone.
>>
>> gpioinfo_ is internal. gpiod_ is external. I thought about renaming
>> gpioinfo_ to gpiodesc_, but found it confusing, because they are
>> too similar in name.
> 
> The gpioinfo_ is even more confusing (at least to me) since the struct
> the name is based on is renamed once this series gets merged.

I can send a follow up patch to rename the functions (or a v2
if there's other feedback).

>>> This function should be deleted since we don't support the global 'int'
>>> gpio anymore.
>>
>> We do support it. Lots of code across the tree doesn't use gpiod_ API.
> 
> Argh.. you're right. I thought, that your adaption patches do cover all
> users. Sorry my bad.
> 
>>>>  EXPORT_SYMBOL(gpio_direction_input);
>>>
>>> gpio_direction_input should be deleted as well?
>>
>> Once we have switches all over to use gpiod_ API, we could drop it, yes.
>> Patches to migrate existing users are certainly welcome ;)
> 
> Hm.. we should deprecate this function to make it clear and to encourage
> board maintainers to switch ;)

We can add deprecation warnings, but not before all in-tree users are
switched.

Cheers,
Ahmad



> 
>>
>> Cheers,
>> Ahmad
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



