Delivery-date: Mon, 31 Mar 2025 12:26:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzCLv-006WpB-2f
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 12:26:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzCLv-00059W-6e
	for lore@pengutronix.de; Mon, 31 Mar 2025 12:26:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6qtahK6niqf6Nv4zbcgA2T3we2TikxQ+nXUmM+pJLvk=; b=14Nb+ZmlJGkQtZeupFZaq+u4+5
	R1kboHKgdoD0LPWnT18dP7A9/A/HgqIOmV5tHmB6EUcVaCdmbg+wHK1fhGot5RuyZMBFRHOc3/q4t
	LYtoCkS80Ho1w3jw3uYSRosmOE1oSgAm+U0bduKtRYYZREji2ljhfTOhY7gSz1y7wsQnHFGnEILRE
	x39kHrXSVE5J6xwedQ1GAQjD15/2wN97ksxKeo8oRp+A4NbI6jtX5S6PrKNvEp5N8Reh2zwanCyEb
	bluYA8+KNALyksATQHzcfRUKULHCMIa2vG2xRV8R/Tkno/Smg78Shb0QXsPLjUVMbyQLZyp6zR5rv
	XENVviTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzCLB-000000003Oa-4B4S;
	Mon, 31 Mar 2025 10:26:01 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzCL7-000000003MH-47DV
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 10:26:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:in-reply-to:from:references:cc:to:
	 subject:mime-version:date:message-id:from;
	bh=6qtahK6niqf6Nv4zbcgA2T3we2TikxQ+nXUmM+pJLvk=;
	b=CQDF816e+ONVz6xABMykVT5YTUYEcQayHYr9E1JzGYx/VMt6/3p0xPZkeunVw48ZIC3nuZaIXIXnn
	 VmXcS+SierQOzsSGdCJ/Sh/RomeVnDj/ml/lPaGk0GW42SP2S7RnH70m49DaEsnFxy8nAo+q0ZT8c3
	 Ouox358MKD30ZthrQ/UssXna/cAJoUx7aDmOYgTGyF1aYp87EXlbvKyIP7nS2MwaWlJ71m8CpD/KRR
	 VxkbWRBm/EeZUxBNuyiZIQLcCWyyV5y4i+CQDvS+SEmB9mqxiu9GCr8gba7rcbbO8Z4aibCRmm+DfI
	 7Lti7kh8qDOoS8dQ96Q/n5/0StJ/+Fg==
X-MSG-ID: 84bfd79f-0e1a-11f0-8eb0-0050568164d1
Message-ID: <2a82c4d0-1e3c-46f6-ba6b-e82556f7117d@protonic.nl>
Date: Mon, 31 Mar 2025 12:25:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250327100635.656657-1-robin@protonic.nl>
 <Z-pN-jyaGJ50sGqg@pengutronix.de>
Content-Language: en-US, nl-NL
From: Robin van der Gracht <robin@protonic.nl>
Organization: Protonic Holland
In-Reply-To: <Z-pN-jyaGJ50sGqg@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_032558_437095_40CEC3FB 
X-CRM114-Status: GOOD (  17.40  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: boards: protonic-imx6: prtvt7: Don't use fixed
 numbers for dynamic GPIOs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sacha,

On 31-03-2025 10:10, Sascha Hauer wrote:
> On Thu, Mar 27, 2025 at 11:06:34AM +0100, Robin van der Gracht wrote:
>> The GPIO indexing differs from the pin indexing.
>>
>> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
>> ---
>>   arch/arm/boards/protonic-imx6/board.c | 32 +++++++++++++++++++++------
>>   1 file changed, 25 insertions(+), 7 deletions(-)
>>
>> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
>> index 9e62dc1544..4585ca4730 100644
>> --- a/arch/arm/boards/protonic-imx6/board.c
>> +++ b/arch/arm/boards/protonic-imx6/board.c
>> @@ -21,6 +21,7 @@
>>   #include <net.h>
>>   #include <of_device.h>
>>   #include <linux/regmap.h>
>> +#include <of_gpio.h>
>>   #include <sys/mount.h>
>>   #include <sys/stat.h>
>>   #include <unistd.h>
>> @@ -740,17 +741,34 @@ static int prt_imx6_init_kvg_yaco(struct prt_imx6_priv *priv)
>>   	return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_WITH_YACO);
>>   }
>>   
>> -#define GPIO_KEY_F6     (0xe0 + 5)
>> -#define GPIO_KEY_CYCLE  (0xe0 + 2)
>> -
>>   static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
>>   {
>> -	/* This function relies heavely on the gpio-pca9539 driver */
>> +	int gpio_cycle, gpio_f6;
>> +	struct device_node *keys, *key;
>> +
>> +	keys = of_find_compatible_node(NULL, NULL, "gpio-keys");
>> +	if (!keys) {
>> +		dev_err(priv->dev, "Can't find gpio-keys of node!\n");
>> +		return -ENODEV;
>> +	}
>>   
>> -	gpio_direction_input(GPIO_KEY_F6);
>> -	gpio_direction_input(GPIO_KEY_CYCLE);
>> +	key = of_find_node_by_name(keys, "key-cycle");
>> +	gpio_cycle = of_get_named_gpio_flags(key, "gpios", 0, NULL);
>> +	if (gpio_cycle < 0) {
>> +		dev_err(priv->dev, "Unable to get cycle key gpio\n");
>> +		return gpio_cycle;
>> +	}
>> +	gpio_request_one(gpio_cycle, GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "Cycle");
>> +
>> +	key = of_find_node_by_name(keys, "key-f6");
>> +	gpio_f6 = of_get_named_gpio_flags(key, "gpios", 0, NULL);
>> +	if (gpio_f6 < 0) {
>> +		dev_err(priv->dev, "Unable to get F6 key gpio\n");
>> +		return gpio_f6;
>> +	}
>> +	gpio_request_one(gpio_f6, GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "F6");
>>   
>> -	if (gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6))
>> +	if (!(gpio_is_active(gpio_cycle) && gpio_is_active(gpio_f6)))
>>   		priv->no_usb_check = 1;
> Given that you parse the gpio-keys node here, have you thought about
> using the gpio-keys driver directly instead?
>
> input_register_notfier() should give you the necessary events when KEY_CYCLEWINDOWS
> and KEY_F6 are pressed.
We tried that in the past. Building Barebox with the gpio-keys driver 
(and thus enabling the keyboard),
had the side effect that Barebox autoboot was interruptible when a user 
pressed one of the buttons
a at the right time during boot.

We reverted to this option at the time to circumvent that. But now days 
we require ctrl-c to be pressed
on almost all of our boards to interrupt autoboot. So we could give it 
another try with the gpio-keys driver.

Robin


