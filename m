Delivery-date: Tue, 17 Mar 2026 01:01:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2HsM-001c02-0Q
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 01:01:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2HsL-0005lb-EN
	for lore@pengutronix.de; Tue, 17 Mar 2026 01:01:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p29Z9TQvvgHLDNcEUNTM1fbQLnOYhfAbTn8MVYpPtRw=; b=gzWrpEAaZlC/pUJ+7/Tu/U41Wd
	IuG/4n8Z/NVUzHcP0/yyDQb5ZPHywpx9k7JMOQnTvMHb1+lRf6qMAOntkJ+YCNMUgbS6HXKIGW1+t
	aOmclHTkRIeujlrpUqvXwcM0K6UgHf1VcPQ7DkBj9SiTIuKA5iaBGi4Grx315j9IZ9xmvfrCrGmrC
	AWkEjz9h/pPcY2KtHms9FGI8AcHWj4jkz93dNcBjb/aryaYEPKUpGAsKtsVamxhgVBg+UckgwGygL
	T9c2DgPbFddGZKSR90gYk4XsIGa40+DPWjLxvbFOUwS/pd8MkNlX5P91P3CxDRxem0DF+JA1YIg39
	zOvp8FDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Hrn-000000056i4-20G9;
	Tue, 17 Mar 2026 00:00:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Hri-000000056hN-3aMU
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 00:00:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1w2Hrh-0005eU-2D; Tue, 17 Mar 2026 01:00:53 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1w2Hrg-000eGz-1B;
	Tue, 17 Mar 2026 01:00:52 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1w2Hrg-00000005Yu4-18lT;
	Tue, 17 Mar 2026 01:00:52 +0100
Date: Tue, 17 Mar 2026 01:00:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Message-ID: <5vgm73xfvqnp7r4nzftfsy6bytnixzlz6hwktfdo276wlo4lvf@5jjlroehmqgt>
References: <20260316-keytoc-multi-env-v3-0-433591ef3198@pengutronix.de>
 <20260316-keytoc-multi-env-v3-3-433591ef3198@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316-keytoc-multi-env-v3-3-433591ef3198@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_170054_899446_20193341 
X-CRM114-Status: GOOD (  33.15  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 3/4] crypto: keytoc: Split env-provided full keyspec
 on spaces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-03-16, Jonas Rebmann wrote:
> keytoc/CONFIG_CRYPTO_PUBLIC_KEYS can work with a complete keyspec
> provided by an environment variable as opposed to providing single URIs.
> This would be a very useful feature if it could also provide any number
> of keys. Kconfig however provides keytoc with regular keyspecs already
> split at spaces so without furhter measures, the env variable can only
> be expanded into a single key.
> 
> If a complete argument is provided via __ENV, split it at any space
> character that is not escaped with a backslash in front of it.  An
> actual backslash in a path needs to be escape with another backslash.

I find your commit message a bit hard to read to be honest. I had to
read it twice to see what you actually want to add. So it could be
shorten to:

Add support to provide multiple keyspec entries via a single environemnt
(__ENV__) variable.

Furthermore please adapt the Kconfig help message to keep it in sync.

> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  scripts/keytoc.c | 55 ++++++++++++++++++++++++++++++++++++++++++-------------
>  1 file changed, 42 insertions(+), 13 deletions(-)
> 
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index 1b99393fdc..c451ee081a 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -10,6 +10,8 @@
>  
>  #pragma GCC diagnostic ignored "-Wdeprecated-declarations" /* ENGINE deprecated in OpenSSL 3.0 */
>  
> +#include "include/string_util.h"
> +
>  #include <stdio.h>
>  #include <string.h>
>  #include <time.h>
> @@ -787,6 +789,11 @@ static bool parse_info(char *p, struct keyinfo *out)
>  
>  static bool parse_keyspec(const char *keyspec, struct keyinfo *out)
>  {
> +	if (!strncmp(keyspec, "pkcs11:", 7)) { /* legacy format of pkcs11 URI */
> +		out->path = strdup(keyspec);
> +		return true;
> +	}
> +
>  	char *sep, *spec;
>  
>  	spec = strdup(keyspec);
> @@ -817,7 +824,7 @@ int main(int argc, char *argv[])
>  {
>  	int argi, opt, ret;
>  	char *outfile = NULL;
> -	int keycount;
> +	size_t keycount, num_positionals;

Why size_t?

>  	struct keyinfo *keylist;
>  
>  	outfilep = stdout;
> @@ -853,22 +860,44 @@ int main(int argc, char *argv[])
>  		exit(1);
>  	}
>  
> -	keycount = argc - optind;
> -	keylist = calloc(sizeof(struct keyinfo), keycount);
>  
> -	for (argi = 0; argi < keycount; argi++) {
> -		const char *keyspec = try_resolve_env(argv[optind + argi]);
> -		struct keyinfo *info = &keylist[argi];
> +	num_positionals = argc - optind;
> +	keycount = num_positionals;
>  
> -		if (!keyspec)
> -			exit(1);
> +	keylist = calloc(keycount, sizeof(*keylist));
> +

No newline required. Furthermore I would prefer a list now since this
would be much easier to read and to handle (without the below
reallocarray).

> +	if (!keylist)
> +		enomem_exit("push");
> +
> +	int listi = 0;
> +
> +	for (argi = 0; argi < num_positionals; argi++) {
> +		char *arg = strdup(argv[optind + argi]);
> +		char *resolved = try_resolve_env(arg);
		^
Why do you drop the 'const' here? Furthermore, why do you strdup()?

> -		if (!strncmp(keyspec, "pkcs11:", 7)) { // legacy format of pkcs11 URI
> -			info->path = strdup(keyspec);
> +		if (arg == resolved) {
> +			keylist[listi].path = arg;
> +			listi++;
>  		} else {
> -			if (!parse_keyspec(keyspec, info)) {
> -				fprintf(stderr, "invalid keyspec %i: %s\n", optind, keyspec);
> -				exit(1);
> +			char *keyspecs = strdup(resolved);
> +			char *keyspec;
> +
> +			/* Keyspec given as env Variable,
> +			 * remove it and add an arbitrary number of keyspecs from its contents
> +			 */
> +			keycount--;
> +			while ((keyspec = strsep_unescaped(&keyspecs, " ", NULL))) {
> +				keycount++;
> +				keylist = reallocarray(keylist, keycount, sizeof(*keylist));
> +				if (!keylist)
> +					enomem_exit("realloc keylist");
> +				bzero(keylist + (keycount - 1), sizeof(*keylist));
> +				if (!parse_keyspec(keyspec, &keylist[listi])) {
> +					fprintf(stderr, "invalid keyspec %i: %s\n", optind,
> +						keyspec);
> +					exit(1);
> +				}
> +				listi++;
>  			}

Did you tested that all the other usecases are not broken by this
change?

Regards,
  Marco

>  		}
>  	}
> 
> -- 
> 2.53.0.308.g50d063e335
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


