Delivery-date: Mon, 20 Jun 2022 08:50:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3BEZ-007p7R-UR
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 08:50:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3BEY-0005iJ-K5
	for lore@pengutronix.de; Mon, 20 Jun 2022 08:50:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mGYthteFWcmCChy4atxiihPEE50LAouRUU2AE3L/E4k=; b=1XSKmgRwrFQh7b
	o1hXfczFFYcyLlIFZ7vUs9gnPAOwTVyr6+bW3pIbBWGO/RK0R49g99AhSnToxZJP587kMTXltmz6V
	gr4215vL6Ha/uDzFJsZV+SsmVkIYbwrUocHvpcFQXSsmDNhNyHKcj/i2641DsmRGG3ffZOOslo14Q
	rGkDAFwzrmFT3Pk+i7q/V4OkMiBRfX1JWvK7NRs+xAaRvVl9fGUNfIitwi5fSyMscDvGVTb754Nh0
	1QYGFDeLVEjqWmw9bm8mkvh/nb9KknJfXrWPStfr8eR//qpe5yUnw41GErx+++39tjIwSBr/MoODV
	Bqab+92XYJ1umKm7Wvtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3BDH-00GUxC-7R; Mon, 20 Jun 2022 06:48:43 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3BD8-00GUvF-Ka
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 06:48:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:message-id:references:in-reply-to:
	 reply-to:subject:cc:to:from:date:mime-version:from;
	bh=mGYthteFWcmCChy4atxiihPEE50LAouRUU2AE3L/E4k=;
	b=b0Ifa8Dhh7Hh5F+EnGlheRxNO2/beLWbpvOVoCqSqGoJ9Db9AwXFAIdvFml2I1bu/gZc06KAy4sRn
	 99zGWXMUfrFITnGEMrafz35u1TPpxqe9W3isD/k2pfcY6rlQiOGihA4O5XzWVPLgqd83mZjKuLDhsp
	 PDQEc7jd0KSqk0orFYvHOsXHEyunTCr5ZRDfW6AbLZJx/uaxHZ06TczQgrsxRQ4NxWWkThAlr85Gvg
	 x+FaAPIG7/8A+sDNPwHDr4o3gItxpGGhei6r3NypyIKcMcYoHV4evuqEWdx4Db/LtdkAf3UpCSy1YJ
	 ajsFbxl0GrVkWsDKUSNn7qyScILOBEw==
X-MSG-ID: ffe7d701-f064-11ec-8a45-0050569d11ae
MIME-Version: 1.0
Date: Mon, 20 Jun 2022 08:48:32 +0200
From: Robin van der Gracht <robin@protonic.nl>
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org,
 david@protonic.nl
In-Reply-To: <85d82f53-5290-613f-2214-924dc2135cb6@rempel-privat.de>
References: <20220616131114.214628-1-robin@protonic.nl>
 <20220616131114.214628-2-robin@protonic.nl>
 <20220616162833.GD28995@pengutronix.de>
 <85d82f53-5290-613f-2214-924dc2135cb6@rempel-privat.de>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <4f38fe1638998e667dd18f6a673179db@protonic.nl>
X-Sender: robin@protonic.nl
Organization: Protonic Holland
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220619_234834_882390_8326F610 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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
Reply-To: robin@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/9] ARM: boards: protonic-imx6: prtvt7 hardkey inputs are
 active low
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2022-06-16 18:38, Oleksij Rempel wrote:
> Am 16.06.22 um 18:28 schrieb Oleksij Rempel:
>> Hi Robin,
>> 
>> On Thu, Jun 16, 2022 at 03:11:06PM +0200, Robin van der Gracht wrote:
>>> The usb check needs to be skipped unless both keys are pressed
>>> simultaneously.
>>> 
>>> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
>>> ---
>>>   arch/arm/boards/protonic-imx6/board.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>> 
>>> diff --git a/arch/arm/boards/protonic-imx6/board.c 
>>> b/arch/arm/boards/protonic-imx6/board.c
>>> index cdbb8debe6..8f8a0c745e 100644
>>> --- a/arch/arm/boards/protonic-imx6/board.c
>>> +++ b/arch/arm/boards/protonic-imx6/board.c
>>> @@ -645,7 +645,7 @@ static int prt_imx6_init_prtvt7(struct prt_imx6_priv 
>>> *priv)
>>>   	gpio_direction_input(GPIO_KEY_F6);
>>>   	gpio_direction_input(GPIO_KEY_CYCLE);
>>> 
>>> -	if (gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6))
>>> +	if (gpio_get_value(GPIO_KEY_CYCLE) || gpio_get_value(GPIO_KEY_F6))
>>>   		priv->no_usb_check = 1;
>> 
>> Hm, you probably wont:
>> 	if (!(gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6)))
>> 
>> otherwise usb check will be always skipped.
> 
> Or, it is active low and your patch is correct :D

They are active low. I mentoned that in the patch subject ;)
I want both keys pressed simultaniously as a requirement for the usb check
because it adds a delay (autoboot_timeout) to the boot process.

- Robin


