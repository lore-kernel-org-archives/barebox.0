Delivery-date: Sat, 17 Oct 2026 16:27:49 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xI5O1-00Eptj-1e
	for lore@lore.pengutronix.de;
	Sat, 17 Oct 2026 16:27:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D116A202337
	for <lore@pengutronix.de>; Sat, 17 Oct 2026 16:27:48 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zGM50jzz;
	dkim=pass header.d=debian.org header.s=smtpauto.stravinsky header.b="b6ITG/kZ";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=debian.org
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792247269; a=rsa-sha256;
	cv=none;
	b=bhuSHkkTZYehAYnXz4osp3kK9OdfeVh5BNXV6kWalr40cUJFcv1AtOBcACwg8OJat16cZv
	bLv47a22yl98lM2LSf2ZwB66SDtzhNWjmIfSmrCq2Fr1P7TPNvSudPKU4+WANuQrcTPmeC
	Am8yRfkwQ6Zar4m8oMB6oc3JYaV/p4EAcbwdyqCCtr8lbN/BD9WZqJlsTxmSWOMinI6hoO
	wqRHpYbksHwcJP1+3xi6FqNWFcSAO1w91UrV8FilQIqpaGQpt0sXZc7Mrc81oLNddwRfYL
	v9N/ngbmwVuheaH1xFzyhhFmyj6CyKQYsEGkcv1si4HwA+50n1xFt67PwrvkXQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zGM50jzz;
	dkim=pass header.d=debian.org header.s=smtpauto.stravinsky header.b="b6ITG/kZ";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=debian.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792247269;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=jyJZBep8ljK2oqxUcUETaTryKHBW34Wb237FeNO42+U=;
	b=K7XaqtrmshnA0Yuyb3ab0Qv7Li+eixO3Mrm0e5v/lHdOYcDXX6wnpTTK/Ey+gpRqNlNv1I
	3txgakPSIxYmo3D3b6Zk/xbWItLEdRJQhFUfdxBTHxoQ6G/uDK06HN3nUlSDGerjv269LS
	ZbOdPhVzvHuANz2sEMUykKl/IrWSK7qV1gyyUvS60L9QCgN3x3PmpN9/0DQpJBsk2u7dQE
	+I2y+eU1YBmpBR9EJPmCa/OBLw7hpZ1bOKOMjfh3/zpNHnYsXKbu8soW+x5uE9gDpIZJwJ
	AcxOZSTsoHaZKKPHBqHmcxzXOSARrAQtnxvSYyXnFAjxVtyBmCvCcCHl2RY7Nw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:
	Subject:References:In-Reply-To:MIME-Version:Content-Type:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jyJZBep8ljK2oqxUcUETaTryKHBW34Wb237FeNO42+U=; b=zGM50jzzrddkZzS1ckPrSe1QBP
	Nn+MffgdWG0RDbvZndJKaE1OIHB3xXQsYnxmTis1V8WcUBc70Bm9BnzGDACOVX5ddeGcIkPS/dCzD
	qrkifNSB8oTMEfXbPu3/eG5Q9vIu1pC3FfL00nTsb5N34JqzIwiZJXCXPeu/SsGlRRZkFL62xGGAV
	CaT74mmrutxhDP1KOm6jQBciTk8KLUOn/ytDFOU52GWxyzmpgGZSUxZ74ri+a6yVblLiVn8hy9RuI
	eJ4z+HVPy9yOFK2TTWbUoQC3dR2epJ5XZJafraWi3bRJpsIEBDncBEy8SQZB11CQFpALMFO30jxqL
	zEJ63zgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI5Mb-00000004pHm-1PRP;
	Sat, 17 Oct 2026 14:26:21 +0000
Received: from stravinsky.debian.org ([2001:41b8:202:deb::311:108])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI5MX-00000004pHN-3fEN
	for barebox@lists.infradead.org;
	Sat, 17 Oct 2026 14:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Content-Type:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=jyJZBep8ljK2oqxUcUETaTryKHBW34Wb237FeNO42+U=; b=b6ITG/kZ0KeEhG04zPzIFMpv+F
	7lS1pXyhyPDwGKssA2bsz7i7yoyluD+2ZAzG8EvegXZMoG2vB762ZFUl+eJwYw25YDmax6SpC1NPh
	x9G61vWnpGrlwzNtsLF8Az21n10xP5gzC8dI9KpPQOLhQyoM5+EW6F9Pcyvi0QeYrSICsTVw4A4He
	ce/CdK8W5pq8ANG+3R4TLZHI7+sMfM7YSDeYdAyjMXC+UTXT2oWdxXz0hbMYXZGUGZe/sa88wML5W
	9eq0fBgZ1TdkJWueuspan3JlgAJu7vXQGzizMMC9oK8v6V5Hc/FwPzFyW1ucbhYOqHdcNAU4SGnoW
	C0SPo0hQ==;
Received: from authenticated-user
	by stravinsky.debian.org with utf8esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.96)
	(envelope-from <josch@debian.org>)
	id 1xI5MU-006oRr-05;
	Sat, 17 Oct 2026 14:26:14 +0000
Content-Type: multipart/signed; micalg="pgp-sha512"; protocol="application/pgp-signature"; boundary="===============0960211430232530591=="
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261017115018.1202076-1-a.fatoum@barebox.org>
References: <20261017115018.1202076-1-a.fatoum@barebox.org>
Subject: Re: [PATCH 1/2] efi: loader: in-place patch the runtime services on ExitBootServices
From: Johannes Schauer Marin Rodrigues <josch@debian.org>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Date: Sat, 17 Oct 2026 16:26:12 +0200
Message-ID: <179224717249.684046.9185380651652532594@localhost>
User-Agent: alot/0.0.0
X-Debian-User: josch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_072617_927330_FE0D5F7A 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -4.4 (----)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Tested-by: Johannes Schauer Marin Rodrigues <josch@mister-muffin.de>
    Quoting Ahmad Fatoum (2026-10-17 13:50:14) > ExitBootServices() repoints
   systab->runtime at a separate table with the > detached runtime services.
   If an EFI application caches RT, it may end > up call [...] 
 
 Content analysis details:   (-4.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [2001:41b8:202:deb:0:0:311:108 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
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
X-Rspamd-Queue-Id: D116A202337
X-Spamd-Result: default: False [-10.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	DWL_DNSWL_LOW(-1.00)[debian.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_RHS_NOT_FQDN(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[debian.org,none];
	RCVD_IN_DNSWL_MED(-0.40)[2001:41b8:202:deb::311:108:received,2607:7c80:54:3::133:from];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,debian.org:s=smtpauto.stravinsky];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_RECIPIENTS(0.00)[m:a.fatoum@barebox.org,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[josch@debian.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[josch@debian.org,barebox-bounces@lists.infradead.org];
	RCPT_COUNT_THREE(0.00)[3];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	DKIM_TRACE(0.00)[lists.infradead.org:+,debian.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: hdamqjshxgt75mr4h6zo5nygwghwfx4a

--===============0960211430232530591==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Tested-by: Johannes Schauer Marin Rodrigues <josch@mister-muffin.de>

Quoting Ahmad Fatoum (2026-10-17 13:50:14)
> ExitBootServices() repoints systab->runtime at a separate table with the
> detached runtime services. If an EFI application caches RT, it may end
> up calling into the stale boot-time runtime services object.
>=20
> Fix this by keeping the systab->runtime pointer the same and do a
> "deep copy" by rewriting the object including its callbacks instead.
>=20
> Cc: Johannes Schauer Marin Rodrigues <josch@debian.org>
> Fixes: 699145f1cb22 ("efi: runtime: add runtime service support after Exi=
tBootServices")
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  efi/loader/boot.c      | 5 ++++-
>  efi/loader/runtime.c   | 2 +-
>  efi/loader/watchdog.c  | 4 ++--
>  efi/runtime/services.c | 3 ++-
>  include/efi/loader.h   | 2 +-
>  5 files changed, 10 insertions(+), 6 deletions(-)
>=20
> diff --git a/efi/loader/boot.c b/efi/loader/boot.c
> index 2d98c95b5c34..ddfbf33bff69 100644
> --- a/efi/loader/boot.c
> +++ b/efi/loader/boot.c
> @@ -3879,6 +3879,8 @@ static struct efi_boot_services efi_boot_services =
=3D {
> =20
>  static __efi_runtime_data u16 firmware_vendor[] =3D L"barebox";
> =20
> +static __efi_runtime_data struct efi_runtime_services efi_runtime_servic=
es;
> +
>  __efi_runtime_data struct efi_system_table systab =3D {
>         .hdr =3D {
>                 .signature =3D EFI_SYSTEM_TABLE_SIGNATURE,
> @@ -3925,8 +3927,9 @@ efi_status_t efi_initialize_system_table(void)
>         systab.boottime =3D &efi_boot_services;
> =20
>         /*
> -        * This will be overwritten dynamically at detach time.
> +        * This must be overwritten dynamically at detach time.
>          */
> +       efi_runtime_services =3D efi_runtime_services_boot;
>         systab.runtime =3D &efi_runtime_services;
> =20
>         /* Set CRC32 field in table headers */
> diff --git a/efi/loader/runtime.c b/efi/loader/runtime.c
> index a8f872f23b48..329e1077889f 100644
> --- a/efi/loader/runtime.c
> +++ b/efi/loader/runtime.c
> @@ -293,7 +293,7 @@ static efi_status_t EFIAPI efi_set_time_boottime(stru=
ct efi_time *time)
>   * the runtime services will be replaced by the detached implementation,
>   * so we need not take any special consideration here.
>   */
> -struct efi_runtime_services efi_runtime_services =3D {
> +struct efi_runtime_services efi_runtime_services_boot =3D {
>         .hdr =3D {
>                 .signature =3D EFI_RUNTIME_SERVICES_SIGNATURE,
>                 .revision =3D EFI_SPECIFICATION_VERSION,
> diff --git a/efi/loader/watchdog.c b/efi/loader/watchdog.c
> index a4715c149add..c29f91a0aa07 100644
> --- a/efi/loader/watchdog.c
> +++ b/efi/loader/watchdog.c
> @@ -35,8 +35,8 @@ static void EFIAPI efi_watchdog_timer_notify(struct efi=
_event *event,
>         EFI_ENTRY("%p, %p", event, context);
> =20
>         pr_emerg("\nEFI: Watchdog timeout\n");
> -       EFI_CALL_VOID(efi_runtime_services.reset_system(EFI_RESET_COLD,
> -                                                       EFI_SUCCESS, 0, N=
ULL));
> +       EFI_CALL_VOID(systab.runtime->reset_system(EFI_RESET_COLD,
> +                                                  EFI_SUCCESS, 0, NULL));
> =20
>         EFI_EXIT(EFI_UNSUPPORTED);
>  }
> diff --git a/efi/runtime/services.c b/efi/runtime/services.c
> index 5044e16c7c5c..dc4960ac4763 100644
> --- a/efi/runtime/services.c
> +++ b/efi/runtime/services.c
> @@ -293,7 +293,8 @@ void efi_runtime_detach(struct efi_system_table *syst=
ab)
>         systab->std_err =3D NULL;
>         systab->boottime =3D NULL;
> =20
> -       systab->runtime =3D &efi_runtime_services_detached;
> +       /* Payloads may have cached systab->runtime, so patch it in place=
 */
> +       *systab->runtime =3D efi_runtime_services_detached;
> =20
>         /* Recalculate CRC32 */
>         efi_update_table_header_crc32(&systab->hdr);
> diff --git a/include/efi/loader.h b/include/efi/loader.h
> index 4dcd15854560..0ccc0a720a90 100644
> --- a/include/efi/loader.h
> +++ b/include/efi/loader.h
> @@ -19,7 +19,7 @@ struct efi_table_hdr;
>  /* Key identifying current memory map */
>  extern efi_uintn_t efi_memory_map_key;
> =20
> -extern struct efi_runtime_services efi_runtime_services;
> +extern struct efi_runtime_services efi_runtime_services_boot;
>  extern struct efi_system_table systab;
> =20
>  extern struct efi_simple_text_output_protocol efi_con_out;
> --=20
> 2.47.3
>
--===============0960211430232530591==
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Description: signature
Content-Type: application/pgp-signature; name="signature.asc"; charset="us-ascii"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElFhU6KL81LF4wVq58sulx4+9g+EFAmrThYQACgkQ8sulx4+9
g+FaDw/8Dn2GS5Se+JNIuVvL9Z/NhiBBRvIn6Ixww7pzzo9s/IrL0CBnGmJ+LJZ7
DgcEhyEKTfMKOLrbfkdfs7G2saOll6QvWQNkwTrBlfPlypzWqopXoyQ+uoAoPt+P
XjwnCSqzCLIgbU172avH3e3KzEKvqlaRsbY5iApzjvJGpikxX8o1ebVb5ErYSu4f
ooNBFVj+AncfyRL6qq3PgXib1IEiO9hIzc0SpRMEj0FSDmNbicyLGhCOvf3QR66y
k7l1+cfcEQ+3UOw3Me2K3uaH8aX07XUxVSHlrkDdMbYnpz4IIxQRko24hWF1sYkW
YWfEYUlLImci4U+3mloOA575uuYb5XG3F4tMNP0ZcAZEm4Pf8r6PfoPoBJOO5ma+
OVrEVaKxJtkYfzmFMx5ZawbQamFqy597g/QbJeAiTsqokS79sJ6ZbV63YjEfZbcj
y1AGT4KZGZu3nlhve+g+pINxBbtpAG2JPbctscItQ7UkVk/e8glIjhP5KBCEFZXX
1zn3bHx2AkWRVJDWBOMHvvpqmBGo8WrLCXPHyBozj2DquEdWQ3/SIbeaWeStvWcc
M1r2iDMJs+0dNtp1HQt9NXOxjIv3H6ljOdimqf4YBA+4opSmApWNu59RhhxOGqkm
vWXAI/C2hnYg11Q0UWe0kyrXibwlZaqv1OrPuIlB0waE2g/KsrM=
=w1Fd
-----END PGP SIGNATURE-----

--===============0960211430232530591==--


