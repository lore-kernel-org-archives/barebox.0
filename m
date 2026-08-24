Delivery-date: Mon, 24 Aug 2026 11:14:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyQlN-006ePj-2u
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 11:14:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 791A1201917
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 11:14:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fwmj0jui;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=48y/6nqPfp3ShYTuYE8w24PgQWCFpCJGnbZONQefS9M=; b=fwmj0juilQbC49ttUHU7Kx00Pt
	Gf7ceFfDl3cRRmWFdo8atcHSwSBHDQstGxY11HmpmC9OqYDFhVO5dmosGF3j0PReqMlL+YjSpyJct
	H8sejBDcSUG+d2NT+Lq7rFNSbpnfu5DOnW9dYp5k86ywnmv9Bp2Yf5UtAsLFUBRW/qsPDJkIAPRQe
	rL3CpCqV/XGILH7G4MWKnFgd8YikjSexzONRmW0JyJ10JcmDt4mr8XKXhOuoQhx0nSjx2UdhHK0nS
	52HwU7DZ5rlSvwsiQFDlthgJphV+mOR74fgsJmx7MclTdzDEv9ijCb0hT6O7kv+ANAbiHbEtqb32G
	ZWDITk1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQk9-0000000GHy6-2sFB;
	Mon, 24 Aug 2026 09:13:25 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQk5-0000000GHx7-2po8
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 09:13:24 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5821C201B99;
	Mon, 24 Aug 2026 11:13:18 +0200 (CEST)
Message-ID: <adbcfd2c-a7f3-4c29-b1cd-c61093a31705@pengutronix.de>
Date: Mon, 24 Aug 2026 11:13:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] drivers: usb: host: efi: add efi io driver
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260820-v2026-06-0-topic-efi_usb-v3-0-faf0b9267966@pengutronix.de>
 <20260820-v2026-06-0-topic-efi_usb-v3-3-faf0b9267966@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260820-v2026-06-0-topic-efi_usb-v3-3-faf0b9267966@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_021321_878387_D43626F7 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/20/26 4:34 PM, Fabian Pflug wrote: > The driver is
    based on [1] with one "host" controller per device. > The host controller
    will hopefully not have any sub-devices and only > have the one root d [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: qhnbk5mahckxhg4m7gi7iy6bhmb97jes
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
X-Rspamd-Queue-Id: 791A1201917

Hi,

On 8/20/26 4:34 PM, Fabian Pflug wrote:
> The driver is based on [1] with one "host" controller per device.
> The host controller will hopefully not have any sub-devices and only
> have the one root device, which functions as the only device needed and
> registered for.
> 
> [1] https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html#usb-driver-model
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

[snip]

> +	efiret = priv->protocol->get_supported_languages(
> +		priv->protocol, &lang_ids, &table_size);
> +	if (EFI_ERROR(efiret)) {
> +		err = -efi_errno(efiret);
> +		goto out_err;
> +	}
> +
> +	dev->string_langid = lang_ids[0];

Dereference of uninitialized pointer in case that table_size == 0?
usb_alloc_new_device() already zeroes the members, so you want to guard
this behind a table_size >= sizeof(*lang_ids) check.

> +	dev_info(&dev->dev, "Bus %03d Device %03d: ID %04x:%04x %s\n",
> +		 dev->host->busnum, dev->devnum, dev->descriptor->idVendor,
> +		 dev->descriptor->idProduct, dev->prod);

Did you verify that the `usb' command lists all host controllers and the
device under them as one would expect?

> +	// EFI has one device per probe, which now needs its own host controller,
> +	// since there is no shared host controller resource.

Nearly all of the code base uses C89-style comments.
Just something to keep in mind for future submissions.


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



