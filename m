Delivery-date: Mon, 14 Apr 2025 14:07:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Iay-000dLN-29
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 14:07:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Iay-0004zl-3F
	for lore@pengutronix.de; Mon, 14 Apr 2025 14:07:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SlMEaVbdF1rRHsalCO5p5X6iLsBGntKBF1lgX3+kc48=; b=3nYbDlx/UsphfVIUFRrQhqhv+7
	7C2+x9RtECgMso4wghlLuHKxpRH5HUzHp5vXTJKKbzMmb7L2jCAaRXQ68eOx1HE0yrGbcdD+I2yg9
	IVyDjWOARA7Ruz5YGNkSG3zZZSzisp3b/cv4PDAXFXdZ6dUhLfgCG10L3RX82YAFfFJwURsf/BSC1
	gKgEq7dCeofqaREJ0ElbD9rVhkHexM3zbC3tG7pQrqDDfb5NSLyj1NoSwYwtEikBdMSsgYBE4heX6
	MyBq1qxumuJ+Ycrhw83jyTj8q0La7U2TddmoqWD7GGKr5D/5YtCV6hqd9rnOtH404EjJaRvLFM0a5
	/IY5dgyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4IaY-00000001skZ-1GBL;
	Mon, 14 Apr 2025 12:06:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4ISt-00000001rUm-19vE
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 11:59:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4ISr-000135-UK; Mon, 14 Apr 2025 13:59:01 +0200
Message-ID: <651bec57-30d0-41c2-91b6-2adb85d89c41@pengutronix.de>
Date: Mon, 14 Apr 2025 13:59:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, =?UTF-8?Q?Leonard_G=C3=B6hrs?=
 <l.goehrs@pengutronix.de>
References: <20250411072748.2017367-1-a.fatoum@pengutronix.de>
 <20250411072748.2017367-3-a.fatoum@pengutronix.de>
 <Z_zwJauQq7sEshIw@pengutronix.de>
 <9f905302-9a79-485f-9afa-45e98fa1aa40@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <9f905302-9a79-485f-9afa-45e98fa1aa40@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_045903_321219_91978D50 
X-CRM114-Status: GOOD (  20.76  )
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
Subject: Re: [PATCH 2/3] ARM: stm32mp: add Linux Automation TAC board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 4/14/25 13:42, Ahmad Fatoum wrote:
>> This check only matches for minor revision 0. Shouldn't the minor
>> version rather be ignored here?
> 
> I am not sure if a generation is always equal to the major version - 1.
> It seems we have no minor revisions != 0 in the field.
> 
> If Leonard (Cc'd) doesn't object, I'll mask away the lower 2 bits for v2.

Looking at the FairyTux in the follow-up commit, updating the major
version in copper was overlooked and thus a minor update was done.
This broke the 1:1 correspondence between generations and major versions.

I would thus like to keep the revision code unchanged for the LXA TAC to
be identical to what we have on the FairyTux.

Thanks,
Ahmad

> 
>>> +ENTRY_FUNCTION(start_stm32mp15xc_lxa_tac, r0, r1, r2)
>>> +{
>>> +	stm32mp_cpu_lowlevel_init();
>>> +
>>> +	/*
>>> +	 * stm32mp_cpu_lowlevel_init sets up a stack. Do the remaining
>>> +	 * init in a non-naked function. Register r2 points to the fdt
>>> +	 * from the FIT image which can be used as a default.
>>> +	 */
>>
>> "the fdt from the FIT image" seems to imply that this entry is only used
>> as a 2nd state entry, but it's used as a 1st stage entry as well, isn't
>> it?
> 
> s/FIT/FIP. First stage bootloader is TF-A.
> 
>> I would rephrase that to something like "in case of a 2nd stage boot r2
>> points to the fdt..."
> 
> There is no first stage boot.
> 
> Cheers,
> Ahmad
> 
>>
>> Sascha
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



