Delivery-date: Thu, 02 Feb 2023 15:28:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNaa7-00BTkZ-Js
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 15:28:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNaa4-0002Z2-Tt
	for lore@pengutronix.de; Thu, 02 Feb 2023 15:28:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1wnPtRU76j/ljI1modDHWMdZrz4Sgn0R484TeZEW8Ik=; b=D/zrVJyCgicMyrnIcybirKx9Jz
	qeWJAPrcyApi3UYgwLYgctGkymsuJRsX3ewgfUB9qgLHaYoAqoYLY1ViJ9b09pVSCNKoclu9mlJ4R
	W5T6BDJityk5irwcrtaYBUTZ0ZKqc+TpnerSQ/dr2AS35dwoNOT1ugI/rSj7Bn09K95q1aQQ2xokD
	/RCOY1Odlnb4JyfD/fBIrUSg8xVroywdEAinM3e7P/qRm3ugmZuGm8tnz9/0/4GJsOz7iwpwtUlhR
	uB1/Y9GNCommALmH13h0lnbM6qIp9lI1VwNdZ9Z0h1czvlicwfXoA81MFUkIZt3DTzqDRPTIpSwiI
	LULyH2pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNaYt-00G9ly-L8; Thu, 02 Feb 2023 14:27:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNaYo-00G9kX-Q6
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 14:27:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pNaYh-0002VD-Sd; Thu, 02 Feb 2023 15:27:27 +0100
Message-ID: <f083c41a-3606-f43a-cfb4-1bfc7ccedbcf@pengutronix.de>
Date: Thu, 2 Feb 2023 15:27:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Jules Maselbas <jmaselbas@kalray.eu>, Sascha Hauer <sha@pengutronix.de>
Cc: John Watts <contact@jookia.org>, barebox@lists.infradead.org
References: <20230126185643.104049-1-contact@jookia.org>
 <20230130102727.GQ13319@pengutronix.de>
 <20230202142103.GL4155@tellis.lin.mbt.kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230202142103.GL4155@tellis.lin.mbt.kalray.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_062734_873218_946C127C 
X-CRM114-Status: GOOD (  15.49  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Jules,

On 02.02.23 15:21, Jules Maselbas wrote:
> On Mon, Jan 30, 2023 at 11:27:27AM +0100, Sascha Hauer wrote:
>> The time spent for a register read depends on the bus clock which
>> doesn't change that much between the different SoCs.
>>
> 
> Some arm devices have an architecture timer, isn't it possible to use
> the udelay defined in arch/arm/lib64/pbl.c on i.MX ? I am not very
> experienced on ARM cpus, is this only possible on armv7/armv8, and not
> on every i.MX SoCs ?

Cortex-A7 and later i.MX has an ARMv7 architected timer, but "normal"
i.MX6Q/DL with Cortex-A9 doesn't.

Cheers,
Ahmad

> 
> Cheers,
> -- Jules
> 
> 
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



