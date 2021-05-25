Delivery-date: Tue, 25 May 2021 14:31:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llWDY-0001zq-JB
	for lore@lore.pengutronix.de; Tue, 25 May 2021 14:31:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llWDX-0001jl-NW
	for lore@pengutronix.de; Tue, 25 May 2021 14:31:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=48BSx5nxoW1m1/7NIgpiuS5dwp1ZfH4KnaoeLF8Wb5A=; b=kM5WMT3M69AXuNqg22HjvHlglZ
	JKuRflsD3P/4uArlgWVCsyfEaDSx4WIi4xEbhX+hZyPjqUAhjuFUhxWKjQv5F4y9hC+vLVpg95enl
	WXibpXXZHr7ys6lBtKm3nMTQIsfICqOE/4yb+WiwXbBNoB/ZbWotWd+yP1qtFiMAXE7NeEzGbXMoV
	YQPIp7lUkr6VZwKWWZXya9HFQb3B1sCI0kxx1QcuRUmZgVf7xNJCMvD41pk2hSN/1Mipns84J0fCY
	zpAXa8w4IHW6pja0XPRytbXtPyXsM6wkuclYWOhwjNVdzv7Ct9PglfA+DBW1Yi+uquS0Y+Bb4YOfh
	DiozPvOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llWB0-0052EK-S6; Tue, 25 May 2021 12:28:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llWAc-0052AI-V3
 for barebox@lists.infradead.org; Tue, 25 May 2021 12:28:28 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1llWAY-0001Cd-Tt; Tue, 25 May 2021 14:28:22 +0200
To: Marco Felsch <m.felsch@pengutronix.de>, Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210521163435.17365-1-m.felsch@pengutronix.de>
 <20210521163435.17365-2-m.felsch@pengutronix.de>
 <20210525051519.GK19819@pengutronix.de>
 <20210525084255.vhy5vtxrgvmfowt7@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ea89c1cc-0f04-99d6-f36f-edcb77537f5a@pengutronix.de>
Date: Tue, 25 May 2021 14:28:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210525084255.vhy5vtxrgvmfowt7@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_052827_047936_5094FC5D 
X-CRM114-Status: GOOD (  21.98  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/4] commands: mount: replace printf by pr_info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 25.05.21 10:42, Marco Felsch wrote:
> On 21-05-25 07:15, Sascha Hauer wrote:
>> On Fri, May 21, 2021 at 06:34:32PM +0200, Marco Felsch wrote:
>>> This allows us to control the output behaviour e.g. booting silently
>>> to improve boot time.
>>>
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>> ---
>>>  commands/mount.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/commands/mount.c b/commands/mount.c
>>> index ff1d8bc5e5..bb2d1d60f4 100644
>>> --- a/commands/mount.c
>>> +++ b/commands/mount.c
>>> @@ -74,7 +74,7 @@ static int do_mount(int argc, char *argv[])
>>>  		if (IS_ERR(path))
>>>  			return PTR_ERR(path);
>>>  
>>> -		printf("mounted /dev/%s on %s\n", devstr, path);
>>> +		pr_info("mounted /dev/%s on %s\n", devstr, path);
>>
>> Applied all except this one. This is the output from the mount command
>> and as such it should be printed with printf.
> 
> Okay, just out of curiosity. Why should we avoid pr_*() for commands?

One thing that comes to mind: pr_ goes into log (and then into pstore),
printf doesn't.
 
>> I have no good idea to quiesce such output as we don't have any output
>> redirection. Maybe we need an additional control knob for printf output.
> 
> This would be cool :)

I've patches lying around for $(cmd) which would capture the output,
but not print it directly if you don't echo it out. Would that help
you?

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

