Delivery-date: Mon, 11 Jul 2022 12:54:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAr3j-002Shq-IU
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 12:54:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAr3h-0006jD-ET
	for lore@pengutronix.de; Mon, 11 Jul 2022 12:54:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zpmjrpD8FAHHDTFaoSaO0unvAO0UmzwA92H/a0PXAQ8=; b=W9XJOT9oCPAQ3w0uvZ5BvH4T+3
	AoMBQVRF5uuzZGtg3+RRtwG7IyXLYRypULDuB77IwzrPW9wTuCCxD23ECt2Ic0bPv+23fepKFEvI0
	VY1T9G2Iy90myxcNP5irzSxjeKB7hMTl5d98q8HLv/8ed5ceTEa3Cg0KqPxeh3uGpKzYGwpO1t8qe
	NehNP/28qWibmi7vIPVQBrBI1khsNLipH2jmEuuV99MMZTcoGj2M03sCFzCovTMEx2bDCNrhka3pP
	arw/lgXy+e/cQK4m4RQr98t8ecuBoTwaexDwZYcglVXPqskY8Oscq7wITT4wIQmgg0Vt/8Afv1iJ+
	/Avsw02w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAr2Q-000rTd-Pb; Mon, 11 Jul 2022 10:53:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAr2L-000rS2-JH
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 10:53:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAr2K-0006dY-B6; Mon, 11 Jul 2022 12:53:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAr2K-0000IE-2a; Mon, 11 Jul 2022 12:53:08 +0200
Date: Mon, 11 Jul 2022 12:53:08 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220711105308.GG29790@pengutronix.de>
References: <20220704165256.589530-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220704165256.589530-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_035309_656017_6FFA7605 
X-CRM114-Status: GOOD (  27.52  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3] ARM: i.MX8MP: adapt atf bl31 base address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 04, 2022 at 06:52:56PM +0200, Marco Felsch wrote:
> With i.MX8MP A1 silicon the OCRAM space is extended to 576KB whereas
> the pre-release silicon has only 512KB. So the upstream TF-A adapted the
> base address to move BL31 to the last 128KB of the OCRAM.
> 
> The adaption was a bit messy because each version changed it:
>  - v2.4 base addr = 0x960000 (original)
>  - v2.5 base addr = 0x970000 (adapted to new silicon revision)
>  - v2.6 base addr = 0x960000 (changed back by accident)
>  - v2.7 base addr = 0x970000 (accident fixed)
> 
> With v2.7 it is correctly set for A1 silicon onwards and we strongly
> recommend to use this version or newer.
> 
> This commit also adapts the documentation for the i.MX8MP-EVK to
> reference the upstream TF-A and to point out our favorite version.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---

Applied, thanks+

Sascha

> Changelog:
> 
> v3:
> - rephrase the complete commit message. Sry. again for the previouse
>   noise.
> v2:
> - fix commit message ger/eng mixup and mention tapeout version A1
> 
>  Documentation/boards/imx/nxp-imx8mp-evk.rst | 11 +++++++----
>  arch/arm/mach-imx/include/mach/atf.h        |  2 +-
>  2 files changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/boards/imx/nxp-imx8mp-evk.rst b/Documentation/boards/imx/nxp-imx8mp-evk.rst
> index 366c1de500..1074992f2f 100644
> --- a/Documentation/boards/imx/nxp-imx8mp-evk.rst
> +++ b/Documentation/boards/imx/nxp-imx8mp-evk.rst
> @@ -40,15 +40,18 @@ As a last step of this process those files need to be placed in
>  	      firmware/${f}; \
>    done
>  
> -Get and Build the ARM Trusted firmware
> ---------------------------------------
> +Get and Build the Trusted Firmware A
> +------------------------------------
>  
> -Get ATF from https://source.codeaurora.org/external/imx/imx-atf, branch
> -imx_5.4.3_2.0.0::
> +Get TF-A from https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/ and
> +checkout version v2.7::
>  
>    make PLAT=imx8mp bl31
>    cp build/imx8mp/release/bl31.bin ${barebox_srctree}/imx8mp-bl31.bin
>  
> +.. warning:: It is important to use a version >= v2.7 else your system
> +   might not boot.
> +
>  Build Barebox
>  -------------
>  
> diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
> index 09396f4646..bc400ddbad 100644
> --- a/arch/arm/mach-imx/include/mach/atf.h
> +++ b/arch/arm/mach-imx/include/mach/atf.h
> @@ -10,7 +10,7 @@
>  
>  #define MX8MM_ATF_BL31_BASE_ADDR	0x00920000
>  #define MX8MN_ATF_BL31_BASE_ADDR	0x00960000
> -#define MX8MP_ATF_BL31_BASE_ADDR	0x00960000
> +#define MX8MP_ATF_BL31_BASE_ADDR	0x00970000
>  #define MX8MQ_ATF_BL31_BASE_ADDR	0x00910000
>  #define MX8M_ATF_BL33_BASE_ADDR		0x40200000
>  #define MX8MM_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


