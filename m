Delivery-date: Fri, 27 Sep 2024 10:12:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su65D-003KSX-06
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 10:12:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su65D-0005NF-BT
	for lore@pengutronix.de; Fri, 27 Sep 2024 10:12:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h3R0a/e0ktHXO3jUruE0EYb12bHasRDUeky1nSBYegE=; b=dtFuOs72tGbUg7SQ1rfVO2/4iR
	uIZmJyt2DN70kT/49y/JIDd+CYk5wh4JdpXYNishDlXMOYAi5rRuTTBHpmQTHC0RzlwjSkHcF6pKv
	pwHidR4m/nZEA9S3HdTUGQVtUwhtOymfFwxyrewLUKxlYSXzMFFkEtRBMUMA5n7tnHLhHT0qvzSWg
	zV4u1ppRmwgJeS8YrLVz837eQxqKCjJKtgFPYB2Cea3VHzSVfBKwZk4URoAhDtWNqCY8phYVJiRLe
	rejERDgUWA+pLZnViHnyDFRq7YXNwK9J3FKU9j5LugRErWkAFACfxCwmgYM4ohAUEiY4yFHJY3JqK
	8nPnOM0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su64i-0000000ASXD-3j9C;
	Fri, 27 Sep 2024 08:11:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su64f-0000000ASWQ-2Jd6
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 08:11:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1su64e-00057j-Au; Fri, 27 Sep 2024 10:11:36 +0200
Message-ID: <dc04b670-d636-42a3-8b42-83804fa39c11@pengutronix.de>
Date: Fri, 27 Sep 2024 10:11:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-4-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240913075924.1652866-4-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_011137_631723_EF484F69 
X-CRM114-Status: GOOD (  23.39  )
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
Subject: Re: [PATCH v4 03/16] keytoc: fix ECDSA endianess problems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.09.24 09:59, Sascha Hauer wrote:
> We print the ECDSA key values out as an uint32_t C array. They are used in
> barebox as a uint64_t C array, so when the endianess of the build system
> differs from the system barebox runs on we end up with the 32bit words
> swapped in the u64 array. Fix this by printing out the key values as
> an uint64_t array.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cool, thanks. Now we just need a tes and see it work on big-endian MIPS :-)

Cheers,
Ahmad

> ---
>  scripts/keytoc.c | 42 +++++++++++++++++++++---------------------
>  1 file changed, 21 insertions(+), 21 deletions(-)
> 
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index 7e73c786a3..b140160688 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -315,12 +315,12 @@ static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
>  
>  static FILE *outfilep;
>  
> -static int print_bignum(BIGNUM *num, int num_bits)
> +static int print_bignum(BIGNUM *num, int num_bits, int width)
>  {
>  	BIGNUM *tmp, *big2, *big32, *big2_32;
>  	BN_CTX *ctx;
>  	int i;
> -	uint32_t *arr;
> +	uint64_t *arr;
>  
>  	tmp = BN_new();
>  	big2 = BN_new();
> @@ -345,34 +345,34 @@ static int print_bignum(BIGNUM *num, int num_bits)
>  		return -ENOMEM;
>  	}
>  	BN_set_word(big2, 2L);
> -	BN_set_word(big32, 32L);
> -	BN_exp(big2_32, big2, big32, ctx); /* B = 2^32 */
> +	BN_set_word(big32, width);
> +	BN_exp(big2_32, big2, big32, ctx); /* B = 2^width */
>  
> -	arr = malloc(num_bits / 32 * sizeof(uint32_t));
> +	arr = malloc(num_bits / width * sizeof(*arr));
>  
> -	for (i = 0; i < num_bits / 32; i++) {
> +	for (i = 0; i < num_bits / width; i++) {
>  		BN_mod(tmp, num, big2_32, ctx); /* n = N mod B */
>  		arr[i] = BN_get_word(tmp);
> -		BN_rshift(num, num, 32); /*  N = N/B */
> +		BN_rshift(num, num, width); /*  N = N/B */
>  	}
>  
>  	if (dts) {
> -		for (i = 0; i < num_bits / 32; i++) {
> +		for (i = 0; i < num_bits / width; i++) {
>  			if (i % 4)
>  				fprintf(outfilep, " ");
>  			else
>  				fprintf(outfilep, "\n\t\t\t\t");
> -			fprintf(outfilep, "0x%08x", arr[num_bits / 32 - 1 - i]);
> -			BN_rshift(num, num, 32); /*  N = N/B */
> +			fprintf(outfilep, "0x%0*jx", width / 4, arr[num_bits / width - 1 - i]);
> +			BN_rshift(num, num, width); /*  N = N/B */
>  		}
>  	} else {
> -		for (i = 0; i < num_bits / 32; i++) {
> +		for (i = 0; i < num_bits / width; i++) {
>  			if (i % 4)
>  				fprintf(outfilep, " ");
>  			else
>  				fprintf(outfilep, "\n\t");
> -			fprintf(outfilep, "0x%08x,", arr[i]);
> -			BN_rshift(num, num, 32); /*  N = N/B */
> +			fprintf(outfilep, "0x%0*jx,", width / 4, arr[i]);
> +			BN_rshift(num, num, width); /*  N = N/B */
>  		}
>  	}
>  
> @@ -473,12 +473,12 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
>  		fprintf(stderr, "ERROR: generating a dts snippet for ECDSA keys is not yet supported\n");
>  		return -EOPNOTSUPP;
>  	} else {
> -		fprintf(outfilep, "\nstatic uint32_t %s_x[] = {", key_name_c);
> -		print_bignum(key_x, bits);
> +		fprintf(outfilep, "\nstatic uint64_t %s_x[] = {", key_name_c);
> +		print_bignum(key_x, bits, 64);
>  		fprintf(outfilep, "\n};\n\n");
>  
> -		fprintf(outfilep, "static uint32_t %s_y[] = {", key_name_c);
> -		print_bignum(key_y, bits);
> +		fprintf(outfilep, "static uint64_t %s_y[] = {", key_name_c);
> +		print_bignum(key_y, bits, 64);
>  		fprintf(outfilep, "\n};\n\n");
>  
>  		fprintf(outfilep, "static struct ecdsa_public_key %s = {\n", key_name_c);
> @@ -512,10 +512,10 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
>  	if (dts) {
>  		fprintf(outfilep, "\t\tkey-%s {\n", key_name_c);
>  		fprintf(outfilep, "\t\t\trsa,r-squared = <");
> -		print_bignum(r_squared, bits);
> +		print_bignum(r_squared, bits, 32);
>  		fprintf(outfilep, ">;\n");
>  		fprintf(outfilep, "\t\t\trsa,modulus= <");
> -		print_bignum(modulus, bits);
> +		print_bignum(modulus, bits, 32);
>  		fprintf(outfilep, ">;\n");
>  		fprintf(outfilep, "\t\t\trsa,exponent = <0x%0lx 0x%lx>;\n",
>  			(exponent >> 32) & 0xffffffff,
> @@ -526,11 +526,11 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
>  		fprintf(outfilep, "\t\t};\n");
>  	} else {
>  		fprintf(outfilep, "\nstatic uint32_t %s_modulus[] = {", key_name_c);
> -		print_bignum(modulus, bits);
> +		print_bignum(modulus, bits, 32);
>  		fprintf(outfilep, "\n};\n\n");
>  
>  		fprintf(outfilep, "static uint32_t %s_rr[] = {", key_name_c);
> -		print_bignum(r_squared, bits);
> +		print_bignum(r_squared, bits, 32);
>  		fprintf(outfilep, "\n};\n\n");
>  
>  		if (standalone) {


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


