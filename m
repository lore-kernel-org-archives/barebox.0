Delivery-date: Fri, 27 Sep 2024 10:19:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su6Cc-003Ka2-2Y
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 10:19:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su6Cd-00005s-8I
	for lore@pengutronix.de; Fri, 27 Sep 2024 10:19:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZlrODTqxK3Mdd3bP97s9cEskyYptzRLY2cNni9UbZTM=; b=0lYgVrJllNJwBjCKnyg53QrR/h
	GbjxV9GehzTqbR6Pc51iS8fRcEsnOpQ2IVxUaNwzcIXr2RrJemdrNV7Sf1qZvxLJm2RrPy+TeXztq
	hQs/oQia+WWue2KJqCFCEeoptgbNzKHNGiM/WS0SGv651hyxZyUMIyjbp07QLbMTeP4dzZNppR+9D
	2QLr8z3POO8YVe1/1T0YwVMnhzccWXvTFMbxnwdLZ52ce2JgwYtZ2hGJVC3UkCMR3QG1STM1wmzfx
	scndCp0fwONOICgYL0zGqL+WHNXiac1PqYhHpAyAm+P2lRwyHESt0YTeWLvW2HE+/H0focxpYpvIR
	YwEtkTeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su6C5-0000000ATby-3I94;
	Fri, 27 Sep 2024 08:19:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su6Ay-0000000ATNz-0hrh
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 08:18:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1su6Aw-0007lP-5e; Fri, 27 Sep 2024 10:18:06 +0200
Message-ID: <92ac4a49-5086-4244-8d0e-d91af72c7ac3@pengutronix.de>
Date: Fri, 27 Sep 2024 10:18:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-8-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240913075924.1652866-8-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_011808_253956_511C450C 
X-CRM114-Status: GOOD (  19.85  )
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
Subject: Re: [PATCH v4 07/16] keytoc: make key name hint optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.09.24 09:59, Sascha Hauer wrote:
> The key name hint is used in barebox to find a key without iterating
> over all keys, but it's not required. Make the key name hint optional
> to keytoc.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/keytoc.c | 31 ++++++++++++++++++++++---------
>  1 file changed, 22 insertions(+), 9 deletions(-)
> 
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index ecb33cbe47..85a7cd7319 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -9,6 +9,7 @@
>   *
>   */
>  #pragma GCC diagnostic ignored "-Wdeprecated-declarations"
> +#define _GNU_SOURCE
>  #include <stdio.h>
>  #include <string.h>
>  #include <time.h>
> @@ -602,9 +603,9 @@ static int gen_key(const char *keyname, const char *path)
>  
>  int main(int argc, char *argv[])
>  {
> -	char *path, *keyname;
>  	int i, opt, ret;
>  	char *outfile = NULL;
> +	int keynum = 1;
>  
>  	outfilep = stdout;
>  
> @@ -652,21 +653,33 @@ int main(int argc, char *argv[])
>  	}
>  
>  	for (i = optind; i < argc; i++) {
> -		keyname = argv[i];
> +		char *keyspec = argv[i];
> +		char *keyname = NULL;
> +		char *path, *freep = NULL;
>  
> -		path = strchr(keyname, ':');
> -		if (!path) {
> -			fprintf(stderr,
> -				"keys must be given as <key_name_hint>:<crt>\n");
> -			exit(1);
> +		if (!strncmp(keyspec, "pkcs11:", 7)) {
> +			path = keyspec;
> +		} else {
> +			path = strchr(keyspec, ':');
> +			if (path) {
> +				*path = 0;
> +				path++;
> +				keyname = keyspec;
> +			} else {
> +				path = keyspec;
> +			}
>  		}
>  
> -		*path = 0;
> -		path++;
> +		if (!keyname) {
> +			asprintf(&freep, "key_%d", keynum++);
> +			keyname = freep;
> +		}
>  
>  		ret = gen_key(keyname, path);
>  		if (ret)
>  			exit(1);
> +
> +		free(freep);
>  	}
>  
>  	if (dts) {


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


