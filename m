Delivery-date: Mon, 31 May 2021 12:18:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnf0L-0003zy-Hi
	for lore@lore.pengutronix.de; Mon, 31 May 2021 12:18:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnf0K-00070Q-Hm
	for lore@pengutronix.de; Mon, 31 May 2021 12:18:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lKRPaUTcQrxftHie0zhXnybL32T+VxhrUTsGhgFk9wg=; b=t78Nmq7/MeAHosSKspFXwExXyZ
	jCIA8TRH/Y/5vC0l9AEAkdatoF04Zr0+fzqAR05Ue6uc5ehMMwk3ZnDoZ894+qmPOz7zyxxoQlUU7
	C++BdTVZdXwDzLVhUIxeZNmDSB3UGJerHanR3h3ZwLUFUfoqJCy+hYQyk5+XCPT6kLxvvnEipw205
	ZmOS/2YBi6bOUHVI5m1B8tGFQZv89aI8O4jcPwHzC1oS69ZuMdAiWbn6S99u/+NmVslBZjIBDrRGJ
	4zhZcCRDvyIXqq+j808DRiFuHF8dM2mNCZPQHyUxQ9YNnW6EOkKN3E4agwMxjsHpCi5eqk45ZeKga
	8SzOY7ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lneyt-00BqwY-6N; Mon, 31 May 2021 10:17:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lneyo-00Bqvo-4P
 for barebox@lists.infradead.org; Mon, 31 May 2021 10:17:07 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lneyl-0006uM-2i; Mon, 31 May 2021 12:17:03 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210531071319.32459-1-a.fatoum@pengutronix.de>
 <20210531095048.GS5211@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <357af9f7-26fe-cb27-e08f-9b6171bd0a2b@pengutronix.de>
Date: Mon, 31 May 2021 12:17:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210531095048.GS5211@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_031706_205078_384B654C 
X-CRM114-Status: GOOD (  16.11  )
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
Subject: Re: [PATCH] watchdog: add option to provide fall-back restart handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 31.05.21 11:50, Sascha Hauer wrote:
> On Mon, May 31, 2021 at 09:13:19AM +0200, Ahmad Fatoum wrote:
>> Some barebox ports may have a watchdog, but no restart handler, e.g.
>> reset happens via PMIC, which has no driver yet, but watchdog controls
>> reset line going to PMIC. Accommodate such setups by allowing
>> registration of watchdog as fall back restart handler.
>>
>> As reset handling can't be disabled, this is made a default n option
>> to conserve binary size unless explicitly enabled.
> 
> Do we really need to make this optional? The binary size overhead can't
> be much more than a few bytes.

I wouldn't like, if after an update, reset silently fell back to the
watchdog instead of hanging and alerting the user that something broke.

For development, it's ok, but once I have a proper reset driver, I want
either that or an error message IMO.

Cheers,
Ahmad

> 
> Sascha
> 
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

