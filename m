Delivery-date: Thu, 16 Sep 2021 23:23:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQyrD-0000Dh-B6
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 23:23:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQyrC-0003tQ-CV
	for lore@pengutronix.de; Thu, 16 Sep 2021 23:23:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i9BVkFYk93dlRYd+mEQ4VYVJtErtxL6ejjJARYiacPo=; b=eSdPMvd2y2f8lgXYmCjC5OoZHR
	mcikjp1efLemJgIaQ1dJ3Aijhf1E1nG19TOwdpEb6qfNKCtwpb4FLj/iW+B26mjVzjwDekJGvz5wO
	3gdG7u75q4IcqduJFMAEusiDdHYX3Xw//Mf0gl920AgAENxzs/WBNlHcco+tggcN1/mhfMZtUl7Ir
	+35q0ZjxLZHYGG4XxrPMsJvzBLCRhQZMt2mi1OERK1MWLU/zMxpIXC5fZA6FXUmx5O+jLdUrbLxq/
	lV874E9Enj1bbIPtj3I422kXmTF8/EaA6PzE6ANo94c1OMLGSIp/UjmsuECoYD0sRQXQvF0itBd5Z
	kAHL7blA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQypT-00CPVF-9Y; Thu, 16 Sep 2021 21:21:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQypN-00CPU7-SY
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 21:21:55 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mQypE-0003hC-QB; Thu, 16 Sep 2021 23:21:44 +0200
To: Marcelo Politzer <marcelo.politzer@cartesi.io>
Cc: barebox@lists.infradead.org
References: <CA+cd6D476jyxKGWZUqLbFizW_TvGCpfqvS6-vC8T3sX=nzS5kg@mail.gmail.com>
 <129de0c3-64d9-c2f7-18e0-b3764446b875@pengutronix.de>
 <CA+cd6D6pqMn=DhjPgDGske9u+t3P1zSS0PvK5L2TdAtRfi8FTw@mail.gmail.com>
 <38f21108-d380-d299-e9cd-311b2ef4c3c8@pengutronix.de>
 <CA+cd6D6ezjN3p_PRPkgq2q8ZmyjcL19S=5kqg14MFLEPAAV4wQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c6139ced-b5c8-e74a-7a98-d14234ac2e72@pengutronix.de>
Date: Thu, 16 Sep 2021 23:21:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CA+cd6D6ezjN3p_PRPkgq2q8ZmyjcL19S=5kqg14MFLEPAAV4wQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_142153_978207_200FC8AD 
X-CRM114-Status: GOOD (  18.16  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: New RISCV board (cartesi-machine)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Marcelo,

On 16.09.21 20:01, Marcelo Politzer wrote:
>> Like this? :-)
>>
>> https://www.barebox.org/jsbarebox/
> 
> That is cool!

:>

>>> OK, I'll clean this up and send it as two patches:
>>> - serial_sbi
>>> - cartesi (board)
>>
>> Sounds good.
> 
> Patches attached, please review at your convenience.

Please resend without attachment if possible (e.g. with git send-email).
This makes it easier to review.

Some comments:

- Signed-off-by is required, just as with Linux. See https://developercertificate.org/
- A short commit message would be nice
- BOARD_CARTESI should depend on SOC_VIRT for uniformity with other boards
- Can you change device tree compatible? Generic boards should remain generic
  and not contain vendor-specific stuff.
- Please add your new Kconfig options to virt64_defconfig. That way you can build
  and use the same image for all Virt-based boards (You can still use a different
  config in your BSP of course)

Serial driver:

- remove DEBUG defines
- depends on RISCV (otherwise there is no <asm/sbi.h>)
- You don't need to implement flush and setbrg
- ucb,htif0 is an unrelated device, but there is no device tree
  node, you can bind to. You can register a device in sbi_init
  and match against that. See riscv-timer for an example
- I don't understand the point of the ring buffer. A command would
  be nice (e.g. This is needed, because SBI lacks a FIFO or such)
- to_priv unused

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

