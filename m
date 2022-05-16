Delivery-date: Mon, 16 May 2022 17:36:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqclv-00Fj1r-Mu
	for lore@lore.pengutronix.de; Mon, 16 May 2022 17:36:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqclt-0000gz-Qj
	for lore@pengutronix.de; Mon, 16 May 2022 17:36:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIKWFPEtWjXpA4kMz8omSBPW3xBgPdPV7B/r1xmQJ+w=; b=OiUBKO5Dodg7Jd
	PNyD3TEGWJ5V7vXMoFs+f+yOnD4YiATUCUx0atbLUcz2jH4RQYwr51YaPlsICz2y/M1kq/jfgYKyB
	TNdLyICMQptTnkpo/f2RyDBbnkeVw1OhBHFsE5qZNW03hiKXMVL/bgxDZYNzWoyXdGtZJOPvZMDiZ
	tJ774VU7LTMpmkDfJZhhK5GTdYp/MIbSyL71Uo9jUFyOmjenBjJMxnZ79TOjNX3KB++RYlmVH6ceX
	fHBCGeno6MoeskFHLyqgClPqC3rs+KLIyD2x4Auwqthgq1XAsgHzm2SAgIIMD1MCoD424NMSGDite
	gt7+ktj121N6nCMXCVqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqckb-008ges-Hd; Mon, 16 May 2022 15:35:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqckW-008gcw-9i
 for barebox@lists.infradead.org; Mon, 16 May 2022 15:35:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nqckU-0000Nm-OC; Mon, 16 May 2022 17:35:06 +0200
Message-ID: <07b356d5-fc92-30f3-d59d-65456188e465@pengutronix.de>
Date: Mon, 16 May 2022 17:35:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org
References: <20220515193807.354903-1-sam@ravnborg.org>
 <20220515193807.354903-9-sam@ravnborg.org>
 <8453b93e-905d-3df5-88f1-53eb4d4679f4@pengutronix.de>
 <YoJttiCoFb5Ohq07@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <YoJttiCoFb5Ohq07@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_083508_414333_E2420E8F 
X-CRM114-Status: GOOD (  34.84  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 8/8] ARM: at91: Add xload support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sam,

On 16.05.22 17:28, Sam Ravnborg wrote:
> Hi Ahmad,
> 
> On Mon, May 16, 2022 at 01:15:42PM +0200, Ahmad Fatoum wrote:
>> Hello Sam,
> 
> Thanks for your feedback - very appreciated!

:)

>> Is your SD-Card perhaps 2G or smaller? The AT91 PBL MCI functions
>> assume high capacity (> 2G). It's a quite ugly thing, but
>> finding out whether a card is High-Capacity or not happens
>> during init phase and as we don't redo init in PBL...
> 
> From the at91sam9263 datasheet:
> "Boot ROM does not support high capacity SDCards."
>  
> Sounds like a very plausible explanation - and gives me something to go
> after.

Try toggling priv->highcapacity_card = 1; in atmel_mci_pbl.c

The original in atmel-sdhci-pbl.c had a comment:

 // FIXME can we determine this without leaving SD transfer mode? 
 priv->highcapacity_card = 1;                                  

>> High Capacity cards reference start block offset in sectors, while
>> older cards use bytes. On i.MX, barebox just reads at offset 0
>> and all is good, but on AT91, we need to do random access, so
>> we need to decide whether to use sectors or bytes. Currently,
>> the driver hardcodes the sector assumption. I found this to be
>> the lesser evil to the alternative: having a full MMC stack in PBL. 
>>
>> If that's indeed your issue, there's a heuristic possible:
>> Try to mount for High-Capacity, if that fails, assume non-high
>> capacity and try again. It's not 100%, but it's better than status quo.
> 
> I will try to find a nice way to tell that we shall go for a non-high
> capacity in the first place.
> And then I will dig into the sector versus byte thing afterwards.

It's probably best we move this setting into the _bio_init functions,
so callers are aware of the limitation and can e.g. for the 9263
always hardcode it as false. Heuristic would be nice to have,
but apparently it's not required for your use case.

>> Unrelated to your patch, but you might know the answer: Why is there a max PBL memory size here?
>> AFAIK, you use at91bootstrap to chainload barebox into DRAM, why do you need
>> a PBL size limit then?
> The limit is from the old days where we tried to squeeze barebox into
> the SRAM, so it could be used as the only bootloader - dropping the need
> for at91bootstrap.
> The new approach where we do a PBL barebox and then a full barebox is
> much easier when you have first understood the concept.
> 
> I will drop the size restriction in my next patch stack.
> 
> We see other at91sam boards with the same restrictions due to the same
> history. I think we can safely assume there is no use for barebox as
> at91bootstrap and we can drop the size restrictions.
> But then I am not happy to edit old boards that I cannot tests.
> 
> I have an at91sam9263-ek board and will update the board support
> when I have skov-arm9cpu done. Focus is on the skov board first, as I
> have more HW to play with here.

Ye, doing the change for your board only is fine by me. I just
wondered when I looked at the code. Thanks for clearing this up.

Cheers,
Ahmad

> 
> 	Sam
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

