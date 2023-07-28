Delivery-date: Fri, 28 Jul 2023 07:39:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPGCG-00D6SG-IK
	for lore@lore.pengutronix.de; Fri, 28 Jul 2023 07:39:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPGCE-0007Fp-4N
	for lore@pengutronix.de; Fri, 28 Jul 2023 07:39:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MTvh0dp02FuzCzclLyduIPPXPqAcOYm2tqv1eEbQb3g=; b=fuIDvVpJ5TOVeaJcvPUgHKxbwt
	0iNnPV23opA/S7ZeSB6wT9jhZFaae3DFyKUoht6957JtFHp68BbkJ2yqEA7wiwTKlqLGMCe9PPsg2
	7f0KM1GuoPRfaw7p6Izpyr7Z1ZP21bTUYQnCOPD1DuIyh02QvzLrRg2bln0NtC/2KqzcblbXkfqIB
	AAVd380qwaegcXI3wDiLw2ekzAsYeOEZrB9mliWci5I+eWF2LteZ4fUg5mklEAjXvEOsWoqNosBQE
	St0LRn5biSNeEqAcneyXEmx0N3DtlU3/+Z1y0UfrQV8TLPLJbWiLhVdfJHsBO3MHbpRbNM2rddx4k
	BdgiiF0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGAm-001kEC-1T;
	Fri, 28 Jul 2023 05:37:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGAj-001kDS-0S
	for barebox@lists.infradead.org;
	Fri, 28 Jul 2023 05:37:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPGAf-0007Bp-Kp; Fri, 28 Jul 2023 07:37:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPGAf-00026i-DO; Fri, 28 Jul 2023 07:37:49 +0200
Date: Fri, 28 Jul 2023 07:37:49 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20230728053749.GA18491@pengutronix.de>
References: <20230727094748.1152484-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230727094748.1152484-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_223753_196599_06C21273 
X-CRM114-Status: GOOD (  27.34  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] crypto: clarify relationship of
 CONFIG_{BOOTM_FITIMAGE_PUBKEY,RSA_KEY}
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jul 27, 2023 at 11:47:48AM +0200, Ahmad Fatoum wrote:
> CONFIG_RSA_KEY and CONFIG_BOOTM_FITIMAGE_PUBKEY can both point at the
> RSA public key, but with different formats. CONFIG_RSA_KEY is probably
> easier to integrate, so reference it from CONFIG_BOOTM_FITIMAGE_PUBKEY
> and be explicit about the different formatting.
> ---
>  common/Kconfig | 11 ++++++++---
>  crypto/Kconfig |  3 +++
>  2 files changed, 11 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 3a57e16b3be6..0c7ba6a63685 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -644,9 +644,10 @@ config BOOTM_FITIMAGE_PUBKEY_ENV
>  	bool "Specify path to public key in environment"
>  	depends on BOOTM_FITIMAGE_SIGNATURE
>  	help
> -	  If this option is enabled the path to the public key for verifying
> -	  FIT images signature is taken from environment which allows for
> -	  better integration with build systems.
> +	  If this option is enabled the path to the device tree snippet
> +	  containing the public key for verifying FIT images signature is taken
> +	  from make's build-time environment, which can allow for better
> +	  integration with some build systems.
>  
>  	  The environment variable has the same name as the corresponding
>  	  Kconfig variable:
> @@ -664,6 +665,10 @@ config BOOTM_FITIMAGE_PUBKEY
>  	  snippet can then be included in a device tree with
>  	  "#include CONFIG_BOOTM_FITIMAGE_PUBKEY".
>  
> +	  This snippet is usually generated by decompiling a device tree produced
> +	  by mkimage. An alternative is CONFIG_CRYPTO_RSA_KEY, which takes a PEM
> +	  file or a PKCS#11 URI.
> +
>  endif
>  
>  config BOOTM_FORCE_SIGNED_IMAGES
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index 629f615de1af..04e5ef43705b 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -130,6 +130,9 @@ config CRYPTO_RSA_KEY
>  	  X.509 certificates to be included into barebox. If the string starts
>  	  with "pkcs11:" it is interpreted as a PKCS#11 URI rather than a file.
>  
> +	  This avoids the mkimage dependency of CONFIG_BOOTM_FITIMAGE_PUBKEY
> +	  at the cost of an openssl build-time dependency.
> +
>  config CRYPTO_RSA_KEY_NAME_HINT
>  	depends on CRYPTO_RSA
>  	string "FIT image key name hint"
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


