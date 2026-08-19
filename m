Delivery-date: Wed, 19 Aug 2026 11:19:30 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwcSH-004odK-1D
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 11:19:30 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EC8822020ED
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 11:19:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iGW5ZVe0;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vsx36bynEa1c2YisscqDZxvUA/SJAP1SvcSwne49qqQ=; b=iGW5ZVe0557PMcsZRwrzCDpIAx
	9O7TVUlubM0ANndiQD3vCjkzoN+vNVtw4NnnBLJbkqDZdYGUu/OvC3H2kzLBqxJwOL1YaiwrFXgpo
	7OIfQXmi9QJs7ytIkaxRrO0fh+SfS1BmBSr+owco/vL68fHxisJYNn8tMKp4qWVFm0qzfgeDV/n2B
	5KplLF5MZrSrwOviTNr4sPJ8vQaOpeT/KiqFFiQksBMpBRpLcPnx+JzfC4SM2hvn2+jpmw5MmlgHp
	mFB3c4mdJsUWVnn11UM2OZDrpxYqq09geS9YP0/HQJC7BUg9eN3u/9NO94un9L/Rqv4FkHAS8d/Pd
	/Tm4UlUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwcRD-00000009Onk-3pFI;
	Wed, 19 Aug 2026 09:18:23 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwcR7-00000009OmN-0EzB
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 09:18:19 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EB809201EBE;
	Wed, 19 Aug 2026 11:18:14 +0200 (CEST)
Message-ID: <91b19aeb-163d-4c70-8eb3-1cd13547fc2c@pengutronix.de>
Date: Wed, 19 Aug 2026 11:18:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] test: x86: add test for uefi usb io
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260817-v2026-06-0-topic-efi_usb-v2-0-3d45c1782ccc@pengutronix.de>
 <20260817-v2026-06-0-topic-efi_usb-v2-5-3d45c1782ccc@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260817-v2026-06-0-topic-efi_usb-v2-5-3d45c1782ccc@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_021817_268764_9674DE8D 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/17/26 10:47 AM, Fabian Pflug wrote: > Check, that
    the EFI-USB-IO controller will create a USB Network device > in barebox.
   The device has currently no driver, but is available > nevertheless. 
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: fnewf4qd9qzyyy5ak84zqeaedndizqny
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
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
X-Rspamd-Queue-Id: EC8822020ED

Hi,

On 8/17/26 10:47 AM, Fabian Pflug wrote:
> Check, that the EFI-USB-IO controller will create a USB Network device
> in barebox. The device has currently no driver, but is available
> nevertheless.

Thanks for adding a test!

> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad


> ---
>  drivers/usb/host/efi-io-protocol.c | 15 ++++++++++++---
>  test/x86/pc@efi_defconfig.yaml     |  9 ++++++++-
>  2 files changed, 20 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/host/efi-io-protocol.c b/drivers/usb/host/efi-io-protocol.c
> index 8207d33dcf..fdd21f24a0 100644
> --- a/drivers/usb/host/efi-io-protocol.c
> +++ b/drivers/usb/host/efi-io-protocol.c
> @@ -145,6 +145,16 @@ static int efi_get_usb_string(struct efi_usb_io_protocol *protocol, u16 lang_id,
>  	return 0;
>  }
>  
> +static void print_usb_device_info(struct device *dev)
> +{
> +	struct usb_device *usb_dev = container_of(dev, struct usb_device, dev);
> +
> +	dev_info(dev, "Bus %03d Device %03d: ID %04x:%04x %s\n",
> +		 usb_dev->host->busnum, usb_dev->devnum,
> +		 usb_dev->descriptor->idVendor, usb_dev->descriptor->idProduct,
> +		 usb_dev->prod);
> +}
> +
>  static int create_usb_device(struct efi_usb_io_priv *priv)
>  {
>  	struct usb_host *host = &priv->host;
> @@ -256,9 +266,8 @@ static int create_usb_device(struct efi_usb_io_priv *priv)
>  	if (err)
>  		goto out_err;
>  
> -	dev_info(&dev->dev, "Bus %03d Device %03d: ID %04x:%04x %s\n",
> -		 dev->host->busnum, dev->devnum, dev->descriptor->idVendor,
> -		 dev->descriptor->idProduct, dev->prod);
> +	print_usb_device_info(&dev->dev);
> +	devinfo_add(&dev->dev, print_usb_device_info);
>  
>  	err = register_device(&dev->dev);
>  	if (err) {
> diff --git a/test/x86/pc@efi_defconfig.yaml b/test/x86/pc@efi_defconfig.yaml
> index 2c077d5509..4feabb232d 100644
> --- a/test/x86/pc@efi_defconfig.yaml
> +++ b/test/x86/pc@efi_defconfig.yaml
> @@ -8,7 +8,11 @@ targets:
>          memory: 1024M
>          kernel: barebox.efi
>          display: qemu-default
> -        extra_args: '-bios OVMF.fd'
> +        extra_args: >
> +          -bios OVMF.fd
> +          -device qemu-xhci,id=xhci
> +          -device usb-net,netdev=usb0,bus=xhci.0
> +          -netdev user,id=usb0
>        BareboxDriver:
>          prompt: 'barebox@[^:]+:[^ ]+ '
>          bootstring: 'commandline:'
> @@ -16,6 +20,7 @@ targets:
>      features:
>        - pci
>      devices:
> +      usb1: 'usb1: Bus 001 Device 000: ID 0525:a4a2 RNDIS/QEMU USB Network Device'
>        fb0: 'Type: primary'
>        fbconsole0: 'Parent: fb0'
>        wdog0: 'Parent: efi-wdt'
> @@ -25,6 +30,8 @@ targets:
>        acpi-APIC0: 'Signature: APIC (Multiple APIC Description Table)'
>      runner:
>        kconfig_add:
> +        - CONFIG_USB_HOST=y
> +        - CONFIG_USB_EFI_IO_PROTOCOL=y
>          - CONFIG_DRIVER_SERIAL_NS16550=y
>          - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
>  images:
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



