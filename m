Delivery-date: Thu, 15 Oct 2026 12:04:01 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHIJd-00Ds58-17
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 12:04:01 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C8701200563
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 12:04:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4+uL9zxl;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=g4igvM5y;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792058641; a=rsa-sha256;
	cv=pass;
	b=F2eCVMUp22xyRazi9hLve3LWk+T9lyJrlrJsQ/NTCK2YP1pYQ5n2Hu4NmlxOzBPISg8hBW
	ylGH7SDBLx9VQ8KDPyC5LQpZH8WQLuzrA2EDUMBEuxTHzq3FnHVW8hqmw6W6IOOXjlAwWE
	TMfh3mfMOjEoopR2PiJ8UhEqOlqsa410/GqvEslvNWTBuLGAtr00PI6oyx9RtYJfEYkCp4
	OiM3MsRo16OYRsRAC/NLErWKJLCoIVH5dZI0u/oFtmrrc4JeBLX1BDvTFzyf7lTFJNhzEh
	AGCm0KsZd6iSQXEey75MLVv3tEhLBXno1wgdB6USkt80HJhNRUAOYHcqIPw7lg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4+uL9zxl;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=g4igvM5y;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792058641;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=334PqcCAKuQnRYON2SuGn0CfMP+ZQxd4cjrtTXNz0Rk=;
	b=URocuna+jd+fbRbjVWjrvFL7045bTaeRh9veucDB+mGtKBswQZkufD18eKrC681zUYJWnd
	J5WahvsLHCL72X1HyENCLTG6uyGi2NiGpQxye5Z/dPPQwFrAEAUS89P6joizMkjoLacmqv
	xNBXJLABj77mEFBE9fu5ThraOmnWPRlvSfBPLhCCif3jTWMHXwkGx4QiV1kRUPS+aU8A22
	8CA6N4rRBnBleZuFbftzMl0O6Sy784npiy62iib/JfCUUkjwUw9jfbbUgzxBm8jakwHZVr
	n75UgrRE961BMXbrU1r2emg2Gkz48VvurRvu0FeHKnccDVaxiBbRTzxfI9FACw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=334PqcCAKuQnRYON2SuGn0CfMP+ZQxd4cjrtTXNz0Rk=; b=4+uL9zxlXvEkjunArNklqAYSLS
	kNvJ1nVTpm0ghm37WLHr+oWKLvu04pw3nU/EmoJ05JH3ZKqd6ZCjohifjLH3owMG5b/v1s2ZD6r4e
	4dPKMViObHk5OE5XtckEXzxAhtXelsbZnTS5/kHJoM+bFpoFsydZqND3Mo+pg80QZ2DoU6eovnT19
	/j21fRZlCHRXG/KKzRYoXWtX8Oqjggd/Gal7BRwxMC+67P8aHfiR+U7L7DbMPSDisHbIKoMxSnRSN
	/oEYn3y2OEFa8gdRGCXB01UuJnFP5DuwA5L00dYNuvDiqfer7Y+7OPOJyvx2rHMYhpi9HT4zmPeOW
	kuTzPmLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIJ5-0000000HNQJ-2Kbe;
	Thu, 15 Oct 2026 10:03:27 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIJ2-0000000HNOz-23SZ
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 10:03:25 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::109])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5B787200563;
	Thu, 15 Oct 2026 12:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792058602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=334PqcCAKuQnRYON2SuGn0CfMP+ZQxd4cjrtTXNz0Rk=;
	b=g4igvM5yFXNPOiL3UWsZ5cqsIHT9DfOIiVtK/yTQ0bdA3dWBU+2DZli0CJDFmhSbnRVWtG
	8nEHn3jSk1X8vs2XriM1CqYN+8wpM4fQMyiigSGxNsOlPdgEFVtZkOQEy5+EN7u9pTiQr7
	KJ7YANPtJrVNfCQGFJ4IVQjFuDtfLpKpuud9MKJ8AVL9Ji2pqMGsl8Dx1R3M4myN8VfwG/
	Qda++vVRpOtK1D7W93dV2FD9cnagpVxkwCuJYDsf1lwnYzBNFB4XU60qk+8VTR5H/LHEiq
	H6MSuzpsbF6qpe15y1OB9UtY4Rqvowos9KFprZducDfGkqLvmPL9BhGApAsZIg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792058602; a=rsa-sha256;
	cv=none;
	b=NCHKCK8oOMaMnIZZccnrZZUa7ma7EIkDmbjlQ1tQkWpBqQ8mdGJrZZ0kWBXz45Zzn3DdMI
	B99Lp7esSu700r/1eJFTCdh13XcO/NMWAwtLuvdaG+AUda57pie3849gsguKz9BUpYgKWR
	uFs4UEfREKisSEbP/ifZVfDx1HGti1cS2qOrbpuBFaZ2UcguULPDJ/fXhMw7VjzT8J/PuV
	qXyMPLze3Hb6QsV5Fv6aZpYCZzVn4MJyw5CEqQxtBN6U5sUXcVY1biEIOLPYWptVDMVpH4
	znTv31lf5RPrzvoKiAPmBnnWdEi7Ec88taZJpkBz7Be3tMvyZeVrOgUZTE/xDg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=mfe@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792058602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=334PqcCAKuQnRYON2SuGn0CfMP+ZQxd4cjrtTXNz0Rk=;
	b=KMAxssSE+vfOHT/obUrQdAEABTajnyMwGRU6ETpYfN1kmx5QZXScx/ZQ5Z2VKJYOWQg+R/
	GCAXjOLD29JcRJnhyK4JORbU+w9RWysKUB3O7G6BkrMFWKIF2suy2+Fhde+0dom+WrRI4X
	huoa82Vn1OX/walkIaIo7S+z3d5RfEOHyER/HYGzonb5cWq+McZOKH2gIbbLpxAMi5qpjb
	S0iWizIZ02R5U3nbmEoT0vL8HVunmTQ5tGi4QIb6YELBVRSI8IqMpQk+FhtP4NUKAqUc0n
	vfOy2/i/rQddjLPEeWGujWMVF8/0ewLCIwrBqzWI9TM4Xs+4z3A+pS88rA9OUw==
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1064)
	id 3EDF91BFDD5; Thu, 15 Oct 2026 12:03:22 +0200 (CEST)
Date: Thu, 15 Oct 2026 12:03:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
Subject: Re: [PATCH v2 06/10] efi: payload: always shutdown barebox when
 booting
Message-ID: <xegcat65u56xkau4j66pymdce4g6ip4ofxc6b4jfj6hf7rca5u@nvfxwxpmv3l2>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261015092308.146516-7-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_030324_709531_A3D58FE2 
X-CRM114-Status: GOOD (  28.61  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Ahmad, On 26-10-15 11:18, Ahmad Fatoum wrote: > When barebox
    is about to boot a kernel image, it calls shutdown_barebox > and then starts
    the image. When the kernel image is wrapped in a UKI, > barebox will [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-59.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C8701200563
X-Stat-Signature: ob6dm9yznhu4tqiojo9bpagwmrcy4x1a

Hi Ahmad,

On 26-10-15 11:18, Ahmad Fatoum wrote:
> When barebox is about to boot a kernel image, it calls shutdown_barebox
> and then starts the image. When the kernel image is wrapped in a UKI,
> barebox will not detect it as a kernel image and will thus not call
> shutdown_barebox beforehand, which can mean that e.g. state is not
> flushed.
> 
> We do not want to treat UKIs completely like kernels (e.g. we do not
> want to override their built-in bootargs), but we still want to properly
> shutdown barebox.

But it's still possible to pass further kernel commandline arguments to
an UKI?

Regards,
  Marco

> 
> Resolve this by shutting down barebox whenever we are in a bootm handler,
> no matter which kind of image is about to be started: bootm is the point
> of no return. Images run from the shell via binfmt keep returning to
> barebox afterwards, with the exception of EFI-stubbed kernels, which take
> over the machine and thus continue to shut barebox down as before.
> 
> Assisted-by: Claude:opus-5
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  efi/payload/bootm.c |  4 ++--
>  efi/payload/image.c | 21 +++++++++++++++------
>  efi/payload/image.h |  1 +
>  3 files changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
> index 3168e07a3dc1..2bcfd90e42fa 100644
> --- a/efi/payload/bootm.c
> +++ b/efi/payload/bootm.c
> @@ -185,7 +185,7 @@ static int do_bootm_efi_stub(struct image_data *data)
>  	if (data->dryrun)
>  		goto unload_ramdisk;
>  
> -	ret = efi_execute_image(handle, loaded_image, type);
> +	ret = efi_execute_image(handle, loaded_image, true, type);
>  
>  	/* efi_execute_image takes care to unload the image on error,
>  	 * so we set image_freed and fall through to freeing ramdisk
> @@ -225,7 +225,7 @@ static int efi_app_execute(struct image_data *data)
>  		return 0;
>  	}
>  
> -	return efi_execute_image(handle, loaded_image, type);
> +	return efi_execute_image(handle, loaded_image, true, type);
>  }
>  
>  static int linux_efi_handover = true;
> diff --git a/efi/payload/image.c b/efi/payload/image.c
> index 378709b6de95..3668a6a04cac 100644
> --- a/efi/payload/image.c
> +++ b/efi/payload/image.c
> @@ -100,15 +100,24 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
>  
>  int efi_execute_image(efi_handle_t handle,
>  		      struct efi_loaded_image *loaded_image,
> +		      bool is_bootm,
>  		      enum filetype filetype)
>  {
>  	efi_status_t efiret;
>  	const char *options;
> -	bool is_driver, is_kernel = false;
> +	bool is_driver;
> +	bool no_return;
>  
>  	is_driver = (loaded_image->image_code_type == EFI_BOOT_SERVICES_CODE) ||
>  		(loaded_image->image_code_type == EFI_RUNTIME_SERVICES_CODE);
>  
> +	/*
> +	 * A bootm handler is the point of no return, but an EFI-stubbed kernel
> +	 * started from the shell takes over the machine just the same, so
> +	 * barebox needs to be shut down in both cases.
> +	 */
> +	no_return = is_bootm || filetype_is_linux_efi_image(filetype);
> +
>  	if (filetype_is_linux_efi_image(filetype)) {
>  		options = linux_bootargs_get();
>  		printf("Booting kernel via StartImage");
> @@ -119,11 +128,11 @@ int efi_execute_image(efi_handle_t handle,
>  				(strlen(options) + 1) * sizeof(wchar_t);
>  		}
>  		printf("...\n");
> +	}
>  
> +	if (no_return) {
>  		efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
>  				      ktime_to_us(ktime_get()));
> -
> -		is_kernel = true;
>  		shutdown_barebox();
>  	}
>  
> @@ -133,8 +142,8 @@ int efi_execute_image(efi_handle_t handle,
>  
>  	efi_continue_devices();
>  
> -	if (is_kernel) {
> -		pr_emerg("Kernel image has unexpectedly returned\n");
> +	if (no_return) {
> +		pr_emerg("Boot image has unexpectedly returned\n");
>  		BS->exit(efi_parent_image, efiret, 0, NULL);
>  	}
>  
> @@ -160,7 +169,7 @@ static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
>  	if (ret)
>  		return ret;
>  
> -	return efi_execute_image(handle, loaded_image, b->type);
> +	return efi_execute_image(handle, loaded_image, false, b->type);
>  }
>  
>  static struct binfmt_hook binfmt_efi_hook = {
> diff --git a/efi/payload/image.h b/efi/payload/image.h
> index bab1be368c21..33f7e1a21b30 100644
> --- a/efi/payload/image.h
> +++ b/efi/payload/image.h
> @@ -13,6 +13,7 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
>  
>  int efi_execute_image(efi_handle_t handle,
>  		      struct efi_loaded_image *loaded_image,
> +		      bool is_bootm,
>  		      enum filetype filetype);
>  
>  extern struct image_handler efi_x86_linux_handle_tr;
> -- 
> 2.47.3
> 
> 


