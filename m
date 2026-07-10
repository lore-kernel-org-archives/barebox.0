Delivery-date: Fri, 10 Jul 2026 23:50:53 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wiJ7V-002NzX-2Q
	for lore@lore.pengutronix.de;
	Fri, 10 Jul 2026 23:50:53 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8E37E202031
	for <lore@pengutronix.de>; Fri, 10 Jul 2026 23:50:53 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lEjzk8R9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=OvlAKMD7izTyag1bNeOUG08/8ApJr539pCyTOfFthrc=; b=lEjzk8R9uQHjeJHmSI9ylQYN5T
	k2tG60EUKl7dWNYSmkyoVCySFcvUc06gQcPh1vNK9njcUv8AqjhWWl9W9kt++nBkxPQm80QfN1p4g
	DOHoopzUNsmAWQvFIAi22azAUAR9+4xHCAEmWr2X3GVGyVYB5mZ3pN8JbxFhfW6Bz1hH2my504mnE
	zgktLS+vO48JU4aYSUHYyadw2PN0dtCp+N/2piUTMTwazBjR3njzBllNNkT5IsM8soF/NvjwbQSaE
	Hnfi+h4THuKs47ARlb8j2UwGJV6GqrGNjmyM0sCjF2b1i1RDNBLkUo+LxrAF+0Fw/JpMnyMStiGdx
	mhWDojmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiJ6S-00000005shA-19G6;
	Fri, 10 Jul 2026 21:49:48 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiJ6P-00000005sgn-17wd
	for barebox@lists.infradead.org;
	Fri, 10 Jul 2026 21:49:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EC33F202029;
	Fri, 10 Jul 2026 23:49:42 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wiJ6M-0018rc-2q;
	Fri, 10 Jul 2026 23:49:42 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wiJ6M-0000000GID3-3Jzs;
	Fri, 10 Jul 2026 23:49:42 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] efi: allow LoadImage from a source buffer
To: "Ahmad Fatoum" <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org, "Ahmad Fatoum" <a.fatoum@barebox.org>
In-Reply-To: <20260709074335.533190-1-a.fatoum@barebox.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 21:49:42 +0000
Message-Id: <E1wiJ6M-0000000GID3-3Jzs@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_144945_486214_2B46C268 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-07-09 09:43, Ahmad Fatoum wrote: > LoadImage is allowed
    to load a PE image from a caller-provided source > buffer when no device
   path is supplied. The SCT covers that path and > barebox only h [...] 
 
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
X-Spamd-Result: default: False [-4.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:a.fatoum@barebox.org,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 8E37E202031
X-Stat-Signature: efbyzjsko7qahjgtxkucytx689a6j7xz

On 2026-07-09 09:43, Ahmad Fatoum wrote:
> LoadImage is allowed to load a PE image from a caller-provided source
> buffer when no device path is supplied. The SCT covers that path and
> barebox only handled filesystem-backed images, so valid test images were
> rejected before StartImage could run them.
>=20
> Add the source-buffer path and feed it through the normal image loader so
> the loaded image uses the same validation and bookkeeping as file-backed
> images.
>=20
> Assisted-by: Codex:gpt-5.5
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  efi/loader/boot.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>=20
> diff --git a/efi/loader/boot.c b/efi/loader/boot.c
> index b92e6bb33093..d34de119f4e7 100644
> --- a/efi/loader/boot.c
> +++ b/efi/loader/boot.c
> @@ -1988,8 +1988,7 @@ efi_status_t EFIAPI efiloader_load_image(bool boot_=
policy,
>  	EFI_ENTRY("%d, %p, %pD, %p, %zu, %p", boot_policy, parent_image,
>  		  file_path, source_buffer, source_size, image_handle);
> =20
> -	if (!image_handle || (!source_buffer && !file_path) ||
> -	    !efi_search_obj(parent_image) ||
> +	if (!image_handle || !efi_search_obj(parent_image) ||
>  	    /* The parent image handle must refer to a loaded image */
>  	    !parent_image->type) {
>  		ret =3D EFI_INVALID_PARAMETER;
> @@ -2005,8 +2004,14 @@ efi_status_t EFIAPI efiloader_load_image(bool boot=
_policy,
>  	} else {
>  		dest_buffer =3D source_buffer;
>  	}
> -	/* split file_path which contains both the device and file parts */
> -	ret =3D efi_dp_split_file_path(file_path, &dp, &fp);
> +	if (file_path) {
> +		/* split file_path which contains both the device and file parts */
> +		ret =3D efi_dp_split_file_path(file_path, &dp, &fp);
> +	} else {
> +		dp =3D NULL;
> +		fp =3D NULL;
> +		ret =3D EFI_SUCCESS;
> +	}

This hunk doesn't apply on my tree. Can you have a look?

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


