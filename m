Delivery-date: Mon, 05 Oct 2026 07:35:08 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDbLw-009wSo-0a
	for lore@lore.pengutronix.de;
	Mon, 05 Oct 2026 07:35:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0A7B72004BB
	for <lore@pengutronix.de>; Mon, 05 Oct 2026 07:35:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="s1fD/2Eb";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QhR5oPoK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791178507; a=rsa-sha256;
	cv=pass;
	b=F0ekMumWWsxnIM9VAAYEzYzF9mzAVd84+fzmPZjMZXVBOxWqmo3P+7zQjPo1YjbgIXe5gd
	hJ8ExkB4ejt9IjNzIO9pVpTL8YhbGgZCMe2X3hFbBRwh3cYm+GjBSapfuSAq6T7RYEdmNi
	k9q772xq/thXfjGccjWLgGvXcqUxEhleJmTiesLl6XUZIg21PbJZ5ojX5orcqnjLnF1Mq2
	dWmwOfopn0s8txtQ/5lTxkgqoQoPCgIVp+5RAxpcNbYqe6lITDAcF8zkxMud3s4EOQqrrw
	nEZhwVm/iqWw4a7ZUq4605cnFmY69O177pKdl37DX5SVAQiNXVBp6AC4tSOqTQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="s1fD/2Eb";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QhR5oPoK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791178507;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=darDk2wiVDtMxO1SvALQguXB/xuZ4+p2Y9Ma3d/0UTY=;
	b=ds3XhZ2WUTl0IxvzzRUZAr/bBn+Fk70S89pq2ZxVilXU5Q3sLIUWsprQPiVacjha6HyuJP
	a7PXQnRaFyyUBPGegBMwkBDulyAPtyNaqGsv4dwtRNZmj95BdobwkNeg0/fdQzDwde8K6n
	YM9lHV4WZEyIjzRuTWpGt18uP4SxIrpWGSJ2Y+roxplNyq/HYXeux0eHQkdFhZ4QP92uVA
	JmxYyRUSByN2dmSPKfIIZu1XEczD1sHpLJwwpwChyg32+CHTJmUHh2UadfaqnKKNtFeg1s
	ag+6UkmGB53jxqC/D5/sCrUJOaTiStUM8bg6hsUSS1WnSGFxdqUbV7Fi76vr9g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=darDk2wiVDtMxO1SvALQguXB/xuZ4+p2Y9Ma3d/0UTY=; b=s1fD/2EbdvxJEhP0lK7X1OZfhP
	mwTq69LimKJ5sv558l08lx23RlYfr+nbikaw9iHFRViodqHjqQvom5M5fazpnmq78TkGxvzIj+9SE
	dx9v9gOO8uivCnz3nnElf/wKFAms2d63I4/SyjRHygj0wV/cnZitTlB1I69d1s3GBN+0xFTV4J9UU
	+zZB2jkOa5FmBtAFI4If8EwQQc4ZW0+L3I9EyQ7JVvdu6BVVo30UFZpsfvDmdvjVtPy3/Q3t3JqQy
	9Yx7VV4H0qw0BqSITQJHwOCu8sfvup55lzJH88dhw4DQhm0gaubYicbGjeJRmCVqaZywU9+lvoCHw
	DDeqzGaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDbKc-0000000FhJc-0BNt;
	Mon, 05 Oct 2026 05:33:46 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDbKY-0000000FhJF-39sL
	for barebox@lists.infradead.org;
	Mon, 05 Oct 2026 05:33:45 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 548F020125C;
	Mon, 05 Oct 2026 07:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791178418;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=darDk2wiVDtMxO1SvALQguXB/xuZ4+p2Y9Ma3d/0UTY=;
	b=QhR5oPoK3lqdGoXZjckG7WACSk7QCJpIvU8YpSIgPemBGrCmeyhB5i9lGj3gtaZ3ukUgiH
	uhySxfvoN0H7KU1fkaa6bAGOzksO9UdpBiv02JpKsopQS/9/X+BvNSYSs7LGQVNyEKp1L9
	l/bPUVCsEZPUdYUvLkH2XDG9iYznHopzvz4sJgtUNh2+KvWMYKcKnh2PtLeOEMrS1B62FY
	AkIIEuQaLF6RKv0iEp35fvI+zFSCr+u2l71SelfeN+p4UF1LVbRAmBTzg1lB8xe3yMt1xm
	blpzEpZuLPclIFl5Pn8Vwll5F2aFcfqupJaifJxtHddxkV75zGx5Up+Ft9WWaQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791178418; a=rsa-sha256;
	cv=none;
	b=SP3WaqaUwuJeZPn58lp6zqQCAHtH91wm+fl7sqe9SLUp+kWAso7qw0fan1luGfygkrQb2z
	9J5IoZF3tWAKIeB9Rn/XkrGM33kVkL6XnF6rJBGfZZaLn9EjMpQNcDdNjrmXtbjzdlTi0w
	6hddsS+pvD4Q4Rq+ckeYGruTGUTpdP60PsXy42Qpf602HJfYrmRh9xfZG8YVxBSn4xsR3K
	D9Vl02Qamk9F71AAuwEueQWtIXJp/qZhTiSOhhhOSPQPrbvFD2gSsc77uSSNK90x0oCfna
	+tOdCPOWuIG0zgYz69y/156LnXuMmDnZ9H9Sc4009M9AHTe1m4ZTL+ROkKl2lg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791178418;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=darDk2wiVDtMxO1SvALQguXB/xuZ4+p2Y9Ma3d/0UTY=;
	b=ODsLjkhh+NEUUJnithpIXS1frhVD77y1DmF6od8WvZrGlY889SYUwFLkcnCHjdjJMuAF7k
	+f2MBdJWVXrR3kkaQ81tRLgC0pPzLSnWmjicYyskxSUA6g3D5XDfMFl3GywuDZD0Syg2tl
	xdfsrSX9dhn7bpCq+1ZH7SQLWgbSDMS0Ukzo+GLizlevuRJtLaP0zeLiBYkrkN4OkDzxTD
	/D+jguKaW2SWheeYqqs0ajp4B0+gNTpVfFWm5aNgYvXf/9+oUAG2pyh1igve18wGFoUIJD
	Ki2n8Zn7QoRJmFiQgUw6KzwtpHwE4PG4sFmZeUSyj2EuDYAP1SNuwHVcJlbF/g==
Message-ID: <753fb66f-fe0c-453b-8508-a8ab85d44d90@pengutronix.de>
Date: Mon, 5 Oct 2026 07:33:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 08/14] efi: loader: verify Authenticode signatures
 against built-in keys
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
 <20261004011958.3255011-9-johannes.schneider@leica-geosystems.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261004011958.3255011-9-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_223343_428639_B18781F6 
X-CRM114-Status: GOOD (  32.16  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Johannes, On 10/4/26 03:19, Johannes Schneider wrote:
    > barebox's EFI loader verifies no signatures: efi_image_authenticate() >
    accepts every image. Add efi_authenticode_verify() as the verifier for >
   signed EF [...] 
 
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0A7B72004BB
X-Stat-Signature: ias6so4aq1bh7399i9mad71qk4dwfd1y

Hello Johannes,

On 10/4/26 03:19, Johannes Schneider wrote:
> barebox's EFI loader verifies no signatures: efi_image_authenticate()
> accepts every image. Add efi_authenticode_verify() as the verifier for
> signed EFI images: compute the Authenticode digest over the regions
> efi_image_parse() collects, check it against the SpcIndirectDataContent
> of the PKCS#7 signature, check the messageDigest attribute against the
> digest of that content, and verify the signature over the attributes
> with the keys of a barebox keyring. The following commits use it.
> 
> barebox has no ASN.1 decoder: keys are converted from certificates at
> build time, and FIT signatures carry none. The PKCS#7 structure is
> walked as plain DER for the fields needed, with every length checked
> against what remains; the certificates it carries are skipped.
> 
> Supported are one signer, SHA-256 and RSA. As for FIT images, trust
> comes from the keyring, not from X.509 chains or db/dbx.

We should import mbedTLS and then make use of its PKCS#7 support.
The goal being mbedTLS being updated regularly like we already do
with dts/

Cheers,
Ahmad

> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  efi/loader/Kconfig                |  16 ++
>  efi/loader/Makefile               |   1 +
>  efi/loader/authenticode.c         | 435 ++++++++++++++++++++++++++++++
>  include/efi/loader/authenticode.h |   9 +
>  4 files changed, 461 insertions(+)
>  create mode 100644 efi/loader/authenticode.c
>  create mode 100644 include/efi/loader/authenticode.h
> 
> diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
> index 5692e54ebe..4099da0689 100644
> --- a/efi/loader/Kconfig
> +++ b/efi/loader/Kconfig
> @@ -24,6 +24,22 @@ config EFI_LOADER_DEBUG_SUPPORT
>  config EFI_LOADER_SECURE_BOOT
>  	bool
>  
> +config EFI_LOADER_AUTHENTICODE
> +	bool "Verify Authenticode signatures of booted EFI images"
> +	depends on CRYPTO_BUILTIN_KEYS && HAVE_DIGEST_SHA256
> +	select CRYPTO_RSA
> +	help
> +	  Verify the Authenticode (PKCS#7, SHA-256, RSA) signature of an EFI
> +	  image booted with bootm against the keys compiled into the "efi"
> +	  keyring (CONFIG_CRYPTO_PUBLIC_KEYS, keyring=efi). With signed images
> +	  forced, an EFI image then boots only if one of those keys verifies
> +	  it, the same way a FIT image must carry a valid signature.
> +
> +	  X.509 certificates in the signature are not evaluated: trust is
> +	  anchored in the keyring. barebox does not report UEFI Secure Boot
> +	  to the payload, so a UKI keeps taking its command line from
> +	  barebox.
> +
>  menu "UEFI services"
>  
>  config EFI_LOADER_GET_TIME
> diff --git a/efi/loader/Makefile b/efi/loader/Makefile
> index 24850e87b1..775014dc22 100644
> --- a/efi/loader/Makefile
> +++ b/efi/loader/Makefile
> @@ -14,6 +14,7 @@ obj-y += boot.o
>  obj-y += runtime.o
>  obj-y += setup.o
>  obj-y += watchdog.o
> +obj-$(CONFIG_EFI_LOADER_AUTHENTICODE) += authenticode.o
>  obj-y += loadopts.o
>  obj-y += efi_var_common.o
>  obj-y += efi_variable.o
> diff --git a/efi/loader/authenticode.c b/efi/loader/authenticode.c
> new file mode 100644
> index 0000000000..36e5a46fc6
> --- /dev/null
> +++ b/efi/loader/authenticode.c
> @@ -0,0 +1,435 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Authenticode verification of PE images against barebox built-in keys:
> + * one signer, SHA-256 and RSA, the certificates in the signature are ignored
> + */
> +
> +#define pr_fmt(fmt) "efi-loader: authenticode: " fmt
> +
> +#include <common.h>
> +#include <digest.h>
> +#include <crypto/sha.h>
> +#include <malloc.h>
> +#include <crypto/public_key.h>
> +#include <efi/loader/pe.h>
> +#include <efi/loader/authenticode.h>
> +#include <efi/error.h>
> +#include <pe.h>
> +
> +struct der {
> +	const u8 *p;
> +	const u8 *end;
> +};
> +
> +struct der_elem {
> +	u8 tag;
> +	const u8 *start;	/* tag byte */
> +	const u8 *val;
> +	size_t len;
> +	size_t total;		/* tag + length + value */
> +};
> +
> +#define DER_INTEGER	0x02
> +#define DER_OCTET	0x04
> +#define DER_OID		0x06
> +#define DER_SEQ		0x30
> +#define DER_SET		0x31
> +#define DER_CTX0	0xa0
> +#define DER_CTX1	0xa1
> +
> +static const u8 oid_signed_data[] = { 0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x07, 0x02 };
> +static const u8 oid_spc_indirect_data[] = {
> +	0x2b, 0x06, 0x01, 0x04, 0x01, 0x82, 0x37, 0x02, 0x01, 0x04
> +};
> +static const u8 oid_sha256[] = { 0x60, 0x86, 0x48, 0x01, 0x65, 0x03, 0x04, 0x02, 0x01 };
> +static const u8 oid_content_type[] = { 0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x09, 0x03 };
> +static const u8 oid_message_digest[] = { 0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x09, 0x04 };
> +
> +static int der_next(struct der *d, struct der_elem *e)
> +{
> +	const u8 *p = d->p;
> +	size_t len, n;
> +
> +	if (d->end - p < 2)
> +		return -EBADMSG;
> +
> +	e->start = p;
> +	e->tag = *p++;
> +	if ((e->tag & 0x1f) == 0x1f)
> +		return -EBADMSG;
> +
> +	len = *p++;
> +	if (len & 0x80) {
> +		n = len & 0x7f;
> +		if (!n || n > 4 || d->end - p < n)
> +			return -EBADMSG;
> +		len = 0;
> +		while (n--)
> +			len = (len << 8) | *p++;
> +	}
> +
> +	if (d->end - p < len)
> +		return -EBADMSG;
> +
> +	e->val = p;
> +	e->len = len;
> +	e->total = p + len - e->start;
> +	d->p = p + len;
> +
> +	return 0;
> +}
> +
> +static int der_expect(struct der *d, u8 tag, struct der_elem *e)
> +{
> +	int ret = der_next(d, e);
> +
> +	if (ret)
> +		return ret;
> +
> +	return e->tag == tag ? 0 : -EBADMSG;
> +}
> +
> +static struct der der_enter(const struct der_elem *e)
> +{
> +	return (struct der) { .p = e->val, .end = e->val + e->len };
> +}
> +
> +static bool der_oid_is(const struct der_elem *e, const u8 *oid, size_t len)
> +{
> +	return e->tag == DER_OID && e->len == len && !memcmp(e->val, oid, len);
> +}
> +
> +/* AlgorithmIdentifier ::= SEQUENCE { OID, parameters OPTIONAL } */
> +static int der_expect_sha256(struct der *d)
> +{
> +	struct der_elem seq, oid;
> +	struct der in;
> +	int ret;
> +
> +	ret = der_expect(d, DER_SEQ, &seq);
> +	if (ret)
> +		return ret;
> +
> +	in = der_enter(&seq);
> +	ret = der_expect(&in, DER_OID, &oid);
> +	if (ret)
> +		return ret;
> +
> +	return der_oid_is(&oid, oid_sha256, sizeof(oid_sha256)) ? 0 : -EOPNOTSUPP;
> +}
> +
> +struct authenticode {
> +	const u8 *pe_digest;	/* SpcIndirectDataContent.messageDigest */
> +	const u8 *spc;		/* SpcIndirectDataContent content octets */
> +	size_t spc_len;
> +	const u8 *attrs;	/* [0] IMPLICIT authenticatedAttributes */
> +	size_t attrs_len;
> +	const u8 *attr_digest;	/* messageDigest attribute value */
> +	bool attr_content_type_ok;
> +	const u8 *sig;
> +	size_t sig_len;
> +};
> +
> +static int authenticode_parse_attrs(struct authenticode *a,
> +				    const struct der_elem *attrs)
> +{
> +	struct der in = der_enter(attrs);
> +	struct der_elem attr, oid, set, val;
> +	struct der ain, sin;
> +	int ret;
> +
> +	while (in.p < in.end) {
> +		ret = der_expect(&in, DER_SEQ, &attr);
> +		if (ret)
> +			return ret;
> +
> +		ain = der_enter(&attr);
> +		ret = der_expect(&ain, DER_OID, &oid);
> +		if (ret)
> +			return ret;
> +		ret = der_expect(&ain, DER_SET, &set);
> +		if (ret)
> +			return ret;
> +		sin = der_enter(&set);
> +
> +		if (der_oid_is(&oid, oid_message_digest, sizeof(oid_message_digest))) {
> +			ret = der_expect(&sin, DER_OCTET, &val);
> +			if (ret || val.len != SHA256_DIGEST_SIZE)
> +				return -EBADMSG;
> +			a->attr_digest = val.val;
> +		} else if (der_oid_is(&oid, oid_content_type, sizeof(oid_content_type))) {
> +			ret = der_expect(&sin, DER_OID, &val);
> +			if (ret)
> +				return ret;
> +			a->attr_content_type_ok =
> +				der_oid_is(&val, oid_spc_indirect_data,
> +					   sizeof(oid_spc_indirect_data));
> +		}
> +	}
> +
> +	return a->attr_digest ? 0 : -EBADMSG;
> +}
> +
> +static int authenticode_parse(struct authenticode *a, const void *buf, size_t len)
> +{
> +	struct der d = { .p = buf, .end = (const u8 *)buf + len };
> +	struct der_elem e, ci, sd, spc, dinfo, si;
> +	struct der in, sdin, ciin, spcin, dinin, siin;
> +	int ret;
> +
> +	/* ContentInfo ::= SEQUENCE { contentType, [0] EXPLICIT content } */
> +	ret = der_expect(&d, DER_SEQ, &ci);
> +	if (ret)
> +		return ret;
> +	in = der_enter(&ci);
> +	ret = der_expect(&in, DER_OID, &e);
> +	if (ret)
> +		return ret;
> +	if (!der_oid_is(&e, oid_signed_data, sizeof(oid_signed_data)))
> +		return -EBADMSG;
> +	ret = der_expect(&in, DER_CTX0, &e);
> +	if (ret)
> +		return ret;
> +	in = der_enter(&e);
> +
> +	/* SignedData ::= SEQUENCE { version, digestAlgorithms, contentInfo, ... } */
> +	ret = der_expect(&in, DER_SEQ, &sd);
> +	if (ret)
> +		return ret;
> +	sdin = der_enter(&sd);
> +	ret = der_expect(&sdin, DER_INTEGER, &e);
> +	if (ret)
> +		return ret;
> +	ret = der_expect(&sdin, DER_SET, &e);
> +	if (ret)
> +		return ret;
> +
> +	/* contentInfo: SPC_INDIRECT_DATA carrying the PE image digest */
> +	ret = der_expect(&sdin, DER_SEQ, &e);
> +	if (ret)
> +		return ret;
> +	ciin = der_enter(&e);
> +	ret = der_expect(&ciin, DER_OID, &e);
> +	if (ret)
> +		return ret;
> +	if (!der_oid_is(&e, oid_spc_indirect_data, sizeof(oid_spc_indirect_data)))
> +		return -EBADMSG;
> +	ret = der_expect(&ciin, DER_CTX0, &e);
> +	if (ret)
> +		return ret;
> +	ciin = der_enter(&e);
> +	ret = der_expect(&ciin, DER_SEQ, &spc);
> +	if (ret)
> +		return ret;
> +	a->spc = spc.val;
> +	a->spc_len = spc.len;
> +
> +	spcin = der_enter(&spc);
> +	ret = der_expect(&spcin, DER_SEQ, &e);	/* SpcAttributeTypeAndOptionalValue */
> +	if (ret)
> +		return ret;
> +	ret = der_expect(&spcin, DER_SEQ, &dinfo);	/* DigestInfo */
> +	if (ret)
> +		return ret;
> +	dinin = der_enter(&dinfo);
> +	ret = der_expect_sha256(&dinin);
> +	if (ret)
> +		return ret;
> +	ret = der_expect(&dinin, DER_OCTET, &e);
> +	if (ret || e.len != SHA256_DIGEST_SIZE)
> +		return -EBADMSG;
> +	a->pe_digest = e.val;
> +
> +	/* skip optional certificates [0] and crls [1] */
> +	do {
> +		ret = der_next(&sdin, &e);
> +		if (ret)
> +			return ret;
> +	} while (e.tag == DER_CTX0 || e.tag == DER_CTX1);
> +
> +	if (e.tag != DER_SET)
> +		return -EBADMSG;
> +
> +	/* first SignerInfo only */
> +	in = der_enter(&e);
> +	ret = der_expect(&in, DER_SEQ, &si);
> +	if (ret)
> +		return ret;
> +	siin = der_enter(&si);
> +	ret = der_expect(&siin, DER_INTEGER, &e);
> +	if (ret)
> +		return ret;
> +	ret = der_expect(&siin, DER_SEQ, &e);	/* issuerAndSerialNumber */
> +	if (ret)
> +		return ret;
> +	ret = der_expect_sha256(&siin);
> +	if (ret)
> +		return ret;
> +
> +	ret = der_expect(&siin, DER_CTX0, &e);
> +	if (ret)
> +		return ret;
> +	a->attrs = e.start;
> +	a->attrs_len = e.total;
> +	ret = authenticode_parse_attrs(a, &e);
> +	if (ret)
> +		return ret;
> +
> +	ret = der_expect(&siin, DER_SEQ, &e);	/* digestEncryptionAlgorithm */
> +	if (ret)
> +		return ret;
> +	ret = der_expect(&siin, DER_OCTET, &e);
> +	if (ret)
> +		return ret;
> +	a->sig = e.val;
> +	a->sig_len = e.len;
> +
> +	return 0;
> +}
> +
> +static int sha256_regions(const struct efi_image_regions *regs, u8 *out)
> +{
> +	struct digest *d = digest_alloc_by_algo(HASH_ALGO_SHA256);
> +	int i, ret;
> +
> +	if (!d)
> +		return -EOPNOTSUPP;
> +
> +	ret = digest_init(d);
> +	for (i = 0; !ret && i < regs->num; i++)
> +		ret = digest_update(d, regs->reg[i].data, regs->reg[i].size);
> +	if (!ret)
> +		ret = digest_final(d, out);
> +
> +	digest_free(d);
> +	return ret;
> +}
> +
> +static int sha256_buf(const void *buf, size_t len, u8 *out)
> +{
> +	struct digest *d = digest_alloc_by_algo(HASH_ALGO_SHA256);
> +	int ret;
> +
> +	if (!d)
> +		return -EOPNOTSUPP;
> +
> +	ret = digest_digest(d, buf, len, out);
> +	digest_free(d);
> +	return ret;
> +}
> +
> +/* The signature covers the attributes DER-encoded as SET OF, not as [0] */
> +static int sha256_attrs(const struct authenticode *a, u8 *out)
> +{
> +	struct digest *d = digest_alloc_by_algo(HASH_ALGO_SHA256);
> +	const u8 set_tag = DER_SET;
> +	int ret;
> +
> +	if (!d)
> +		return -EOPNOTSUPP;
> +
> +	ret = digest_init(d);
> +	if (!ret)
> +		ret = digest_update(d, &set_tag, 1);
> +	if (!ret)
> +		ret = digest_update(d, a->attrs + 1, a->attrs_len - 1);
> +	if (!ret)
> +		ret = digest_final(d, out);
> +
> +	digest_free(d);
> +	return ret;
> +}
> +
> +/**
> + * efi_authenticode_verify() - verify a PE image's Authenticode signature
> + * @efi:	PE image
> + * @len:	exact size of the image, see efi_pe_file_size()
> + * @keyring:	barebox keyring holding the trusted keys
> + *
> + * Return: 0 if the image is signed by a key in @keyring, negative error code
> + * otherwise.
> + */
> +int efi_authenticode_verify(void *efi, size_t len, const char *keyring)
> +{
> +	struct efi_image_regions *regs = NULL;
> +	const struct public_key *key;
> +	struct authenticode a = {};
> +	WIN_CERTIFICATE *wincert;
> +	size_t auth_len;
> +	u8 pe_hash[SHA256_DIGEST_SIZE], hash[SHA256_DIGEST_SIZE];
> +	const struct keyring *kr;
> +	int ret;
> +
> +	if (!efi_image_parse(efi, len, &regs, &wincert, &auth_len))
> +		return -EBADMSG;
> +
> +	if (!wincert) {
> +		pr_err("image is not signed\n");
> +		ret = -ENOKEY;
> +		goto out;
> +	}
> +
> +	if (wincert->dwLength > auth_len || wincert->dwLength <= sizeof(*wincert) ||
> +	    wincert->wRevision != WIN_CERT_REVISION_2_0 ||
> +	    wincert->wCertificateType != WIN_CERT_TYPE_PKCS_SIGNED_DATA) {
> +		pr_err("unsupported certificate table entry\n");
> +		ret = -EBADMSG;
> +		goto out;
> +	}
> +
> +	ret = authenticode_parse(&a, wincert + 1, wincert->dwLength - sizeof(*wincert));
> +	if (ret) {
> +		pr_err("cannot parse signature: %pe\n", ERR_PTR(ret));
> +		goto out;
> +	}
> +
> +	if (!a.attr_content_type_ok) {
> +		pr_err("signed content is not SpcIndirectDataContent\n");
> +		ret = -EBADMSG;
> +		goto out;
> +	}
> +
> +	ret = sha256_regions(regs, pe_hash);
> +	if (ret)
> +		goto out;
> +	if (memcmp(pe_hash, a.pe_digest, sizeof(pe_hash))) {
> +		pr_err("image digest mismatch\n");
> +		ret = -EBADMSG;
> +		goto out;
> +	}
> +
> +	ret = sha256_buf(a.spc, a.spc_len, hash);
> +	if (ret)
> +		goto out;
> +	if (memcmp(hash, a.attr_digest, sizeof(hash))) {
> +		pr_err("signed attributes do not match the content\n");
> +		ret = -EBADMSG;
> +		goto out;
> +	}
> +
> +	ret = sha256_attrs(&a, hash);
> +	if (ret)
> +		goto out;
> +
> +	kr = keyring_find(keyring);
> +	if (!kr) {
> +		pr_err("keyring '%s' not registered\n", keyring);
> +		ret = -ENOKEY;
> +		goto out;
> +	}
> +
> +	ret = -ENOKEY;
> +	for_each_key_in_keyring(key, kr) {
> +		if (!public_key_verify(key, a.sig, a.sig_len, hash, HASH_ALGO_SHA256)) {
> +			pr_info("verified with key '%s'\n", key->key_name_hint ?: "?");
> +			ret = 0;
> +			break;
> +		}
> +	}
> +
> +	if (ret)
> +		pr_err("no key in keyring '%s' verifies the signature\n", keyring);
> +out:
> +	free(regs);
> +	return ret;
> +}
> diff --git a/include/efi/loader/authenticode.h b/include/efi/loader/authenticode.h
> new file mode 100644
> index 0000000000..24c46ca7cf
> --- /dev/null
> +++ b/include/efi/loader/authenticode.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +#ifndef __EFI_LOADER_AUTHENTICODE_H
> +#define __EFI_LOADER_AUTHENTICODE_H
> +
> +#include <linux/types.h>
> +
> +int efi_authenticode_verify(void *efi, size_t len, const char *keyring);
> +
> +#endif


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


