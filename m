Delivery-date: Mon, 01 Dec 2025 10:43:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0RO-006m2N-2f
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 10:43:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0RO-0000uy-6p
	for lore@pengutronix.de; Mon, 01 Dec 2025 10:43:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8xMEG906NLRNHhLdZiK4pGnRk7DWMrxeGS8jHEKxuvw=; b=EU2F90/6/BLGdBSplOsOnzeKhV
	txRlhRw1+5U2UzF8kucXPkVTWNOyPZILYboKE12t4DY7H/SkmtRjzcYQvLrSEWordpBCeEy2nnvuL
	SPS0IhIvUPx1S02a7yCa1+VSOHSymAz+EqEik62J4FJBVD0y7Mc6UPp+yALNPhrD5SS3c9MjhaQlr
	4WIguqinu6UYSj6Q3zFUWE9dGTYV9+qP5D3+7THOUTJkiXhfhmMfprs8ZFNFRpUwAC7NjlSySdgQ8
	cbUvovBz7OG3VfLxd7N68WeQDk4LiFK6bMau4Ofb0ZeXS2jHrdktNeJuJHg2nh+kkJlx6/CHprwFI
	6jPu6WNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0Qw-00000003EMs-06f6;
	Mon, 01 Dec 2025 09:43:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0Qt-00000003EMM-2LLC
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 09:43:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQ0Qq-0000pE-Jz; Mon, 01 Dec 2025 10:42:56 +0100
Message-ID: <874615fa-7bef-40fa-bb91-1cd839cc902f@pengutronix.de>
Date: Mon, 1 Dec 2025 10:42:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20251128172116.35544-1-a.fatoum@pengutronix.de>
 <aS1h7YOL78BOJH03@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aS1h7YOL78BOJH03@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_014259_603964_93E61E7B 
X-CRM114-Status: GOOD (  25.41  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] environment: add new global.env.noload parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/1/25 10:37 AM, Sascha Hauer wrote:
> On Fri, Nov 28, 2025 at 06:21:14PM +0100, Ahmad Fatoum wrote:
>> It can be useful for board code to deny loading an environment without
>> disabling it altogether, e.g. to disable load of the environment when
>> entering a recovery mode. Add a global variable that allows for just
>> that.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/environment.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/common/environment.c b/common/environment.c
>> index d7f5f51cfc6d..d49f255ef007 100644
>> --- a/common/environment.c
>> +++ b/common/environment.c
>> @@ -54,6 +54,7 @@ struct action_data {
>>  #define TMPDIR "/.defaultenv"
>>  
>>  static int global_env_autoprobe = IS_ENABLED(CONFIG_INSECURE);
>> +static int global_env_noload = false;
>>  static char *default_environment_path;
>>  
>>  void default_environment_path_set(const char *path)
>> @@ -455,7 +456,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
>>  	size_t size, rsize;
>>  
>>  #ifdef __BAREBOX__
>> -	if (!IS_ALLOWED(SCONFIG_ENVIRONMENT_LOAD))
>> +	if (!IS_ALLOWED(SCONFIG_ENVIRONMENT_LOAD) || global_env_noload)
>>  		return -EPERM;
> 
> With this you forbid to ever load an environment. The commit message
> suggests you are looking for a way to skip loading of the environment,
> so I would rather expect the check in the caller in common/startup.c

Well, a user could change the value of the variable later, but I agree
checking in common/startup.c makes more sense.

> 
>>  #ifdef __BAREBOX__
>> +
>>  static int register_env_vars(void)
>>  {
>>  	globalvar_add_simple_bool("env.autoprobe", &global_env_autoprobe);
>> +	globalvar_add_simple_bool("env.noload", &global_env_noload);
> 
> globalvars are usually meant for variables that are set/read from the
> shell. What's your usecase for setting this from shell?

This is supposed to set by board code. Shell would be too late.

> Having this as globalvar implies there is a corresponding nvvar. If I
> read the code correctly then setting nv.env.noload=true in the builtin
> default environment will not have the effect that loading of the
> persistent environment is suppressed. Setting nv.env.noload=true in the
> persistent environment obviously also isn't meaningful. The only effect
> will be that a loadenv command no longer works.
> 
> Making this a globalvar seems rather confusing to me.

So you prefer I turn this into a function instead?

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



