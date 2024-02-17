Delivery-date: Sat, 17 Feb 2024 11:19:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbHnA-009h3J-00
	for lore@lore.pengutronix.de;
	Sat, 17 Feb 2024 11:19:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbHn9-0005nI-7w
	for lore@pengutronix.de; Sat, 17 Feb 2024 11:19:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dLCKq95/GKoOCoC9gmbGgX+xc/EOB2gUzIxSVavK56w=; b=Vz21xdINrHB1YH7TX+JiJco7dg
	J7Va3knBJ5vxyFpxvI1h8UJNXmVqOMCrYQiTt02reKYWUUQCKmMgQcI3SMeoluM2wgmlT+oQqTILF
	sUdWYX78PsGBHc/HUPki9BBDCnx0/X5pZvhMNyfbxDxn8kbBhnEuO+GjbnNfLa3HKcQLytG4alqjm
	5z5HRDRRKMctfgYXrLTVyj6RUfseQvQrAIaJ7c8/YWCZr3SIrbMeM9Cxh7gLYBhEjRfCPEDhYehqJ
	tQA2OOW4hfguflv7rQJvkkryAdwyGkNcrHgZg5+8P9Mr/a/GKhN9t69iA+R2ip2Q+y0YCL7owTVDY
	YtaswCKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbHmd-00000005LOL-3RBX;
	Sat, 17 Feb 2024 10:18:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbGoO-000000056Bg-1loV
	for barebox@bombadil.infradead.org;
	Sat, 17 Feb 2024 09:16:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=dLCKq95/GKoOCoC9gmbGgX+xc/EOB2gUzIxSVavK56w=; b=hGW1VQubfbsgIKf+bG/AUfuijt
	JrCGYDxNAn8IuKhO8vKZBa3xQBcchLC6urCrbUfoil4yBql40bFURY5g7v0PKYG00o8hY+oazLlIt
	GJkbWKstPqQ/X1RHEhkLkfnbY0/ng6Emis9y7peWbW9kPleREVmGf7T4peCa0Q6thVh8fWbzGP5c+
	LYbXegfsY3DHOVhXkUVIM6mAFwRpjG1yOUIaU0yAp1IOcGuhSTglmtD2AKsPlKHBVnfA75Xb0UnTy
	h7uc29WvkwjEIuma1el/MpaU5UJ6VfcXGoWN5nx6QVu579JzHVNMTbPZpaOUsydvq0+9o13SodJGx
	pTrck94w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbGoE-00000000HgI-0P3b
	for barebox@lists.infradead.org;
	Sat, 17 Feb 2024 09:16:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rbGoD-0004dm-Ik; Sat, 17 Feb 2024 10:16:33 +0100
Message-ID: <b67edc68-b41b-4220-bdd0-2e30f09ce56f@pengutronix.de>
Date: Sat, 17 Feb 2024 10:16:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240216220649.2328345-1-a.fatoum@pengutronix.de>
 <20240216230237.7fk6luetjyu7nwbo@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240216230237.7fk6luetjyu7nwbo@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_091638_490141_9ACCF1DC 
X-CRM114-Status: GOOD (  33.19  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] of: platform: return -EPROBE_DEFER when ensuring
 probe with driver missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 17.02.24 00:02, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 24-02-16, Ahmad Fatoum wrote:
>> -ENODEV is a bad choice for an error code for of_device_ensure_probed.
>>
>> The function is either called from board code or from driver frameworks,
>> which usually just propagate the error code with unintended
>> consequences:
>>
>>   - A board driver probe function returning -ENODEV is silently skipped
>>
>>   - A driver framework function returning -ENODEV is often interpreted
>>     to mean that an optional resource is not specified (e.g. in DT).
>>
>> In both cases, the user isn't provided an error message and wrong
>> behavior can crop up later. In my case, the XHCI driver would time out,
>> because phy_get propagated of_device_ensure_probed's -ENODEV, which was
>> understood to mean that no PHY is needed and not that the PHY is
>> specified in the DT, but no driver was bound to it.
>>
>> Instead of -ENODEV, let's thus return -EPROBE_DEFER. This can be
>> propagated up to the driver core, which on a deep probe system (the only
>> ones where of_device_ensure_probed is not a no-op) will print a fat red
>> error message. We could achieve the same with some other error code, but
> 
> This big fat error should indicate that something went really wrong.

Having a dependency on a device without a driver is something that shouldn't
happen, so a big fat error is appropriate.

> 
>> -EPROBE_DEFER is what a non-deep-probe system would return when probes
>> are deferred indefinitely, so symmetry in the deep probe case fits well.
> 
> Albeit I get your point, I'm not very happy to return this error code
> here since the whole idea of deep-probe was to get rid of EPROBE_DEFER.

I thought that deep probe disables the probe deferral mechanism, but apparently
returning EPROBE_DEFER still ends up with the device making it into the deferral
list. Shouldn't we disable the deferral list when deep probe is enabled for a board?


>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/of/platform.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
>> index 060fa3458bd2..664af49d268f 100644
>> --- a/drivers/of/platform.c
>> +++ b/drivers/of/platform.c
>> @@ -504,7 +504,7 @@ int of_device_ensure_probed(struct device_node *np)
>>  	 * requirements are fulfilled if 'dev->driver' is not NULL.
>>  	 */
>>  	if (!dev->driver)
>> -		return -ENODEV;
>> +		return -EPROBE_DEFER;
> 
> What about a new error code, e.g. ENODRV which is only used once in this
> function? Additional we can add an error message like:
> pr_err("No driver found for %pO\n, np); since we know that the driver is
> missing.

I think EPROBE_DEFER is an appropriate error code. Yes, deep probe is meant
to replace probe deferral, but if there's no driver, we can't do anything,
except for indefinite deferral of the probe, so the error code sounds
appropriate to me. An extra benefit is that kernel drivers being ported
will often just forward EPROBE_DEFER, while an unknown error code may
trigger an extra warning or different unwanted behavior.

> If you want to stick with -EPROBE_DEFER you need at least adapt the
> above comment and the function doc.

Sure, I can do that for v2.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>  
>>  	return 0;
>>  }
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



