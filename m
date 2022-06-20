Delivery-date: Mon, 20 Jun 2022 10:00:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3CKq-007roj-LC
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 10:00:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3CKq-0007BA-31
	for lore@pengutronix.de; Mon, 20 Jun 2022 10:00:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y8MiHdY8XAddmRIhPkOP28prcuZdjyXVaL3Pco5F4yk=; b=qNoSKZ2TsT3FC1IGL+YYKLE2Yp
	0Mdsdk3E9q2ktfvm/WWK/2e2/t1HabXZCH/xx+925Am7lxHsbvcGP53ZU/zfYyYmX3f8IhlKq0Fb/
	Pf9jcUIha0Tmi/OpQMo17px4uH0FOueH0nmfDIrHOOFddBOKJTmpNPozS+IR/iNuJv//Gr96ODPlc
	wMchkOmRIGcoDr68U4IHYDzYGmxUhMYf2GaRIF30/L9ykwgqTB8807pG+Gube5/679p+ou5z6iqL8
	Toco+b3jdri7RhuuNkp1h2KyX8rZbkWxgooagv29bjneh15HF1rZtDbQunInhVuYqWTUV2LA1Hb3a
	OHAf30Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3CJR-00GoCB-AG; Mon, 20 Jun 2022 07:59:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3CJK-00GoAP-RG
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 07:59:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o3CJJ-0006q4-BN; Mon, 20 Jun 2022 09:59:01 +0200
Message-ID: <45231568-198c-fd4d-713e-26f002b6257d@pengutronix.de>
Date: Mon, 20 Jun 2022 09:59:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220617215338.5497-1-danek.brat@gmail.com>
 <20220620072138.1460886-1-a.fatoum@pengutronix.de>
 <20220620074726.GM1615@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220620074726.GM1615@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_005902_933519_CBC0E333 
X-CRM114-Status: GOOD (  30.47  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] env: let setenv() take printf arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 20.06.22 09:47, Sascha Hauer wrote:
> On Mon, Jun 20, 2022 at 09:21:39AM +0200, Ahmad Fatoum wrote:
>> From: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> It's a common pattern to (ba)sprintf to a string and then call setenv()
>> with this string. Let setenv() take printf arguments to make that
>> easier. To avoid the overhead that goes with changing other callers
>> to using setenv(var, "%s", val) to avoid security implications (and
>> GCC warnings), fallback to the non-formatted version when there are
>> only two arguments.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> [afa: fall back to non-formatted version on old two arg version]
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> Thoughts?
> 
> While I'm impressed by this macro I don't like this very much. My desire
> was to simplify things, now with this patch I'm no longer sure I reached
> that goal.

Usage _is_ simpler. Declaration indeed looks a bit odd, but ¯\_(ツ)_/¯

> 
> Alternatively we could
> 
> a) Drop the original patch
> b) Replace the problematic places with setenv(foo, "%s", not_a_string_literal);
> c) Pass -Wno-format-security, The Kernel does this for over a decade.

Then it probably needs to be revisited there then.

> My vote is c)

I am not fine with c). We don't sanitize for % in environment variable values
and ignoring the warning has very clear security implications.

Cheers,
Ahmad

> 
> Sascha
> 
>> ---
>>  common/env.c           | 37 +++++++++++++++++++++++++++++++++----
>>  include/environment.h  | 19 +++++++++++++++++--
>>  include/linux/kernel.h | 12 ++++++++++++
>>  3 files changed, 62 insertions(+), 6 deletions(-)
>>
>> diff --git a/common/env.c b/common/env.c
>> index 05add63f625c..c36f6846ee21 100644
>> --- a/common/env.c
>> +++ b/common/env.c
>> @@ -243,15 +243,15 @@ static int dev_setenv(const char *name, const char *val)
>>  }
>>  
>>  /**
>> - * setenv - set environment variables
>> + * __setenv_str - set environment variables
>>   * @_name - Variable name
>>   * @value - the value to set, empty string not handled specially
>>   *
>>   * Returns 0 for success and a negative error code otherwise
>> - * Use unsetenv() to unset.
>> + * Use unsetenv() to unset. Don't use directly, use setenv()
>>   */
>>  
>> -int setenv(const char *_name, const char *value)
>> +int __setenv_str(const char *_name, const char *value)
>>  {
>>  	char *name = strdup(_name);
>>  	int ret = 0;
>> @@ -275,7 +275,36 @@ out:
>>  
>>  	return ret;
>>  }
>> -EXPORT_SYMBOL(setenv);
>> +EXPORT_SYMBOL(__setenv_str);
>> +
>> +/**
>> + * __setenv_fmt - set environment variables
>> + * @name - Variable name
>> + * @fmt - format string describing how to format arguments to come
>> + *
>> + * Returns 0 for success and a negative error code otherwise
>> + * Use unsetenv() to unset. Don't use directly, use setenv()
>> + */
>> +
>> +int __setenv_fmt(const char *name, const char *fmt, ...)
>> +{
>> +	va_list ap;
>> +	int ret;
>> +	char *value;
>> +
>> +	va_start(ap, fmt);
>> +	ret = vasprintf(&value, fmt, ap);
>> +	va_end(ap);
>> +
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	ret = __setenv_str(name, value);
>> +
>> +	free(value);
>> +	return ret;
>> +}
>> +EXPORT_SYMBOL(__setenv_fmt);
>>  
>>  int export(const char *varname)
>>  {
>> diff --git a/include/environment.h b/include/environment.h
>> index 19e522cfb6b4..e5b9a9da3167 100644
>> --- a/include/environment.h
>> +++ b/include/environment.h
>> @@ -7,6 +7,7 @@
>>  #ifndef _ENVIRONMENT_H_
>>  #define _ENVIRONMENT_H_
>>  
>> +#include <linux/kernel.h>
>>  #include <linux/list.h>
>>  #include <errno.h>
>>  
>> @@ -31,7 +32,8 @@ char *var_name(struct variable_d *);
>>  
>>  #ifdef CONFIG_ENVIRONMENT_VARIABLES
>>  const char *getenv(const char *);
>> -int setenv(const char *, const char *);
>> +int __setenv_str(const char *, const char *val);
>> +int __setenv_fmt(const char *, const char *fmt, ...) __printf(2, 3);
>>  void export_env_ull(const char *name, unsigned long long val);
>>  int getenv_ull(const char *name, unsigned long long *val);
>>  int getenv_ul(const char *name, unsigned long *val);
>> @@ -44,7 +46,13 @@ static inline char *getenv(const char *var)
>>  	return NULL;
>>  }
>>  
>> -static inline int setenv(const char *var, const char *val)
>> +static inline int __setenv_str(const char *var, const char *val)
>> +{
>> +	return 0;
>> +}
>> +
>> +static inline __printf(2, 3) int __setenv_fmt(
>> +	const char *var, const char *fmt, ...)
>>  {
>>  	return 0;
>>  }
>> @@ -82,6 +90,13 @@ static inline const char *getenv_nonempty(const char *var)
>>  }
>>  #endif
>>  
>> +/*
>> + * avoid the varargs overhead when using a fixed string
>> + */
>> +#undef setenv
>> +#define setenv(args...) \
>> +	__optionally_variadic2(__setenv_str, __setenv_fmt, args)
>> +
>>  int env_pop_context(void);
>>  int env_push_context(void);
>>  
>> diff --git a/include/linux/kernel.h b/include/linux/kernel.h
>> index 4483d33e65bb..ebae8f666cf6 100644
>> --- a/include/linux/kernel.h
>> +++ b/include/linux/kernel.h
>> @@ -7,6 +7,7 @@
>>  #include <linux/barebox-wrapper.h>
>>  #include <linux/limits.h>
>>  #include <linux/math64.h>
>> +#include <linux/stringify.h>
>>  
>>  #define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
>>  #define ALIGN_DOWN(x, a)	ALIGN((x) - ((a) - 1), (a))
>> @@ -17,6 +18,17 @@
>>  #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
>>  #define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
>>  
>> +/*
>> + * Call func_variadic, when more than 2 arguments and func_fixed otherwise
>> + */
>> +#define __optionally_variadic2(func_fixed, func_variadic, arg1, arg2, ...) ({ \
>> +		char _______STR[] = __stringify((__VA_ARGS__));  \
>> +		sizeof(_______STR) > 3 ?                         \
>> +			func_variadic(arg1, arg2, ##__VA_ARGS__) \
>> +		:                                                \
>> +			func_fixed(arg1, arg2);                  \
>> +	})
>> +
>>  /*
>>   * This looks more complex than it should be. But we need to
>>   * get the type for the ~ right in round_down (it needs to be
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


