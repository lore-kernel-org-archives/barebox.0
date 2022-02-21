Delivery-date: Mon, 21 Feb 2022 15:06:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM9Ko-0062Jc-JZ
	for lore@lore.pengutronix.de; Mon, 21 Feb 2022 15:06:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM9Km-0003hf-W2
	for lore@pengutronix.de; Mon, 21 Feb 2022 15:06:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBhtOqj8AU4EFADTCfpQ+Vb8cfXXxublXOFsFrJ6qtA=; b=bR0iC1luPcVnOm
	TWDDsbG5MN0UwmA46I33qU8Bc1dWLLebCskAZg7PyElwxPNC+4JyuR04aPszNnteGZBUBw+s1PtLG
	pnINqi7O8oEmiYE7jY8eEn7E77SLzmZV/KktgNH2ywIL/Z9q21KFPmudpIUBr1yvnawAOM5kOj7qj
	04Sn0TvgKmFEEP1wZE/bjwNRaA8n27zgF+QFGsFmvWwvDLICWYvR8oRY7UX6VPGDYwar9Iqemi+tv
	efAkCJwt7k0vSEI20r9ilyE/S98Dx3jGNtmaUY3/IJBKCVqSBKq0t6ZnrC6As7ib3Co/vTSz0ZWdP
	UuQA7t5UzPGZlgGOYw1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM9JP-0068B4-SE; Mon, 21 Feb 2022 14:05:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM99U-0063cP-Bx
 for barebox@lists.infradead.org; Mon, 21 Feb 2022 13:54:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nM99S-0001ch-V9; Mon, 21 Feb 2022 14:54:55 +0100
Message-ID: <070a17f9-d2c0-d58d-abca-29defd04023b@pengutronix.de>
Date: Mon, 21 Feb 2022 14:54:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Sascha Hauer <sha@pengutronix.de>,
 Jules Maselbas <jmaselbas@kalray.eu>
References: <20220217082714.81749-1-a.fatoum@pengutronix.de>
 <20220217082714.81749-2-a.fatoum@pengutronix.de>
 <20220219002518.54e7eec76ca0e716131f07c5@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220219002518.54e7eec76ca0e716131f07c5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_055456_476201_C8AC54AA 
X-CRM114-Status: GOOD (  18.50  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/1] Documentation: devel: add new project ideas section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 18.02.22 22:25, Antony Pavlov wrote:
> On Thu, 17 Feb 2022 09:27:14 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Hi!
> 
> ...
> 
>> +Update barebox networking stack for IPv6 support
>> +================================================
>> +
>> +Skills: C, Networking
>> +
>> +The barebox network stack is mainly used for TFTP and NFSv3 (over UDP) boot.
>> +Most embedded systems barebox runs on aren't deployed to IPv6 networks yet,
>> +so it's the right time now to future-proof and learn more about networking
>> +internals. One major complication with IPv6 support is neighbor discovery
>> +protocols that require networking to be possible "in the background".
>> +barebox' recent improvements of resource sharing and cooperative scheduling
>> +makes it possible to integrate an IPv6 stack, e.g. lwIP.
> 
> Several years ago I have tried to integrate picotcp network stack into barebox,
> please see http://lists.infradead.org/pipermail/barebox/2015-June/thread.html#23749
> and https://github.com/frantony/barebox/tree/20190707.picotcp
> This work can be revived after current picotcp state of affairs investigation.
> 
>> +There are also community patches to integrate a TCP stack into barebox.
>> +These can be evaluated as time allows.
> 
> picotcp supports both IPv6 and TCP.

Ye, I saw that at your Github fork. lwIP was Sascha's suggestion.
Jules also has hacked a TCP stack into barebox. If we get an applicant,
I will suggest they reach out to you.

Are you on IRC btw? There's a matrix channel bridged there now, which
you can use instead of setting up a bouncer.

Cheers,
Ahmad

> 
>> +This project does not require dedicated hardware. QEMU or barebox built
>> +to run under Linux (sandbox) may be used.
>> +
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

