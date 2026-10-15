Delivery-date: Thu, 15 Oct 2026 12:26:20 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHIfE-00DseX-2X
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 12:26:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0F84A201D35
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 12:26:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2Y2q6pIF;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=f6bWk1KS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792059980; a=rsa-sha256;
	cv=pass;
	b=GLTullmwPO6Bo18VSI28MOXkizRDizju1v34Q0mz3+QbCR0i9oqJIAkXcoAY/K3MYmJ3r3
	NVEmcvozG46zz0DPgxlO/7bpX5DzRWh+/XIrg+ndRraf+JhP5IUjP8JcDnLkqqlwnXXMSs
	q0wH2+btjNICdL4F6pGz5H+zTMnxcdnNK7k62UNGInNoVDR72Dq1ugTqrBwY8mJcU5jf5Y
	yqwfw6rBIn19n2U6KfXMTuCBpo+lkLouMiZv731NnXAJnSzgLb8xUHWKfM6p5mgpPx/mBk
	7rv7axDWTn+pWKGMSV/8qjofHObyYh4axW1jM6rwji0xJPWeAWyqFHI8xeqGVA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2Y2q6pIF;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=f6bWk1KS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792059980;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=McXwNo+uRCRKOnVzrkTcYVAyQoZTfWrI1EsaK4+LKyg=;
	b=O3iU9RnYG9fejW5zSkaQQtaJLOzX1prSBUXS9xOk5XSd4/x9qFYJp6/p8jygtBp0ACCDri
	PqrAHIvZHoHdPwFYxVeteXzFcFhmkN05Xd6MGjDBR0iUPNo+xeNSxOVkQmpjoC9cCMjsDf
	a5ioX2g/mTOVzCmtxrQIJYbJL171ejPNJp6npSb3Lhg4HWeMaLOKTmO6NH2UEumq0Gd7ia
	Q/wzg9G7n5zeEelS5QwVe3sAZEP8PnlG32sxnDjCWuy0suCVzSmQVh8esYBI9+BTbWRG/V
	HpYdnkjWJHhTiZTuOEFsR27lykk5pFwW2IqHp4VWE+OPKsmbkRi6uKJTOEohaQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=McXwNo+uRCRKOnVzrkTcYVAyQoZTfWrI1EsaK4+LKyg=; b=2Y2q6pIFdXsBaYtjTgHj2PyaMp
	xG5MABA/nF9rmQY2GuDODPQnB921WAsRrpyNHEW8YDuS38pgTYJWzwncPVEktrwa/XjMs5A9Y2x+v
	qV2VDZGXBwfirIc9/6OaT2MX8B00QU6Boa9X4XLpLK0u8zQ42gE/d3xKxNYeeDrFVgiVJbvhX7ccj
	0BnwuCh8o3dHWd12iAuG2Z0kPn9ZxEgq8y2lFPIhaN902V6/nS+nsfUNdB162dtvl5EOsa2+JPTqH
	UGXSPgzSEYwvMqOCl5A0cUQTYxL1U+aGc5E4bHKTw1C41tAwKe0UppLLkoGEBryaVZUmee7PoAKJQ
	YnSmBruw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIe4-0000000HQp2-0lAI;
	Thu, 15 Oct 2026 10:25:08 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIe0-0000000HQo8-3IvO
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 10:25:06 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C0F68200467;
	Thu, 15 Oct 2026 12:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792059903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=McXwNo+uRCRKOnVzrkTcYVAyQoZTfWrI1EsaK4+LKyg=;
	b=f6bWk1KStz91hDGKi3+tlFYltg5euXEoPlarv5CCexmjmeDsSuHO5vEJynUogiYO00tUJA
	VgjHNUauYybficpc6N0PywruYhh61nPGOfH8GCQ14muIVgVg47lCa4R398NTWhpEfQ6Ee5
	kSTpCSzWuEII74x8wHi6FZEiQ8VSXnAt3CH+6jb4TNJBpTpN2xn+OuyYeVaIqtUAdWSuW9
	5dtgHaurf8Qn7yd+/EPWAvT57TsoQnRumntit1CEJFNWqu5sNmeLrofr1ZYvXZsTI9bnNt
	svT+uqKr44HT+ToDCZKemqRoQN1JhltqeSYQirYAt6MQ3s+fxC25SAqXhwx0kg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792059903; a=rsa-sha256;
	cv=none;
	b=AgjdHygGHogbOgI3on+Q8XYJHszlZxKDwUv6RxzGlJc9GQTY9KJa/+7cEmZMCQnbfFvP09
	uuIf8aVimYi9h7BIZDc7ebP9YteReOPF81fwc6WTD01HeVOBdR9hJ6BPX2buBgxvQk9m3y
	NZZyabSRs8sAc9iBHChs/AfWtzGfXF/YgyAVks2e0jXnJB8MeI2VrYdE7nyeipete+kBoU
	qWJK+31zdqCxI0fM9aIiChLZ0ihoixY2WKMxCZJN/uR1GzkDhldYWvGYJsfMh0HLlZZed1
	wwpB5HBXzNrZRHX/AhEiaCAaoEQW4cJpyS+w3+1mF7tqNrnB+ryVlxmsSsjgJA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792059903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=McXwNo+uRCRKOnVzrkTcYVAyQoZTfWrI1EsaK4+LKyg=;
	b=ZqCmjFBZ3gIVLN0BmjMNLAJYJPvUomHN83P+6JTHjH6L5lkEiT9IwsT+uD6ZC18Elpynha
	jfhIAdQW2PhCE6HpoEzDriJIN+Zh9D6lJz+OJ6KwDOkJ0MHiBOvL0qIBkgfkwHtPv68IWy
	7OdrzbeQ6ONaK53JZbF8KBTDLWgxKh7b82xZNDsSHRsSlCEYbTzGzE+d8ySKxGqL5n+K7z
	DLLB8hBE+AKwKBU2jG8+emFMnOzKzosd8J+6VX/Ui9BUt3t6jVinwIShlRgI2FaNeNFMxm
	0idm6WyZ7+qOB5fxHTaDUBtSjvX25EqKxhw+W3WFlB+IcZKXVm3Q9oO3uhCbOA==
Message-ID: <210ca087-2e99-4bb5-8d25-a774fff5920e@pengutronix.de>
Date: Thu, 15 Oct 2026 12:25:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/10] efi: payload: pass shell arguments as load
 options to executed images
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-8-a.fatoum@pengutronix.de>
 <i7yppy6p2fg2zee4fyegh7s4sskby6bpcvivcg4fqy6gijbq7h@z6akbpadbuia>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <i7yppy6p2fg2zee4fyegh7s4sskby6bpcvivcg4fqy6gijbq7h@z6akbpadbuia>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_032504_991896_85D4E14F 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Marco, On 10/15/26 12:14 PM, Marco Felsch wrote: > On
    26-10-15 11:18, Ahmad Fatoum wrote: >> if (filetype_is_linux_efi_image(filetype))
    { >> - options = linux_bootargs_get(); >> printf("Booting kernel via St [...]
    
 
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
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
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
X-Rspamd-Queue-Id: 0F84A201D35
X-Stat-Signature: rgqsmjubqonojwss6w4crarf3p5ij3e3

Hello Marco,

On 10/15/26 12:14 PM, Marco Felsch wrote:
> On 26-10-15 11:18, Ahmad Fatoum wrote:
>>  	if (filetype_is_linux_efi_image(filetype)) {
>> -		options = linux_bootargs_get();
>>  		printf("Booting kernel via StartImage");
>> -		if (options) {
>> -			printf("with options '%s'", options);
>> -			loaded_image->load_options = xstrdup_char_to_wchar(options);
>> -			loaded_image->load_options_size =
>> -				(strlen(options) + 1) * sizeof(wchar_t);
>> -		}
>> +		if (load_options)
>> +			printf(" with options '%s'", options);
>>  		printf("...\n");
>> +	} else if (load_options) {
>> +		pr_debug("Starting image with options '%s'\n", options);
>>  	}
> 
> Can we please make use one print style either printf() or pr_*()? IMHO
> pr_*() is better since this goes into the log buffer which could be
> pstore backed.

This is consistent with how we do it for ARM64 and ARM32. An argument in
favor of printf is that test suites often match against these strings as
these are the final strings output by barebox prior to kernel boot.

Having the log level hide them would break this. I don't think it's the
purpose of this series to deviate from this.

> Furthermore this if-else now is only responsible for handling the print
> message, can we make this cleaner?

I don't understand what you mean by this.

>> -	if (!is_driver)
>> +	/*
>> +	 * The firmware unloads an application as soon as it returns, as well as
>> +	 * a driver that failed to start, freeing the loaded image protocol with
>> +	 * it. Only a still loaded driver's protocol may be touched here, and it
>> +	 * must be, as it references the load options we are about to free.
>> +	 * Unloading an application that already returned just fails, but is
>> +	 * still needed when StartImage failed before running it.
>> +	 */
>> +	if (is_driver) {
>> +		if (!EFI_ERROR(efiret)) {
>> +			loaded_image->load_options = NULL;
> 					^
> Don't we have to free this first?

See comment above. This pointer is dangling as the firmware would free
the load options on successful termination.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>> +			loaded_image->load_options_size = 0;
>> +		}
>> +	} else {
>>  		BS->unload_image(handle);
>> +	}
>> +
>> +	free(load_options);
>>  
>>  	efi_connect_all();
>>  	efi_register_devices();
>> @@ -163,13 +182,21 @@ static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
>>  {
>>  	struct efi_loaded_image *loaded_image;
>>  	efi_handle_t handle;
>> +	char *options;
>>  	int ret;
>>  
>>  	ret = efi_load_image(file, &loaded_image, &handle);
>>  	if (ret)
>>  		return ret;
>>  
>> -	return efi_execute_image(handle, loaded_image, false, b->type);
>> +	/* argv[0] is the image itself, the rest become the load options */
>> +	options = strjoin(" ", &argv[1], argc - 1);
>> +
>> +	ret = efi_execute_image(handle, loaded_image, false, b->type, options);
>> +
>> +	free(options);
>> +
>> +	return ret;
>>  }
>>  
>>  static struct binfmt_hook binfmt_efi_hook = {
>> diff --git a/efi/payload/image.h b/efi/payload/image.h
>> index 33f7e1a21b30..54494c71626a 100644
>> --- a/efi/payload/image.h
>> +++ b/efi/payload/image.h
>> @@ -14,7 +14,7 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
>>  int efi_execute_image(efi_handle_t handle,
>>  		      struct efi_loaded_image *loaded_image,
>>  		      bool is_bootm,
>> -		      enum filetype filetype);
>> +		      enum filetype filetype, const char *options);
>>  
>>  extern struct image_handler efi_x86_linux_handle_tr;
>>  extern struct image_handler efi_x86_linux_handle_handover;
>> -- 
>> 2.47.3
>>
>>

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



