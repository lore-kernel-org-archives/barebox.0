Delivery-date: Thu, 29 Sep 2022 11:52:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odqDb-000W3L-B7
	for lore@lore.pengutronix.de; Thu, 29 Sep 2022 11:52:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odqDa-0000q9-AI
	for lore@pengutronix.de; Thu, 29 Sep 2022 11:52:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ch4QJPjgVCWGOCkuUOAQJzCQv3SwdTfTDFqOxkW/ZVA=; b=opUgnqLB4jLGrSWyYuLFtlsXgX
	gd2coMQoeYoxbp2Y1wZchG2lB+D4lyiASW1nLnSgKj8bA4fyzmuyeCA0/AP8vDcmAc6NqT5IsbPNo
	y6rG8DO+0ThSksTWugn9iy0mRy1Ws0bfD6HwcTqH2Ig0MR1ZfXzLa0ujVNsSK2nLYT7MQnU0dtSlQ
	bo4BefMuoEUGq7DGAxy356zeLQ3kVOeqiAiThzgMFCfufj0FyhtH8oW+sJYeRjqMHhPGGr97rXjfq
	AQ/LvGMupLNjiBOfXbkZxB0t6SM7hLgvBLA4EmwGdC0ywfzV/qu6DW7hSusBZHN8VklmZCecDRb4e
	1S+cahzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqBi-002DqY-BW; Thu, 29 Sep 2022 09:50:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqBd-002Do9-7Z
	for barebox@lists.infradead.org; Thu, 29 Sep 2022 09:50:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1odqBX-0000TI-TD; Thu, 29 Sep 2022 11:50:27 +0200
Message-ID: <ff7948a7-71c5-5cf4-2f96-f7c165d34e11@pengutronix.de>
Date: Thu, 29 Sep 2022 10:50:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
References: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
 <20220905103546.1476277-5-a.fatoum@pengutronix.de>
 <lyv8p7wrfp.fsf@ensc-pc.intern.sigma-chemnitz.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <lyv8p7wrfp.fsf@ensc-pc.intern.sigma-chemnitz.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_025033_294435_F96B9C87 
X-CRM114-Status: GOOD (  14.94  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/5] commands: gpio: add -d argument to set/get commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.09.22 14:37, Enrico Scholz wrote:
> Ahmad Fatoum <a.fatoum@pengutronix.de> writes:
> 
>> For debugging, it can be useful to reference GPIOs relative to a
>> controller, e.g.:
>>
>>   gpio_direction_output -d gpio4 20 1
>>
>> -	if (argc < count)
>> +	if (optind < count)
>>  		return COMMAND_ERROR_USAGE;
> 
> This change seems to make '-d ...' mandatory.  E.g.
> 
> | :/ gpio_get_value 65
> | 
> | gpio_get_value - return value of a GPIO pin
> | 
> | Usage: gpio_get_value [-d CONTROLLER] GPIO

Seems I had the blinders on when I drafted this patch
series. Thanks for reporting and thanks Sascha for
the fixes.


> 
> 
> Enrico
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


