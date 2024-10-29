Delivery-date: Tue, 29 Oct 2024 09:39:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5hl7-002Cxy-28
	for lore@lore.pengutronix.de;
	Tue, 29 Oct 2024 09:39:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5hl8-0008TP-1r
	for lore@pengutronix.de; Tue, 29 Oct 2024 09:39:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C1Nxv9Z5Eb1ZycRRY6rToPQbQ+SLcXVzYgi9hSSP7fs=; b=G0VUyJ/TmBwmGWz+bL5+WXVo5K
	ZFV4Lr6OWkUI5G8hG/N30NUnqBEuupA+kH430RVyBqDzuVJWjVsxhxxAvASyxVL342FhGcEJd8Zj7
	FnnnqkACcCzo2epJH+/5/vox4LxqkH4B9V4DhG2SjF32psjhPKyyyr0Hcn+o0XuuTNCz/YG59h2Vm
	OnDe/8hjZSqh9HV07zuJXa/N4o2CX9FLS8JZgxbDXIaWVFNrmiMqmaJ2zVqMPYmypv0oeWlSL1LKg
	dRhQSRj9osC+uOVjHhHqhBFv4unF2qUd9/lxTHVtKcU3yZdGrJkSsOu05tZSuX6JKwqYg26U0yMau
	f56LzDeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5hkh-0000000Di2m-3CTi;
	Tue, 29 Oct 2024 08:38:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5hYv-0000000DgE9-09Ld
	for barebox@lists.infradead.org;
	Tue, 29 Oct 2024 08:26:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5hYt-0007Tp-Ni; Tue, 29 Oct 2024 09:26:47 +0100
Message-ID: <3e5c09ba-3064-4013-b32f-1370a0b71da7@pengutronix.de>
Date: Tue, 29 Oct 2024 09:26:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20241028-feature-dryrun-global-v1-1-5529ac1e133e@pengutronix.de>
 <8d46da8b-f2db-4e61-ae3d-067244df8824@pengutronix.de>
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Content-Language: en-US, de-DE
In-Reply-To: <8d46da8b-f2db-4e61-ae3d-067244df8824@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_012649_130687_5687B124 
X-CRM114-Status: GOOD (  19.07  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bootm: make dryrun controllable via global variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 28.10.24 17:43, Ahmad Fatoum wrote:
> Hello Stefan,
> 
> Thanks for your patch.
> 
> On 28.10.24 17:34, Stefan Kerkmann wrote:
>> When the bootm code is not called directly by the bootm command it is
>> useful to control the dryrun with a globalvar. This introduces
>> global.bootm.dryrun for this purpose.
>>
>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
>> ---
>>  common/bootm.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/common/bootm.c b/common/bootm.c
>> index b6ab358426..91e33b3f6b 100644
>> --- a/common/bootm.c
>> +++ b/common/bootm.c
>> @@ -42,6 +42,7 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
>>  }
>>  
>>  static int bootm_appendroot;
>> +static int bootm_dryrun;
>>  static int bootm_earlycon;
>>  static int bootm_provide_machine_id;
>>  static int bootm_provide_hostname;
>> @@ -64,6 +65,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
>>  	data->provide_machine_id = bootm_provide_machine_id;
>>  	data->provide_hostname = bootm_provide_hostname;
>>  	data->verbose = bootm_verbosity;
>> +	data->dryrun = bootm_dryrun;
>>  }
>>  
>>  static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_HASH;
>> @@ -1032,6 +1034,7 @@ static int bootm_init(void)
>>  	if (bootm_signed_images_are_forced())
>>  		bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
>>  
>> +	globalvar_add_simple_bool("bootm.dryrun", &bootm_dryrun);
> 
> Please add a BAREBOX_MAGICVAR(global.bootm.dryrun, "some descriptive text").
> 

Done in v2.

> See the end of the file for examples.
> 
> Cheers,
> Ahmad
> 
>>  	globalvar_add_simple_int("bootm.verbose", &bootm_verbosity, "%u");
>>  
>>  	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
>>
>> ---
>> base-commit: 59658c877bcc605fe3ca36653b4f40f57856b81a
>> change-id: 20241028-feature-dryrun-global-09e9222847df
>>
>> Best regards,
> 
> 

Cheers,
Stefan

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |



