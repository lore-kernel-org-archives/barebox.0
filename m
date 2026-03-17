Delivery-date: Tue, 17 Mar 2026 12:12:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2SLJ-001mhQ-2w
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 12:12:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2SLI-0001If-V8
	for lore@pengutronix.de; Tue, 17 Mar 2026 12:12:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wr2vwYqnI4Ofok0IFewXPTvIm8NBGO7MYkwORKfg2gA=; b=O3FfDaTkPr7InF
	D49/YYf19ecFZ0f4RRY4r20NaBekxMmuoGnwn6O/FveHMhE32GnY2Fd+Z9iBPXNNtVi7epfEr/crX
	VNEi4y30YQCWWdIS/Ku61MxLWglF7+HEN5a/uakfyncCWIg0JU9j08kF2LM18sG01YA8uMLx6YMNA
	vkAeGT/GoqNUHfTwDcz2lBRvllxGcKwDNPuCN0A6tYXX6RI73c1dsVhhtsOIB/pDTSa7adftJSmh6
	veVYsDt1RyNcSqQAF4UJVDjQ9POIZeGFqO56Tmop/SIu6bKYmAbTpnswZWBp1ENGmimPJ7N7hmkVJ
	QlFXSnFNM0S2nkkFMOFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2SKo-00000006625-2Iy9;
	Tue, 17 Mar 2026 11:11:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2SKm-0000000661f-0Nkr
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 11:11:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2SKj-0001Au-Ru; Tue, 17 Mar 2026 12:11:33 +0100
Message-ID: <883cefc4-0f41-4b23-8e0d-0dbf46431712@pengutronix.de>
Date: Tue, 17 Mar 2026 12:11:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20260316-keytoc-multi-env-v3-0-433591ef3198@pengutronix.de>
 <20260316-keytoc-multi-env-v3-3-433591ef3198@pengutronix.de>
 <5vgm73xfvqnp7r4nzftfsy6bytnixzlz6hwktfdo276wlo4lvf@5jjlroehmqgt>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <5vgm73xfvqnp7r4nzftfsy6bytnixzlz6hwktfdo276wlo4lvf@5jjlroehmqgt>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_041136_286908_17A5513B 
X-CRM114-Status: GOOD (  43.45  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 3/4] crypto: keytoc: Split env-provided full keyspec on
 spaces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 2026-03-17 01:00, Marco Felsch wrote:
> On 26-03-16, Jonas Rebmann wrote:
>> keytoc/CONFIG_CRYPTO_PUBLIC_KEYS can work with a complete keyspec
>> provided by an environment variable as opposed to providing single URIs.
>> This would be a very useful feature if it could also provide any number
>> of keys. Kconfig however provides keytoc with regular keyspecs already
>> split at spaces so without furhter measures, the env variable can only
>> be expanded into a single key.
>>
>> If a complete argument is provided via __ENV, split it at any space
>> character that is not escaped with a backslash in front of it.  An
>> actual backslash in a path needs to be escape with another backslash.
> 
> I find your commit message a bit hard to read to be honest. I had to
> read it twice to see what you actually want to add. So it could be
> shorten to:
> 
> Add support to provide multiple keyspec entries via a single environemnt
> (__ENV__) variable.

No. Earlier iterations would only support a single environment variable
but we decided that this behavior was too inconsistent, hence that all
positionals on keytoc should be handled in the same way, and that a
single positional shouldn't be treated as a special case. This means any
positional can be provided as an environment variable, unlike the RFC
version of this patch that would only handle a single environment
variable.

> Furthermore please adapt the Kconfig help message to keep it in sync.

Could you point me to a part of the Kconfig help text that would be
outdated by this? My intention was to implement the expected behavior
given the current Kconfig help text, and I just double-checked.

>>
>> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
>> ---
>>   scripts/keytoc.c | 55 ++++++++++++++++++++++++++++++++++++++++++-------------
>>   1 file changed, 42 insertions(+), 13 deletions(-)
>>
>> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
>> index 1b99393fdc..c451ee081a 100644
>> --- a/scripts/keytoc.c
>> +++ b/scripts/keytoc.c
>> @@ -10,6 +10,8 @@
>>   
>>   #pragma GCC diagnostic ignored "-Wdeprecated-declarations" /* ENGINE deprecated in OpenSSL 3.0 */
>>   
>> +#include "include/string_util.h"
>> +
>>   #include <stdio.h>
>>   #include <string.h>
>>   #include <time.h>
>> @@ -787,6 +789,11 @@ static bool parse_info(char *p, struct keyinfo *out)
>>   
>>   static bool parse_keyspec(const char *keyspec, struct keyinfo *out)
>>   {
>> +	if (!strncmp(keyspec, "pkcs11:", 7)) { /* legacy format of pkcs11 URI */
>> +		out->path = strdup(keyspec);
>> +		return true;
>> +	}
>> +
>>   	char *sep, *spec;
>>   
>>   	spec = strdup(keyspec);
>> @@ -817,7 +824,7 @@ int main(int argc, char *argv[])
>>   {
>>   	int argi, opt, ret;
>>   	char *outfile = NULL;
>> -	int keycount;
>> +	size_t keycount, num_positionals;
> 
> Why size_t?

It used to be correct that keycount is an int because it was bounded by
argc. After this change, that is not the case anymore. keycount is an
index to an arbitrary-sized array hence size_t is correct.

Not that I'm expecting over 2147483647 to be a use case here, this is
solely correctness.

>>   	struct keyinfo *keylist;
>>   
>>   	outfilep = stdout;
>> @@ -853,22 +860,44 @@ int main(int argc, char *argv[])
>>   		exit(1);
>>   	}
>>   
>> -	keycount = argc - optind;
>> -	keylist = calloc(sizeof(struct keyinfo), keycount);
>>   
>> -	for (argi = 0; argi < keycount; argi++) {
>> -		const char *keyspec = try_resolve_env(argv[optind + argi]);
>> -		struct keyinfo *info = &keylist[argi];
>> +	num_positionals = argc - optind;
>> +	keycount = num_positionals;
>>   
>> -		if (!keyspec)
>> -			exit(1);
>> +	keylist = calloc(keycount, sizeof(*keylist));
>> +
> 
> No newline required. Furthermore I would prefer a list now since this
> would be much easier to read and to handle (without the below
> reallocarray).

I disagree.

On v2 you asked me to reduce the changes per patch to the bare minimum.

Since this used to be an array and I'm leaving it an array. Converting
it to a linked list, regardless of which variant one finds more
pleasing, would bloat this commit. The conversion to a linked list could
be done in a separate commit but I personally don't find reallocarray
problematic the context, especially given that the array is only ever
resized in the case that was previously broken (that is complete
multi-key keyspec in an environment variable).

>> +	if (!keylist)
>> +		enomem_exit("push");
>> +
>> +	int listi = 0;
>> +
>> +	for (argi = 0; argi < num_positionals; argi++) {
>> +		char *arg = strdup(argv[optind + argi]);
>> +		char *resolved = try_resolve_env(arg);
> 		^
> Why do you drop the 'const' here? Furthermore, why do you strdup()?

try_resolve_env does not return const, if that's what you mean by "drop
the 'const'". It returns either its non-const input or the non-const
return value of getenv. Are you suggesting it should be made const? It
could be.

The strdup of arg is not technically needed here given argv is non-const
and honestly I just wrongly assumed argv as const when I strudped here,
and maybe it should be. But with non-const argv it's not technically
needed. Do you want me to drop it?

If you're referring to the strdup of the result of try_resolve_env; If
it did expand an env variable, it needs to be duplicated before
splitting via strsep_unescaped or a successive getenv call on the same
variable name would unexpectedly return variable contents modified by
the later strsep_unescaped. If this bothers you, I could move that
strdup into try_resolve_env but for the other usages of try_resolve_env
that would not be neccessary.

> 
>> -		if (!strncmp(keyspec, "pkcs11:", 7)) { // legacy format of pkcs11 URI
>> -			info->path = strdup(keyspec);
>> +		if (arg == resolved) {
>> +			keylist[listi].path = arg;
>> +			listi++;
>>   		} else {
>> -			if (!parse_keyspec(keyspec, info)) {
>> -				fprintf(stderr, "invalid keyspec %i: %s\n", optind, keyspec);
>> -				exit(1);
>> +			char *keyspecs = strdup(resolved);
>> +			char *keyspec;
>> +
>> +			/* Keyspec given as env Variable,
>> +			 * remove it and add an arbitrary number of keyspecs from its contents
>> +			 */
>> +			keycount--;
>> +			while ((keyspec = strsep_unescaped(&keyspecs, " ", NULL))) {
>> +				keycount++;
>> +				keylist = reallocarray(keylist, keycount, sizeof(*keylist));
>> +				if (!keylist)
>> +					enomem_exit("realloc keylist");
>> +				bzero(keylist + (keycount - 1), sizeof(*keylist));
>> +				if (!parse_keyspec(keyspec, &keylist[listi])) {
>> +					fprintf(stderr, "invalid keyspec %i: %s\n", optind,
>> +						keyspec);
>> +					exit(1);
>> +				}
>> +				listi++;
>>   			}
> 
> Did you tested that all the other usecases are not broken by this
> change?

That's a too broad question to answer but Patch 4/4 explains backwards
compatibility of this change to the best of my knowledge.

> Regards,
>    Marco
> 
>>   		}
>>   	}
>>
>> -- 
>> 2.53.0.308.g50d063e335
>>
>>
>>
> 

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


