Delivery-date: Tue, 13 Apr 2021 10:24:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWELl-00079M-E0
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 10:24:45 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWELk-0007tt-Ax
	for lore@pengutronix.de; Tue, 13 Apr 2021 10:24:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SwSiCUJ52GOrJOnXsvAnQgbvBRVPeJuIFdvlINI8/XE=; b=MFZhRRZg9FkDVRGTPCxiknBfW
	+/iLyj4Jr5wNbMVvF9s0IS7L5MLSa1J/QcfdgcLJpdSVn46QkOI8KsmsTcdDgo6f1kNjH0Edhzdvd
	HJBMgLuMHG8gl1O6sNQKwRosB3yOX6+QHRxG7G2N+vm4bglixtMKt4DzvpYMj8vt8uix33uiUNQCG
	MjU0hp/VQ2L+FyO0NUMTPwffFfu8pPzjHpQhzDhdL8C6n+UJSzXPI1I0nTkbkSEY6NmXWEgTxjDi8
	XYBnCKNAMwaNKMjAFSUjajtOQTtUTYAIZs2oE9vkq2PHm8PPz1qXZxsqJnYpmtKOGAwOR/dZR7JMS
	3K3kiJMXg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWEKH-008Zoc-No; Tue, 13 Apr 2021 08:23:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWEJK-008ZmZ-LS
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 08:22:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=AZdZaMzZeRMDQ4U4L7m7u8+V6+y4utO1ayb++nr8tAk=; b=npi1Mkrm1/yPjXNCnvC6T9Ddpv
 SxP/RKD9IqeZpIGmqJVhFPlVVGS53Zh7jdlO3U91+vqaOsMD1f2AaxiZSYR10Ft5JHT6fJzCRTJIS
 E7O8y/RXh07S94ZV90rddr/EwqeFEb4rNmLDkfXwMSeDT/E6F7FztyLMh3YBsHQvoG8R7ioohtA5E
 xIsbs/FyezNxySPo4x5gtHUC0Rwm/trJeOe/QbmPqYv9ZV9QhkYtxbiC5/gNLzmhdXMCUV/iIGP5A
 Ibnj3S6AyLeWI6Cd3tzhmo9AhasiNyVCOrKO0N+yFLMfaEVaQgdfQHVBcAWDu3YFvjE6TLyz92lQJ
 ERRUrXFQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWEJH-006pfD-M9
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 08:22:13 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1lWEJD-0007k2-JV; Tue, 13 Apr 2021 10:22:07 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
References: <20210409081503.6926-1-bst@pengutronix.de>
 <20210409081503.6926-2-bst@pengutronix.de>
 <20210413051613.GG6950@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
Message-ID: <5039de85-c337-6781-eef3-0e8e4ca17fff@pengutronix.de>
Date: Tue, 13 Apr 2021 10:22:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210413051613.GG6950@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_012211_786779_A0FF2DD6 
X-CRM114-Status: GOOD (  24.06  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] of: introduce global.linux.bootargs_overwrite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 4/13/21 7:16 AM, Sascha Hauer wrote:
> On Fri, Apr 09, 2021 at 10:15:03AM +0200, Bastian Krause wrote:
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>> By default, barebox overwrites the bootargs in the oftree if it itself
>> has any. Make this behavior configurable by adding a new global
>> variable. It allows either overwriting the oftree bootargs
>> (global.linux.bootargs_overwrite=1) or appending barebox' bootargs to
>> the oftree bootargs (global.linux.bootargs_overwrite=0).
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> [bst: dropped a new line removal, extend commit message]
>> Signed-off-by: Bastian Krause <bst@pengutronix.de>
>> ---
>>  common/oftree.c | 22 +++++++++++++++++++++-
>>  1 file changed, 21 insertions(+), 1 deletion(-)
>>
>> diff --git a/common/oftree.c b/common/oftree.c
>> index aaeb199a9e..f3a5d9c5d1 100644
>> --- a/common/oftree.c
>> +++ b/common/oftree.c
>> @@ -16,6 +16,7 @@
>>  #include <reset_source.h>
>>  #include <watchdog.h>
>>  #include <globalvar.h>
>> +#include <magicvar.h>
>>  
>>  #define MAX_LEVEL	32		/* how deeply nested we will go */
>>  
>> @@ -161,9 +162,14 @@ static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_nod
>>  	free(buf);
>>  }
>>  
>> +static int bootargs_overwrite = 1;
>> +BAREBOX_MAGICVAR(global.linux.bootargs_overwrite, "overwrite original oftree bootargs");
> 
> How about naming it global.linux.bootargs_append instead? It would make
> it more clear that we are deviating from the default by setting the
> variable to true.
> 

That's fine with me.

Can you change that or should I send a v2?

Bastian

> 
>> +
>>  static int of_write_bootargs(struct device_node *node)
>>  {
>>  	const char *str;
>> +	char *buf = NULL;
>> +	int ret;
>>  
>>  	if (IS_ENABLED(CONFIG_SYSTEMD_OF_WATCHDOG))
>>  		watchdog_build_bootargs(boot_get_enabled_watchdog(), of_get_parent(node));
>> @@ -176,7 +182,20 @@ static int of_write_bootargs(struct device_node *node)
>>  	if (strlen(str) == 0)
>>  		return 0;
>>  
>> -	return of_property_write_string(node, "bootargs", str);
>> +	if (!bootargs_overwrite) {
>> +		const char *oldstr;
>> +
>> +		ret = of_property_read_string(node, "bootargs", &oldstr);
>> +		if (!ret) {
>> +			str = buf = basprintf("%s %s", oldstr, str);
>> +			if (!buf)
>> +				return -ENOMEM;
>> +		}
>> +	}
>> +
>> +	ret = of_property_write_string(node, "bootargs", str);
>> +	free(buf);
>> +	return ret;
>>  }
>>  
>>  static int of_fixup_bootargs(struct device_node *root, void *unused)
>> @@ -218,6 +237,7 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
>>  
>>  static int of_register_bootargs_fixup(void)
>>  {
>> +	globalvar_add_simple_bool("linux.bootargs_overwrite", &bootargs_overwrite);
>>  	return of_register_fixup(of_fixup_bootargs, NULL);
>>  }
>>  late_initcall(of_register_bootargs_fixup);
>> -- 
>> 2.29.2
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
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

