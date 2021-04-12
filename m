Delivery-date: Mon, 12 Apr 2021 14:44:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVvvk-0005Ej-EK
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 14:44:40 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVvvj-00073A-IN
	for lore@pengutronix.de; Mon, 12 Apr 2021 14:44:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tIXVxYiAPhFIKMWnqyL/zuEOU8b3Bt+kU8mWnEQPj0E=; b=j/Ad81OprsVIXydV7GiodEIga
	c1TSdJvM+/3XANm1qfqdTYFHZByrbTMqG1N/lDCQYk+rZqK3MXvEPO1boOEgc9GH615IbZHu0xXtt
	N2VdUNy7r5LMEF8sLqoXfkC5IYe3f/wOROTtMS0fN1R2MvyX2UvR9WbFL57TbztfdOQmdj32J91P6
	L3f8ILfuMG1XTivaETEPQG25Ac9UxcW30nT2kJYWXRnwdbnfxhVpuj105gycL39YFBG2AyIofsAdV
	6u+ugvWlO0WXae7rKowPJ0DrUGtjPCg4vLJrq34BR5hqcJ3vby8xnP2M2gyeBmWjSMtLE/3k7ULZD
	DxS5iQG3w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVvua-006j4w-Ol; Mon, 12 Apr 2021 12:43:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVvuU-006j4R-S0
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 12:43:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=qZFxZablWLF9u5qaSI8S5IQCzIdy6S6nxJi2TlH/gj8=; b=YmlakUY8j+fMNF8K3+VvVLsaYn
 4Xion1vLyAJkMUQnD5BnOoqX3kKrv4lsGgZK8PfGMbUUO5+AdtZeAVxDJdvKMRLLsKWnomVgFe+it
 20RtCzLQ86TA/qnnQRTLFx7oZeyhy/5M3n3KhCQKmWTzdd4ykijeAlmqzHhelT9C8a3PwaJUIBk/3
 h3XR+0GpGgJjfYeTeVMI5VvNen27ZtcakbHG+AMifyIDA414wzkwhRbWdhZDRejaVSKR+tRCaRY8Z
 YkpJLq5W9X51lrcQB6NQ6/+x8qXKKoof8vsmZUjaJt8fQp3rEdlRpcGuKiJXQSvuoUyebrmQeFVeX
 NZSheSEQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVvuS-006EFU-8K
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 12:43:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lVvuQ-0006uz-S8; Mon, 12 Apr 2021 14:43:18 +0200
To: Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>
References: <20210409132035.197739-1-lapeddk@gmail.com>
 <67622809-1252-bfff-d114-ce11f2c7c7dd@pengutronix.de>
 <CAKd8=GuJnm0Uz7bXOCoy8YhQ_OL_1nB3Cjq_ERrY3Xo=ynhSjw@mail.gmail.com>
 <7551e835-6109-2386-6b4b-7224aae675bb@pengutronix.de>
 <CAKd8=GvvoobiudVaRp7qdDU-P4k1herndE-AXoiZkLtoc5R-vw@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0476fd8d-c2ef-942a-64ab-62dd5eda9a22@pengutronix.de>
Date: Mon, 12 Apr 2021 14:43:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAKd8=GvvoobiudVaRp7qdDU-P4k1herndE-AXoiZkLtoc5R-vw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_054320_329737_8DDDE5C5 
X-CRM114-Status: GOOD (  24.79  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Kamstrup mx7 concentrator board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Lars,

On 12.04.21 14:09, Lars Pedersen wrote:
> Hello again. Thanks for the quick response :)
>> Easiest way to get this right is to write a board driver.
>> See arch/arm/boards/lxa-mc1/board.c for an example.
> 
> In arch/arm/boards/freescale-mx7-sabresd/board.c they do something like:
> 
> if (!of_machine_is_compatible("fsl,imx7d-sdb"))
>   return 0;
> 
> Can't I just do the same?
> 
> if (!of_machine_is_compatible("kam,imx7d-flex-concentrator-mfg"))
>   return 0;
> 
> The board driver in arch/arm/boards/lxa-mc1/board.c seems more complicated.

The board driver support is recent and not many boards use it.
Doing of_machine_is_compatible check manually is error-prone (inverted logic,
sometimes it's forgotten, like in v1 here) and doesn't scale once you
have multiple compatibles you want to match against. Drivers can also
EPROBE_DEFER if they can't yet acquire a resource.

For the simple case of toggling a reset, likely only difference now is that you
can verify your driver availability with drvinfo. I'd prefer new code uses board
from the get-go though if board code is really needed.

Cheers,
Ahmad

> 
>>
>>>>> +}
>>>>> +
>>>>> +static void __noreturn kamstrup_mx7_board_restart_gpio(struct restart_handler *rst)
>>>>> +{
>>>>> +     imx7_setup_pad(MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12);
>>>>> +
>>>>> +     gpio_direction_output(BOARD_RESTART_GPIO, 0);
>>>>> +     mdelay(1);
>>>>> +     gpio_set_value(BOARD_RESTART_GPIO, 0);
>>>>
>>>> I just sent out a patch[1] with a driver implementing the "gpio-restart" device
>>>> tree binding. Could you test that one and use it here instead?
>>>>
>>>
>>> I have applied the patches on a master branch (Last patch failed to
>>> apply but was only watchdog) and the gpio-restart works perfectly.
>>
>> Thanks for testing! You can add your Tested-By on the patch in question
>> if you like.
>>
>>>
>>>>> +
>>>>> +     hang();
>>>>> +}
>>>>> +
>>>>> +static int kamstrup_mx7_concentrator_coredevices_init(void)
>>>>> +{
>>>>> +     kamstrup_mx7_tpm_reset();
>>>>> +     restart_handler_register_fn("board", kamstrup_mx7_board_restart_gpio);
>>>>> +     barebox_set_model("Kamstrup OMNIA Concentrator");
>>>>
>>>> The default model name is "Kamstrup OMNIA Flex Concentrator".
>>>> If that's too long, you could override /model in the barebox device tree.
>>>> With the changes suggested above, you could drop board.c then altogether.
>>>>
>>>
>>> I'll move this into the device tree or delete it entirely.
>>
>> Great. :-)
>>
>>
>> Cheers,
>> Ahmad
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

