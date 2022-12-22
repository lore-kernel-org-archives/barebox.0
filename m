Delivery-date: Thu, 22 Dec 2022 17:03:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8O2u-0055bs-EE
	for lore@lore.pengutronix.de; Thu, 22 Dec 2022 17:03:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8O2r-0003Dl-UG
	for lore@pengutronix.de; Thu, 22 Dec 2022 17:03:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M259eGwu44CLI5GCHps9HG5ik+6he0M3kwt7B1lPiy4=; b=VCHkQPq51ZSk5Q556hTjSr45PX
	DXCnUGY0tSZKjLAtlYA6OfHZHON/FjzWAGiM3BX9pGlaOxz5dIyUCY9a+FpEbUysiKclhZB24TP/M
	N0sQuqW+7In8rBey5cGZ+c1PcrM5d1LHg9mt10UFpA5fh/2sZYMpSBqpCGHI6M2utcfp7YgMz6WM8
	wemL1wGprWboKA6k+cpOzweUhEDp3Z0zpWefBKEjSQGRh5VdC9Rq4jl5Zn+nbUgkKz1CrxqpYE+vI
	WS47jFKNGxGuBr/AbdWaOWCTunsS3rAhPeT/+KazewATkr5VgzDglmCqdTwLDLkL6/WoPfLy+VtwM
	6NEgONvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8O1B-00DoAj-Mo; Thu, 22 Dec 2022 16:02:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Nsy-00DjpP-W6
	for barebox@lists.infradead.org; Thu, 22 Dec 2022 15:53:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1p8Nsv-0001oV-K6; Thu, 22 Dec 2022 16:53:29 +0100
Message-ID: <9f20ec1b-8b6c-25dc-261f-d338008bdd2b@pengutronix.de>
Date: Thu, 22 Dec 2022 16:53:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20221222143513.3182725-1-a.fatoum@pengutronix.de>
 <20221222154759.d77lmqb5z7ykgprz@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221222154759.d77lmqb5z7ykgprz@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_075333_341938_4B604763 
X-CRM114-Status: GOOD (  21.74  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: deep-probe: write deep probe enabled message to
 log
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Macro,

On 22.12.22 16:47, Marco Felsch wrote:
> Hi Ahamd,
> 
> thanks for your patch.
> 
> On 22-12-22, Ahmad Fatoum wrote:
>> The "Deep probe supported due to" was not written to log and thus only
>> shown on startup and not in dmesg output. Make it available in both.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/deep-probe.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/common/deep-probe.c b/common/deep-probe.c
>> index 1020ad93b7f7..931e5a17709d 100644
>> --- a/common/deep-probe.c
>> +++ b/common/deep-probe.c
>> @@ -1,5 +1,7 @@
>>  // SPDX-License-Identifier: GPL-2.0-only
>>  
>> +#define pr_fmt(fmt) "deep-probe: " fmt
>> +
>>  #include <common.h>
>>  #include <deep-probe.h>
>>  #include <of.h>
>> @@ -27,7 +29,7 @@ bool deep_probe_is_supported(void)
>>  		for (; matches->compatible; matches++) {
>>  			if (of_machine_is_compatible(matches->compatible)) {
>>  				boardstate = DEEP_PROBE_SUPPORTED;
>> -				printk("Deep probe supported due to %s\n", matches->compatible);
>> +				pr_info("supported due to %s\n", matches->compatible);
> 
> What do you think, should we move it to pr_debug()? The feature is now
> more robust and usual this information is only required for developers
> not for users.

I just fixed a deep probe regression in the other series, so I think
we should still leave it in.

> 
> Regards,
>   Marco
> 
>>  				return true;
>>  			}
>>  		}
>> -- 
>> 2.30.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



