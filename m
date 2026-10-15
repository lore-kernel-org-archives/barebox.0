Delivery-date: Thu, 15 Oct 2026 12:17:10 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHIWM-00DsX6-2l
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 12:17:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 39DFC2004B4
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 12:17:10 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=g0gn8ArN;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Y8uxWago;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792059430; a=rsa-sha256;
	cv=pass;
	b=Cbdz6SoHZeEkWc/tRrcZuHNKIMbjbRxxlzcfdq2CdLZtQhT9iS12vNHHGV88hAvIKUz/3Z
	l2kx13g9C6I+Oz8/W+7PoNsiwjCYK0eEfeCr5xb7lZMfETEc/fe2Qbu9YyLlGOsODuqO8r
	CMHsGupvcQGBdZ0FElWxRzrq+UbRklo5WXlhlY3wz5OgLSOpThNTIV1N90adIp08qMeO9y
	SasUiXe8tSHelsRVHeyhnpMhvdMFe0qBs+108iZ9mgaM4lqNL1OaA3nOC71kKwS9PHrFQQ
	7EEPKizBxR9KjbiOUIujfAfHxTcjPNxgw6Llk+cM3CA/GJIt3sYwaLZfSCC/ZA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=g0gn8ArN;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Y8uxWago;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792059430;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=M0sS+hDZvyaqx0A1ynipaaM9bH7HGNNf+zDjxsQsOWg=;
	b=H1lVZoqkv6NZ5dleDgiE/LR1iJ9TIKeiHkz7wP2vJcQ9+nKLtgpGZCHUgCh830hzexYHov
	CiDpHoaUaqGiDTQRpkx0zUhIzGaiDMqHKpitG7bjDAkYpUGP0LGCDm3VAOOSdgPlRppOAp
	LQTp+1cbvrHbF7x/QFSmqF2xNgZ2W6554RiAaBoOHEXpp9LQTbTcnoK37Pej9b574vJuYl
	p7TjCS4MFhZnoTOacyXum+cVveWa4kN4XqSUzju8F90f9rP3Z/4GJTStmMn40h+KOC3/Bd
	tntbnghVo6I/nGVa8wg4AksFg2GT9hzQeEzYRe0lb6d5qqwgeLObUVubNLDo2w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M0sS+hDZvyaqx0A1ynipaaM9bH7HGNNf+zDjxsQsOWg=; b=g0gn8ArNXB42brUiAFybA9S7H/
	JnwSjSP1VKfEWqi7JNfa1xP3Kxme/pPXA5TillpAk4PfROnB2OpP4oRtl0yW+/3C5DtJPz/x1H6Ee
	B9HTSsIf7yPMnMau611REidZEwrLOM9H2NQSHrIt+GCUMrWfQgoIcxZSKfRAHkgwdYZMm1err64Xn
	UFgwp2Tcq8eginX85zG0yOhX426UYap91glJmzqKfM/6g/YnAKl7/hmigLeoOPeYdcs9WeY7HvJ+W
	ckUfh5FApnpLEyiMed268UM52WThCtiBthzkn+H/cvqTR9a8WF2KlJEhxfQ2Wjq9P65a+LFLn3G08
	Hr1ns2Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIVu-0000000HPiM-1Fjt;
	Thu, 15 Oct 2026 10:16:42 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIVr-0000000HPhS-1Uhs
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 10:16:41 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8466E200073;
	Thu, 15 Oct 2026 12:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792059397;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=M0sS+hDZvyaqx0A1ynipaaM9bH7HGNNf+zDjxsQsOWg=;
	b=Y8uxWagoStNRcnGL206Dvx2Ukj6ffF/e6WpsZ/mlZwLScCZFkEN++kZIMG2XvTyPV2kKcS
	vhl/gUYSy8D1IHzb4fEmRvi2LqhsJIGaspM3vCpIviRisQMh6v8oBA6PbZZJNOLpWvKFKA
	4FDbQKG2FPmjxqL8VjTSDabuFrNpVQ+f2l70bxY7fsv8gICJK1ciQTq0+3AAQs7JSuAO/Q
	fM9AX0kDEJL3GgrxiXd+7iabV8SnK3WWtnVqd1Q1T/QSjql9ACeDBBdFudVMl4CKZJWuLU
	z1tcurOPiUpG0GRmNTuODBgFzykW2U3RvWjveIkIAC0ef2P46m++XGqVGzIilw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792059397; a=rsa-sha256;
	cv=none;
	b=RfPr9WlrWy6d1aaRkJYMYC0HtJeIqZm9+6+3SJ8hGrX9pSsvUq+rqrg7cvix6sLhM7HdCY
	SQr3S5CNyhTh4GfnODiGYLWelByUKPrUx5QBh8q+YIUVe10EQB2+vEn8/QqH8ibsznjNa4
	/62HcDihIY7oZNWpRBuqmYxVpkap3eEoydYWLVPKCWFq6AVMb31oKixCfQmoS9zHB/qxGK
	jDHgvpLpwDLR63BEN/QMsTIj7hsJLZ+yj1wOXfvA3rSkp48g3RvxFwObAJ9axd3W+x27r8
	rafPagelrq4NngCYNTzp6/ClLuz5pt+N+edRLQfCG9wwARNJlu78zQIKTP46Eg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792059397;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=M0sS+hDZvyaqx0A1ynipaaM9bH7HGNNf+zDjxsQsOWg=;
	b=EyIBgLN/awGyn+Vb6ZCOQYqYCx3PDiqmZ3EKqjOOSUHGNpMDssPs9mhbwz8yTndXBJwbms
	fz+av2+i3KAraV1zE6gibv47NB2kleuaIJsFfg3Vlcc+nfc5QS0qv4+TVR+yFDjewBZo7G
	MJBb9jw3/0cPoWNmDWLq5ap+I85ywP2jP5q6X6EdhB5W0OrXx7sAsviMNJhTQr/CdRZJhX
	DPUmyuOkIMnaBxBcx7sAAjFUmgsOnzoxlrjaYQz5WKVKie8ynl6yeev9sI1bXIIrOHgJhK
	8Hie7E4bN29vHDBGiIqUXoOcmnfzkV5uf+3CBrjfytCECc0/edoaSMEYNw5/MA==
Message-ID: <6e786db1-2fa6-4435-a0c6-21e20d5b2938@pengutronix.de>
Date: Thu, 15 Oct 2026 12:16:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/10] efi: payload: always shutdown barebox when
 booting
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-7-a.fatoum@pengutronix.de>
 <xegcat65u56xkau4j66pymdce4g6ip4ofxc6b4jfj6hf7rca5u@nvfxwxpmv3l2>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <xegcat65u56xkau4j66pymdce4g6ip4ofxc6b4jfj6hf7rca5u@nvfxwxpmv3l2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_031639_577391_68C9ACF6 
X-CRM114-Status: GOOD (  27.87  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 10/15/26 12:03 PM, Marco Felsch wrote: > Hi Ahmad,
   > > On 26-10-15 11:18, Ahmad Fatoum wrote: >> When barebox is about to boot
    a kernel image, it calls shutdown_barebox >> and then starts the image [...]
    
 
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
X-Rspamd-Queue-Id: 39DFC2004B4
X-Stat-Signature: 5tisrobbwfw5sc4dr5uebm14fdpcq6cn

Hi,

On 10/15/26 12:03 PM, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 26-10-15 11:18, Ahmad Fatoum wrote:
>> When barebox is about to boot a kernel image, it calls shutdown_barebox
>> and then starts the image. When the kernel image is wrapped in a UKI,
>> barebox will not detect it as a kernel image and will thus not call
>> shutdown_barebox beforehand, which can mean that e.g. state is not
>> flushed.
>>
>> We do not want to treat UKIs completely like kernels (e.g. we do not
>> want to override their built-in bootargs), but we still want to properly
>> shutdown barebox.
> 
> But it's still possible to pass further kernel commandline arguments to
> an UKI?

Only by explicit decision via global.efi.bootargs added in a later
commit. Quoting systemd-stub man page:

If UEFI SecureBoot is enabled and the ".cmdline" section is present in
the executed image, any attempts to override the kernel command line by
passing one as invocation parameters to the EFI binary are ignored.
Thus, in order to allow overriding the kernel command line, either
disable UEFI SecureBoot, or do not include a kernel command line PE
section in the kernel image file.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>
>> Resolve this by shutting down barebox whenever we are in a bootm handler,
>> no matter which kind of image is about to be started: bootm is the point
>> of no return. Images run from the shell via binfmt keep returning to
>> barebox afterwards, with the exception of EFI-stubbed kernels, which take
>> over the machine and thus continue to shut barebox down as before.
>>
>> Assisted-by: Claude:opus-5
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  efi/payload/bootm.c |  4 ++--
>>  efi/payload/image.c | 21 +++++++++++++++------
>>  efi/payload/image.h |  1 +
>>  3 files changed, 18 insertions(+), 8 deletions(-)
>>
>> diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
>> index 3168e07a3dc1..2bcfd90e42fa 100644
>> --- a/efi/payload/bootm.c
>> +++ b/efi/payload/bootm.c
>> @@ -185,7 +185,7 @@ static int do_bootm_efi_stub(struct image_data *data)
>>  	if (data->dryrun)
>>  		goto unload_ramdisk;
>>  
>> -	ret = efi_execute_image(handle, loaded_image, type);
>> +	ret = efi_execute_image(handle, loaded_image, true, type);
>>  
>>  	/* efi_execute_image takes care to unload the image on error,
>>  	 * so we set image_freed and fall through to freeing ramdisk
>> @@ -225,7 +225,7 @@ static int efi_app_execute(struct image_data *data)
>>  		return 0;
>>  	}
>>  
>> -	return efi_execute_image(handle, loaded_image, type);
>> +	return efi_execute_image(handle, loaded_image, true, type);
>>  }
>>  
>>  static int linux_efi_handover = true;
>> diff --git a/efi/payload/image.c b/efi/payload/image.c
>> index 378709b6de95..3668a6a04cac 100644
>> --- a/efi/payload/image.c
>> +++ b/efi/payload/image.c
>> @@ -100,15 +100,24 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
>>  
>>  int efi_execute_image(efi_handle_t handle,
>>  		      struct efi_loaded_image *loaded_image,
>> +		      bool is_bootm,
>>  		      enum filetype filetype)
>>  {
>>  	efi_status_t efiret;
>>  	const char *options;
>> -	bool is_driver, is_kernel = false;
>> +	bool is_driver;
>> +	bool no_return;
>>  
>>  	is_driver = (loaded_image->image_code_type == EFI_BOOT_SERVICES_CODE) ||
>>  		(loaded_image->image_code_type == EFI_RUNTIME_SERVICES_CODE);
>>  
>> +	/*
>> +	 * A bootm handler is the point of no return, but an EFI-stubbed kernel
>> +	 * started from the shell takes over the machine just the same, so
>> +	 * barebox needs to be shut down in both cases.
>> +	 */
>> +	no_return = is_bootm || filetype_is_linux_efi_image(filetype);
>> +
>>  	if (filetype_is_linux_efi_image(filetype)) {
>>  		options = linux_bootargs_get();
>>  		printf("Booting kernel via StartImage");
>> @@ -119,11 +128,11 @@ int efi_execute_image(efi_handle_t handle,
>>  				(strlen(options) + 1) * sizeof(wchar_t);
>>  		}
>>  		printf("...\n");
>> +	}
>>  
>> +	if (no_return) {
>>  		efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
>>  				      ktime_to_us(ktime_get()));
>> -
>> -		is_kernel = true;
>>  		shutdown_barebox();
>>  	}
>>  
>> @@ -133,8 +142,8 @@ int efi_execute_image(efi_handle_t handle,
>>  
>>  	efi_continue_devices();
>>  
>> -	if (is_kernel) {
>> -		pr_emerg("Kernel image has unexpectedly returned\n");
>> +	if (no_return) {
>> +		pr_emerg("Boot image has unexpectedly returned\n");
>>  		BS->exit(efi_parent_image, efiret, 0, NULL);
>>  	}
>>  
>> @@ -160,7 +169,7 @@ static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
>>  	if (ret)
>>  		return ret;
>>  
>> -	return efi_execute_image(handle, loaded_image, b->type);
>> +	return efi_execute_image(handle, loaded_image, false, b->type);
>>  }
>>  
>>  static struct binfmt_hook binfmt_efi_hook = {
>> diff --git a/efi/payload/image.h b/efi/payload/image.h
>> index bab1be368c21..33f7e1a21b30 100644
>> --- a/efi/payload/image.h
>> +++ b/efi/payload/image.h
>> @@ -13,6 +13,7 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
>>  
>>  int efi_execute_image(efi_handle_t handle,
>>  		      struct efi_loaded_image *loaded_image,
>> +		      bool is_bootm,
>>  		      enum filetype filetype);
>>  
>>  extern struct image_handler efi_x86_linux_handle_tr;
>> -- 
>> 2.47.3
>>
>>

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



