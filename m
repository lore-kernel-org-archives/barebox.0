Delivery-date: Mon, 05 Aug 2024 13:05:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1savWe-006TDO-0H
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 13:05:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1savWd-00053u-CQ
	for lore@pengutronix.de; Mon, 05 Aug 2024 13:05:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7uXdzRHe1HCxpK8/ES8elVl/OsbP9dhbtQL88XFtw2o=; b=Sd9TatsvCUytnGl6ppY7t/VcwW
	fE0phxA4+F9LP4hJQSgGBNOKAtACm9k82eRz8u32pDN7GYezS6nOOYgkqSNefMyAfjXcvEZ/CDWTm
	6RqMxCB2o8/Xeb9DK5mu/k5dtQMnGJjayGy/uxLTEFIT5gMzDdvEBunnjG8wkZsQtPVLqTAejDpao
	nxU71bzx/VCbE+YB5GXyToadMv7ED76wG1hq78NgyQuLD8HOqQMP0F4NZGextwz49KVk783G2ul5k
	msb2cx9Ay4sWBl0CBiVbWBqX80WT6Nd3a0d2XEZA8t8XtpkDCeT+mtk/q7VeDVVfMvjcq4jeCgFYE
	cQCypYEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1savW7-0000000FcwH-43BO;
	Mon, 05 Aug 2024 11:04:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1savW4-0000000Fcvl-2u38
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 11:04:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1savW3-0004zs-9Q; Mon, 05 Aug 2024 13:04:39 +0200
Message-ID: <db4d508b-7f4d-4a5d-bfd7-d13b13a5a192@pengutronix.de>
Date: Mon, 5 Aug 2024 13:04:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-13-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-13-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_040440_766965_DD5EB5F4 
X-CRM114-Status: GOOD (  25.29  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 12/19] keytoc: add ecdsa support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> This extends the keytoc utility to also handle ecdsa keys.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  scripts/keytoc.c | 191 +++++++++++++++++++++++++++++++++++++++--------
>  1 file changed, 161 insertions(+), 30 deletions(-)
> 
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index 891425cecc..0883ca64f7 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -20,6 +20,8 @@
>  #include <openssl/engine.h>
>  #include <openssl/provider.h>
>  #include <openssl/core_names.h>
> +#include <openssl/param_build.h>
> +#include <openssl/store.h>
>  
>  static int dts, standalone;
>  
> @@ -377,44 +379,131 @@ static int print_bignum(BIGNUM *num, int num_bits)
>  	return 0;
>  }
>  
> -static int gen_key(const char *keyname, const char *path)
> +/*
> + * When imported from a HSM the key doesn't have the EC point parameters,

Can you add a TODO: at the start, so it's more apparent, that there is something
to do?

> + * only the pubkey itself exists. Exporting the pubkey and creating a new
> + * pkey from it resolves this. This can likely (hopefully) be improved, but
> + * I don't have an idea how.
> + */
> +static EVP_PKEY *reimport_key(EVP_PKEY *pkey)
>  {
> -	BIGNUM *modulus, *r_squared;
> -	uint64_t exponent = 0;
> -	uint32_t n0_inv;
> +	char group[128] = {};
> +	size_t outlen;
> +	OSSL_PARAM *params;
> +	OSSL_PARAM_BLD *param_bld = NULL;
> +	unsigned char pub[128] = {};
> +	size_t len;
> +	EVP_PKEY *pkey_out = NULL;
> +	EVP_PKEY_CTX *pkey_ctx;
>  	int ret;
> -	int bits;
> -	EVP_PKEY *key;
> -	char *tmp, *key_name_c;
>  
> -	tmp = key_name_c = strdup(keyname);
> +	ret = EVP_PKEY_get_utf8_string_param(pkey, "group", group, sizeof(group), &outlen);

Just pass in NULL for the final parameter if it's unused?

> +	if (dts) {
> +		fprintf(outfilep, "\t\tkey-%s {\n", key_name_c);
> +		fprintf(outfilep, "\t\t\tecdsa,x-point = <");
> +		print_bignum(key_x, bits);
> +		fprintf(outfilep, ">;\n");
> +		fprintf(outfilep, "\t\t\tecdsa,y-point = <");
> +		print_bignum(key_y, bits);
> +		fprintf(outfilep, ">;\n");
> +		fprintf(outfilep, "\t\t\tecdsa,curve = \"%s\";\n", group);
> +		fprintf(outfilep, "\t\t};\n");

Hmm, why no key-name-hint?

>  	} else {
> -		ret = pem_get_pub_key(path, &key);
> -		if (ret)
> -			exit(1);
> +		fprintf(outfilep, "\nstatic uint32_t %s_x[] = {", key_name_c);
> +		print_bignum(key_x, bits);
> +		fprintf(outfilep, "\n};\n\n");
> +
> +		fprintf(outfilep, "static uint32_t %s_y[] = {", key_name_c);
> +		print_bignum(key_y, bits);
> +		fprintf(outfilep, "\n};\n\n");
> +
> +		fprintf(outfilep, "static struct ecdsa_public_key %s = {\n", key_name_c);
> +
> +		fprintf(outfilep, "\t.curve_name = \"%s\",\n", group);
> +		fprintf(outfilep, "\t.x = %s_x,\n", key_name_c);
> +		fprintf(outfilep, "\t.y = %s_y,\n", key_name_c);
> +		fprintf(outfilep, "};\n");
> +		if (!standalone)
> +			fprintf(outfilep, "\nstruct ecdsa_public_key *%s_ecdsa_p __attribute__((section(\".ecdsa_keys.rodata.%s\"))) = &%s;\n",
> +				key_name_c, key_name_c, key_name_c);
>  	}

> +	ret = gen_key_ecdsa(key, keyname, key_name_c);
> +	if (ret)
> +		ret = gen_key_rsa(key, keyname, key_name_c);
> +
> +	return 0;
> +}
> +
>  int main(int argc, char *argv[])
>  {
>  	char *path, *keyname;
> @@ -515,6 +645,7 @@ int main(int argc, char *argv[])
>  		else
>  			fprintf(outfilep, "\tsignature {\n");
>  	} else if (standalone) {
> +		fprintf(outfilep, "#include <ecdsa.h>\n");

This is being used before it was added.

>  		fprintf(outfilep, "#include <rsa.h>\n");
>  	}
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



