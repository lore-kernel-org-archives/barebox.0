Delivery-date: Wed, 19 Aug 2026 13:04:52 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwe6F-004q41-2Z
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 13:04:52 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6665C201AC8
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 13:04:52 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DaOA73SS;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1CdK0/EuGtrhRxkhUBi7k854kWBvn3OPkEvQhhYNrKk=; b=DaOA73SSdnJlcCmsGtzxkVk25n
	J5NL96wJimhHJPMoaY5J4UhYZpoFA4UGY0TwRd6jxZ0w69OG+0Y7MbFeeAJftBKjyHx8XcxcY+9wp
	dTeQpLEOTL4tky5qCEgeFgx5eQvlEYREgi40YqtsRjy0tqD41Is2fshltTs6PXmTPtyu3rtTTLP6H
	2wDkJjvo3iGelXoWQ+rrYZ+HA3kQXPeuQZSByKjUWXD8u2snbZvRo47u5cuCbTsOMWvxFc0kk4U1/
	Psuhf4qjxSyljdk81otYIAyJdOO1gIIqL0Z8ajHxHlkRnWjgGmNvgHPng9Odw2frvBRKVgV5+Ryxh
	qgT05ZwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwe5r-00000009c3k-028Y;
	Wed, 19 Aug 2026 11:04:27 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwe5n-00000009c2t-0sGH
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 11:04:26 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9FAF3201021;
	Wed, 19 Aug 2026 13:04:20 +0200 (CEST)
Message-ID: <18abca76-bd8d-4c26-b16a-98865f147f9e@pengutronix.de>
Date: Wed, 19 Aug 2026 13:04:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] drivers: usb: host: efi: add efi io driver
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260817-v2026-06-0-topic-efi_usb-v2-0-3d45c1782ccc@pengutronix.de>
 <20260817-v2026-06-0-topic-efi_usb-v2-3-3d45c1782ccc@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260817-v2026-06-0-topic-efi_usb-v2-3-3d45c1782ccc@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_040423_455077_56947610 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/17/26 10:47 AM, Fabian Pflug wrote: > +config USB_EFI_IO_PROTOCOL
    > + bool "EFI USB I/O Protocol" > + depends on EFI_PAYLOAD > + depends on
    USB_HOST This depends is redundant, because the whole file is only included
    when USB_HOST is selected. 
 
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
X-Stat-Signature: xa9oqo7p7jyz86frafdhpye18cgjimqm
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
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
X-Rspamd-Queue-Id: 6665C201AC8

Hi,

On 8/17/26 10:47 AM, Fabian Pflug wrote:
> +config USB_EFI_IO_PROTOCOL
> +	bool "EFI USB I/O Protocol"
> +	depends on EFI_PAYLOAD
> +	depends on USB_HOST

This depends is redundant, because the whole file is only included when
USB_HOST is selected.

> +static int efi_usb_error_check(efi_status_t efiret, int status)
> +{
> +	if (efiret == EFI_DEVICE_ERROR) {
> +		if (status & EFI_USB_ERR_TIMEOUT)
> +			return -ETIMEDOUT;
> +		if (status & EFI_USB_ERR_STALL)
> +			return -ETIMEDOUT;

return -EPIPE


> +
> +	interface->no_of_ep = interface->desc.bNumEndpoints;
> +
> +	if (interface->no_of_ep > USB_MAXENDPOINTS) {
> +		err = -EPROTO;
> +		goto out_err;
> +	}
> +
> +	for (int i = 0; i < interface->no_of_ep; i++) {
> +		efiret = priv->protocol->get_endpoint_descriptor(
> +			priv->protocol, i, &interface->ep_desc[i]);
> +		if (EFI_ERROR(efiret))
> +			return -efi_errno(efiret);

Should be goto.

> +		usb_set_maxpacket_ep(dev, &interface->ep_desc[i]);
> +	}
> +
> +	efiret = priv->protocol->get_supported_languages(priv->protocol,
> +							 &lang_ids, &table_size);
> +	if (EFI_ERROR(efiret)) {
> +		err = -efi_errno(efiret);
> +		goto out_err;
> +	}
> +
> +	/* table size is given in bytes, not entries */
> +	if (table_size < sizeof(*lang_ids)) {
> +		err = -EPROTO;
> +		goto out_err;
> +	}
> +
> +	dev->string_langid = lang_ids[0];
> +	dev->have_langid = true;

Set this to false when table_size == 0 instead of an error?

> +
> +	dev_info(&dev->dev, "new device: Mfr=%d, Product=%d, SerialNumber=%d\n",
> +		 dev->descriptor->iManufacturer, dev->descriptor->iProduct,
> +		 dev->descriptor->iSerialNumber);
> +
> +	err = efi_get_usb_string(priv->protocol, dev->string_langid,
> +				 dev->descriptor->iManufacturer, dev->mf,
> +				 sizeof(dev->mf));
> +	if (err)
> +		goto out_err;
> +	err = efi_get_usb_string(priv->protocol, dev->string_langid,
> +				 dev->descriptor->iProduct, dev->prod,
> +				 sizeof(dev->prod));
> +	if (err)
> +		goto out_err;
> +	err = efi_get_usb_string(priv->protocol, dev->string_langid,
> +				 dev->descriptor->iSerialNumber, dev->serial,
> +				 sizeof(dev->serial));
> +	if (err)
> +		goto out_err;
> +
> +	dev_info(&dev->dev, "Bus %03d Device %03d: ID %04x:%04x %s\n",
> +		 dev->host->busnum, dev->devnum, dev->descriptor->idVendor,
> +		 dev->descriptor->idProduct, dev->prod);
> +
> +	err = register_device(&dev->dev);
> +	if (err) {
> +		dev_err(&dev->dev, "Failed to register device: %pe\n",
> +			ERR_PTR(err));
> +		goto out_err;
> +	}
> +
> +	// register as root device for host
> +	host->root_dev = dev;
> +
> +	return 0;
> +
> +out_err:
> +	dev_err(&dev->dev, "Failed to create UEFI-USB-IO device: %pe\n",
> +		ERR_PTR(err));
> +	usb_free_device(dev);
> +	return err;
> +}
> +
> +static int efi_usb_io_probe(struct efi_device *efidev)
> +{
> +	struct device *dev = &efidev->dev;
> +	struct efi_usb_io_priv *priv;
> +	struct usb_host *host;
> +
> +	priv = xzalloc(sizeof(*priv));
> +
> +	BS->handle_protocol(efidev->handle, &efi_usb_io_protocol_guid,
> +			    (void **)&priv->protocol);
> +	if (!priv->protocol)
> +		return -ENODEV;
> +
> +	dev->priv = priv;
> +	priv->dev = dev;
> +
> +	// EFI has one device per probe, which now needs its own host controller,
> +	// since there is no shared host controller resource.
> +
> +	host = &priv->host;
> +	host->submit_int_msg = efi_usb_int_msg;
> +	host->submit_control_msg = efi_usb_control_msg;
> +	host->submit_bulk_msg = efi_usb_bulk_msg;

host->hw_dev must be set.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



