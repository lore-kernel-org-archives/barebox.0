Delivery-date: Tue, 01 Apr 2025 08:28:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzV6y-006sqk-0j
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 08:28:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzV6x-0007yi-Lo
	for lore@pengutronix.de; Tue, 01 Apr 2025 08:28:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M4RltzAM0tNW37rynf4f1Sl9DUllSXdSdIoj5CqhcuU=; b=MF0VU9y6llX9833xHR/L+X9y29
	w85ARiowp34s/1YGz/CggJutcKqeDU71cU2NwYVEMeRubBUCjGmHnrBuckHZJBcD3eGJb2nrJkOJM
	zFWt9I9MJirCAWuapg7+n+vufz/7SnxALBsq6ioSN/eXq2kCfHO1dJPqyoJCpjIpDytevqg606Tt7
	F5p7H55Td7YeDO64bsF+6oqvEfMlb+BfJjTyS9Q2RaII5cSunrn6ibcEMEiZXWDwYTNCUrr3huJcX
	QVtgjCg+RRUDPErLqngGqdTwiwL4bhDUPXe4e8rUuaooMzGawp8Q6QELH8NJA8I6wH5qC45glbI4H
	VBP8Cp2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzV6S-000000025pt-469C;
	Tue, 01 Apr 2025 06:28:04 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzV6P-000000025ot-3e3o
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 06:28:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:in-reply-to:from:references:cc:to:
	 subject:mime-version:date:message-id:from;
	bh=M4RltzAM0tNW37rynf4f1Sl9DUllSXdSdIoj5CqhcuU=;
	b=TmQIh9zA/aPBFNqVDOOidgvK9Ofn29DWn94op0qAeuE01Dovaw9D2mO1lt8XA4r7pr9Mk1V05FwXk
	 130GAaGg81eZTdHCl5YEl7Fstq+zZp8sMOAV862EteCF2CH1k6EgQGRHzTosIIg8fHZBEEJK1kkxo1
	 p+wUQDJZMQlhP5nnzJvzHQcL1NbDzq0U6p4+/zgOb/Wq6ch8b3NiMxstd0Hbbr1Uv3T0OoraN1bV4G
	 vxV7otfTqtRnjVXIliBTIj3cSN6g/pIds9bofBm9aNr1mvg2ucsBAC4SXZnzVQhEzxy2S/VNK46uYL
	 2zINPpT0TLr3sTiUxuICYG9vPSBminw==
X-MSG-ID: 74010f06-0ec2-11f0-abc8-005056817704
Message-ID: <1c270035-1c5d-43c8-9bad-2a8ee0c72b19@protonic.nl>
Date: Tue, 1 Apr 2025 08:27:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250331150528.3270385-1-robin@protonic.nl>
 <Z-uAeJBk49WRASr9@pengutronix.de>
Content-Language: en-US, nl-NL
From: Robin van der Gracht <robin@protonic.nl>
Organization: Protonic Holland
In-Reply-To: <Z-uAeJBk49WRASr9@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_232802_332192_7257C400 
X-CRM114-Status: GOOD (  11.72  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: boards: protonic-imx6: prtvt7: Use the input system
 for key detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01-04-2025 07:58, Sascha Hauer wrote:
> On Mon, Mar 31, 2025 at 05:05:28PM +0200, Robin van der Gracht wrote:
>> Static gpio mapping is deprecated. Instead query the gpio-keys driver for
>> pressed keys.
>>
>> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
>> ---
>>   arch/arm/boards/protonic-imx6/board.c | 17 ++++++++++-------
>>   1 file changed, 10 insertions(+), 7 deletions(-)
>>
>> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
>> index 9292052d30..4bfae3d608 100644
>> --- a/arch/arm/boards/protonic-imx6/board.c
>> +++ b/arch/arm/boards/protonic-imx6/board.c
>> @@ -13,6 +13,7 @@
>>   #include <globalvar.h>
>>   #include <gpio.h>
>>   #include <i2c/i2c.h>
>> +#include <input/input.h>
>>   #include <mach/imx/bbu.h>
>>   #include <mach/imx/imx6.h>
>>   #include <mach/imx/ocotp-fusemap.h>
>> @@ -740,19 +741,21 @@ static int prt_imx6_init_kvg_yaco(struct prt_imx6_priv *priv)
>>   	return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_WITH_YACO);
>>   }
>>   
>> -#define GPIO_KEY_F6     (0xe0 + 5)
>> -#define GPIO_KEY_CYCLE  (0xe0 + 2)
>> -
>>   static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
>>   {
>> -	/* This function relies heavely on the gpio-pca9539 driver */
>> +	unsigned long *keys;
>>   
>> -	gpio_direction_input(GPIO_KEY_F6);
>> -	gpio_direction_input(GPIO_KEY_CYCLE);
> I added a
>
> 	of_devices_ensure_probed_by_compatible("gpio-keys");
>
> here to be sure you don't depend on probe order.
>
> Sascha
Ack. Thanks.

Robin


