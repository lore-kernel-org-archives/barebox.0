Delivery-date: Tue, 13 Jun 2023 09:18:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yIQ-004s04-Cm
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 09:18:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yIO-0007pc-4J
	for lore@pengutronix.de; Tue, 13 Jun 2023 09:18:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yJLiF4pBkDa2JglHRDbFe82MYSgnEGjRcK2hEV+ooZc=; b=iOdoYAlkSt9zvwYfC0JidSjZD9
	IDhDu17elXIdQh9zt5vV6mnwBg7vdlyIIMh4buBJkxcojM0L3dNDyNsjCvyPxj0hjLtUrhxve4tfR
	+s1MzdGLGPIxhruGhTMnXPFhoePAXiFRkLLG7G/PCL4vdj6qW/9dVxJwUA836vQhXme8VuF2EUbHe
	kR0k5x8xLy9m/XOVExCcunh+cwgB+qwX2qwT9fJpnU2UXrHBTruequ9m0PAS9eITRvUV1lXbZHMQX
	gXWCXp0Rj6Grtjfz0ljnc9Ag6vzWE2YfFDdHxIi9YT/Xroxgw053bmvahXvq98r7GOBIBkUSMXDYj
	4EWmHufQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yHH-007ByA-1p;
	Tue, 13 Jun 2023 07:17:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yHE-007BxS-1N
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 07:17:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8yHC-0007lq-G5; Tue, 13 Jun 2023 09:17:14 +0200
Message-ID: <723a146c-d013-0def-3052-5a48d7c551c4@pengutronix.de>
Date: Tue, 13 Jun 2023 09:17:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230612125331.1085059-1-a.fatoum@pengutronix.de>
 <20230612125331.1085059-6-a.fatoum@pengutronix.de>
 <20230613071111.GG18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230613071111.GG18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_001716_461978_BA5B0E29 
X-CRM114-Status: GOOD (  13.12  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 6/6] regmap-mmio: fix use-after-free
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.06.23 09:11, Sascha Hauer wrote:
> On Mon, Jun 12, 2023 at 02:53:31PM +0200, Ahmad Fatoum wrote:
>> Once we free ctx, dereferencing it to return ERR_CAST(ctx->clk) is
>> verboten. Fix this by using an intermediary variable.
> 
> Looks funny like this, but replaced with forbidden for the non german
> speakers ;)

It was borrowed into English and is listed in Merriam-Webster's Official
Scrabble Players Dictionary, 5th Edition!

Thanks,
Ahmad

> 
> Applied all, thanks
> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



