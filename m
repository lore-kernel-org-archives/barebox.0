Delivery-date: Mon, 04 May 2026 14:02:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJs0m-000skI-1K
	for lore@lore.pengutronix.de;
	Mon, 04 May 2026 14:02:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJs0k-0005bX-Un
	for lore@pengutronix.de; Mon, 04 May 2026 14:02:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UHcqi1TdGItGEgk7AfbjVaSo5L1qlyEmKVQE7VHyPug=; b=bQ36UsCa7YPnNLRmBrx3v0wkmL
	xbAy8oKhohQA+Wof+QkNtwSA01p60XSHZXfvoMTJk7w6aqDscrh1CF9CtRzv58pwfcyoFDF+fNsYU
	Crz6dDv1Kk5p5CjiSsJETvTdJhbv6XRlQjIkRAkgdPtTBe+TgCSDQlj4N7kc1nMtIkEPYWPygkTn7
	tgkIsoFVT7/EdO7NDGJFP5fG/P+NE/4OIhYZNnBk0w7/d3WwO4orvIsqJ41SL3OOSHKrg4W4Aphpy
	XSU3ND8IgBKCRF/yo1moahxTaIY4+WRnYEteBeyAqpqtNxrGIoDfr+mZ8k5pfocdXNB/pA6y0aayb
	VqHqzDzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJs0F-0000000D6hY-1Xpz;
	Mon, 04 May 2026 12:02:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJs0C-0000000D6gi-37Nt
	for barebox@lists.infradead.org;
	Mon, 04 May 2026 12:02:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wJs09-0005Il-Gj; Mon, 04 May 2026 14:02:17 +0200
Message-ID: <12eb5638-f580-4b3b-9099-9d72ddeb4f16@pengutronix.de>
Date: Mon, 4 May 2026 14:02:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20260428-env-autoprobe-v1-0-9cdedfa0752e@pengutronix.de>
 <20260428-env-autoprobe-v1-3-9cdedfa0752e@pengutronix.de>
 <rx3wbvvlr3x5iaaojqzqi34cpjrxbweo6y5ijkgiruqoq344ty@lpxohuiqqvwr>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <rx3wbvvlr3x5iaaojqzqi34cpjrxbweo6y5ijkgiruqoq344ty@lpxohuiqqvwr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_050220_831544_65D887BF 
X-CRM114-Status: GOOD (  33.02  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] environment: add explicit option to allow searching
 for environment devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 5/4/26 1:35 PM, Marco Felsch wrote:
> Hi Sascha,
> 
> On 26-04-28, Sascha Hauer wrote:
>> Add an explicit Kconfig option to allow searching the environment storage path
>> based on the barebox environment partition GUID.
>>
>> So far this depended on CONFIG_INSECURE being set. First of all loading the
>> barebox environment from storage is always insecure as the barebox environment
>> doesn't have any security measures.

It's possible to only allow environment loading after having verified
that the system is in development mode for example.

Autoloading the environment can't be secured as you note.


>> The difference that comes with loading
>> the environment from an explicitly specified storage device and autoprobing
>> it from the available block devices is that with the former an attacker would
>> need access to the internal storage whereas with the latter barebox could
>> be tricked into loading an environment from an external SD card.
>>
>> Whether or not this is acceptable depends on the case, so ask the user for it.
>>
>> Real security can only be provided by not loading an environment from storage
>> at all, but that can be controlled at compile time by disabling CONFIG_ENV_HANDLING
>> or at runtime by security policies.
> 
> TBH I actually don't see why this option can't follow the
> CONFIG_INSECURE.
> 
> Since ENV handling is enabled you do pull the HAS_INSECURE_DEFAULTS=y.
> As you written above env handling is always insecure as of now.
> 
> So it seems that you want to get rid of the CONFIG_INSECURE=y in your
> setup. The only users of this CONFIG switch are global_env_autoprobe and
> lib/random.c. Therefore my question, that I don't see why we can't stick
> with the CONFIG_INSECURE switch.

I also don't understand Sascha's motivation here.

You can add global.env.autoprobe=1 to your environment to opt-in despite
CONFIG_INSECURE being disabled. What's the new Kconfig option needed for?

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
> 
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
>>  common/Kconfig       | 14 ++++++++++++++
>>  common/environment.c |  2 +-
>>  2 files changed, 15 insertions(+), 1 deletion(-)
>>
>> diff --git a/common/Kconfig b/common/Kconfig
>> index fd422714d5..f74f06b4ad 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -987,6 +987,20 @@ config ENV_HANDLING
>>  	  A safe use of the mutable environment may be possible if board code only
>>  	  mounts it after verifying a JSON Web Token that enables a debug mode.
>>  
>> +config ENV_HANDLING_AUTOPROBE
>> +	depends on ENV_HANDLING
>> +	bool "Autoprobe for environment devices"
>> +	default y
>> +	help
>> +	  There are two ways for specifying where the barebox environment is. The first one
>> +	  specifies the path explicitly in the device tree or board code. The other one is
>> +	  to automatically search it on block devices which is enabled with this option.
>> +	  Here a partition with the barebox environment GUID is searched. If this option
>> +	  is enabled and no environment is chosen by device tree or board code then a block
>> +	  device containing a partition with the barebox environment GUID is used for the
>> +	  environment. A block device barebox has booted from is preferred over other block
>> +	  devices.
>> +
>>  config DEFAULT_ENVIRONMENT
>>  	select CRC32
>>  	bool
>> diff --git a/common/environment.c b/common/environment.c
>> index f883a520c6..a3281feca2 100644
>> --- a/common/environment.c
>> +++ b/common/environment.c
>> @@ -53,7 +53,7 @@ struct action_data {
>>  
>>  #define TMPDIR "/.defaultenv"
>>  
>> -static int global_env_autoprobe = IS_ENABLED(CONFIG_INSECURE);
>> +static int global_env_autoprobe = IS_ENABLED(CONFIG_ENV_HANDLING_AUTOPROBE);
>>  static char *default_environment_path;
>>  
>>  void default_environment_path_set(const char *path)
>>
>> -- 
>> 2.47.3
>>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



