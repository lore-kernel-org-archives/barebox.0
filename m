Delivery-date: Mon, 10 Mar 2025 20:23:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1triiN-00CN0M-11
	for lore@lore.pengutronix.de;
	Mon, 10 Mar 2025 20:23:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1triiM-0007by-3g
	for lore@pengutronix.de; Mon, 10 Mar 2025 20:23:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ve19ZwkCb1l1RpqYJsU+7/haWJdU5yI7qrej04qhamA=; b=gl9e9v/KTb3uGlDseF9u1gnivu
	xWaeXISRFk69T90Mx+2Jsay+eFbVIPyUmsSfBePmjL0sIw1wqYTt0V+jKBCO8Ohc7T3ujGWIvYcu6
	3WWaJjSAjEo9iEvwI8y+qhmldogPRgQ3NAvSaRLs80eJOQmz/0rxBj9CC5JooHU3SbbZLl42/406B
	Dz2R5vKx4FrNC/gvldeMYT6CTtmSWx7LevRm1bT/nog7ZeVUg83Z3c4O+pGIe5Al7w+Hn3MR4krFA
	vs8ckSMhpqw13/3jEEE3AMpk87yM3BnHJtkr6x16rq7fg1/fJzfHiDc2uXSOXFYoOH/dY0XyK352/
	NlBM9SQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trihq-00000003jBl-2LC2;
	Mon, 10 Mar 2025 19:22:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1triho-00000003jBO-13Zf
	for barebox@lists.infradead.org;
	Mon, 10 Mar 2025 19:22:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1trihn-0007We-0I; Mon, 10 Mar 2025 20:22:27 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trihm-0053WO-2d;
	Mon, 10 Mar 2025 20:22:26 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trihm-0061MB-2J;
	Mon, 10 Mar 2025 20:22:26 +0100
Date: Mon, 10 Mar 2025 20:22:26 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <20250310192226.x7g2jq6vf5rx4c7c@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
 <20250228-am625-secure-v1-8-4002488ff5ed@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250228-am625-secure-v1-8-4002488ff5ed@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_122228_288186_BC0E26CD 
X-CRM114-Status: GOOD (  20.82  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 08/13] ARM: am625: support hash verification of full
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-02-28, Sascha Hauer wrote:
> This implements the necessary SoC code to check the full barebox against
> a sha256 compiled into the first stage barebox.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-k3/Kconfig |  1 +
>  arch/arm/mach-k3/r5.c    | 14 ++++++++++++++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
> index 50919dc7e3..561ad1dac4 100644
> --- a/arch/arm/mach-k3/Kconfig
> +++ b/arch/arm/mach-k3/Kconfig
> @@ -16,6 +16,7 @@ config MACH_K3_CORTEX_R5
>  	select ELF
>  	select K3_DDRSS
>  	select FIP
> +	select HAVE_FIRMWARE_VERIFY_NEXT_IMAGE
>  	depends on 32BIT
>  	select ARM_USE_COMPRESSED_DTB
>  	default y
> diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
> index e12c888afa..cb52ff364d 100644
> --- a/arch/arm/mach-k3/r5.c
> +++ b/arch/arm/mach-k3/r5.c
> @@ -248,6 +248,8 @@ static int load_fip(const char *filename, off_t offset)
>  {
>  	struct fip_state *fip;
>  	struct fip_image_desc *desc;
> +	unsigned char shasum[SHA256_DIGEST_SIZE];
> +	int ret;
>  
>  	fip = fip_image_open(filename, offset);
>  	if (IS_ERR(fip)) {
> @@ -255,6 +257,18 @@ static int load_fip(const char *filename, off_t offset)
>  		return PTR_ERR(fip);
>  	}
>  
> +	if (IS_ENABLED(CONFIG_FIRMWARE_VERIFY_NEXT_IMAGE)) {
> +		ret = fip_sha256(fip, shasum);
> +		if (ret) {
> +			pr_err("Cannot calc fip sha256: %pe\n", ERR_PTR(ret));
> +			return ret;
> +		}
> +
> +		ret = firmware_next_image_verify(shasum, SHA256_DIGEST_SIZE, true);
> +		if (ret)
> +			return ret;

Albeit it would involve way more effort, I would like to see that the
FIP image format does have support for signatures within their "struct
image_desc" for each image.
This way it would be far easier for us to verify each image separately
and in a common way. Also it wouldn't require to rebuild the "r5"
tiboot3.bin to include the the updated sha256sum each time.

I do see why we can't use the externa-firmware mechanism now but I
wouldn't call it firmware_next_image_verify(). Maybe limit the scope to
fip and extent it later or remove/deprecate it once we managed to add
signatures to the FIP format.
Also the shasum size seems like the user would have a choice to choose
other sha-sums which he hasn't, therefore I would drop it.

Regards,
  Marco

> +	}
> +
>  	fip_for_each_desc(fip, desc) {
>  		struct fip_toc_entry *toc_entry = &desc->image->toc_e;
>  
> 
> -- 
> 2.39.5
> 
> 
> 


