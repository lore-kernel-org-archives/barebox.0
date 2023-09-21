Delivery-date: Thu, 21 Sep 2023 10:52:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjFQJ-005h1p-PG
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 10:52:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjFQH-0005Np-MR
	for lore@pengutronix.de; Thu, 21 Sep 2023 10:52:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cwXJPzkQPDj5ETbGrhrEhuA1UkUtzeovWukS4u9yvhM=; b=31GDiHs7/dXzLG2ihC/4yimmwE
	uBtLCvclPmSkVcYihPgnuV4gWjwLIPgRP5ktjsbIGPMuNepGjEYJ9lj6NcMQx6EPRcaEVDnkoDhDk
	LdJP/eOoWvlLImQChNO0zgjVi44GFD16T1ksP2zX/QYM3u3ha74UEFr9JXC35rmcQDJW3mmgvMWCe
	GwTMq+PJ1s1x709ndyORfjp0Dnl3JU9+qPRywbfGmmp6EWg9rSC8d1E+csADr7hVumnYEgcoh79zC
	+gYrIYXIxg5QfzdOKShqOw8J0NwWBM1Okb/N9sN8hKZXusV4k3HA8vDkqT1WqDLnGjwz/NInCqWnJ
	RESZFs+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFPE-005WUy-18;
	Thu, 21 Sep 2023 08:51:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFPB-005WUY-23
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 08:51:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjFPA-00052z-F2; Thu, 21 Sep 2023 10:51:24 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjFPA-007stQ-29; Thu, 21 Sep 2023 10:51:24 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjFP9-00AfOV-W5; Thu, 21 Sep 2023 10:51:24 +0200
Date: Thu, 21 Sep 2023 10:51:23 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921085123.GH637806@pengutronix.de>
References: <20230921075511.2098569-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921075511.2098569-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_015125_677763_08FC1E4A 
X-CRM114-Status: GOOD (  27.44  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: HABv4: point out i.MX6 specifics in docs and
 Kconfig help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 21, 2023 at 09:55:11AM +0200, Ahmad Fatoum wrote:
> Signed USB images are a i.MX6 quirk as we need a point to DCD for
> imx-usb-loader to work with, but the DCD pointer needs to be invalidated
> for actual boot.
> 
> On i.MX8M*, RAM setup can't be done completely by DCD anymore, so not
> having a DCD table is the norm and we don't need a signed USB image.
> 
> Thus mark CONFIG_HABV4_IMAGE_SIGNED_USB i.MX6 only and while at it, fix
> hardcoded instances of i.MX6 headers.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/imx.rst |  6 +++---
>  arch/arm/mach-imx/Kconfig    | 11 +++++++----
>  2 files changed, 10 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
> index 5a4f52b392d5..c64446aff640 100644
> --- a/Documentation/boards/imx.rst
> +++ b/Documentation/boards/imx.rst
> @@ -150,7 +150,7 @@ Unlike the typical ``imximg`` file extension the following ones are used for
>  these cases:
>  
>  * ``simximg``: generate signed image
> -* ``usimximg``: generate signed USB image
> +* ``usimximg``: generate signed USB image (i.MX6-specific)
>  * ``esimximg``: generate encrypted and signed image
>  
>  The imx-image tool is then automatically called with the appropriate flags
> @@ -168,9 +168,9 @@ keys/certificates are expected in these config variables (assuming HABv4):
>    CONFIG_HABV4_IMG_CRT_PEM
>  
>  A CSF template is located in
> -``include/mach/imx/habv4-imx6-gencsf.h`` which is preprocessed
> +``include/mach/imx/habv4-imx*-gencsf.h`` which is preprocessed
>  by barebox.
> -It must be included in the board's flash header:
> +It must be included in the board's flash header, e.g. for i.MX6:
>  
>  .. code-block:: none
>  
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 8cab6de7763f..2d55015e5acb 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -798,11 +798,13 @@ if HABV4
>  config HABV4_IMAGE_SIGNED
>  	bool "build signed images"
>  	help
> -	  enable the creation of a signed image, if the habv4-imx6-gencsf.h
> -	  included in the flash-header and the NXP cst Tool is available
> +	  enable the creation of a signed image, if the habv4-imx*-gencsf.h
> +	  file appropriate for the SoC is included in the flash-header and
> +	  the NXP cst Tool is available
>  
>  config HABV4_IMAGE_SIGNED_USB
>  	bool "build signed USB images"
> +	depends on ARCH_IMX6
>  	help
>  	  enable the creation of a usb signed image, if the habv4-imx6-gencsf.h
>  	  included in the flash-header and the NXP cst Tool is available
> @@ -810,8 +812,9 @@ config HABV4_IMAGE_SIGNED_USB
>  config HABV4_IMAGE_SIGNED_ENCRYPTED
>  	bool "build signed encrypted images"
>  	help
> -	  enable the creation of the encrypted image, if the habv4-imx6-gencsf.h
> -	  included in the flash-header and the NXP cst Tool is available
> +	  enable the creation of the encrypted image, if the habv4-imx*-gencsf.h
> +	  file appropriate for the SoC is included in the flash-header and
> +	  the NXP cst Tool is available
>  
>  endif
>  
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


