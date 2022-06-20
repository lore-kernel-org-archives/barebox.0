Delivery-date: Mon, 20 Jun 2022 09:53:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3CDk-007rOT-GX
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 09:53:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3CDk-00063y-Ep
	for lore@pengutronix.de; Mon, 20 Jun 2022 09:53:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LwSEwtUiefPFG2IsZLhDoEoFeah+KjaBUIsAdwn/0Xo=; b=QwQoV7j6Dj220pjiIa37GSBK3E
	csxYObhbHGnCcaKbEKwRpbB2Wsom0XgLGtfNXy715craNr48/d8RhUH9xMHs/voK9ngydLziyVnbm
	3rAUW7GKAx7uhW6ajlX1DP8YjXlylwFeaGS7q2xm6cpwLDHnk/UvGhs36nv5L5D9LdNYMpYSfYaKV
	jInfgT5Q01+WuN9Jn91XagDzqPzmf8hI8b4mPaiBqblcrvDIzBagzn3QNgi7RrGefKZGsOE9X2Q57
	9HyZYS0yvivlWJ1eciZry0JTChpRG5GEOs51LPFr6/rHemFQlcNyWj9mf+PHqYYkUqfF3EqexkXLD
	hmowSlxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3CCY-00GmiG-Ag; Mon, 20 Jun 2022 07:52:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3CCS-00Gmew-Ls
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 07:51:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o3CCO-0005zY-Nz; Mon, 20 Jun 2022 09:51:52 +0200
Message-ID: <ead464cf-803f-5795-4269-7ff4d15cf9ed@pengutronix.de>
Date: Mon, 20 Jun 2022 09:51:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, Sascha Hauer <sha@pengutronix.de>
Cc: Oleksij Rempel <linux@rempel-privat.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 Robin van der Gracht <robin@protonic.nl>, barebox@lists.infradead.org,
 david@protonic.nl
References: <20220616131114.214628-1-robin@protonic.nl>
 <20220616131114.214628-2-robin@protonic.nl>
 <20220616162833.GD28995@pengutronix.de>
 <85d82f53-5290-613f-2214-924dc2135cb6@rempel-privat.de>
 <20220617065757.GC1615@pengutronix.de>
 <20220617084437.fvfwaxaxxediqm3t@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220617084437.fvfwaxaxxediqm3t@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_005156_781186_B3FF8A67 
X-CRM114-Status: GOOD (  15.35  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/9] ARM: boards: protonic-imx6: prtvt7 hardkey inputs are
 active low
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 17.06.22 10:44, Marco Felsch wrote:
> On 22-06-17, Sascha Hauer wrote:
>>> Or, it is active low and your patch is correct :D
>>
>> If they are, can we add a comment or _N suffix to the names?
> 
> Does barebox not have gpiod? The board code just should check if it is
> active or not. Whatever active means in this case.

There is gpiod_get(), but there's also gpio-keys support. See
drivers/input/specialkeys.c for an example on how to register an input
notifier.

Robin, did you test this works with barebox v2022.05.0?
I'd have assumed this to be broken by f349b662674e ("gpio: allocate dynamic
gpio numbers top down"). Especially, with deep probe, you can't and shouldn't
depend on GPIO expanders numbering being fixed. If you use an input notifier,
you should sidestep this issue altogether.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>
>> Sascha
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>>
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


