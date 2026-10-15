Delivery-date: Thu, 15 Oct 2026 12:39:36 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHIs4-00Dsqi-1Z
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 12:39:36 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E8B50201ADE
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 12:39:35 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Ud/df8Y7";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IgAP+5xq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792060776; a=rsa-sha256;
	cv=pass;
	b=TzcIKC0Igy8MqlCTpp4DjFulw5wBJu6b0l6xhmjY9Z2DOFMy+LQpIm5FZqSCye04WHk8ZN
	oeUVfQC5YHujtaf2Itc2LPD57tkvaszDjreks9xsrKQnXU2KLT61RsSZiZp9A+j8lx999T
	w3XOtdYSUWxzSpgwEK+p40yn1Ts+6Cqy1NqdqxkJok/45GBvYl446CuHOJ/WIW0HAUxHz7
	26Vu1YZXM4dtDCtFVGr3de6EEWHISCj7xS0JchnXecMvegdnln3YTiPjKs/krezpxvnaHV
	TJxQNUhajxfcbU19r74VrVPnSGiqvfPQAH0suAvAYAoMGUhFzM36YotZmF0Ilw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Ud/df8Y7";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IgAP+5xq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792060776;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ySAGignRN9abUMu7T4deJZNq2dObDdBZE69NMBN60G8=;
	b=BXXzuVCWLNYuPEKyZEAQ47RoZxdFRcO0057GuH8aufFUaZ5lFyKNFYgHwDdYC93WC/KBuT
	CAPOkrtN/Kl5v0y69OK8ZKjtLkfKMToeMAxAEYhSKRp2bYohuyj43VK6/Z/8meMfvv+5cl
	DKkeaUQep6AEMspfoU83oM7cRok6Tw3KKXXnemJow/fC28qHXN+SWEguczSiFtJw/4Uz4k
	TJUbJMHBrSajaVS3eH9BiR4xiFqELvta/au/D0codOsBdWgSaU3Ddmd7/Za0Lf+r1TEJV2
	YYp81YkzqjeG35aCG+/GwzKheH9MeurtcVWcECCvBuTTMTDlGwYZq2iAo7nPEg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ySAGignRN9abUMu7T4deJZNq2dObDdBZE69NMBN60G8=; b=Ud/df8Y7xvMI3BP623QWnSenUz
	kXdLG/FF4XhzXd7LXhe/jTQb7+L1JKDxdbMql7ll5hvoV/0HdVl29gfm9iu2et/74UgEvH5l6Al8E
	WpVakmB8HFsypSBcbEIMV/Mv7m0XR2HACWR7/WfxqTqBkaJaAE7K4sNST/kQsS0WM/NgLn8uogDim
	2tNT4Q0qACPTMonDCcxrFA3etpH4wmYtTfm0sDEttoVB/hFdWThNe4fuZ45QwQQdbvQwb6cVzLh2h
	5ef4aDBt1R80im1RchKqGYS1xzOOcR8UtI3HIJUMyLfjCAT60jNybSU18HWWbP2a4WEpgIbe0AmWr
	cVAYIJbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIqu-0000000HSvH-0VwX;
	Thu, 15 Oct 2026 10:38:24 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIqr-0000000HSun-1Ofn
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 10:38:23 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 823B3201ADE;
	Thu, 15 Oct 2026 12:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792060699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ySAGignRN9abUMu7T4deJZNq2dObDdBZE69NMBN60G8=;
	b=IgAP+5xqM5BAtJjgCww25zhtvTxYPmE2X1NPpFgW7l22sABOiDNXbL2gm6pa/Cqb6BXDaz
	9AVRr9InneIvtcW6W1AxO5gEktdvYiF1zetzjqH9ebBVAB0tT7Mm1T6tqLSXD4Mh8Yd4Sz
	zExhF91vrqtNMXb+Jbooi9LNEAhAREvu7XX54HFsnkif6TRTDvazS1buu52MXNfna5y00Z
	aWJyYocOODyNGLBT8Qy568yYHlFVAwt+uH7vR2BXFqBTEXz06AP89S+J5dx4hmfg2owX4t
	g0g1IlVm76oiWbdSjRkFdLQ8dvxSx8SblhZ+lX6mEbSmtJOVm6yL16zQTKKY2w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792060699; a=rsa-sha256;
	cv=none;
	b=aMvWESMHuwXH4V9vC/IQDkzutn2TxW58fNZIaKP4QPwfTuVmzqCcT7yFf29LM/sN5hRrTb
	05bL75kAoKUmV8aaR207JXz2J4eKrk5RHeC8GhZFSQZ+1Fdh8QyX3t5zTl/TnZRfbGUOU2
	0lXw51ie2rVihSn0PPiQUOq5WSyiVytNKmiKGe/aN/Ir+moUlHY0BwhYVuvDgxJTqRdloU
	UN8U60fRFzVvnONphcHqPIhWDFZn0NBY5AwFbSLqLVslz0RjS/dzfqUhug9eppDq57mF+M
	/AtwfvHdgeo1Y3EWCQaE1g+BJhjZxVcRnKFB2d48Ji1aRyzemNrBcQmYldzWrw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792060699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ySAGignRN9abUMu7T4deJZNq2dObDdBZE69NMBN60G8=;
	b=Bo/z0dJIC0xV5SlJQRgLbEAcjt96jRjf9Q5sHt1Nz7Dlr1XoWj1NMRlHiye+Q4xFi+5lph
	67UA2MC3tvLhuc4lrqEbHqHBwWX8xA7H7xFQWImfOKAbi6dI6SPaX8ugx05KkEDHZ03h+c
	SDNCsFn2yqeDGTsyLf5tR3u8YDlvOAihFYV95Ua0YdPoplCKf67SVWufUyptPvNVHJed0S
	2keqK9CoDcqpX4IWAIpJ7pZN1NbG8Iq+tUC+YWbXDGGOayT3Bk/29j4FVXcUuPouDPYTWA
	/HtPvz8n++Egyv1Ws0GUZkFeQMqQw42ES+RtARzR/sludk1zYjBzoggd8t57EA==
Message-ID: <541112ce-7e1f-4d4a-999c-01d45fd2d07a@pengutronix.de>
Date: Thu, 15 Oct 2026 12:38:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/10] efi: add global.efi.bootargs for bootm'd EFI
 applications
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-9-a.fatoum@pengutronix.de>
 <wyfs2y2iztw76twfpuc6e3wlymeg43jborpsaceum2djko575e@mfon7rs5mnnd>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <wyfs2y2iztw76twfpuc6e3wlymeg43jborpsaceum2djko575e@mfon7rs5mnnd>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_033821_688208_5DDF9B9A 
X-CRM114-Status: GOOD (  30.41  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Marco, On 10/15/26 12:34 PM, Marco Felsch wrote: > On
    26-10-15 11:18, Ahmad Fatoum wrote: >> The load options of an EFI application
    booted via bootm can so far only be >> influenced for EFI-stubbed Linux ker
    [...] 
 
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E8B50201ADE
X-Stat-Signature: ne43owpg6m7fb4xwcxr7efg3zy7tnwmp

Hello Marco,

On 10/15/26 12:34 PM, Marco Felsch wrote:
> On 26-10-15 11:18, Ahmad Fatoum wrote:
>> The load options of an EFI application booted via bootm can so far only be
>> influenced for EFI-stubbed Linux kernels and only via the Linux bootargs.
>> There is no way to pass options to a generic EFI application like a shell
>> or a boot loader, and no way to pass EFI-stub-specific options like initrd=
>> or efi= to a kernel separately from what goes into the Linux bootargs.
>>
>> Add a global.efi.bootargs.* family of variables that works like
>> global.linux.bootargs.*: all variables with that prefix are concatenated in
>> lexicographical order and become the load options of any EFI application
>> booted via bootm. For EFI-stubbed Linux kernels, the Linux bootargs are
>> appended, so the kernel command line becomes
>> "$global.efi.bootargs $global.linux.bootargs".
> 
> Do we need to document this behavior?

It's documented in the magicvar string, which will be extracted into the
online documentation.

>> +/**
>> + * efi_bootargs_get() - compute load options for an EFI application
>> + * @linux_image: whether the image is an EFI-stubbed Linux kernel
>> + *
>> + * All variables beginning with "global.efi.bootargs." are concatenated in
>> + * lexicographical order. For Linux kernels, the Linux bootargs are appended,
>> + * so the EFI stub sees them as the kernel command line.
>> + *
>> + * Return: newly allocated string to be freed by the caller or NULL
>> + */
>> +char *efi_bootargs_get(bool linux_image)
>> +{
>> +	const char *linux_args = NULL;
>> +	char *efi_args, *options;
>> +
>> +	efi_args = globalvar_get_match("efi.bootargs.", " ");
>> +	if (efi_args && !*efi_args) {
> 		^
> 	isempty()?

isempty would be !efi_args || !*efi_args, which is not equivalent.

> 
> Nit: Would be even nicer to have globalvar_get_match_or_null();
> 
>> +		free(efi_args);
>> +		efi_args = NULL;
>> +	}
>> +
>> +	if (linux_image)
>> +		linux_args = linux_bootargs_get();
>> +	if (linux_args && !*linux_args)
> 		^
> 	isempty()?
> 
>> +		linux_args = NULL;
>> +
>> +	if (efi_args && linux_args)
>> +		options = xasprintf("%s %s", efi_args, linux_args);
>> +	else if (linux_args)
>> +		options = xstrdup(linux_args);
>> +	else
>> +		options = efi_args;
>> +
>> +	if (options != efi_args)
>> +		free(efi_args);
> 
> Albeit I'm a fan of clever code, the handling of the 'options' and
> 'efi_args' here is IMHO overcomplicated and it took me far to long to
> review it.

I think it should be possible to simplify this with strjoin. I can give
it a try when you are done with your review.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>> +
>> +	return options;
>> +}
>> +
>> +static int efi_bootargs_init(void)
>> +{
>> +	globalvar_add_simple("efi.bootargs.base", NULL);
>> +
>> +	return 0;
>> +}
>> +late_initcall(efi_bootargs_init);
>> +
>> +BAREBOX_MAGICVAR(global.efi.bootargs.*,
>> +		 "Load options of EFI applications started via bootm. Linux bootargs are appended for EFI-stubbed kernels");
>> +BAREBOX_MAGICVAR(global.efi.bootargs.dyn.*,
>> +		 "Load options set by boot entries. Cleared after each boot entry");
>> diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
>> index a68db742e173..e3d654774831 100644
>> --- a/efi/loader/bootm.c
>> +++ b/efi/loader/bootm.c
>> @@ -13,7 +13,6 @@
>>  #include <init.h>
>>  #include <driver.h>
>>  #include <io.h>
>> -#include <bootargs.h>
>>  #include <malloc.h>
>>  #include <string.h>
>>  #include <linux/err.h>
>> @@ -34,6 +33,7 @@
>>  #include <efi/services.h>
>>  #include <efi/error.h>
>>  #include <efi/initrd.h>
>> +#include <efi/bootargs.h>
>>  #include <efi/devicepath.h>
>>  
>>  /**
>> @@ -199,6 +199,7 @@ static int efi_loader_bootm(struct image_data *data)
>>  	resource_size_t start, end;
>>  	void *load_option = NULL;
>>  	u32 load_option_size = 0;
>> +	char *options;
>>  	efi_handle_t handle;
>>  	struct efi_device_path *file_path = NULL;
>>  	struct efi_event *evt;
>> @@ -215,19 +216,19 @@ static int efi_loader_bootm(struct image_data *data)
>>  	if (IS_ERR(os_res))
>>  		return PTR_ERR(os_res);
>>  
>> -	if (filetype_is_linux_efi_image(data->kernel_type)) {
>> -		const char *options;
>> -
>> -		options = linux_bootargs_get();
>> -		if (options) {
>> -			load_option = xstrdup_char_to_wchar(options);
>> -			load_option_size = (strlen(options) + 1) * sizeof(wchar_t);
>> -		}
>> +	options = efi_bootargs_get(filetype_is_linux_efi_image(data->kernel_type));
>> +	if (options) {
>> +		load_option = xstrdup_char_to_wchar(options);
>> +		load_option_size = (strlen(options) + 1) * sizeof(wchar_t);
>>  	}
>>  
>>  	file_path = efi_dp_from_file(AT_FDCWD, data->os_file);
>>  
>>  	pr_info("Loading %pD\n", file_path);
>> +	if (data->verbose && options)
>> +		pr_info("Load options: %s\n", options);
>> +
>> +	free(options);
>>  
>>  	/* Initialize EFI drivers */
>>  	efiret = efi_init_obj_list();
>> @@ -321,6 +322,14 @@ static int efi_loader_bootm(struct image_data *data)
>>  	/* Control is returned to us, disable EFI watchdog */
>>  	efi_set_watchdog(0);
>>  
>> +	/*
>> +	 * A still loaded driver would keep referencing the load options.
>> +	 * efi_set_load_options() tolerates the already deleted handle of an
>> +	 * application.
>> +	 */
>> +	efi_set_load_options(handle, 0, NULL);
>> +	free(load_option);
>> +
>>  	return -efi_errno(efiret);
>>  
>>  out:
>> diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
>> index fe2d27b7ff10..491bafb66898 100644
>> --- a/efi/payload/bootm.c
>> +++ b/efi/payload/bootm.c
>> @@ -22,7 +22,6 @@
>>  #include <string.h>
>>  #include <linux/err.h>
>>  #include <boot.h>
>> -#include <bootargs.h>
>>  #include <bootm.h>
>>  #include <fs.h>
>>  #include <libfile.h>
>> @@ -32,6 +31,7 @@
>>  #include <efi/payload/driver.h>
>>  #include <efi/error.h>
>>  #include <efi/initrd.h>
>> +#include <efi/bootargs.h>
>>  
>>  #include "image.h"
>>  
>> @@ -167,6 +167,7 @@ static int do_bootm_efi_stub(struct image_data *data)
>>  	bool image_freed = false;
>>  	efi_handle_t handle = NULL; /* silence compiler warning */
>>  	enum filetype type;
>> +	char *options;
>>  	int ret;
>>  
>>  	ret = efi_load_os(data, &loaded_image, &handle);
>> @@ -186,9 +187,11 @@ static int do_bootm_efi_stub(struct image_data *data)
>>  	if (data->dryrun)
>>  		goto unload_ramdisk;
>>  
>> -	ret = efi_execute_image(handle, loaded_image, true, type,
>> -				filetype_is_linux_efi_image(type) ?
>> -				linux_bootargs_get() : NULL);
>> +	options = efi_bootargs_get(filetype_is_linux_efi_image(type));
>> +
>> +	ret = efi_execute_image(handle, loaded_image, true, type, options);
>> +
>> +	free(options);
>>  
>>  	/* efi_execute_image takes care to unload the image on error,
>>  	 * so we set image_freed and fall through to freeing ramdisk
>> @@ -215,6 +218,7 @@ static int efi_app_execute(struct image_data *data)
>>  	struct efi_loaded_image *loaded_image;
>>  	efi_handle_t handle;
>>  	enum filetype type;
>> +	char *options;
>>  	int ret;
>>  
>>  	ret = efi_load_image(data->os_file, &loaded_image, &handle);
>> @@ -223,14 +227,19 @@ static int efi_app_execute(struct image_data *data)
>>  
>>  	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
>>  
>> +	options = efi_bootargs_get(filetype_is_linux_efi_image(type));
>> +
>>  	if (data->dryrun) {
>>  		BS->unload_image(handle);
>> +		free(options);
>>  		return 0;
>>  	}
>>  
>> -	return efi_execute_image(handle, loaded_image, true, type,
>> -				 filetype_is_linux_efi_image(type) ?
>> -				 linux_bootargs_get() : NULL);
>> +	ret = efi_execute_image(handle, loaded_image, true, type, options);
>> +
>> +	free(options);
>> +
>> +	return ret;
>>  }
>>  
>>  static int linux_efi_handover = true;
>> diff --git a/include/efi/bootargs.h b/include/efi/bootargs.h
>> new file mode 100644
>> index 000000000000..dfd17261ff9d
>> --- /dev/null
>> +++ b/include/efi/bootargs.h
>> @@ -0,0 +1,9 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +#ifndef __EFI_BOOTARGS_H
>> +#define __EFI_BOOTARGS_H
>> +
>> +#include <linux/types.h>
>> +
>> +char *efi_bootargs_get(bool linux_image);
>> +
>> +#endif /* __EFI_BOOTARGS_H */
>> diff --git a/test/py/test_shell.py b/test/py/test_shell.py
>> index be746ca205ba..7a3330b16466 100644
>> --- a/test/py/test_shell.py
>> +++ b/test/py/test_shell.py
>> @@ -153,3 +153,29 @@ def test_barebox_test_var_exists(barebox, barebox_config):
>>  
>>      # Clean up
>>      barebox.run_check('rm /tmp/testvars')
>> +
>> +
>> +def test_boot_bootargs_dyn_cleared(barebox, barebox_config):
>> +    skip_disabled(barebox_config, "CONFIG_CMD_BOOT", "CONFIG_CMD_GLOBAL",
>> +                  "CONFIG_CMD_ECHO")
>> +
>> +    barebox.run_check("echo -o /env/boot/dyntest '#!/bin/sh'")
>> +    barebox.run_check("echo -a /env/boot/dyntest "
>> +                      "'global linux.bootargs.dyn.test=linux-dyn'")
>> +    barebox.run_check("echo -a /env/boot/dyntest "
>> +                      "'global efi.bootargs.dyn.test=efi-dyn'")
>> +    barebox.run_check("echo -a /env/boot/dyntest "
>> +                      "'global efi.bootargs.nodyntest=efi-static'")
>> +
>> +    # Run the script, but don't actually boot anything
>> +    barebox.run("boot -d -d dyntest")
>> +
>> +    # .dyn. variables must not leak into subsequent boot entries
>> +    assert barebox.run_check("echo ${global.linux.bootargs.dyn.test}") == [""]
>> +    assert barebox.run_check("echo ${global.efi.bootargs.dyn.test}") == [""]
>> +    # ... but other variables are left alone
>> +    assert barebox.run_check("echo ${global.efi.bootargs.nodyntest}") == \
>> +        ["efi-static"]
>> +
>> +    barebox.run_check("global -r efi.bootargs.nodyntest")
>> +    barebox.run_check("rm /env/boot/dyntest")
>> -- 
>> 2.47.3
>>
>>

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



