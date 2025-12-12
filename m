Delivery-date: Fri, 12 Dec 2025 14:26:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU3AT-00AgDV-28
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 14:26:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU3AT-0000x7-1R
	for lore@pengutronix.de; Fri, 12 Dec 2025 14:26:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sstJX02NiIGzYm2kl0RQnfF+UVrUFLryBWAUw28yr5A=; b=3z7Kqsn+Fyop9mBoir3s3/6WvT
	XsCUUg25sxbSvP/SdDhzozkEGuzpXAniCtBV1drskMDS0GhoPdYe+NYWjen49EX4TYaqYgONWuJ6z
	HC4mzMc6VIu9c9DY8rLl2tgBc0rZWd01Qid0DT2aZ4T8aUt/At/AH26u/TS9jnFcbpyJGOqDxE4Li
	kwvRt172m9+OkbfS8EQ0p1PtuUFw+F64uUiba3ohS0rmbXHz0lL6VW5DLrG3NQ4+La+CkiFEPi44T
	kbs6tWEQcozNhLOmZyl8i6ong1Rx/TwlKcadPM0zvnHdPNBRJsP4crfqg/moF4PhQxUPsVwE9fT+L
	3hhIakVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU39o-00000000YxH-1xN0;
	Fri, 12 Dec 2025 13:26:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU39j-00000000YwU-3Q9X
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 13:26:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU39g-0000qT-Tx; Fri, 12 Dec 2025 14:25:57 +0100
Message-ID: <dc9f73c6-d5a5-4d07-bef3-c56d89e4126a@pengutronix.de>
Date: Fri, 12 Dec 2025 14:25:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20251211204836.2773298-1-a.fatoum@pengutronix.de>
 <20251211204836.2773298-2-a.fatoum@pengutronix.de>
 <aTviVda7CibKpvtz@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aTviVda7CibKpvtz@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_052559_863769_FDC28DA4 
X-CRM114-Status: GOOD (  22.31  )
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
Subject: Re: [PATCH v2 1/3] globalvar: suppress nvvar_save when no external
 environment was loaded
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 12/12/25 10:37 AM, Sascha Hauer wrote:
> On Thu, Dec 11, 2025 at 09:48:10PM +0100, Ahmad Fatoum wrote:
>> nvvar_save will load the extenral environment before writing it back
>> with nv changed, which we means we still end up parsing the environment
>> in this case, even if we don't execute init scripts or import nv out of
>> it.
>>
>> Fix this to only parse the environment when we actually loaded it
>> before.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/environment.c | 7 +++++++
>>  common/globalvar.c   | 8 +++++++-
>>  include/globalvar.h  | 1 +
>>  3 files changed, 15 insertions(+), 1 deletion(-)
>>
>> diff --git a/common/environment.c b/common/environment.c
>> index 0e551c90352e..ec14d0629a14 100644
>> --- a/common/environment.c
>> +++ b/common/environment.c
>> @@ -453,6 +453,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
>>  	int envfd;
>>  	int ret = 0;
>>  	size_t size, rsize;
>> +	__maybe_unused const char *defenv_path;
>>  
>>  #ifdef __BAREBOX__
>>  	if (!IS_ALLOWED(SCONFIG_ENVIRONMENT_LOAD))
>> @@ -531,6 +532,12 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
>>  
>>  	ret = 0;
>>  
>> +#ifdef CONFIG_NVVAR
>> +	defenv_path = default_environment_path_get();
>> +	if (defenv_path && !strcmp(filename, defenv_path))
>> +	    nv_var_set_persistable();
>> +#endif
>> +
>>  out:
>>  	close(envfd);
>>  	free(buf);
>> diff --git a/common/globalvar.c b/common/globalvar.c
>> index 77af6733a6a0..1e06fb43775f 100644
>> --- a/common/globalvar.c
>> +++ b/common/globalvar.c
>> @@ -15,6 +15,7 @@
>>  #include <fnmatch.h>
>>  
>>  static int nv_dirty;
>> +static bool nv_persistable;
>>  
>>  struct device global_device = {
>>  	.name = "global",
>> @@ -31,6 +32,11 @@ void nv_var_set_clean(void)
>>  	nv_dirty = 0;
>>  }
>>  
>> +void nv_var_set_persistable(void)
>> +{
>> +	nv_persistable = true;
>> +}
>> +
>>  void globalvar_remove(const char *name)
>>  {
>>  	struct param_d *p, *tmp;
>> @@ -713,7 +719,7 @@ int nvvar_save(void)
>>  	const char *env = default_environment_path_get();
>>  	int ret = 0;
>>  #define TMPDIR "/.env.tmp"
>> -	if (!nv_dirty || !env)
>> +	if (!nv_dirty || !env || !nv_persistable)
>>  		return 0;
> 
> With this "nv -s" or whatever calls this just silently does nothing.
> This doesn't sound like a desired behaviour. At least a message would be
> useful.
> 
> What's the purpose of this patch anyway?

In a later commit, we skip envfs_load if autoload_external_env() is
disabled. I thought that it's strange for nv -s to still load the
external environment to write variables into it.

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



