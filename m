Delivery-date: Wed, 15 Oct 2025 16:35:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v92at-0087x9-1i
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 16:35:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v92as-0000ic-ED
	for lore@pengutronix.de; Wed, 15 Oct 2025 16:35:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9lCjqtzTuakudIu8jbUVqQZ0wdHocx5JkWU2YNiTU3w=; b=wziuYV5vuoSmp5uZI/ZFdBlfnQ
	cMkbclOzL9t50c1wI2plmB4AgkhsAEdnKl2oJRyL4g57LWZBigFrcoMU9uyOGklBmfaIllFSFnjS0
	tz9MwrfVkYJErTLBWC30jbYygo6EY8IRpoaFw2sEKyP+o26bF3JV9fwRWUTq6kXLDgPaJJ2n1PAn4
	1Hvgz9W19mBcyKzavUevE+0FRxLdknM9D6gGvJFXXY85UFQGmGzsjFWIJ7FMI5OGXGguB1ubKtx2W
	nHGpRFd6vuGxzC9GkLew2lTx6olRUTmqMKCxOeURo84sH1sxVm9YxFg6yl0Y71QINQ2+XgDFAfRwE
	uJtcqf6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v92a4-00000001ugK-02Pj;
	Wed, 15 Oct 2025 14:34:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v92a0-00000001ueh-27e8
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 14:34:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v92Zy-0008Ln-Cs; Wed, 15 Oct 2025 16:34:14 +0200
Message-ID: <86ec6e9a-c26f-442e-8bc8-8ddbf1842307@pengutronix.de>
Date: Wed, 15 Oct 2025 16:34:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-15-7a8aaf95081c@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-15-7a8aaf95081c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_073416_551878_99804144 
X-CRM114-Status: GOOD (  27.42  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 15/15] Documentation: migration-2025.11.0: List changes to
 CONFIG_CRYPTO_PUBLIC_KEYS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2025-10-14 13:03, Jonas Rebmann wrote:
> As part of the introduction of TLV signature in public key keyrings,
> there is a new interpreter for CONFIG_CRYPTO_PUBLIC_KEYS in
> scripts/keytoc.c. All users should update to the new syntax and are
> presented with a warning. Users with invalid characters in the legacy
> syntax must change the fit-hint and will be presented with an error.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>   Documentation/migration-guides/migration-2025.11.0.rst | 17 +++++++++++++++++
>   Documentation/user/barebox-tlv.rst                     | 16 ++++++++--------
>   2 files changed, 25 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/migration-guides/migration-2025.11.0.rst b/Documentation/migration-guides/migration-2025.11.0.rst
> new file mode 100644
> index 0000000000..87b1486fda
> --- /dev/null
> +++ b/Documentation/migration-guides/migration-2025.11.0.rst
> @@ -0,0 +1,17 @@
> +Release v2025.11.0
> +==================
> +
> +Configuration options
> +---------------------
> +
> +* The syntax of ``CONFIG_CRYPTO_PUBLIC_KEYS`` was updated with the introduction
> +  of the keyring feature. Previously, keys selected via
> +  ``CONFIG_CRYPTO_PUBLIC_KEYS`` were only used for fitimage verification. Now,
> +  fitimage verification uses the "fit" keyring. "fit" will be selected as the
> +  default keyring for transition but a warning will be emitted when no keyring
> +  is explicitly provided. Existing users should update their keyspec for
> +  fitimage public keys to ``keyring=fit[,fit-hint=<fit_hint>]:<crt>``
> +* The fit-hints in ``CONFIG_CRYPTO_PUBLIC_KEYS`` are now limited to identifiers
> +  matching the regular expression ``[a-zA-Z][a-zA-Z0-9_-]*``. Public keys with
> +  a ``fit-hint`` not conforming to this results in an error, affected key-hints
> +  must be changed. Please reach out to the mailing list if this causes issues.
> diff --git a/Documentation/user/barebox-tlv.rst b/Documentation/user/barebox-tlv.rst
> index 46d1f7a006..1c1abfb43a 100644
> --- a/Documentation/user/barebox-tlv.rst
> +++ b/Documentation/user/barebox-tlv.rst
> @@ -31,8 +31,8 @@ The TLV binary has the following format:
>        };
>   
>        struct sig {
> -       u8 spki_hash_prefix[4];
> -       u8 signature[];
> +         u8 spki_hash_prefix[4];
> +         u8 signature[];
>        };
>   
>        struct tlv_format {
> @@ -67,12 +67,12 @@ Parsing must be handled by board-specific extensions.
>   Signature
>   ---------
>   
> -If ``length_sig`` is zero, signature is disabled.
> -The ``signature`` section of the file is exactly ``length_sig`` bytes long.
> -This includes the ``spki_hash_prefix``, followed by the signature itself.
> -``spki_hash_prefix`` is the first bytes of the sha256 hash of the *Subject
> -Public Key Info* and its purpose is to allow for quicker matching of a signed
> -TLV with its corresponding public key during signature verification.
> +If ``length_sig`` is zero, signature is disabled.  The ``signature`` section of
> +the file is exactly ``length_sig`` bytes long.  This includes the
> +``spki_hash_prefix``, followed by the signature itself.  ``spki_hash_prefix``
> +is the first four bytes of the sha256 hash of the *Subject Public Key Info* and
> +its purpose is to allow for quicker matching of a signed TLV with its
> +corresponding public key during signature verification.
>   
>   The ``signature`` shall be verified on all fields before the ``signature`` field,
>   but with ``length_sig`` overwritten with 0,
> 

The changes to Documentation/user/barebox-tlv.rst are supposed to be
part of the previous patch. Will correct that in v2.

  - Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


