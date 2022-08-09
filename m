Delivery-date: Tue, 09 Aug 2022 11:55:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLxc-00HEk6-5m
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 11:55:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLxc-0000nQ-E8
	for lore@pengutronix.de; Tue, 09 Aug 2022 11:55:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pHo3ndwt6bNwM5sM6+f0pyJSfU0bhzdRfPa4xMZEaRA=; b=HmDRxtllt4t7Od3+9Bevxra6MD
	6sNfNuf9b0IOmeEO4nbFBB2OjjXETpa++NNhwcolQqdpDdlZq88cNnPiosM1SEzS/kS+wDM/OZ21P
	QACJUsodjUZVDwmpV9xzvV9DNxopbrhTbWp5FJDUWYKcceRqViACUkuebcWBDaRFkdEg92PSptUXj
	nst3ckFCjc6bIaNcNNxdwkU+VbinYoA+c88A2iwTMo0SFhwAMvHFE9YrOYLvXXhZmgaGOARHj51/t
	SRjC5yB2I5P1mSmQQIyT/F9J5MSP8naHEVKELp2poxsU6HZ78J1EaBUoj/mI40Owu9uRUIZHguooh
	xCyP/JdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLwL-0039ID-Eh; Tue, 09 Aug 2022 09:54:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLwF-0039H0-Rb
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 09:54:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oLLwE-0000Ug-5q; Tue, 09 Aug 2022 11:54:14 +0200
Message-ID: <82e482ad-7c4e-edd1-49d1-4c16ee4fbb3a@pengutronix.de>
Date: Tue, 9 Aug 2022 11:54:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220809062938.1750369-1-a.fatoum@pengutronix.de>
 <20220809062938.1750369-4-a.fatoum@pengutronix.de>
 <20220809094902.GP31528@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220809094902.GP31528@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_025415_936904_C320CA92 
X-CRM114-Status: GOOD (  23.74  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/4] ARM: dts: stm32mp: add bootrom serial (DFU) reboot
 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 09.08.22 11:49, Sascha Hauer wrote:
> On Tue, Aug 09, 2022 at 08:29:38AM +0200, Ahmad Fatoum wrote:
>> The same register we use for the reboot mode communication between Linux
>> and barebox is also sampled by the bootrom. If the lowest 16 bits of it
>> are 0x00FF, the bootrom will enter DFU mode. Add the appropriate
>> reboot-mode, but with a barebox, prefix, so Linux doesn't automatically
>> provide it to userspace along with the existing loader and recovery
>> modes.
> 
> Why do we need to prevent Linux from providing dfu mode to userspace?
> Isn't that a vlid usecase?

It is, but I don't want a barebox update to add this feature by default.
So, communication with BootROM = not exported by default
Communication with Linux = exported by default

and this can be overridden on a per-board basis via device tree.
We do this likewise for the i.MX6 and i.MX8 where we have
barebox,syscon-reboot-mode which isn't processed by Linux, but we
can't use this here because the same register is used for both
modes of communication.

Cheers,
Ahmad

> 
> Sascha
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/dts/stm32mp151.dtsi | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
>> index ed7cf6192bea..ac6536a556a9 100644
>> --- a/arch/arm/dts/stm32mp151.dtsi
>> +++ b/arch/arm/dts/stm32mp151.dtsi
>> @@ -41,9 +41,10 @@
>>  	reboot_mode_tamp: reboot-mode {
>>  		compatible = "syscon-reboot-mode";
>>  		offset = <0x150>; /* reg20 */
>> -		mask = <0xff>;
>> +		mask = <0xffff>;
>>  		mode-normal = <0>;
>>  		mode-loader = <0xBB>;
>>  		mode-recovery = <0xBC>;
>> +		barebox,mode-serial = <0xFF>;
>>  	};
>>  };
>> -- 
>> 2.30.2
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


