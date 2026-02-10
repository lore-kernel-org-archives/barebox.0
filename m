Delivery-date: Tue, 10 Feb 2026 10:36:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpkAC-0007oN-07
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 10:36:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpkAB-0003s0-Df
	for lore@pengutronix.de; Tue, 10 Feb 2026 10:36:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RCt1FdUZrk6yWCHD0YKiVvVj3DzZfHOst/j7WGdOEzA=; b=Y/T5+B9A869ysEkXPb4DDaChvf
	u56OMMVX40gkP2/8yFRkICahco9MCWLyhgvzNRz6jko7xIojM914YXv+JmR0xbUZd0/IDukcW1mic
	ZHoPZWHFTU+DMsE5egLNHYJi2rDmzAsijYfm1VxyqnmiQg7Dt9Wu6eGaKCxE+yowRwRTBPishBqPD
	0WvSQ59YjeVhtV7EjSDKCFwHXToPJd91PA6g2qv35zi5KDe1+wdOIV7L0LWd9Ai9R9oodG2Gpq9os
	aRNxRkVpwxZTRefmGrUnYULNY64VHDvZOaVQ3KDyM3ZEGfyhe02VnJcV+a2A4JTPpd0S+V8iIvMJ2
	b9sR04Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpk9Y-0000000GkrD-2BjI;
	Tue, 10 Feb 2026 09:35:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpk9R-0000000GkpD-24ca
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 09:35:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpk9P-0003jb-O2; Tue, 10 Feb 2026 10:35:19 +0100
Message-ID: <e7c30179-bdbe-49d0-85cf-a415701a53eb@pengutronix.de>
Date: Tue, 10 Feb 2026 10:35:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260206-keytoc-multi-env-v1-1-638fbf2b3634@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260206-keytoc-multi-env-v1-1-638fbf2b3634@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_013525_067217_2321A75D 
X-CRM114-Status: GOOD (  22.12  )
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
Subject: Re: [PATCH RFC] crypto: keytoc: Split env-provided full keyspec on
 spaces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2/6/26 1:28 PM, Jonas Rebmann wrote:
> keytoc/CONFIG_CRYPTO_PUBLIC_KEYS can work with a complete keyspec
> provided by an environment variable as opposed to providing single URIs.
> This would be a very useful feature if it could also provide any number
> of keys. Kconfig however provides keytoc with regular keyspecs already
> split at spaces so without furhter measures, the env variable can only
> be expanded into a single key.
> 
> Work around this by, in the special case of keytoc provided with a
> single environment variable, splitting that single argument at any space
> character that is not escaped with a backslash in front of it.

I think that's sensible. Do we see breakage potential for existing
users? If so, we should have a migration entry about the change in
interpretation of space.

>  	keycount = argc - optind;
> +	keyspecs = argv + optind;
> +
> +	if (keycount == 1 && !strncmp(argv[optind], "__ENV__", 7)) {
> +		char *singlespec = try_resolve_env(keyspecs[0]);
> +		/* include '\0' in length */
> +		int len = strlen(singlespec) + 1;
> +		char *p;
> +
> +		for (p = singlespec; *p; p++) {

Can you copy strsep_unescaped to scripts/ and use that instead?

> +			if (*(p + 1) == ' ') {
> +				if (*p == '\\') {
> +					memmove(p, p + 1, len - 1);
> +					len--;
> +					p++;
> +				} else {
> +					keycount += 1;
> +					*(p + 1) = '\0';
> +					p += 2;
> +					/* ignore subsequent spaces */
> +					while (*p == ' ') {
> +						memmove(p, p + 1, len - 1);
> +						len--;
> +						p++;
> +					}
> +				}
> +			}
> +		}
> +
> +		keyspecs = calloc(sizeof(char *), keycount + 1);
> +		keyspecs[0] = singlespec;
> +		p = singlespec;
> +
> +		for (int i = 1; i < keycount; i++) {
> +			while (*p)
> +				p++;
> +			p++;
> +			keyspecs[i] = p;
> +		}
> +	}
> +
>  	keylist = calloc(sizeof(struct keyinfo), keycount);
>  
>  	for (i = 0; i < keycount; i++) {
> -		const char *keyspec = try_resolve_env(argv[optind + i]);
> +		const char *keyspec = try_resolve_env(keyspecs[i]);
>  		struct keyinfo *info = &keylist[i];
>  
>  		if (!keyspec)
> 
> ---
> base-commit: 89ed19d5c673ad0ab1851ed62ece38d30e96b412
> change-id: 20260206-keytoc-multi-env-4a3300292e4a
> 
> Best regards,
> --  
> Jonas Rebmann <jre@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



