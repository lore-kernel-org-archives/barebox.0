Delivery-date: Wed, 18 Feb 2026 13:56:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsh6P-0033GR-2S
	for lore@lore.pengutronix.de;
	Wed, 18 Feb 2026 13:56:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsh6P-0005cB-LC
	for lore@pengutronix.de; Wed, 18 Feb 2026 13:56:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SBIRJkXZ8sgnpsYMaTErd6r5lO7Jpgqf2VSHVwQsOpc=; b=BvKqSBUZ4dcPiNEIvc+XknRUv4
	IhCMBMeM3N+KehDqFXXT2QYfyGOiTr/IPGBBZqq6RK5Z1w6pKJTY6xt8/92lt8buDoLeCLc7s8daJ
	XSOGXBftDmu3lasmq9HnyACiMK33s/4FxodohE1JMeqwvJGre3h9ENwSCZ2uKS84/D+mLw4P0yq4I
	tsDJlzgIeRKcCiqJSfNu8I8k7S3iCNtD6oNLpT8uZPAG3/Iuu1EOlOV73XaxZ3xW/+hGlYcfxfO/w
	ja1pkkYzcfGI/gPFRStk7D8RG6+j+QRyof0fVSfv/eFuAcrPhwcqxizADlrdvMpxERNeJmFC9F87d
	pRzw8eGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsh5t-00000009oiM-2QJy;
	Wed, 18 Feb 2026 12:55:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsh5q-00000009ohX-38yK
	for barebox@lists.infradead.org;
	Wed, 18 Feb 2026 12:55:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vsh5n-0005Wg-Cj; Wed, 18 Feb 2026 13:55:47 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vsh5l-001PPP-2j;
	Wed, 18 Feb 2026 13:55:47 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1vsh5n-00000009XxZ-0Q2z;
	Wed, 18 Feb 2026 13:55:47 +0100
Date: Wed, 18 Feb 2026 13:55:47 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Message-ID: <irxnngdbxz5pkjm5gez3jzgj5zwsathpcxgbhjdji5rt6xmtpp@ftv4a3y5vksu>
References: <20260218-keytoc-multi-env-v2-0-3ea146c95d18@pengutronix.de>
 <20260218-keytoc-multi-env-v2-1-3ea146c95d18@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260218-keytoc-multi-env-v2-1-3ea146c95d18@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260218_045550_947633_41267749 
X-CRM114-Status: GOOD (  39.88  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] crypto: keytoc: Split env-provided full keyspec
 on spaces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-02-18, Jonas Rebmann wrote:
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
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  scripts/include/linux/string.h |  2 +-
>  scripts/include/string_util.h  | 65 ++++++++++++++++++++++++++++++++++++++
>  scripts/keytoc.c               | 71 +++++++++++++++++++++++++++++-------------

Porting strsep_unescaped should be one patch and the keytoc changes
should be one patch.

>  3 files changed, 115 insertions(+), 23 deletions(-)
> 
> diff --git a/scripts/include/linux/string.h b/scripts/include/linux/string.h
> index 649287b80a..ac06f96d8d 100644
> --- a/scripts/include/linux/string.h
> +++ b/scripts/include/linux/string.h
> @@ -16,4 +16,4 @@ int strtobool(const char *s, bool *res);
>  extern size_t strlcpy(char *dest, const char *src, size_t size);
>  #endif
>  
> -#endif /* _LINUX_STRING_H_ */
> +#endif /* _TOOLS_LINUX_STRING_H_ */
> diff --git a/scripts/include/string_util.h b/scripts/include/string_util.h
> new file mode 100644
> index 0000000000..e71aa60d26
> --- /dev/null
> +++ b/scripts/include/string_util.h
> @@ -0,0 +1,65 @@
> +#ifndef _TOOLS_STRING_UTIL_H_
> +#define _TOOLS_STRING_UTIL_H_
> +
> +#include <linux/types.h>
> +#include <stddef.h>
> +
> +// SPDX-SnippetBegin
> +// SPDX-Snippet-Comment: Origin-URL: https://git.pengutronix.de/cgit/barebox/tree/lib/string.c?id=dfcf686f94a5a5387660f2afab79a714baab828a
> +
> +/**
> + * strsep_unescaped - Split a string into tokens, while ignoring escaped delimiters
> + * @s: The string to be searched
> + * @ct: The delimiter characters to search for
> + * @delim: optional pointer to store found delimiter into
> + *
> + * strsep_unescaped() behaves like strsep unless it meets an escaped delimiter.
> + * In that case, it shifts the string back in memory to overwrite the escape's
> + * backslash then continues the search until an unescaped delimiter is found.
> + *
> + * On end of string, this function returns NULL. As long as a non-NULL
> + * value is returned and @delim is not NULL, the found delimiter will
> + * be stored into *@delim.
> + */
> +static char *strsep_unescaped(char **s, const char *ct, char *delim)
> +{
> +	char *sbegin = *s, *hay;
> +	const char *needle;
> +	size_t shift = 0;
> +
> +	if (sbegin == NULL)
> +		return NULL;
> +
> +	for (hay = sbegin; *hay != '\0'; ++hay) {
> +		*hay = hay[shift];
> +
> +		if (*hay == '\\') {
> +			*hay = hay[++shift];
> +			if (*hay != '\\')
> +				continue;
> +		}
> +
> +		for (needle = ct; *needle != '\0'; ++needle) {
> +			if (*hay == *needle)
> +				goto match;
> +		}
> +	}
> +
> +	*s = NULL;
> +	if (delim)
> +		*delim = '\0';
> +	return sbegin;
> +
> +match:
> +	if (delim)
> +		*delim = *hay;
> +	*hay = '\0';
> +	*s = &hay[shift + 1];
> +
> +	return sbegin;
> +}
> +
> +// SPDX-SnippetEnd
> +
> +
> +#endif /* _TOOLS_STRING_UTIL_H_ */
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index 77ada3af45..ed091285f4 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -6,9 +6,12 @@
>   * URI to a C struct suitable to compile with barebox.
>   *
>   * TODO: Find a better way for reimport_key()
> - *
>   */
> -#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
> +
> +#pragma GCC diagnostic ignored "-Wdeprecated-declarations" /* ENGINE deprecated in OpenSSL 3.0 */
> +
> +#include "include/string_util.h"
> +
>  #include <stdio.h>
>  #include <string.h>
>  #include <time.h>
> @@ -784,8 +787,13 @@ static bool parse_info(char *p, struct keyinfo *out)
>  	}
>  }
>  
> -static bool get_name_path(const char *keyspec, struct keyinfo *out)
> +static bool parse_keyspec(const char *keyspec, struct keyinfo *out)
>  {
> +	if (!strncmp(keyspec, "pkcs11:", 7)) { /* legacy format of pkcs11 URI */
> +		out->path = strdup(keyspec);
> +		return true;
> +	}
> +
>  	char *sep, *spec;
>  
>  	spec = strdup(keyspec);
> @@ -814,10 +822,10 @@ static bool get_name_path(const char *keyspec, struct keyinfo *out)
>  
>  int main(int argc, char *argv[])
>  {
> -	int i, opt, ret;
> +	int argi, opt, ret;

The diff gets quite hard to read, if you do such changes in between.
Please reduce the changes per patch to the bare minimum. Renaming could
be done later on in a separate patch.

>  	char *outfile = NULL;
> -	int keycount;
> -	struct keyinfo *keylist;
> +	size_t keycount, num_positionals;
> +	struct keyinfo *keylist = NULL;
>  
>  	outfilep = stdout;
>  
> @@ -852,22 +860,41 @@ int main(int argc, char *argv[])
>  		exit(1);
>  	}
>  
> -	keycount = argc - optind;
> -	keylist = calloc(sizeof(struct keyinfo), keycount);
>  
> -	for (i = 0; i < keycount; i++) {
> -		const char *keyspec = try_resolve_env(argv[optind + i]);
> -		struct keyinfo *info = &keylist[i];
> +	num_positionals = argc - optind;
> +	keycount = num_positionals;
>  
> -		if (!keyspec)
> -			exit(1);
> +	keylist = calloc(keycount, sizeof(*keylist));

Same here, why can't you keep the keycount and keylist handling
unchanged?

> +
> +	if (!keylist)
> +		enomem_exit("push");

This would go into separate patch as well.

As said above, please split your patchset into multiple smaller patches
to make it easier to read.

Regards,
  Marco


> +
> +	int listi = 0;
> +
> +	for (argi = 0; argi < num_positionals; argi++) {
> +		char *arg = strdup(argv[optind + argi]);
> +		char *resolved = try_resolve_env(arg);
>  
> -		if (!strncmp(keyspec, "pkcs11:", 7)) { // legacy format of pkcs11 URI
> -			info->path = strdup(keyspec);
> +		if (arg == resolved) {
> +			keylist[listi].path = arg;
> +			listi++;
>  		} else {
> -			if (!get_name_path(keyspec, info)) {
> -				fprintf(stderr, "invalid keyspec %i: %s\n", optind, keyspec);
> -				exit(1);
> +			char *keyspecs = strdup(resolved);
> +			char *keyspec;
> +
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
>  		}
>  	}
> @@ -885,14 +912,14 @@ int main(int argc, char *argv[])
>  	}
>  
>  
> -	for (i = 0; i < keycount; i++) {
> -		struct keyinfo *info = &keylist[i];
> +	for (argi = 0; argi < keycount; argi++) {
> +		struct keyinfo *info = &keylist[argi];
>  
>  		/* resolve __ENV__ for name_hint and path */
>  		info->name_hint = try_resolve_env(info->name_hint);
>  		info->path = try_resolve_env(info->path);
>  
> -		if (asprintf(&info->name_c, "key_%i", i + 1) < 0)
> +		if (asprintf(&info->name_c, "key_%i", argi + 1) < 0)
>  			enomem_exit("asprintf");
>  
>  		/* unfortunately, the fit name hint is mandatory in the barebox codebase */
> @@ -901,7 +928,7 @@ int main(int argc, char *argv[])
>  
>  		if (!info->keyring) {
>  			info->keyring = strdup("fit");
> -			fprintf(stderr, "Warning: No keyring provided in keyspec, defaulting to keyring=fit for %s\n", argv[optind + i]);
> +			fprintf(stderr, "Warning: No keyring provided in keyspec, defaulting to keyring=fit for %s\n", argv[optind + argi]);
>  		}
>  
>  		ret = gen_key(info);
> 
> -- 
> 2.51.2.535.g419c72cb8a
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


