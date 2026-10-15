Delivery-date: Thu, 15 Oct 2026 12:50:57 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJ33-00Dt4x-1k
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 12:50:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 07008201BC6
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 12:50:57 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=mEj4SpeW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="bR/uwnWJ";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792061457; a=rsa-sha256;
	cv=pass;
	b=UeZMCFPtp8s/VWWBubThK3b1l4QVCkc3PRc1JV099mD3bxzs+eFw2xwxqsLRDlpvCo9RX+
	X5s3VVv4b4lhDILfK36JrLWnQ5TFxi3+opnUEr4keHwEMyExlcFMa5UQzSGqJMFpRoSN/L
	hY8tCLDhs3OHcq/EYRh37xMe8pPVuuz5Tb7LfPZu/watf15gWO/UgmuRonDQEhfLRWgzUP
	q3DWJtxjk+3xNSXxfzAlIYLzqn6iPy7HpMoL2igVU9UI9kaAF9jW13Kll3OnnaiHk/5n45
	uvVhK+5cwxroStH+DiX8wn9jcZpruaN+qj2Xu1zzZi1fKL4Ftb0c2BJU/DizbQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=mEj4SpeW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="bR/uwnWJ";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792061457;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=Saz85SEtR3HvWRzkWkUwj1nB0q7gEyL1yo2WCIFQiiA=;
	b=TqsbnpQ6cdp245ejZSmTyJN64oiJfprgVCkAmyWVuSEzrerlgQdouXEMaJPIyZoZnITsDL
	ZuLqr04gdT/v4QZhL2kF3XOIzifUdVE+HRoJJDOzeEXaSbOF1yNTYh7umCvaOxxgBfSDOK
	Gnxkm0ab5wvh3BYSfTenSn2SPC/QR+ZNKiY+BGUCAV2vsQ9eTT90vguCSssfy88nHVrFGV
	BbmZr8VeDul/5H1hK80xOyd+fAmFg9s1+aoW7dWeWbGyhtGDPg56d7S52BpbX9/ydtlPz/
	q+LOx1bbmWyUirYEVDnrMZJqWvogBzhfUPZRGiYfGsFoAcguf5BMzqlzoFTovw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Saz85SEtR3HvWRzkWkUwj1nB0q7gEyL1yo2WCIFQiiA=; b=mEj4SpeW9/qMGpVTPx9GvMkH+c
	GnPiQGn5D/EV1IkWIxpzF/lX2Gr2KKbMTdE9kU4XV+SmQP4LUMkrJMipoDkj8GdJalKPR+nXapbgu
	J3HAuO+q3s6u709qOGjdO561UnLGgZcgrNUtlgtbasqqepoc6OwGbBPtkhsitkGmJMtTbyF7fcsuJ
	+U/E3AdLXUJg1j1YwlR9hG5Fd6rnB1Lvq3puO0qSCrqclSmQLesZ9jtoNKCAupQ4qw8rVRfojo9k9
	AUGxCUvU9+G2E365NzqTGZX0dqdCgpP/H1mnYteELyb4OZxvObUiXIOSOrfK76SRi3piEFIX6iu2c
	qNhokhfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJ1v-0000000HTyL-3K5G;
	Thu, 15 Oct 2026 10:49:47 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJ1s-0000000HTwu-2SEa
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 10:49:46 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.4.pengutronix.de [10.9.0.3])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E409F201BC6;
	Thu, 15 Oct 2026 12:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792061382;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Saz85SEtR3HvWRzkWkUwj1nB0q7gEyL1yo2WCIFQiiA=;
	b=bR/uwnWJzLE5upnRCMplVf5M6sKD4yrFCJL2VJI/1/MY41y570GMxUPaT8hFUBuZ/5ldLZ
	/GNoXBJIdKdUxM6E6thybIpBIwMfepePycMC9DIfEPfJEMwTcCXgZhYzf8UGAduuPzRybR
	3vr8vcvlRPgZEiLleZ9UC3yzZrbhUI+OC7w7h+JpEGXMZjlMBhi5QPZb9URiaav6c3+0te
	JzfP/2JUt3tVa33rhT12MdMX8eo3dvVtevSJs2YVGl9+9f0SO6aEGHQIG/kxd/oIhMiOEu
	COhiKI6smwzPLMVNaUeMkJefNjU65XhCC1h1ERm9xskUI3F5kKlkpWaJPVKtnw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792061382; a=rsa-sha256;
	cv=none;
	b=S/gO+XXRf8gPgCqxFmpYiczXHK5TZKjHBoztADkSnRvkz98V7wvv14w7Ljyf69XIPahJ8P
	un4qmOG3xAGS9gmQ5dzgeaymLkU/fbNX0rF+wqaB7QmRCX54loB113W9mbAYty009lhVhw
	kS0BC9sS4CXnbYPjiouDOufhO/KH0NcjEo4EYqRwtiR49mYteTrUW2WIb72uM/Es1v6z+l
	Ewy8xAIUyeTi5I2ILaC02IKNk0op8zYLs3DQcXVkL7uBSQKjZ1jwy4TV1XbFcJDUTc59Ul
	Se1L/glZvpR128AwvdqnAZ54jv6Ra4yORAfkcphki3laIAClGBB0+Jz28pdgDw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=mfe@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792061382;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Saz85SEtR3HvWRzkWkUwj1nB0q7gEyL1yo2WCIFQiiA=;
	b=Hiwomhd2aSkbEj5RCUTVjF+zmIHu4yqtkJk8gmkxmmlzz8/IKRrNhVNc6xW3k02N7HLJak
	659uiyu5kMh5baRsgofI8o/PYsruiuTGjk456RWoJl46/sc2133LXGqkEQzSvfvlwmSaTL
	pmdYB0w3TgAaW1dcuFuQFxdOTzw6xK2n8xIKj91YPwUC0a5tvNRCgwTf9qTt+MZ7SUbzqh
	CAyxcIp64F2JUsgEQgR4TJG6Mag0FEqI6XPBMlgzMGEcCAHYunP+R3MgkpDMDkgJ5oY08F
	+o6Is5whAkp9CuuanE1RMwTcqmrEUwaV3iiUypT/TJpNRnP4Q8m8SD4ee8GeeQ==
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1064)
	id C5A441C0239; Thu, 15 Oct 2026 12:49:42 +0200 (CEST)
Date: Thu, 15 Oct 2026 12:49:42 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
Subject: Re: [PATCH v2 07/10] efi: payload: pass shell arguments as load
 options to executed images
Message-ID: <7sjfcovg65kw6ubwxaw7eddwuxb25aaxx6qaejrivia7cl2om3@iowsggx2jyx7>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-8-a.fatoum@pengutronix.de>
 <i7yppy6p2fg2zee4fyegh7s4sskby6bpcvivcg4fqy6gijbq7h@z6akbpadbuia>
 <210ca087-2e99-4bb5-8d25-a774fff5920e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <210ca087-2e99-4bb5-8d25-a774fff5920e@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_034944_775393_0E1FD8EF 
X-CRM114-Status: GOOD (  33.51  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 26-10-15 12:25, Ahmad Fatoum wrote: > Hello Marco, > >
   On 10/15/26 12:14 PM, Marco Felsch wrote: > > On 26-10-15 11:18, Ahmad Fatoum
    wrote: > >> if (filetype_is_linux_efi_image(filetype)) { > >> - [...] 
 
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
X-Rspamd-Queue-Id: 07008201BC6
X-Stat-Signature: ebxzjttreppzw1o46sq7am6tj6mcd53g

On 26-10-15 12:25, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 10/15/26 12:14 PM, Marco Felsch wrote:
> > On 26-10-15 11:18, Ahmad Fatoum wrote:
> >>  	if (filetype_is_linux_efi_image(filetype)) {
> >> -		options = linux_bootargs_get();
> >>  		printf("Booting kernel via StartImage");
> >> -		if (options) {
> >> -			printf("with options '%s'", options);
> >> -			loaded_image->load_options = xstrdup_char_to_wchar(options);
> >> -			loaded_image->load_options_size =
> >> -				(strlen(options) + 1) * sizeof(wchar_t);
> >> -		}
> >> +		if (load_options)
> >> +			printf(" with options '%s'", options);
> >>  		printf("...\n");
> >> +	} else if (load_options) {
> >> +		pr_debug("Starting image with options '%s'\n", options);
> >>  	}
> > 
> > Can we please make use one print style either printf() or pr_*()? IMHO
> > pr_*() is better since this goes into the log buffer which could be
> > pstore backed.
> 
> This is consistent with how we do it for ARM64 and ARM32. An argument in
> favor of printf is that test suites often match against these strings as
> these are the final strings output by barebox prior to kernel boot.
> 
> Having the log level hide them would break this. I don't think it's the
> purpose of this series to deviate from this.
> 
> > Furthermore this if-else now is only responsible for handling the print
> > message, can we make this cleaner?
> 
> I don't understand what you mean by this.

If the strings only differ minimal you could template it, e.g.

     printf("Booting %s", filetype_is_linux_efi_image(fileytpe) ? "kernel via StartImage" : "image")
     if (load_options)
     	printf(" with options '%s'", options)
     printf("...\n");

This harmonizes the output even further by adding '...' not just in the
filetype_is_linux_efi_image() case.

> 
> >> -	if (!is_driver)
> >> +	/*
> >> +	 * The firmware unloads an application as soon as it returns, as well as
> >> +	 * a driver that failed to start, freeing the loaded image protocol with
> >> +	 * it. Only a still loaded driver's protocol may be touched here, and it
> >> +	 * must be, as it references the load options we are about to free.
> >> +	 * Unloading an application that already returned just fails, but is
> >> +	 * still needed when StartImage failed before running it.
> >> +	 */
> >> +	if (is_driver) {
> >> +		if (!EFI_ERROR(efiret)) {
> >> +			loaded_image->load_options = NULL;
> > 					^
> > Don't we have to free this first?
> 
> See comment above. This pointer is dangling as the firmware would free
> the load options on successful termination.

Maybe my EFI knowledge is to limited but the above comments says:

| Only a still loaded driver's protocol may be touched here, and it
| must be, as it references the load options we are about to free.

So we're about the free it but already clear the pointer.

As said, my EFI knowledge may be to limited.

Regards,
  Marco

> 
> Cheers,
> Ahmad
> 
> > 
> > Regards,
> >   Marco
> > 
> >> +			loaded_image->load_options_size = 0;
> >> +		}
> >> +	} else {
> >>  		BS->unload_image(handle);
> >> +	}
> >> +
> >> +	free(load_options);
> >>  
> >>  	efi_connect_all();
> >>  	efi_register_devices();
> >> @@ -163,13 +182,21 @@ static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
> >>  {
> >>  	struct efi_loaded_image *loaded_image;
> >>  	efi_handle_t handle;
> >> +	char *options;
> >>  	int ret;
> >>  
> >>  	ret = efi_load_image(file, &loaded_image, &handle);
> >>  	if (ret)
> >>  		return ret;
> >>  
> >> -	return efi_execute_image(handle, loaded_image, false, b->type);
> >> +	/* argv[0] is the image itself, the rest become the load options */
> >> +	options = strjoin(" ", &argv[1], argc - 1);
> >> +
> >> +	ret = efi_execute_image(handle, loaded_image, false, b->type, options);
> >> +
> >> +	free(options);
> >> +
> >> +	return ret;
> >>  }
> >>  
> >>  static struct binfmt_hook binfmt_efi_hook = {
> >> diff --git a/efi/payload/image.h b/efi/payload/image.h
> >> index 33f7e1a21b30..54494c71626a 100644
> >> --- a/efi/payload/image.h
> >> +++ b/efi/payload/image.h
> >> @@ -14,7 +14,7 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
> >>  int efi_execute_image(efi_handle_t handle,
> >>  		      struct efi_loaded_image *loaded_image,
> >>  		      bool is_bootm,
> >> -		      enum filetype filetype);
> >> +		      enum filetype filetype, const char *options);
> >>  
> >>  extern struct image_handler efi_x86_linux_handle_tr;
> >>  extern struct image_handler efi_x86_linux_handle_handover;
> >> -- 
> >> 2.47.3
> >>
> >>
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 


