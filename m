Delivery-date: Sat, 17 Oct 2026 16:27:50 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xI5O1-00Eptt-2l
	for lore@lore.pengutronix.de;
	Sat, 17 Oct 2026 16:27:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 56A1C202834
	for <lore@pengutronix.de>; Sat, 17 Oct 2026 16:27:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZZPRzIof;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=VfRDL+jD;
	dkim=pass header.d=debian.org header.s=smtpauto.stravinsky header.b="fi/av6rX";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=debian.org
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792247269; a=rsa-sha256;
	cv=none;
	b=RvsEqnJHVnnvGp5664XMzhv3DMGmY1NNOl/tBcq6et5Vyh6sD4VqjCc5QlukPbayXlnQDw
	qtYadhh+AzO+zrwtHLWYd7epRL9GbAm6OiKwv4GRWwOTSEMBzL1iPNsAXpp12dKAnOumZb
	RlskLTZsQSMpIlg3MIyLRp10PzsDUqKnF/3NxsG9alJRFtwFS95lyeFUG87BrKzA2vXPDF
	hPo+V8PdwQEh9F+F6uDSuk8/N+pGqyR9LKapopqfa7IJP+5y0L9ViURsElEIsEy+Sdo1mU
	VJXvw8fWUvJ9TZvh35/Q5P+/ZVAXx3OahiXzFOiAHJSeV3Umm2vzsYAQp+en4A==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZZPRzIof;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=VfRDL+jD;
	dkim=pass header.d=debian.org header.s=smtpauto.stravinsky header.b="fi/av6rX";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=debian.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792247269;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=rOqozgOKl2hDaU5tjKGD8MJHFbFZmKKhOSbTuFy7vcU=;
	b=HPvfc1VIP03d3V39YNir5g9RoGJpEV38dF+7USnn1gmnTXPT54CnnnifKLt275KpVLOTIe
	1VZW+EBJuJFQkmSqHSdAM7/OTnAjGMS/BFtnCliYxYUSAP11HiY/sdRSJhXHnIv7blA/tD
	Mws7selaq/lLc7cHsKX209Wl0doCyJ9Hj9Ijz6KyzJVJkbfTLgd4E86xKlV8D4fMxqItv0
	8yQZP3qvm+SbE09/JrbEJ8eEix/3UkfR5wamPqsO0TIOLBhiGzM/0YV5igrkZQVG9EXBzR
	p23J3BOo61yA5kRQ3GxOqyv/KJMpIO1q+qshvyyeOw6/pk2V5MTlxjD0ARgEvA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:
	Subject:References:In-Reply-To:MIME-Version:Content-Type:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rOqozgOKl2hDaU5tjKGD8MJHFbFZmKKhOSbTuFy7vcU=; b=ZZPRzIofI2lO3pNEfHM0jBtyrk
	rqpkdGr0yfouN4S5IXaw0UsoNOKDl0OeapVs104bjkcLnqHpEnZUxKKwVhZ2MhOp5hhUIvv/lYYof
	ribho88dpSbw0zV3ebpTaKLW2AQYQcalcSfwkB7YCWhyNZUy5NmioaZg2jKiq+AjgwoJ7mbmk9SDC
	BjgAxAaNdqIUf8YM6MpGJSjqLYYSr5t7VE+cHxADTz7hNuA1J6zFFDdK0vpmbfxRjbYTw/JQfGN9W
	nHa+w89W15c+MFhlQPmNrh2rH2rcFXOpBxM4Iicroz5VbJyGfK39rL3p2l0Y44OiouU3rvSHkjsMK
	QP/6OsPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI5Mv-00000004pJO-1qmx;
	Sat, 17 Oct 2026 14:26:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI5Mt-00000004pJ1-47LW
	for barebox@bombadil.infradead.org;
	Sat, 17 Oct 2026 14:26:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Content-Type:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=rOqozgOKl2hDaU5tjKGD8MJHFbFZmKKhOSbTuFy7vcU=; b=VfRDL+jD1m1pcOs4dSpKj1HjwQ
	RUaDB3xvRITmx/m4S1d49FLU/eMVrq/14XjOYJ6dK8pOLCNcRMuddhyZIomLPMF/LP8Rx22u4FBg7
	GhEugqjBiH5q23UmlRrT2YkBUwDtMwBgzAE3EkGvgiqNI8XDH/JXt/PbEvVuLi3czpBwWdv7l1n3P
	RRez+lKbutvnzg5blKN7nX+ZJ05HIbxcizfop0T8kC3xYg+4Xa+O/0D+ggoDyFbiekSu4itNpdB5z
	kkTiHOIcxtmfgwYWdTJ3TRHpLrOGfFBgr4szjYtC3hvpUHbOlTr0sWoT9DkNSlnx5mw8vCmEO328I
	sLb+/8nQ==;
Received: from stravinsky.debian.org ([2001:41b8:202:deb::311:108])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xI5Mq-00000002Pab-1cYc
	for barebox@lists.infradead.org;
	Sat, 17 Oct 2026 14:26:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Content-Type:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=rOqozgOKl2hDaU5tjKGD8MJHFbFZmKKhOSbTuFy7vcU=; b=fi/av6rXC5e1jX7SbGfU5V/CgJ
	uGpKdZD0dt0+aWnZfNXrvCsRmML0TajZi2pOJAAlMJU9xzSCBB6V2kVcSv0XCZJkt2LL4QkCpbkFx
	Du3twLQv5Bi2QMI0EnQWuh4a8DFAVkO81pYDvLtN4WpxJN11JSkeswWeZhT1RZK0dRPq8K+VTH7Xl
	UwCpBR5ZGMXuBcZF6csPozuUzNVPpj5WQa4kftwRyNdw/03oE7VwtsWEwGa44VyihZfFBtXE7YRhF
	tICZ0qMvJ3+tvZDiO3aTgKsJY1D+6q63/rYVYYJnzCQs/H8qOBnPQ7SB+RjGQDI/hVS55KeJ4/5XQ
	7I73zG3w==;
Received: from authenticated-user
	by stravinsky.debian.org with utf8esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.96)
	(envelope-from <josch@debian.org>)
	id 1xI5Mk-006oS5-1V;
	Sat, 17 Oct 2026 14:26:31 +0000
Content-Type: multipart/signed; micalg="pgp-sha512"; protocol="application/pgp-signature"; boundary="===============5670571552259668488=="
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261017115018.1202076-2-a.fatoum@barebox.org>
References: <20261017115018.1202076-1-a.fatoum@barebox.org> <20261017115018.1202076-2-a.fatoum@barebox.org>
Subject: Re: [PATCH 2/2] efi: runtime: accept 1:1 mappings in SetVirtualAddressMap
From: Johannes Schauer Marin Rodrigues <josch@debian.org>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Date: Sat, 17 Oct 2026 16:26:29 +0200
Message-ID: <179224718900.684046.2866764153232417065@localhost>
User-Agent: alot/0.0.0
X-Debian-User: josch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_152636_582030_A7E93CA9 
X-CRM114-Status: GOOD (  31.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Tested-by: Johannes Schauer Marin Rodrigues <josch@mister-muffin.de>
    Quoting Ahmad Fatoum (2026-10-17 13:50:15) > We do not support SetVirtualAddressMap()
    and UEFI v2.8 permits > this as long as our EFI_RT_PROPERTIES_TABLE doesn't
    claim > EFI_RT_SUPPORTED_SET_VIRTUAL_A [...] 
 
 Content analysis details:   (-2.5 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [2001:41b8:202:deb:0:0:311:108 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Queue-Id: 56A1C202834
X-Spamd-Result: default: False [-10.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	SIGNED_PGP(-2.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DWL_DNSWL_LOW(-1.00)[debian.org:dkim];
	RCVD_IN_DNSWL_MED(-0.60)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2001:41b8:202:deb::311:108:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,debian.org:s=smtpauto.stravinsky];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:a.fatoum@barebox.org,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[josch@debian.org,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josch@debian.org,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DMARC_POLICY_ALLOW(0.00)[debian.org,none];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,debian.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: x9m9c6f6bdereo7xjobbke5uhrug1ebd

--===============5670571552259668488==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Tested-by: Johannes Schauer Marin Rodrigues <josch@mister-muffin.de>

Quoting Ahmad Fatoum (2026-10-17 13:50:15)
> We do not support SetVirtualAddressMap() and UEFI v2.8 permits
> this as long as our EFI_RT_PROPERTIES_TABLE doesn't claim
> EFI_RT_SUPPORTED_SET_VIRTUAL_ADDRESS_MAP, which we adhere to[1].
>=20
> NetBSD's efiboot doesn't seem to care for lack of this bit and
> calls SetVirtualAddressMap() unconditionally[2]. This will return with
> an error, which has NetBSD call printf() _after_ ExitBootServices[3]
> leading to a crash[4].
>=20
> Fortunately, barebox is not the only firmware that doesn't implement
> a full-fledged SetVirtualAddressMap().
> Quoting NetBSD commit 41096fd ("efiboot: Use 1:1 PA to VA mappings for
> RT services.")[5]:
>=20
> | UEFI firmware on Snapdragon X Elite devices crashes when
> | SetVirtualAddressMap is called with runtime mappings that are not 1:1.
> | Always do this on arm64 as it won't interfere with KVA and will help us
> | avoid avoid a very common class of firmware bugs.
>=20
> This means we have an easy way for barebox to workaround this:
> Instead of returning EFI_UNSUPPORTED unconditionally, we can handle the
> trivial identity mapping case specially and report EFI_SUCCESS for it.
>=20
> While NetBSD doesn't need it, also implement a 1:1 ConvertPointer for
> good measure.
>=20
> [1]: https://uefi.org/specs/UEFI/2.10/04_EFI_System_Table.html
> [2]: https://github.com/NetBSD/src/blob/41096fd/sys/stand/efiboot/efiboot=
.c#L135
> [3]: https://github.com/NetBSD/src/blob/41096fd/sys/stand/efiboot/efifdt.=
c#L813
> [4]: https://gnats.netbsd.org/60890
> [5]: https://github.com/NetBSD/src/commit/41096fd4f7bac2ade3f29e9e6e00951=
aef9e16ce
>=20
> Reported-by: Johannes Schauer Marin Rodrigues <josch@debian.org>
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  efi/runtime/services.c | 67 ++++++++++++++++++++++++++++++++++++++++--
>  include/efi/memory.h   |  6 ++++
>  include/efi/services.h |  2 ++
>  3 files changed, 73 insertions(+), 2 deletions(-)
>=20
> diff --git a/efi/runtime/services.c b/efi/runtime/services.c
> index dc4960ac4763..ca60ae512a2d 100644
> --- a/efi/runtime/services.c
> +++ b/efi/runtime/services.c
> @@ -171,17 +171,80 @@ static efi_status_t EFIAPI efirt_set_wakeup_time(ch=
ar enabled,
>         return efirt_unimplemented();
>  }
> =20
> +/**
> + * efirt_set_virtual_address_map() - change from physical to virtual map=
ping
> + *
> + * This function implements the SetVirtualAddressMap() runtime service.
> + * The barebox runtime isn't relocated and only an identity mapping
> + * is accepted.
> + *
> + * We intentionally don't announce support via the EFI_RT_PROPERTIES_TAB=
LE,
> + * so only operating systems that ignore the table would end up here.
> + * If they configure a 1:1 mapping like NetBSD, we tolerate it and return
> + * success.
> + *
> + * See the Unified Extensible Firmware Interface (UEFI) specification for
> + * details.
> + *
> + * @memory_map_size:   size of the virtual map
> + * @descriptor_size:   size of an entry in the map
> + * @descriptor_version:        version of the map entries
> + * @virtmap:           virtual address mapping information
> + * Return:             status code
> + */
>  static efi_status_t EFIAPI efirt_set_virtual_address_map(size_t memory_m=
ap_size,
>                                                          size_t descripto=
r_size,
>                                                          uint32_t descrip=
tor_version,
>                                                          struct efi_memor=
y_desc *virtmap)
>  {
> -       return efirt_unimplemented();
> +       static bool efirt_virtmap_set;
> +
> +       EFI_ENTRY(L"");
> +
> +       if (efirt_virtmap_set)
> +               return EFI_EXIT(EFI_UNSUPPORTED);
> +
> +       if (descriptor_version !=3D EFI_MEMORY_DESCRIPTOR_VERSION ||
> +           descriptor_size < sizeof(*virtmap))
> +               return EFI_EXIT(EFI_INVALID_PARAMETER);
> +
> +       for (size_t off =3D 0; off < memory_map_size; off +=3D descriptor=
_size) {
> +               struct efi_memory_desc *md =3D (void *)virtmap + off;
> +
> +               if ((md->attrs & EFI_MEMORY_RUNTIME) &&
> +                   efi_memory_desc_relocation_offset(md) !=3D 0)
> +                       return EFI_EXIT(EFI_UNSUPPORTED);
> +       }
> +
> +       efirt_virtmap_set =3D true;
> +
> +       return EFI_EXIT(EFI_SUCCESS);
>  }
> =20
> +/**
> + * efirt_convert_pointer() - convert pointer to virtual address
> + *
> + * This function implements the ConvertPointer() runtime service.
> + * Only identity mappings are accepted, so the pointer is left as-is.
> + *
> + * See the Unified Extensible Firmware Interface (UEFI) specification for
> + * details.
> + *
> + * @dbg:       EFI_OPTIONAL_PTR if the pointer may be NULL
> + * @address:   pointer to be converted
> + * Return:     status code
> + */
>  static efi_status_t EFIAPI efirt_convert_pointer(unsigned long dbg, void=
 **address)
>  {
> -       return efirt_unimplemented();
> +       EFI_ENTRY(L"");
> +
> +       if (!address)
> +               return EFI_EXIT(EFI_INVALID_PARAMETER);
> +
> +       if (!*address && !(dbg & EFI_OPTIONAL_PTR))
> +               return EFI_EXIT(EFI_INVALID_PARAMETER);
> +
> +       return EFI_EXIT(EFI_SUCCESS);
>  }
> =20
>  static efi_status_t EFIAPI
> diff --git a/include/efi/memory.h b/include/efi/memory.h
> index 74e714099021..336d2a730c1c 100644
> --- a/include/efi/memory.h
> +++ b/include/efi/memory.h
> @@ -91,4 +91,10 @@ struct efi_memory_desc {
> =20
>  #define EFI_MEMORY_DESCRIPTOR_VERSION  1
> =20
> +static inline ptrdiff_t
> +efi_memory_desc_relocation_offset(const struct efi_memory_desc *md)
> +{
> +       return efi_virt_to_phys(md->virt_start) - md->phys_start;
> +}
> +
>  #endif
> diff --git a/include/efi/services.h b/include/efi/services.h
> index 2d7167b25205..83dc56150a4e 100644
> --- a/include/efi/services.h
> +++ b/include/efi/services.h
> @@ -162,6 +162,8 @@ enum efi_reset_type {
>  #define EFI_RUNTIME_SERVICES_SIGNATURE ((u64)0x56524553544e5552ULL)
>  #define EFI_RUNTIME_SERVICES_REVISION  0x00010000
> =20
> +#define EFI_OPTIONAL_PTR       0x00000001
> +
>  struct efi_capsule_header;
> =20
>  struct efi_runtime_services {
> --=20
> 2.47.3
>
--===============5670571552259668488==
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Description: signature
Content-Type: application/pgp-signature; name="signature.asc"; charset="us-ascii"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElFhU6KL81LF4wVq58sulx4+9g+EFAmrThZQACgkQ8sulx4+9
g+GDnQ/+K2nPv06Qew7pVxdXbQ6PLCzntg+NnbayP9TosZXWOaM2919qnlsHvCaS
Fng885Hf9Gwp+twIc0Vj20+jwakznQhL2nDb4/NBuwWis2NoTFcZKFo7dzLhAWAq
hFzwG5eLx5ZIzUiLgyaGefXOQVNroEu4xpEWGZX/70Jzo5NEm6QBAsj4WIqVFGnd
QHBWkLWUxsbhM3YHKF1Hd9vt1u0QynsqTQOQPinlsd4dMNsMCfa8GyG2gJ4KCait
9zbi905opZfQi4dVlqYyvlDg5qsMEg4UYX+tLx8MnLzUB7Gjo07zXtRU8x3mPDvT
dQb/4XtfdqUnG+LJzs/WUZe/dp2EmDeeS6m0o9RmVhztpUz3Y3m35Vvt0oHwJ5Wl
EkhU/PLK57NyTbh3KMA1CLQMyKefH0UGg26XV3TGXlR5sEtZKTgpGeYosgI+vBMM
kV0AGFWkr4xQ3dbNdpd9MwBh/js1BocuyNBSzoLNIvr7H5jgpP/N4ppkFViZT9Hd
Q9tZJCFuV+AF/S2K19k5lgoNu2Nhw/UJdAxJ4i4XNmSKgvTlW2YQF+FdOJFYI/jd
84aV3uQYYSsKYzzyf9pmcdunFO5iu13NbxpBFLUJin7Ih2XUKk3ci7U9wo70F5UM
uD8L1phwfC+aKFwMeWrxjyPJGw9d+7dGc/EPRx1Nb37kQiVIjqU=
=r+XL
-----END PGP SIGNATURE-----

--===============5670571552259668488==--


