Delivery-date: Tue, 11 Jan 2022 08:59:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n7C4H-00GjEH-Q9
	for lore@lore.pengutronix.de; Tue, 11 Jan 2022 08:59:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n7C4G-0006fn-F2
	for lore@pengutronix.de; Tue, 11 Jan 2022 08:59:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Psl5N3iNi99ucZBuRLGGHp0gRIsIsuzjKmTqKlF0yw0=; b=KLcZ+G7MlgNW1qnytaIyyMPUQs
	LVieRiV1LoABqLhQ6QECOshGKA6gujVZrjXUFMXThCbjLaZR3SNS7swam0/k76bKOBBoRvvkQ/GOU
	Yf8yFsqbVqCuU0IaJ1EzNbUAP61lc3rOhpx60Dsh1837RxWTXHkyr6ekXhTfcVbZVx9gfTnuWgcGT
	KH/vbjP+zUvqtwpXJgeXM86wBbq250VFVum0lD9SP3I8xWP5yy7+fkadx+CEZ68a0vTfXHIuWuuoe
	7NjjCyiz59GMZBSr+vUJGbexhyL1U+mNiJ1WuBtCUPBtciuvDP1tc1UWVFaZObvAeB7D1jOmPTSBm
	KBAAhYeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7C2j-00FDjq-HI; Tue, 11 Jan 2022 07:58:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7C2d-00FDiH-Ss
 for barebox@lists.infradead.org; Tue, 11 Jan 2022 07:58:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n7C2a-0006T1-8K; Tue, 11 Jan 2022 08:58:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sam Ravnborg <sam@ravnborg.org>, Barebox List <barebox@lists.infradead.org>
References: <Ydsrrj76kk6tmD2X@ravnborg.org>
Message-ID: <d8f67d11-e18d-0bb5-ec76-b8bbfce75add@pengutronix.de>
Date: Tue, 11 Jan 2022 08:57:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <Ydsrrj76kk6tmD2X@ravnborg.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_235803_968451_DCBA4734 
X-CRM114-Status: GOOD (  34.96  )
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
Subject: Re: Q about bootstrap support for at91sam92* boards and proposal for
 retirement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sam,

On 09.01.22 19:38, Sam Ravnborg wrote:
> Hi all.
> 
> This little detour started because Ahmad pointed out I had made
> a stupid mistake in pwm-atmel.
> So I decided I wanted to give it a spin to verify if it actually works
> now.
> 
> The first challenge I encountered was that said driver had bit-rotted
> as it used the old pwm framework - so I updated it from the Linux
> kernel.

Ouch. How did I miss this :/

> I have the code locally - but this time I will not have it posted before
> it is tested.
> 
> Then I cloned the latest at91bootstrap - but they no longer support old
> at91sam92xx CPUs.
> So it was time to enable bootstrap support for at91sam9263.
> 
> In the past I had something working, but alas no luck this time.
> 
> Can anyone (Ahmad?) help me a little how to get the bootstrap
> functionality working on the at91sam9263?
> 
> I do not expect patches, but I hope for something that can point me in
> the right way to do it.
> 
> I have skov-arm9cpu boards (plenty - as they are mostly retired by SKOV)
> and one at91sam9263ek where I can test.

The skov-arm9cpu looks like it already runs first stage without at91bootstrap?
So the issue is only with at91sam9263ek?

> We see very little interest in at91sam92* boards and we could decide
> to retire all the boards that are not updated to multi-image.

As long as it works, I guess most people don't see a reason make interest
publicly known.

> This could simplify things - and if there is interest the missing boards
> can be brought back to life provided they are updated to multi image.
> Any comments on this?

I have only worked on SAMA5D3 and SAMA5D2. Of course, I'd like to see
board code in AT91 replaced with DT-enabled/multi-image-compatible code,
but I don't think it will happen. I don't think the maintenance burden
is high, so I'd just leave it as is. If it bitrots and people complain,
we can nudge them into the right direction.

> I am happy to type the patches - and verify that the boards I have works.

Great. Looking forward to more boards in at91_multi_defconfig.

Cheers,
Ahmad

> 
> 	Sam
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

