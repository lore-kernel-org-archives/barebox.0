Delivery-date: Thu, 02 Jul 2026 09:52:50 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfCE6-00CBal-19
	for lore@lore.pengutronix.de;
	Thu, 02 Jul 2026 09:52:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CC7B820111C
	for <lore@pengutronix.de>; Thu, 02 Jul 2026 09:52:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=pkziA0V5;
	dkim=fail ("headers rsa verify failed") header.d=ku-gbr.de header.s=x header.b="J U9TZPn";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=WIZJLA1+OeXiDmoBIxke1VhL9MgnMEiM6+QNX020HUk=; b=pkziA0V5mUQfI3FMU4lwSGG0my
	0uPbQlasI+EYNQNelJ+wOAvR1eaIRq6kPcd5d6jyoY5VUqzK5CIGioDm8FF96orP3r9kZT+wl8sZn
	A+7BI74E3A0c8+KVyb8EmoDtvS7sJMqimruUYfRy0zvMNgwaA6TMwKS45z+fjlwIk3qfqpaB9OtAO
	Q+imNrrxWcQUmcYZWi1yQZn2ycts41NbcYKR4SWqMQEQEKwzzrLtjTOMRkcjyD5VdO1TxnsK3LDje
	Ta9xfGxrpUP5QZe51nK31SYeU2H9NOhbH6MG9o4XJxtqZeyyy/VKgpe8C3CuzCLHjlO+a5UaGuexA
	0OSfAEeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCD1-00000003mAF-3Mws;
	Thu, 02 Jul 2026 07:51:43 +0000
Received: from mail.ku-gbr.de ([2a02:790:4:9::dead])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCCz-00000003m9V-2Qje
	for barebox@lists.infradead.org;
	Thu, 02 Jul 2026 07:51:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ku-gbr.de;
	s=x; h=Message-ID:Date:Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:
	To:Subject:From:Sender:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=WIZJLA1+OeXiDmoBIxke1VhL9MgnMEiM6+QNX020HUk=; b=J
	U9TZPnq9wGJ3M+Qrs2O5JDexBCM6ZSKQ8Uxn36xC9B1yE5uYHARQxr/T0x/MQbru8F1dkzPSBGcDM
	rAhV2a4A+nukfjvZt8oW27IIyiZ+2wZ6HRd/QDc4HlR0H0EecV/jUcrKHIvcXeh8LU1NP8S3/Yirs
	oupK7RLXvPsGMOCxN9g4yu0Jc37z1KDIX9HK2dr5SGejTcR64rAsTzqyGDhJWqZqEkNz2QWyutaL1
	VedXygAiGuBJoOAp4GKKy6oUU6EQ/BzKJoQ4xAqSp1luK6CWITkGdIVUffq/pNOE4uhKQYhnkoY+D
	PqGyrm6MUU8eeGHy9T4CvUrjlJyhvYqyw==;
Received: from [2a02:560:5c74:8700:9ebf:dff:fe00:fdb5] (port=51374 helo=[127.0.0.1])
	by mail.ku-gbr.de with esmtpsa (Exim 4.96 #2 (Debian))
	id 1wfCCx-003FrC-2i;
	Thu, 02 Jul 2026 09:51:39 +0200
From: "Sascha Hauer" <sascha@saschahauer.de>
Subject: Re: [PATCH] crypto: sha256: PBL multi-block transform via ARMv8
 Crypto Extensions Crypto Extensions
To: "Johannes Schneider" <johannes.schneider@leica-geosystems.com>
Cc: barebox@lists.infradead.org, "Johannes Schneider" <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260616144924.1614561-2-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 07:51:39 +0000
Message-ID: <E1wfCCx-003FrC-2i@saschahauer.de>
X-ACL-Warn: Adding Message-ID header because it is missing!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_005141_668277_D56FAFEB 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Johannes, On 2026-06-16 14:49, Johannes Schneider wrote:
    > barebox's PBL ships a generic-C sha256_transform() that runs roughly >
   1.6 MB/s on a Cortex-A53. Callers that hash MB-scale blobs in the PBL > --
    e.g. [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Queue-Id: CC7B820111C
X-Spamd-Result: default: False [-4.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:johannes.schneider@leica-geosystems.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[saschahauer.de];
	FORGED_SENDER(0.00)[sascha@saschahauer.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[ku-gbr.de:s=x];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sascha@saschahauer.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,ku-gbr.de:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ha56xazxepk7qays3nsx17xnc1dpyjoy
X-Rspamd-Server: mx1

Hi Johannes,

On 2026-06-16 14:49, Johannes Schneider wrote:
> barebox's PBL ships a generic-C sha256_transform() that runs roughly
> 1.6 MB/s on a Cortex-A53. Callers that hash MB-scale blobs in the PBL
> -- e.g. the fw-external SHA-256 verify on i.MX8M, ~720 KiB of BL32 --
> spend hundreds of ms in the transform even with the D-cache warm.
>=20
> Wire the asm core in arch/arm/crypto/sha2-ce-core.S into the PBL link
> and expose it through a new sha256_transform_blocks() entry point.
> The asm has an internal multi-block loop; a single call amortises the
> prologue (round-constant load, state load) over the whole input, which
> makes the difference between ~200 ms (per-block calls) and ~5 ms
> (batched) on the BL32 verify.
>=20
> Rewire sha256_update()'s bulk path to call sha256_transform_blocks()
> with the remaining block count rather than looping over a single-block
> transform. The generic-C path gets a trivial blocks-wrapping shim so
> both code paths share the same caller-side API.
>=20
> The asm needs two link-time constants (sha256_ce_offsetof_count and
> sha256_ce_offsetof_finalize) which we provide locally rather than
> pulling in sha2-ce-glue.c -- the glue drags crypto-API and
> kernel_neon_begin shims that the PBL has no use for.
>=20
> Measured on i.MX8MM and i.MX8MP, ~720 KiB SHA-256 verify with MMU on:
>   ~300 ms (generic-C)
>   -> 17 ms (crypto-ext, single block per call)
>   -> 3-5 ms (crypto-ext, batched).
> Both crypto-ext savings carry over with MMU off too, just shifted up
> by the uncached-DRAM read cost.
>=20
> Assisted-by: Claude:claude-opus-4-7
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.co=
m>
> ---
>  arch/arm/crypto/Makefile |  3 ++
>  crypto/Kconfig           | 12 ++++++++
>  crypto/sha2.c            | 66 ++++++++++++++++++++++++++++++++++++----
>  3 files changed, 75 insertions(+), 6 deletions(-)
>=20
> diff --git a/arch/arm/crypto/Makefile b/arch/arm/crypto/Makefile
> index 55b3ac0538..72d4bd77c0 100644
> --- a/arch/arm/crypto/Makefile
> +++ b/arch/arm/crypto/Makefile
> @@ -15,6 +15,9 @@ sha1-ce-y :=3D sha1-ce-glue.o sha1-ce-core.o
>  obj-$(CONFIG_DIGEST_SHA256_ARM64_CE) +=3D sha2-ce.o
>  sha2-ce-y :=3D sha2-ce-glue.o sha2-ce-core.o
> =20
> +# Reuse the asm core (glue is provided inline in crypto/sha2.c).
> +pbl-$(CONFIG_PBL_DIGEST_SHA256_ARM64_CE) +=3D sha2-ce-core.o
> +
>  quiet_cmd_perl =3D PERL    $@
>        cmd_perl =3D $(PERL) $(<) > $(@)
> =20
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index 528e9a0d22..3dfb316b32 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -107,6 +107,18 @@ config DIGEST_SHA256_ARM64_CE
>  	  Architecture: arm64 using:
>  	  - ARMv8 Crypto Extensions
> =20
> +config PBL_DIGEST_SHA256_ARM64_CE
> +	bool "SHA-256 in PBL via ARMv8 Crypto Extensions"
> +	depends on CPU_V8 && PBL_IMAGE
> +	help
> +	  Use ARMv8 Crypto Extensions (sha256h/sha256h2/sha256su0/sha256su1)
> +	  for the SHA-256 transform inside the PBL. Roughly 100x faster than
> +	  the generic-C transform; for callers that hash large blobs (e.g.
> +	  fw-external SHA-256 verifies) this is the difference between tens
> +	  of ms and hundreds. Requires Cortex-A53 or later with the optional
> +	  Crypto Extensions feature.
> +
> +
>  endif
> =20
>  config CRYPTO_PBKDF2
> diff --git a/crypto/sha2.c b/crypto/sha2.c

Don't modify this file for adding a special purpose sha256
implementation.

Instead create a pbl/sha256.c where you have a

pbl_sha256(void *buf, size_t size)

In this pick the best available implementation.

Sascha



