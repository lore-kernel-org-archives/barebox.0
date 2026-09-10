Delivery-date: Thu, 10 Sep 2026 12:20:09 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4bt3-000XMg-1K
	for lore@lore.pengutronix.de;
	Thu, 10 Sep 2026 12:20:09 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JqtxTvH6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 688042059AA
	for <lore@pengutronix.de>; Thu, 10 Sep 2026 12:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=obq1zxiw3CfyYtTfFW3fbdeP2KE6Eb6fWmJekU8s2uc=; b=JqtxTvH6voBxmPYXnGdoSsENvJ
	x1gPNdqbNIaF9rlu8qhohIDRLeF6uI5KgsM9BB8ymVZc+j6mcbNN76oWcJxCF1rLrYUMkXAFfB6JK
	/PC8H3zDmePfrGmdfgOghVl25To2itc7SR8NXPD+1+F13o+wFs4mxgKwEFZOeExRangUf2rXa5xXf
	CKE5TrzKyURvZJYWzsKnDH5HWjSvJKwZcZbOj1yaxb42LTjyflW1EUcWFDfRGaagGOweyggCTOKVx
	ZXfi5gutOlUyHrQRt+Uppm+89roCRcHi3eEdK3+tGNY5+3b7AIXaJ9E3FMMVuIOfotFd8MUuna3yo
	pdwvwnSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bsb-0000000E26d-3Xsj;
	Thu, 10 Sep 2026 10:19:41 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bsZ-0000000E25x-1UR2
	for barebox@lists.infradead.org;
	Thu, 10 Sep 2026 10:19:41 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 73BD5201EB9;
	Thu, 10 Sep 2026 12:19:37 +0200 (CEST)
Message-ID: <568fe536-615b-4b91-a4e1-d1b744731277@pengutronix.de>
Date: Thu, 10 Sep 2026 12:19:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT 6/9] efi: add global.efi.bootargs for bootm'd EFI
 applications
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
Cc: fpg@pengutronix.de
References: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
 <20260826121956.2936414-7-a.fatoum@pengutronix.de>
 <e9fae129f180a1f237fa5ec11388eeb3d0df6cc1.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <e9fae129f180a1f237fa5ec11388eeb3d0df6cc1.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_031939_546890_E6606C25 
X-CRM114-Status: GOOD (  23.18  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Helo Fabian, On 9/10/26 12:16 PM, Fabian Pflug wrote: > On
    Wed, 2026-08-26 at 14:17 +0200, Ahmad Fatoum wrote: >> + options = efi_bootargs_get(filetype_is_linux_efi_image(data->kernel_type));
    > > At this point you [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Server: mx1
X-Stat-Signature: nxsbgbwzruxj1uczqfx4bo6j5xhu6y16
X-Rspamd-Queue-Id: 688042059AA
X-Spamd-Result: default: False [-57.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Helo Fabian,

On 9/10/26 12:16 PM, Fabian Pflug wrote:
> On Wed, 2026-08-26 at 14:17 +0200, Ahmad Fatoum wrote:
>> +	options = efi_bootargs_get(filetype_is_linux_efi_image(data->kernel_type));
> 
> At this point you are in bootm and want to boot an image. There should be another way to tell bootm to include the
> kernel command line arguments, because UKI's are MS-Dos executeables, even though they do contain the kernel to execute
> and bootm will just silently drop all kernel command line parameters here.
> 
> Making bootm.appendroot completly useless, which is an advantage of using barebox on x86.
> 
> Just indescrimently adding them would also not be good, as windows would also be the same filetype. But maybe add a
> magic variable to tell efi: "I'm sure, that this will be a kernel. Trust me bro!"

What does the UKI EFI stub do with extra command-line arguments?
Are they prepended? Appended? Do they replace the built-in command-line?
Does enabling secure boot change the behavior?

I don't have verified answers to these questions. If you can research
them, I can consider adapting the behavior here.

Cheers,
Ahmad

> 
> /Fabian
>> +	if (options) {
>> +		load_option = xstrdup_char_to_wchar(options);
>> +		load_option_size = (strlen(options) + 1) * sizeof(wchar_t);
>>  	}
>>  
>>  	file_path = efi_dp_from_file(AT_FDCWD, data->os_file);
>>  
>>  	pr_info("Loading %pD\n", file_path);
>> +	if (data->verbose && options)
>> +		pr_info("Load options: %s\n", options);
>> +
>> +	free(options);
>>  
>>  	/* Initialize EFI drivers */
>>  	efiret = efi_init_obj_list();
>> @@ -321,6 +322,14 @@ static int efi_loader_bootm(struct image_data *data)
>>  	/* Control is returned to us, disable EFI watchdog */
>>  	efi_set_watchdog(0);
>>  
>> +	/*
>> +	 * A still loaded driver would keep referencing the load options.
>> +	 * efi_set_load_options() tolerates the already deleted handle of an
>> +	 * application.
>> +	 */
>> +	efi_set_load_options(handle, 0, NULL);
>> +	free(load_option);
>> +
>>  	return -efi_errno(efiret);
>>  
>>  out:
>> diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
>> index fe2d27b7ff10..491bafb66898 100644
>> --- a/efi/payload/bootm.c
>> +++ b/efi/payload/bootm.c
>> @@ -22,7 +22,6 @@
>>  #include <string.h>
>>  #include <linux/err.h>
>>  #include <boot.h>
>> -#include <bootargs.h>
>>  #include <bootm.h>
>>  #include <fs.h>
>>  #include <libfile.h>
>> @@ -32,6 +31,7 @@
>>  #include <efi/payload/driver.h>
>>  #include <efi/error.h>
>>  #include <efi/initrd.h>
>> +#include <efi/bootargs.h>
>>  
>>  #include "image.h"
>>  
>> @@ -167,6 +167,7 @@ static int do_bootm_efi_stub(struct image_data *data)
>>  	bool image_freed = false;
>>  	efi_handle_t handle = NULL; /* silence compiler warning */
>>  	enum filetype type;
>> +	char *options;
>>  	int ret;
>>  
>>  	ret = efi_load_os(data, &loaded_image, &handle);
>> @@ -186,9 +187,11 @@ static int do_bootm_efi_stub(struct image_data *data)
>>  	if (data->dryrun)
>>  		goto unload_ramdisk;
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
>>  	/* efi_execute_image takes care to unload the image on error,
>>  	 * so we set image_freed and fall through to freeing ramdisk
>> @@ -215,6 +218,7 @@ static int efi_app_execute(struct image_data *data)
>>  	struct efi_loaded_image *loaded_image;
>>  	efi_handle_t handle;
>>  	enum filetype type;
>> +	char *options;
>>  	int ret;
>>  
>>  	ret = efi_load_image(data->os_file, &loaded_image, &handle);
>> @@ -223,14 +227,19 @@ static int efi_app_execute(struct image_data *data)
>>  
>>  	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
>>  
>> +	options = efi_bootargs_get(filetype_is_linux_efi_image(type));
>> +
>>  	if (data->dryrun) {
>>  		BS->unload_image(handle);
>> +		free(options);
>>  		return 0;
>>  	}
>>  
>> -	return efi_execute_image(handle, loaded_image, true, type,
>> -				 filetype_is_linux_efi_image(type) ?
>> -				 linux_bootargs_get() : NULL);
>> +	ret = efi_execute_image(handle, loaded_image, true, type, options);
>> +
>> +	free(options);
>> +
>> +	return ret;
>>  }
>>  
>>  static int linux_efi_handover = true;
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
>> index 23c2d5dbb0b6..05090ae07be0 100644
>> --- a/test/py/test_shell.py
>> +++ b/test/py/test_shell.py
>> @@ -155,3 +155,29 @@ def test_barebox_test_var_exists(barebox, barebox_config):
>>  
>>      # Clean up
>>      barebox.run_check('rm /tmp/testvars')
>> +
>> +
>> +def test_boot_bootargs_dyn_cleared(barebox, barebox_config):
>> +    skip_disabled(barebox_config, "CONFIG_CMD_BOOT", "CONFIG_CMD_GLOBAL",
>> +                  "CONFIG_CMD_ECHO")
>> +
>> +    barebox.run_check("echo -o /env/boot/dyntest '#!/bin/sh'")
>> +    barebox.run_check("echo -a /env/boot/dyntest "
>> +                      "'global linux.bootargs.dyn.test=linux-dyn'")
>> +    barebox.run_check("echo -a /env/boot/dyntest "
>> +                      "'global efi.bootargs.dyn.test=efi-dyn'")
>> +    barebox.run_check("echo -a /env/boot/dyntest "
>> +                      "'global efi.bootargs.nodyntest=efi-static'")
>> +
>> +    # Run the script, but don't actually boot anything
>> +    barebox.run("boot -d -d dyntest")
>> +
>> +    # .dyn. variables must not leak into subsequent boot entries
>> +    assert barebox.run_check("echo ${global.linux.bootargs.dyn.test}") == [""]
>> +    assert barebox.run_check("echo ${global.efi.bootargs.dyn.test}") == [""]
>> +    # ... but other variables are left alone
>> +    assert barebox.run_check("echo ${global.efi.bootargs.nodyntest}") == \
>> +        ["efi-static"]
>> +
>> +    barebox.run_check("global -r efi.bootargs.nodyntest")
>> +    barebox.run_check("rm /env/boot/dyntest")

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



