Delivery-date: Fri, 10 Jul 2026 19:02:45 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wiEcf-002Jqm-0r
	for lore@lore.pengutronix.de;
	Fri, 10 Jul 2026 19:02:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BFD6F202021
	for <lore@pengutronix.de>; Fri, 10 Jul 2026 19:02:44 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vAoEsqEm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t3OPHHwnoPUkT3qspIaAHbekOWy/XOPlNX1nSS0mfmM=; b=vAoEsqEmsN840PuPdhgkRrUw8A
	OV0i7w7ZQlTapmN7x3YVd9GNu1oURfAjXzKAcwImQNZNkpDrclwxFCU0ToWd0c2BewsJ/yxUIG/CH
	m8fVhf2LVBXknQr6NxHLq/iuqxB+zDSOKk75+VfHKLB2h7MKPvbQdEjlWapVRI5eTuz+XNMr7A+FU
	K6vQPLB6uKOmzTQOUwQUuKP7C5QG7YKUHyAEzrBkzvVisDpP9PedjE2dykx5n1BU0bP29urvXZXix
	1NtSkqftm2RmURRVGPNAv7BwfHYegAR67c0ZefRw/r0oCPfxd3K83ftZr3OpHe1/J1utDnyW3PbGW
	UHzBVZww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiEbN-00000005P1t-2UDB;
	Fri, 10 Jul 2026 17:01:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiEbK-00000005P0h-24HM
	for barebox@lists.infradead.org;
	Fri, 10 Jul 2026 17:01:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wiEbH-0006IR-AO; Fri, 10 Jul 2026 19:01:19 +0200
Message-ID: <7ed858acc36fa7e9ae970f98d5a96e712e01b44c.camel@pengutronix.de>
Subject: Re: [PATCH 1/2] PBL: add pbl_sha256()
From: Lucas Stach <l.stach@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX
 <barebox@lists.infradead.org>
Date: Fri, 10 Jul 2026 19:01:19 +0200
In-Reply-To: <20260709-pbl-sha256-v1-1-453800909579@pengutronix.de>
References: <20260709-pbl-sha256-v1-0-453800909579@pengutronix.de>
	 <20260709-pbl-sha256-v1-1-453800909579@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_100122_557805_59665D7A 
X-CRM114-Status: GOOD (  22.85  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Am Donnerstag, dem 09.07.2026 um 13:14 +0200 schrieb Sascha
    Hauer: > The PBL open-codes SHA-256 as sha256_init()/sha256_update()/sha256_final()
    > wherever it needs to hash a blob, which always uses th [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[l.stach@pengutronix.de,barebox-bounces@lists.infradead.org];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_ALL(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[l.stach@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: BFD6F202021
X-Stat-Signature: iodc741mmneqwyru6jwwxpcnq4bemmw4

Am Donnerstag, dem 09.07.2026 um 13:14 +0200 schrieb Sascha Hauer:
> The PBL open-codes SHA-256 as sha256_init()/sha256_update()/sha256_final(=
)
> wherever it needs to hash a blob, which always uses the generic C transfo=
rm.
> Add pbl_sha256(), a one-shot helper that hides this behind a single call =
and
> is free to pick the best transform available in the PBL. For now it only
> wraps the generic C implementation; an accelerated path is added on top i=
n a
> later commit.
>=20
> Convert pbl_barebox_verify() in pbl/decomp.c to the new helper as the fir=
st
> user.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/crypto/pbl-sha.h |  4 ++++
>  pbl/Makefile             |  1 +
>  pbl/decomp.c             |  6 +-----
>  pbl/sha256.c             | 25 +++++++++++++++++++++++++
>  4 files changed, 31 insertions(+), 5 deletions(-)
>=20
> diff --git a/include/crypto/pbl-sha.h b/include/crypto/pbl-sha.h
> index 7d323ab479..2508448ab4 100644
> --- a/include/crypto/pbl-sha.h
> +++ b/include/crypto/pbl-sha.h
> @@ -3,6 +3,7 @@
> =20
>  #define __PBL_SHA_H_
> =20
> +#include <crypto/sha.h>
>  #include <digest.h>
>  #include <types.h>
> =20
> @@ -10,4 +11,7 @@ int sha256_init(struct digest *desc);
>  int sha256_update(struct digest *desc, const void *data, unsigned long l=
en);
>  int sha256_final(struct digest *desc, u8 *out);
> =20
> +/* One-shot SHA-256 that picks the best transform available in the PBL. =
*/
> +void pbl_sha256(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE])=
;
> +
>  #endif /* __PBL-SHA_H_ */
> diff --git a/pbl/Makefile b/pbl/Makefile
> index 45cfbf5fba..4506f192fe 100644
> --- a/pbl/Makefile
> +++ b/pbl/Makefile
> @@ -6,6 +6,7 @@
>  pbl-y +=3D misc.o
>  pbl-y +=3D string.o
>  pbl-y +=3D malloc.o
> +pbl-y +=3D sha256.o
>  pbl-$(CONFIG_HAVE_IMAGE_COMPRESSION) +=3D decomp.o
>  pbl-$(CONFIG_LIBFDT) +=3D fdt.o
>  pbl-$(CONFIG_PBL_CONSOLE) +=3D console.o
> diff --git a/pbl/decomp.c b/pbl/decomp.c
> index 1539a6b67e..2b3c35012f 100644
> --- a/pbl/decomp.c
> +++ b/pbl/decomp.c
> @@ -58,8 +58,6 @@ extern unsigned char sha_sum_end[];
>  int pbl_barebox_verify(const void *compressed_start, unsigned int len,
>  		       const void *hash, unsigned int hash_len)
>  {
> -	struct sha256_state sha_state =3D { 0 };
> -	struct digest d =3D { .ctx =3D &sha_state };
>  	char computed_hash[SHA256_DIGEST_SIZE];
>  	int i;
>  	const char *char_hash =3D hash;
> @@ -67,9 +65,7 @@ int pbl_barebox_verify(const void *compressed_start, un=
signed int len,
>  	if (hash_len !=3D SHA256_DIGEST_SIZE)
>  		return -1;
> =20
> -	sha256_init(&d);
> -	sha256_update(&d, compressed_start, len);
> -	sha256_final(&d, computed_hash);
> +	pbl_sha256(compressed_start, len, computed_hash);
>  	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
>  		puts_ll("CH ");
> =20
> diff --git a/pbl/sha256.c b/pbl/sha256.c
> new file mode 100644
> index 0000000000..86e54f8a25
> --- /dev/null
> +++ b/pbl/sha256.c
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * pbl_sha256() - one-shot SHA-256 for the PBL, picking the best availab=
le
> + * transform (ARMv8 Crypto Extensions if present, else generic C).

This file isn't ARMv8 specific, so I don't really see why the comment
would reference a specific implementation.

> + */
> +
> +#include <common.h>
> +#include <crypto/sha.h>
> +#include <crypto/pbl-sha.h>
> +#include <digest.h>
> +
> +static void pbl_sha256_generic(const void *buf, size_t len, u8 *out)
> +{
> +	struct sha256_state state =3D { };
> +	struct digest d =3D { .ctx =3D &state, .length =3D SHA256_DIGEST_SIZE }=
;
> +
> +	sha256_init(&d);
> +	sha256_update(&d, buf, len);
> +	sha256_final(&d, out);
> +}
> +
> +void pbl_sha256(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE])

That's a weird way to write "u8 *out"...

> +{
> +	pbl_sha256_generic(buf, len, out);
> +}


