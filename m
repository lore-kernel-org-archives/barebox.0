Delivery-date: Mon, 19 May 2025 06:56:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGsY9-000P2x-1J
	for lore@lore.pengutronix.de;
	Mon, 19 May 2025 06:56:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGsY8-0005YO-Q8
	for lore@pengutronix.de; Mon, 19 May 2025 06:56:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p5blwEY8xYfuk8PfzjT0ROb1AbOuKbGuhOlbWox/jPU=; b=VGj8/ZAAaXeHBN1gaEWalLH5YA
	Eb+D0wNlKYcvmYO+vsp0Wju5n6igY+CUysMrDZt61ocdJfDP8/J95fIJKUHfp4kWW291wPVq65woV
	ttgMrPLJWnarFX6gkCLxf9s/NKAYoCS7rmNo7v+SjdmWJnfuPyBo797HNUAVwmz60/av6XwXJ3qJY
	aUSJfqd/xBNqOzo0gwStW4FGDdn05ZOiRE07MQzTGKLdphYqfRHvyYTTr+5t7Uh0hV+u6mBlnLedx
	D05Tl1i6TQUMbj3idmLgXalA4DAhapGNTNcbFz9s5q5F9DhjlFw/3Cvy3oq0SQNphFz8VD4+v8o6N
	psiKDYuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGsXe-00000007zPG-1NaX;
	Mon, 19 May 2025 04:55:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGsXa-00000007zON-1BJZ
	for barebox@lists.infradead.org;
	Mon, 19 May 2025 04:55:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uGsXY-0005Sx-Vc; Mon, 19 May 2025 06:55:53 +0200
Message-ID: <933c22ee-bafe-4736-80bc-0674d7782124@pengutronix.de>
Date: Mon, 19 May 2025 06:55:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Roith <johannes@gnu-linux.rocks>,
 Michael Tretter <mtr@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <DB7PR02MB43321CDF6386A16A725DC131ABF40@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <845b2228ae93d93e331556bb983f19cf67a025b8.camel@pengutronix.de>
 <DB7PR02MB4332F692229D1F189B11EC49ABF00@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <aCeMAO9MFhGJBStt@Precision-T3610>
 <9babe122-45a3-4843-a2bb-178979164339@pengutronix.de>
 <aCoTbGjxgymNPSQF@Precision-T3610>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aCoTbGjxgymNPSQF@Precision-T3610>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_215554_425273_82B525B5 
X-CRM114-Status: GOOD (  17.01  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Barebox for Zedboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Cc'ing Michael, who had implemented that feature.

On 18.05.25 19:06, Johannes Roith wrote:
> Am Fri, May 16, 2025 at 09:28:03PM +0200 schrieb Ahmad Fatoum:
>> Loading OF overlays can already load firmware that way.
> 
> Could you give me an example for an OF overlay to load a firmware?

Should look the same as in Linux (with overlay patches applied).

Michael, do you happen to have an example to share?

> Do I
> have to place the firmware at a specific path like with Linux FPGA
> manager or can I specify the path in the overlay?

Relative file paths are looked up according to $global.firmware.path,
which is initialized to /env/firmware by default.

You can add extra paths there and if you are using bootloader spec,
/lib/firmware on the partition containing the entries is temporarily
prepended to the search path.

The symbols in question are firmware_(set|get)_searchpath.

Cheers,
Ahmad

> 
> Thanks and best regards,
> Johannes
> 
>>
>> Cheers,
>> Ahmad
>>
>>>> That said I wouldn't mind helping with getting the missing bits added
>>>> by reviewing/testing patches. :)
>>>>
>>>> Regards,
>>>> Lucas
>>>>
>>>> Hey Lucas, 
>>>>
>>>> "That said I wouldn't mind helping with getting the missing bits added
>>>> by reviewing/testing patches. :)"
>>>>
>>>> Did you made any attempts to do this?
>>>>
>>>> As far as I can see there are basicly two ways.  
>>>> The "Xilinx-Way" by packing everything in Boot.bin.
>>>> https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841976/Prepare+boot+image
>>>> and the "Linux-Way"
>>>> https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841645/Solution+Zynq+PL+Programming+With+FPGA+Manager
>>>> using the FPGA manager 
>>>> https://elixir.bootlin.com/linux/latest/source/drivers/fpga/zynq-fpga.c
>>>>
>>>> Best regards
>>>> Michael
>>>>
>>>>
>>>>  
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> barebox mailing list
>>>> barebox@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/barebox
>>>
>>> Best regards,
>>> Johannes
>>>
>>>
>>
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


