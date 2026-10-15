Delivery-date: Thu, 15 Oct 2026 12:16:28 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHIVf-00DsVt-38
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 12:16:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 72A03201E7D
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 12:16:27 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JfNUCRgU;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Uti622et;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792059387; a=rsa-sha256;
	cv=pass;
	b=M+P6mtudDzTS/y3n/qf90C+74Do5UFyppDmK6fUQDntq5g4Vsu709NJDlEEJyQ75WoaX2u
	d4iR/NBAoIfrAlJiGZtRYe4OUXTXgzqsfn9mCXQpdhanmq2FZ4/BtdnOsqsmanYrZp+DHf
	UCFOg5PABTi4A3JNBnyYWjzFPbePMnGUyWW65funM8K8DpwMZs0Rg0f8wE3KExKkHS5EAA
	qh7TOe08j5JP8MWPLIoOvqS+SRkCPxuGBJMM33ICEe3XBJeOVQ+RgZ5meRjRxOGWAuiMcs
	94ERG6nmo+ebzorA+9J3bam0KuKWfqEjQ8M9IEDcPjaMIUSp02H8d/k+ccE43w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JfNUCRgU;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Uti622et;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792059387;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=Lg/lRSTkXZUcZev0ChmLlu5+f608R2PpNv98FMZkshI=;
	b=NOPiTe+miNnE5CephtAvSMmw/R/a5TJLvFIaoNvXZXKm2lOyiF5SNWFAVdFUVNTgmiNf8X
	MJpfW9eUzIb8Lv59U11+Dxp4rghBqdkcx5qvDN+DrnTyz2p5s0wjE+0h92a26JtJZRu2uN
	ZsV/krkuBRmisRKjaIiKk3ZqA46kP6sG5XT1Lgamxe1e5S81dV3nUQm9M73yEWIUeGUIQd
	gIVCk0tRlOTBmNlBMBcIQliTbCLzu14h0EwFDogZgS7bKu0AG203AqUdmvMdKcXza7a5NY
	Wi5vy9D1Q6WbiuoOD4+XK1cZQbRpdkyUs2nX8pAxFUWj1Z9pU2niPYO3RKzJMw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lg/lRSTkXZUcZev0ChmLlu5+f608R2PpNv98FMZkshI=; b=JfNUCRgU94R5NgC6pJA2COjxtf
	ueKH3VVMPMKQege/gEjrUmsnEG7akEIStoSIjAUo/GFvf0Hx2KxpZz6mc+rLj3NWLJ7FMah03x65L
	x3iMVkh4lR255C1rkJjmirWQtRBof4Br3ezkSy3bJpoQN8r6+iSFOcAS7GtA4ghp7K+WQKMnj/YVG
	sFLR9bjDrT55VH8SFC42uIzC7obNy2+LCubCQqz3NoDPubujSgYn2Q6SQ3xmDrFUhckU/nLXZH3zW
	0jbP0ga1INA6ufabzgx6zTAq0ZWW62e1F04hFAYy/CN4FcfLLY6ajHoXAxZ7B5Lj7DfHVh2ZoCKCQ
	Pp6f1H9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIUC-0000000HPTU-3n3j;
	Thu, 15 Oct 2026 10:14:56 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIU9-0000000HPSr-3iKC
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 10:14:55 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::109])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C04E5200467;
	Thu, 15 Oct 2026 12:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792059291;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Lg/lRSTkXZUcZev0ChmLlu5+f608R2PpNv98FMZkshI=;
	b=Uti622etGUu91CGtChYgZ/PARhLaPiKipPImogRFvqadus8dEjokFCYeLQnuAiHFVgiJEy
	sXwyxwiGcRZHcU4LRVYaeaSafzu3D3KMGLsyk1HW/6u3Db9+PrWhgrjy5ZewnTM6b0NY1W
	XznFcn80auImFiSxywwguTW/r2IUAk72XOpxgslpZB5boLaqw+Q5FRNF9DPp8IoBLuhlcC
	1Z8wdJbO+h+8pgTTD1MN0kgiQSlEg038VPzJ5Hnnfzzto49iORD+KogPj47hYxUY6jV2dR
	Rna3lco6V+YPvDSkStEGaBmLYKpDg4AUA+WqXScCLYl6TWL7l6StwU43ATcXTA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792059291; a=rsa-sha256;
	cv=none;
	b=daRr5tkwfjx04eDG/KnRIc3PrqVbMwabyaje5L1hHjHgvwQHUa4grJYqT0CGTutPCfQhlA
	uMMrNJZNYMiknkDgcOgtR0kKm9HuTj4HoMbZrzH075gYFKb3KI7z8Vi/gX0v2vkzcRWt0C
	IX5v8HxhZkmjTVNJrbBFWqzS3Nm29NOq4iCNxkM5CE1aNDr1p4kAYPwxeiPla/Vn7tFnb9
	X7Jjs1srBxJiXBWKChr/0PfwiMJOAg+V6ZAYoXe4urmQou1G/Tw7sUuKuLw1zTTZTcHyGK
	RkblpdfP5LFbNPbTUxzU+CbOGbPfHX+2+ld9kocU62gN9OgS48HOdwA4hHmL1Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=mfe@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792059291;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Lg/lRSTkXZUcZev0ChmLlu5+f608R2PpNv98FMZkshI=;
	b=a8f7qS9O4dNJFVI6YwiHC/krRAizpHbhlXCdI7OTEc5jdIbt3bzgSKxY66Yo8JdmLtmM19
	aA9ham5n+sChGY88i6TKtXty9dEH7EwHwP6+HE5TstQ8PUUIWSmtdM3R5U/qEEJm8fsqRL
	sDO2uYd3CGFMdiaiyHse73iJ3RgWBDPs7eMuAMmfHyVHRIMhONcS3QZ5aep0bhkfpT+Gwt
	lb+dXon8/vXZjWx/6vnu5QeuKKERccqaBv9AiS2yO6f24x6bhTNBJ3FZfWF1AbGw0hB36L
	htnKnMTyYe1+u5EaaJog9mtjW4hlQVvH89eYSxx+VoB7+bjLswQcCFS/luGbGw==
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1064)
	id A2C9B1C0239; Thu, 15 Oct 2026 12:14:51 +0200 (CEST)
Date: Thu, 15 Oct 2026 12:14:51 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
Subject: Re: [PATCH v2 07/10] efi: payload: pass shell arguments as load
 options to executed images
Message-ID: <i7yppy6p2fg2zee4fyegh7s4sskby6bpcvivcg4fqy6gijbq7h@z6akbpadbuia>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-8-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261015092308.146516-8-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_031454_235551_F3BCFB9A 
X-CRM114-Status: GOOD (  35.70  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 26-10-15 11:18, Ahmad Fatoum wrote: > EFI applications
   executed directly from the shell via the binfmt hook, > e.g. "/boot/shell.efi
    -nostartup", currently have their arguments silently > dropped: [...] 
 
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
	BAYES_HAM(-3.00)[100.00%];
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
X-Rspamd-Queue-Id: 72A03201E7D
X-Stat-Signature: 5hxfi195mjjpmbnz4eposruizzsh9j3t

On 26-10-15 11:18, Ahmad Fatoum wrote:
> EFI applications executed directly from the shell via the binfmt hook,
> e.g. "/boot/shell.efi -nostartup", currently have their arguments silently
> dropped: the only load options ever set are the Linux bootargs and only if
> the image was detected as an EFI-stubbed kernel.
> 
> Serialize the arguments following the image path into the load options
> instead and leave it to the caller of efi_execute_image() to decide what
> the load options should be. bootm keeps passing the Linux bootargs for
> kernel images, but executing a kernel image directly from the shell now
> passes exactly what was typed on the command line, which makes the
> documentation's claim that only bootm passes the kernel command line true
> again.
> 
> The firmware unloads an application as soon as it returns, as does barebox'
> own loader in efi_exit() and EDK2 in CoreStartImage(), so the load options
> may only be cleared for a driver that started successfully and is thus
> still around. The buffer itself belongs to barebox and is freed either way.
> 
> While at it, add the missing space in the "Booting kernel via StartImage
> with options" message.
> 
> Assisted-by: Claude:fable-5
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  efi/payload/bootm.c |  9 ++++++--
>  efi/payload/image.c | 51 ++++++++++++++++++++++++++++++++++-----------
>  efi/payload/image.h |  2 +-
>  3 files changed, 47 insertions(+), 15 deletions(-)
> 
> diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
> index 2bcfd90e42fa..fe2d27b7ff10 100644
> --- a/efi/payload/bootm.c
> +++ b/efi/payload/bootm.c
> @@ -22,6 +22,7 @@
>  #include <string.h>
>  #include <linux/err.h>
>  #include <boot.h>
> +#include <bootargs.h>
>  #include <bootm.h>
>  #include <fs.h>
>  #include <libfile.h>
> @@ -185,7 +186,9 @@ static int do_bootm_efi_stub(struct image_data *data)
>  	if (data->dryrun)
>  		goto unload_ramdisk;
>  
> -	ret = efi_execute_image(handle, loaded_image, true, type);
> +	ret = efi_execute_image(handle, loaded_image, true, type,
> +				filetype_is_linux_efi_image(type) ?
> +				linux_bootargs_get() : NULL);
>  
>  	/* efi_execute_image takes care to unload the image on error,
>  	 * so we set image_freed and fall through to freeing ramdisk
> @@ -225,7 +228,9 @@ static int efi_app_execute(struct image_data *data)
>  		return 0;
>  	}
>  
> -	return efi_execute_image(handle, loaded_image, true, type);
> +	return efi_execute_image(handle, loaded_image, true, type,
> +				 filetype_is_linux_efi_image(type) ?
> +				 linux_bootargs_get() : NULL);
>  }
>  
>  static int linux_efi_handover = true;
> diff --git a/efi/payload/image.c b/efi/payload/image.c
> index 3668a6a04cac..445eaaa587d9 100644
> --- a/efi/payload/image.c
> +++ b/efi/payload/image.c
> @@ -18,7 +18,6 @@
>  #include <malloc.h>
>  #include <string.h>
>  #include <linux/err.h>
> -#include <bootargs.h>
>  #include <bootm.h>
>  #include <fs.h>
>  #include <libfile.h>
> @@ -101,10 +100,10 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
>  int efi_execute_image(efi_handle_t handle,
>  		      struct efi_loaded_image *loaded_image,
>  		      bool is_bootm,
> -		      enum filetype filetype)
> +		      enum filetype filetype, const char *options)
>  {
>  	efi_status_t efiret;
> -	const char *options;
> +	wchar_t *load_options = NULL;
>  	bool is_driver;
>  	bool no_return;
>  
> @@ -118,16 +117,20 @@ int efi_execute_image(efi_handle_t handle,
>  	 */
>  	no_return = is_bootm || filetype_is_linux_efi_image(filetype);
>  
> +	if (options && *options) {
> +		load_options = xstrdup_char_to_wchar(options);
> +		loaded_image->load_options = load_options;
> +		loaded_image->load_options_size =
> +			(strlen(options) + 1) * sizeof(wchar_t);
> +	}
> +
>  	if (filetype_is_linux_efi_image(filetype)) {
> -		options = linux_bootargs_get();
>  		printf("Booting kernel via StartImage");
> -		if (options) {
> -			printf("with options '%s'", options);
> -			loaded_image->load_options = xstrdup_char_to_wchar(options);
> -			loaded_image->load_options_size =
> -				(strlen(options) + 1) * sizeof(wchar_t);
> -		}
> +		if (load_options)
> +			printf(" with options '%s'", options);
>  		printf("...\n");
> +	} else if (load_options) {
> +		pr_debug("Starting image with options '%s'\n", options);
>  	}

Can we please make use one print style either printf() or pr_*()? IMHO
pr_*() is better since this goes into the log buffer which could be
pstore backed.

Furthermore this if-else now is only responsible for handling the print
message, can we make this cleaner?

>  
>  	if (no_return) {
> @@ -150,8 +153,24 @@ int efi_execute_image(efi_handle_t handle,
>  	if (EFI_ERROR(efiret))
>  		pr_err("failed to StartImage: %s\n", efi_strerror(efiret));
>  
> -	if (!is_driver)
> +	/*
> +	 * The firmware unloads an application as soon as it returns, as well as
> +	 * a driver that failed to start, freeing the loaded image protocol with
> +	 * it. Only a still loaded driver's protocol may be touched here, and it
> +	 * must be, as it references the load options we are about to free.
> +	 * Unloading an application that already returned just fails, but is
> +	 * still needed when StartImage failed before running it.
> +	 */
> +	if (is_driver) {
> +		if (!EFI_ERROR(efiret)) {
> +			loaded_image->load_options = NULL;
					^
Don't we have to free this first?

Regards,
  Marco

> +			loaded_image->load_options_size = 0;
> +		}
> +	} else {
>  		BS->unload_image(handle);
> +	}
> +
> +	free(load_options);
>  
>  	efi_connect_all();
>  	efi_register_devices();
> @@ -163,13 +182,21 @@ static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
>  {
>  	struct efi_loaded_image *loaded_image;
>  	efi_handle_t handle;
> +	char *options;
>  	int ret;
>  
>  	ret = efi_load_image(file, &loaded_image, &handle);
>  	if (ret)
>  		return ret;
>  
> -	return efi_execute_image(handle, loaded_image, false, b->type);
> +	/* argv[0] is the image itself, the rest become the load options */
> +	options = strjoin(" ", &argv[1], argc - 1);
> +
> +	ret = efi_execute_image(handle, loaded_image, false, b->type, options);
> +
> +	free(options);
> +
> +	return ret;
>  }
>  
>  static struct binfmt_hook binfmt_efi_hook = {
> diff --git a/efi/payload/image.h b/efi/payload/image.h
> index 33f7e1a21b30..54494c71626a 100644
> --- a/efi/payload/image.h
> +++ b/efi/payload/image.h
> @@ -14,7 +14,7 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
>  int efi_execute_image(efi_handle_t handle,
>  		      struct efi_loaded_image *loaded_image,
>  		      bool is_bootm,
> -		      enum filetype filetype);
> +		      enum filetype filetype, const char *options);
>  
>  extern struct image_handler efi_x86_linux_handle_tr;
>  extern struct image_handler efi_x86_linux_handle_handover;
> -- 
> 2.47.3
> 
> 


