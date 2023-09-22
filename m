Delivery-date: Fri, 22 Sep 2023 07:20:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjYap-006gJZ-Hz
	for lore@lore.pengutronix.de; Fri, 22 Sep 2023 07:20:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjYan-00083B-EW
	for lore@pengutronix.de; Fri, 22 Sep 2023 07:20:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dTSnkxFiKYcE7c0b8e6YN8IEspJxRv3AMo15gVgWfBI=; b=Nhb6BwWsK4L0GRAta52ibqfyJ9
	951SgxWphoDRHWL/9jp4ncmr6VUR3HE2F14rg4+OKQ8CW95gHU5wPaIblyGQG6G0m/IulwnmrSQvp
	odvvh1d2twInK8buPEmJeC/jWtPSreTNVOgzcmgGzEQtQymIndYRQGhLlNhwm4VhivyREy0q9HlM7
	RklXmufjn7JIzbdWdFmDNel0TDUNZGZFaTDgxdWUV37RdQfVGzui6VQnxwzPLo1uGL/yt9NXDHqjk
	tocLKDnxi1XmCyGG55hwPAXgLvTyMr1zmXIzfbZaFqAjVcUn7TxDy64ldvAX24EOECo4edzUNFrXp
	Vc8/2QKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjYZR-007uCg-0H;
	Fri, 22 Sep 2023 05:19:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjYZM-007uBx-37
	for barebox@lists.infradead.org;
	Fri, 22 Sep 2023 05:19:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qjYZI-0007ff-Ny; Fri, 22 Sep 2023 07:19:08 +0200
Message-ID: <df9db1d4-85cf-fae2-96ff-c2594b1d9f73@pengutronix.de>
Date: Fri, 22 Sep 2023 07:19:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20230920123720.767063-1-r.czerwinski@pengutronix.de>
 <20230920123720.767063-2-r.czerwinski@pengutronix.de>
 <44d292e5-729c-f22b-9309-c0c54c7aac71@pengutronix.de>
In-Reply-To: <44d292e5-729c-f22b-9309-c0c54c7aac71@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_221913_007244_240D03F0 
X-CRM114-Status: GOOD (  28.88  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] blspec: add new blspec.compatible.extra variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 21.09.23 14:37, Ahmad Fatoum wrote:
> On 20.09.23 14:37, Rouven Czerwinski wrote:
>> The blspec.compatible.extra variable will be used to specify extra
> 
> As this is only relevant when booting. Maybe prefix with boot.?
> Not sure if that wouldn't be too long..

We may also want to use this for other stuff than blspec in future,
e.g. FIT or matching overlays by compatible, so I think we should do away
with both blspec and boot and call it maybe global.of.compatible.extra?

If you agree, please define the variable in common/misc.c or some other
common location.

> 
>> compatibles that are also used to match during bootloader specification
>> entry parsing. This means that even if your internal barebox device tree
>> machine compatible is "vendor,bareboxcompatible", but your bootloader
>> specification device tree contains "vendor,linuxcompatible", it is
>> possible to boot this entry by setting blspec.compatible.extra to
>> "vendor,linuxcompatible".
>>
>> More than one compatible is possible as well, the compatibles will need
>> to be space separated (since "," is already used for the vendor hardware
>> distinction).
>>
>> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
>> ---
>>  common/blspec.c | 56 +++++++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 56 insertions(+)
>>
>> diff --git a/common/blspec.c b/common/blspec.c
>> index f8d47f20d2..e361a02333 100644
>> --- a/common/blspec.c
>> +++ b/common/blspec.c
>> @@ -19,10 +19,20 @@
>>  #include <net.h>
>>  #include <fs.h>
>>  #include <of.h>
>> +#include <magicvar.h>
>> +#include <linux/list.h>
>>  #include <linux/stat.h>
>>  #include <linux/err.h>
>>  #include <mtd/ubi-user.h>
>>  
>> +struct list_head *blspec_extra_list;
>> +char *blspec_extra_string;
>> +
>> +struct blspec_extra_entry {
>> +	char *compatible;
>> +	struct list_head list;
>> +};
>> +
>>  /*
>>   * blspec_entry_var_set - set a variable to a value
>>   */
>> @@ -830,8 +840,54 @@ static int blspec_bootentry_provider(struct bootentries *bootentries,
>>  	return found;
>>  }
>>  
>> +static int blspec_extra_set(struct param_d *p, void *priv)
>> +{
>> +	struct blspec_extra_entry *entry, *tmp;
>> +	char *str = blspec_extra_string;
>> +	char *temp = str;
>> +	unsigned int len;
>> +
>> +	if (blspec_extra_list) {
>> +		list_for_each_entry_safe(entry, tmp, blspec_extra_list, list) {
>> +			list_del(&entry->list);
>> +			free(entry->compatible);
>> +			free(entry);
>> +		}
>> +		blspec_extra_list = NULL;
>> +	}
>> +
>> +	while(str++) {
>> +		if (*str == ' ' || *str == 0) {
> 
> Please use strsep (or strsep_unescaped) as elsewhere in blspec.c. 
> 
>> +			len = temp - str;
>> +			if(len > 126) {
>> +				len = 127;
>> +			}
>> +			entry = calloc(1, sizeof(struct blspec_extra_entry));
> 
> xzalloc if you don't check for !NULL.
> 
>> +			entry->compatible = xzalloc(len + 1);
>> +			memcpy(entry->compatible, temp, len);
> 
> But here you could just use xstrdup?
> 
>> +
>> +			if (blspec_extra_list == NULL) {
>> +				INIT_LIST_HEAD(&entry->list);
>> +				blspec_extra_list = &entry->list;
> 
> This is unusal. Why not have blspec_extra_list be a list_head instead of a pointer?
> 
>> +			} else {
>> +				list_add_tail(&entry->list, blspec_extra_list);
>> +			}
>> +
>> +			temp = str + 1;
>> +		}
>> +		if (*str == 0)
>> +			break;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>  static int blspec_init(void)
>>  {
>> +	dev_add_param_string(&global_device, "blspec.compatible.extra",
>> +			     blspec_extra_set, NULL, &blspec_extra_string, blspec_extra_list);
>>  	return bootentry_register_provider(blspec_bootentry_provider);
>>  }
>>  device_initcall(blspec_init);
>> +
>> +BAREBOX_MAGICVAR(global.blspec.compatible.extra, "Extra compatible to also match during bootloader entry matching");
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



