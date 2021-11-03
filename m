Delivery-date: Wed, 03 Nov 2021 18:40:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miKFo-00015F-KH
	for lore@lore.pengutronix.de; Wed, 03 Nov 2021 18:40:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miKFn-0005b5-PQ
	for lore@pengutronix.de; Wed, 03 Nov 2021 18:40:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s9ngHRoV1uhuFQHGV1tJdzkUcpRLx5hf5UBQf38DpQM=; b=pZWXCEL5eyRaB3v9r6AbMTIy7R
	FurZMuG7WB5qK7Y07cOy/1F38lThVM8EuaCGq+ik/iwBXiF72o8Zdmt7pvaVJHWEqNR5SUO5nGOHY
	Lm5n+iRJTxbfc5GXhlMAg+femQIPrysLHMa4CGhsnpN/YUvOZ9UOYsSP0mgRkyukyUwLRrB0MbTDZ
	AEWFe9xy1Kpm0MQWUj0vRbwryOdOrFsyx0YAUZU8G6P+A6qXPxBaoAapo+MXRH1CbIH6vaD9Mcvot
	3wu9/pUZdojkDdJH1jV3mb4V4x3Uw3FqnZWqBUHZ+cRr/XjyZGBon92kJwQgthPRQ0vRKBRdcPSKz
	t8hx02ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miKEf-005yIL-Tn; Wed, 03 Nov 2021 17:39:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miKEb-005yHH-3d
 for barebox@lists.infradead.org; Wed, 03 Nov 2021 17:39:38 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1miKEX-0005NT-EZ; Wed, 03 Nov 2021 18:39:33 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20211103203547.ee214b1d8bf7987970a3d904@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <3fd5c873-525c-1ef0-3630-524e41afdccf@pengutronix.de>
Date: Wed, 3 Nov 2021 18:39:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211103203547.ee214b1d8bf7987970a3d904@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211103_103937_209047_11EA6E66 
X-CRM114-Status: GOOD (  16.96  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: do we need regmap-i2c in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 03.11.21 18:35, Antony Pavlov wrote:
> Hi!
> 
> I have made draft version of pcf85363 i2c rtc driver for barebox.
> I used drivers/rtc/rtc-pcf85363.c from linux kernel as a prototype.
> The linux driver uses REGMAP_I2C linux feature. Barebox has regmap
> framework, but no special i2c regmap features.

There is d827f61e149b ("regmap: implement regmap_init_i2c")
since barebox v2021.07.0. What extra functionality are you missing?

> 
> In barebox source tree I have found drivers/mfd/stpmic1.c which
> uses regmap for i2c device without REGMAP_I2C linux feature.
> So I have just stolen i2c regmap code from stpmic1.c for pcf85363
> driver. I'll send pcf85363 i2c rtc driver for barebox in a separate
> message.
> 
> Is there any sense in porting drivers/base/regmap/regmap-i2c.c from
> linux into barebox?
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

