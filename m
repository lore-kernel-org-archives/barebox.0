Delivery-date: Mon, 17 Aug 2026 08:41:15 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvr22-0042B0-0s
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 08:41:15 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DAFEC20075B
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 08:41:14 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PSPuJjk5;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	Message-ID:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=58q1fqZkWN1F2HBNShaaFqdG/Q6WTPTrMdchxGgK8VM=; b=PSPuJjk5kLuz5D
	XoqNT5iAJwFvwtR4010P2HvNayAaJybosHRmwmusAQRFXwWSoMl71Z+T6B66eOtPKx7X3Td/Mc6jC
	qzlJLOLBxdwGoG3k3xxYFcRUobGF8/HwGYAvfJUWcCJRj1MOeK9o/KOTc2ps1F/DqXDIEXbU6+0wb
	3kWBBXofSfhwzB1YNUo37H3YzFA1CgMIycyaZ+WfrRvyUqdrLebKL2LM+ad+9KTyeS8iGBiF0Xf4t
	UFWgbEDZhXIqwwGB+Zqa4F5bXJCABZVrAWRCRUq4oSiCVviNS6MgT2gXpXQ/H17zOeUbxHE9i+mUo
	cC1e2sSqd377BDcXjoMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvr0q-00000005UXb-1A6V;
	Mon, 17 Aug 2026 06:40:00 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvr0m-00000005UXE-3LVs
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 06:39:58 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5d1c:bd00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 91B5E200740;
	Mon, 17 Aug 2026 08:39:54 +0200 (CEST)
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 3/5] drivers: usb: host: efi: add efi io driver
To: "Fabian Pflug" <f.pflug@pengutronix.de>
In-Reply-To: <20260812-v2026-06-0-topic-efi_usb-v1-3-9d2573c29f21@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 17 Aug 2026 06:39:54 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_233957_005555_7B3E27A7 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-12 18:36, Fabian Pflug wrote: > +static int efi_get_usb_string(struct
    efi_usb_io_protocol *protocol, u16 lang_id, > + int index, char *buf, size_t
    size) > +{ > + char *efi_name; > + efi_sta [...] 
 
 Content analysis details:   (-1.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 MISSING_MID            Missing Message-Id: header
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
Cc: BAREBOX <barebox@lists.infradead.org>, Fabian
 Pflug <f.pflug@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: kzs5x8dh6o9dw7hejio5atod45d5i6i7
X-Spamd-Result: default: False [-2.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MID(2.50)[];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: DAFEC20075B
Message-ID: <20260817063954.fxcgWrDICKv5KALxXru98Wjc2MtN3ffYN3QgxvtdXt8@z>

On 2026-08-12 18:36, Fabian Pflug wrote:
> +static int efi_get_usb_string(struct efi_usb_io_protocol *protocol, u16 =
lang_id,
> +			      int index, char *buf, size_t size)
> +{
> +	char *efi_name;
> +	efi_status_t efiret;
> +	unsigned int u, idx;
> +
> +	memset(buf, 0, size);
> +
> +	if (!index)
> +		return 0;
> +
> +	efiret =3D protocol->get_string_descriptor(protocol, lang_id, index,
> +						 &efi_name);

Should this be declared with wchar_t * as last argument? That's how it's
declared in EDK2 and the below code easier to follow.

> +	if (EFI_ERROR(efiret))
> +		return -efi_errno(efiret);
> +
> +	size--; /* leave room for trailing NULL char in output buffer */
> +	for (idx =3D 0, u =3D 2;; u +=3D 2) {

It's surprising to have u =3D 2 here. What's in the first character?

> +		if (idx >=3D size)
> +			break;
> +		if (efi_name[u + 1]) /* high byte */
> +			buf[idx++] =3D '?'; /* non-ASCII character */
> +		else if (efi_name[u])
> +			buf[idx++] =3D efi_name[u];
> +		else
> +			break;
> +	}
> +	buf[idx] =3D 0;
> +
> +	return 0;
> +}
> +

...

> +
> +	efiret =3D priv->protocol->get_supported_languages(priv->protocol,
> +							 &lang_ids, &num_langs);
> +	if (EFI_ERROR(efiret)) {
> +		err =3D -efi_errno(efiret);
> +		goto out_err;
> +	}
> +
> +	num_langs =3D num_langs / sizeof(u16);

Pass a table_size variable to get_supported_languages() and calculate
num_langs_from it, makes it easier to follow without looking at the
prototype.

> +	if (num_langs =3D=3D 0) {
> +		err =3D -EPROTO;
> +		goto out_err;
> +	}
> +

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



