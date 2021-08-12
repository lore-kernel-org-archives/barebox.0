Delivery-date: Thu, 12 Aug 2021 10:56:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE6W2-0006uj-9w
	for lore@lore.pengutronix.de; Thu, 12 Aug 2021 10:56:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE6Vy-0007UK-2r
	for lore@pengutronix.de; Thu, 12 Aug 2021 10:56:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rDOiIsP26knxMDFXjaOUCS4JWn3vD85WSXX53sEAIpw=; b=tsoGSuNlzrftseUxu8DacwLJ48
	hEQo4kMPT5EsIsliavafqof6i6FH/PcRLtGcav+NtOBahJg8K7SqJwG0zpbi9pPLP3n1MphgR2TK6
	qLYplgVVGJ1wvFEWlFTaeYSaGwutsAXN4SCucNlY4s3Y9UIwpjFzwtdP5CjPS2ljbBVKYq3+mrFOb
	LcubBRDSW3iT/KEoFQaEkVWkSpZ6NZIa7A9SYjuwmbvYByfYxRvaqRlpXrfMFt9SH3Kk6frs7hD1w
	aNAUYU+qCUaKWQhx6C+O/QA4Ff6rmtkW/yRY3RskVRPu1A78K+2Yj6cF7RWoYd69ELTTXIZlrn52p
	2y2AlAPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mE6UB-009EVC-P4; Thu, 12 Aug 2021 08:54:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mE6U4-009ETX-6I
 for barebox@lists.infradead.org; Thu, 12 Aug 2021 08:54:44 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mE6U0-00073H-Se; Thu, 12 Aug 2021 10:54:36 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210811172504.11396-1-m.felsch@pengutronix.de>
 <9e266302-92a1-a577-d38c-fc240177b169@pengutronix.de>
 <20210812073534.fg5f2cucub4rr3kv@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <89bf6b5f-8a05-5dc6-f08f-0e9f4d7b865f@pengutronix.de>
Date: Thu, 12 Aug 2021 10:54:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210812073534.fg5f2cucub4rr3kv@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_015440_289900_BEC85DB1 
X-CRM114-Status: GOOD (  29.80  )
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
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fastboot net: add global.fastboot.net.autostart early
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 12.08.21 09:35, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 21-08-11 20:22, Ahmad Fatoum wrote:
>> On 11.08.21 19:25, Marco Felsch wrote:
>>> Split adding the fastboot.net.autostart to the global device and make
>>> use of it. With this change it is possible to set it e.g. during
>>> environment_initcall() and the later on followed fastboot_on_boot() can
>>> use it to start fastboot it automatically during boot.
>>
>> So what you fix here is use of global fastboot.net.autostart from within
>> init scripts, or what is your use case?
> 
> Yes something like this. I have a custom board which calls
> sentenv("global.fastboot.net.autostart", "1") during the
> environment_initcall step.
> 
> But also I didn't get the logic behind: adding a global var in the same
> function which checks that var to start the network interface.

Global variables are synced with nv on creation, so they can be
added postenvironment and still have a different value from
the default.

I was asking because I had earlier moved global.usbgadget.autostart in
common/usbgadget.c to postenvironment, so I wondered what use case that
might have broken. To recap:

 - nv works with and without your change, because sync happens
   at globalvar add time

 - setting the variable from an environment_initcall won't work,
   without your change, as they are not registered yet that early

 - init scripts setting won't work with or without your change,

   because no one cares about fastboot_net_autostart after the

   initcalls are over


I think you should turn fastboot.net.autostart into a non
simple globalvar and enable it in the setter, just like is done
for global.usbgadget.autostart.

This allows you to set it an arbitrary time after postenvironment
and it would work. You can use it from late_initcall, in an init
script depending on whether a variable is set or from the
interactive shell.

(Maybe you could even turn the conditional in your board code into
 an init script that way)

Cheers,
Ahmad


> 
> Regards,
>   Marco
> 
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>> ---
>>>  net/fastboot.c | 11 ++++++++---
>>>  1 file changed, 8 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/net/fastboot.c b/net/fastboot.c
>>> index df388adc89..a5a7caf526 100644
>>> --- a/net/fastboot.c
>>> +++ b/net/fastboot.c
>>> @@ -547,12 +547,16 @@ fail_generic_init:
>>>  static struct fastboot_net *fastboot_net_obj;
>>>  static int fastboot_net_autostart;
>>>  
>>> -static int fastboot_on_boot(void)
>>> +static int fastboot_net_globalvars_init(void)
>>>  {
>>> -	struct fastboot_net *fbn;
>>> -
>>>  	globalvar_add_simple_bool("fastboot.net.autostart",
>>>  				  &fastboot_net_autostart);
>>> +	return 0;
>>> +}
>>> +
>>> +static int fastboot_on_boot(void)
>>> +{
>>> +	struct fastboot_net *fbn;
>>>  
>>>  	if (!fastboot_net_autostart)
>>>  		return 0;
>>> @@ -573,6 +577,7 @@ static void fastboot_net_exit(void)
>>>  		fastboot_net_free(fastboot_net_obj);
>>>  }
>>>  
>>> +device_initcall(fastboot_net_globalvars_init);
>>>  postenvironment_initcall(fastboot_on_boot);
>>>  predevshutdown_exitcall(fastboot_net_exit);
>>>  
>>>
>>
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
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

