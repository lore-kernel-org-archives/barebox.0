Delivery-date: Mon, 12 Apr 2021 16:21:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVxR7-0005c6-HU
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 16:21:09 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVxR6-0002iK-Hd
	for lore@pengutronix.de; Mon, 12 Apr 2021 16:21:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5PrVpgu6MCZNsYS6kDgKyUPo2urJPyQyxvqEPu03EUc=; b=gPyiXcO56aWit2Fol89JgkNfT
	Rg9H32KhYbDCqZbsiBfzk6O3ce3aEyKW+xSXa4EpE3VUnNnV4pHbougYP1N7SQeRUFTHx9+9iMLcH
	yfcacuTX17gfQfk7qyPbboT2tQ+UiqDsRhD/A/jCXZvC2xikQ+BIqJrRmk0xhNXe6o4OI7PowBy3T
	mk0bmlPmeOkeDEme/9tUotxL69LlBzzw9yhVAZ7ij5wd7eSDb6gA9NOK6nMTI//rTS+YFdq3tRA1x
	pECikX9PblTU0tTIzun9aqp7O/uJ6MdaC8b2bgxH7Q4Wid9pfi7DyNSJ/+vW/0KSuShaAPXvotPZu
	K45hj3+2w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVxQH-006woJ-Ro; Mon, 12 Apr 2021 14:20:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVxQC-006wnx-QQ
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 14:20:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=1gIPak7LOIhp6l4pWitXdtTjRmD5FagkkROT9eaFccU=; b=BhYsbJWoQ4YCWc4rt/wEgVfNkB
 9X6PNR9OG01DfxZACmSGI+VZom9YaVoVAoBKC406yxYUsVDtrCvNwsQB+6sLira7WUQo06pOvoOJo
 5rKIC4I5dNiLuiKUHwHJRW7cVKFgtDBfFgLopmxXMRxSkhEkG9mwQ5V2PXH6xnXSH7uwxC9p4ocwz
 aoOJfD3MxhuRHbGgV2EWdocwJkgCBJvRPUTibr1yLCv9H8W1BwcCBBurwWAUaUcJ/Qnt40k80zpm0
 vK25YVjAYmZyMUxs3qe/XcqbQDjM/lxxBrwo21+cbBfATRyzTakF5bWvElN51JCSKp8LC/Yc7AHmY
 uSW+T3sQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVxQA-006Iel-05
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 14:20:11 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lVxQ7-0002Rx-Pk; Mon, 12 Apr 2021 16:20:07 +0200
To: Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>
References: <20210409132035.197739-1-lapeddk@gmail.com>
 <67622809-1252-bfff-d114-ce11f2c7c7dd@pengutronix.de>
 <CAKd8=GuJnm0Uz7bXOCoy8YhQ_OL_1nB3Cjq_ERrY3Xo=ynhSjw@mail.gmail.com>
 <7551e835-6109-2386-6b4b-7224aae675bb@pengutronix.de>
 <CAKd8=GvvoobiudVaRp7qdDU-P4k1herndE-AXoiZkLtoc5R-vw@mail.gmail.com>
 <0476fd8d-c2ef-942a-64ab-62dd5eda9a22@pengutronix.de>
 <CAKd8=Gt1piJ14=V8u7wtwL3aS0yMetvyZ0kyrJQLP=Vq4_LfDg@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <78e88d30-a322-244b-aa3d-c55e79b77f98@pengutronix.de>
Date: Mon, 12 Apr 2021 16:20:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAKd8=Gt1piJ14=V8u7wtwL3aS0yMetvyZ0kyrJQLP=Vq4_LfDg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_072010_072701_068A106F 
X-CRM114-Status: GOOD (  23.64  )
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

Hello,

On 12.04.21 16:17, Lars Pedersen wrote:
>> For the simple case of toggling a reset, likely only difference now is that you
>> can verify your driver availability with drvinfo. I'd prefer new code uses board
>> from the get-go though if board code is really needed.
>>
> 
> I got it working but we have decided to update the hardware to reset
> the TPM after your colleague mentioned how it should be done correctly
> :)
> 
> Just to be clear. I can now remove board.c as you first mentioned
> since I don't need any special stuff.

Great!

> Also I need to update imx_v7_defconfig with this board with default value yes.

This is optional. I'd recommend you do it, so you benefit from build-time coverage for
your board-specific code.

Cheers,
Ahmad

> 
>> Cheers,
>> Ahmad
>>
>>>
>>>>
>>>>>>> +}
>>>>>>> +
>>>>>>> +static void __noreturn kamstrup_mx7_board_restart_gpio(struct restart_handler *rst)
>>>>>>> +{
>>>>>>> +     imx7_setup_pad(MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12);
>>>>>>> +
>>>>>>> +     gpio_direction_output(BOARD_RESTART_GPIO, 0);
>>>>>>> +     mdelay(1);
>>>>>>> +     gpio_set_value(BOARD_RESTART_GPIO, 0);
>>>>>>
>>>>>> I just sent out a patch[1] with a driver implementing the "gpio-restart" device
>>>>>> tree binding. Could you test that one and use it here instead?
>>>>>>
>>>>>
>>>>> I have applied the patches on a master branch (Last patch failed to
>>>>> apply but was only watchdog) and the gpio-restart works perfectly.
>>>>
>>>> Thanks for testing! You can add your Tested-By on the patch in question
>>>> if you like.
>>>>
>>>>>
>>>>>>> +
>>>>>>> +     hang();
>>>>>>> +}
>>>>>>> +
>>>>>>> +static int kamstrup_mx7_concentrator_coredevices_init(void)
>>>>>>> +{
>>>>>>> +     kamstrup_mx7_tpm_reset();
>>>>>>> +     restart_handler_register_fn("board", kamstrup_mx7_board_restart_gpio);
>>>>>>> +     barebox_set_model("Kamstrup OMNIA Concentrator");
>>>>>>
>>>>>> The default model name is "Kamstrup OMNIA Flex Concentrator".
>>>>>> If that's too long, you could override /model in the barebox device tree.
>>>>>> With the changes suggested above, you could drop board.c then altogether.
>>>>>>
>>>>>
>>>>> I'll move this into the device tree or delete it entirely.
>>>>
>>>> Great. :-)
>>>>
>>>>
>>>> Cheers,
>>>> Ahmad
>>>>
>>>> --
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>
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

