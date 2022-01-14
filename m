Delivery-date: Fri, 14 Jan 2022 11:18:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8JfS-001wys-2X
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 11:18:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8JfQ-00064b-Pa
	for lore@pengutronix.de; Fri, 14 Jan 2022 11:18:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=98+YeZ9qVFGg6yBmW0zCyhGlDRtoV/sQOpA6T6gt56o=; b=ItKRcMaZippWCEyFU0X5+fJc5p
	+seNTKcZ3nGuqf7IEB0khyKo8sdUG283w4Xl5+vQ0juZYODL4fOasc9j8pKu6nZVDd4xb6E5abKn1
	9a1lFyXyeuWAhjzFwjKDPunFwKZMKDz59LuHrXc3mb65JqSvlwBl5xJVqHtMNGjDt1llVqaJQ/OoD
	Ruf97WTg4NOLVYWNny43yjG6qGDAdCHqUncDeH1dTUnt9Obef7iLN1xSp2yWP1xYhil4jscEgBlL9
	Oz61eanQlyO/g0RXSDCd/DFz0rKvuYhLM9yjxXuOqiX9UgYcHgh6+TXeeNal//G/Y19fnC6jqXwGn
	QQP5jKUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8JeB-008fK9-6u; Fri, 14 Jan 2022 10:17:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Je5-008fJI-V5
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 10:17:23 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n8Je4-0005pP-Fd; Fri, 14 Jan 2022 11:17:20 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>, Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Uwe Kleine-Koenig <ukl@pengutronix.de>
References: <20220114082141.302151-1-o.rempel@pengutronix.de>
 <20220114082141.302151-2-o.rempel@pengutronix.de>
 <20220114083018.GS26619@pengutronix.de>
 <20220114101246.GA21557@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <99bb2c58-ce8c-36ea-fc49-80ada8fe9cd3@pengutronix.de>
Date: Fri, 14 Jan 2022 11:17:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220114101246.GA21557@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_021722_038077_562EB6EA 
X-CRM114-Status: GOOD (  19.24  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/2] ARM: rpi: set uart0-pl0110 clk to 48MHz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.01.22 11:12, Oleksij Rempel wrote:
> On Fri, Jan 14, 2022 at 09:30:18AM +0100, Sascha Hauer wrote:
>> On Fri, Jan 14, 2022 at 09:21:41AM +0100, Oleksij Rempel wrote:
>>> At least on RPi2 this clock is 48MHz. This issue was not visible,
>>> becouse amba-pl011 driver was not reseting UART controller after
>>> changing baudrate. So, clk settings was not updated for some time.
>>
>> We have an rpi3 and rpi4 in our lab. Could you give this a test on these
>> boards?
> 
> Yes, rpi3 is tested and rpi4 is currently not supported.

Uwe's finger is surely hovering over the send button right now ;)

> 
>> Sascha
>>
>>>
>>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>>> ---
>>>  arch/arm/boards/raspberry-pi/rpi-common.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
>>> index 6c5df6fd69..2684bd5ed7 100644
>>> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
>>> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
>>> @@ -374,7 +374,7 @@ static int rpi_console_clock_init(void)
>>>  	clk = clk_fixed("apb_pclk", 0);
>>>  	clk_register_clkdev(clk, "apb_pclk", NULL);
>>>  
>>> -	clk = clk_fixed("uart0-pl0110", 3 * 1000 * 1000);
>>> +	clk = clk_fixed("uart0-pl0110", 48 * 1000 * 1000);
>>>  	clk_register_clkdev(clk, NULL, "uart0-pl0110");
>>>  	clkdev_add_physbase(clk, BCM2835_PL011_BASE, NULL);
>>>  	clkdev_add_physbase(clk, BCM2836_PL011_BASE, NULL);
>>> -- 
>>> 2.30.2
>>>
>>>
>>> _______________________________________________
>>> barebox mailing list
>>> barebox@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/barebox
>>>
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
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

