Delivery-date: Wed, 03 Jul 2024 20:30:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP4kD-001G1w-0X
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 20:30:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP4kC-0003Qa-I2
	for lore@pengutronix.de; Wed, 03 Jul 2024 20:30:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zZDjPrZTnStsot9FAlbZRouvrBjEbkDMDhiCAO63gQI=; b=2JCKG3jGEtqCc0cCR/rDIxApVv
	6VyURknko73/rWfvxDK7nAbaPZxjcrr6ZF4Ys/mgvRB9LstBFVqGC+zeMslDLF5mA2mdk6+4asVKH
	ooKqyCQYoflBiejCQ6j33KhsU596ZDPphhZlVgT2w1kNMC7tlpZqg3ubEJ8ofVnH3aMVUAGaii8xq
	M+kW0RTZv10gqfxn06ZWt/qzc42BWgWFe2KN3GBEXdNT4PAMOHOdVGS68VCBOOSQWZTvopPUNkQwF
	fV3+su1cJDIJPylIaCZuMW/GpUBmFM7PNaY/gytrH6+spR4GYaF1WPYh3Q7QrgpL7HZ/RC5ob2QNE
	qgNbBVdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP4jY-0000000B9nk-0nq2;
	Wed, 03 Jul 2024 18:29:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP4jU-0000000B9lq-0MFF
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 18:29:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP4jS-0003Ma-Fy; Wed, 03 Jul 2024 20:29:30 +0200
Message-ID: <38177bf4-4a0e-4765-881e-8404370bfdd5@pengutronix.de>
Date: Wed, 3 Jul 2024 20:29:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
 <20240703-v2024-05-0-topic-hab-v2-7-17419aa5d3a3@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-hab-v2-7-17419aa5d3a3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_112932_153580_855DEEB2 
X-CRM114-Status: GOOD (  21.12  )
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
Subject: Re: [PATCH v2 7/9] i.MX8M: HABv4: add an option to allow key
 revocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 03.07.24 19:20, Marco Felsch wrote:
> The HAB code needs an special [Unlock] instruction to keep the
> SRK_REVOKE fuse bank unlocked. This is required if a key needs to be
> revoked.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig            | 8 ++++++++
>  include/mach/imx/habv4-imx8-gencsf.h | 6 ++++++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 61258137736f..68f55971506b 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -835,6 +835,14 @@ config HABV4_QSPI
>  	help
>  	  Enable this option to build signed QSPI/FlexSPI images.
>  
> +config HABV4_CSF_UNLOCK_SRK_REVOKE
> +	depends on HABV4
> +	bool "Unlock SRK revocation"
> +	help
> +	  Enable this option to instruct the HAB code to not lock
> +	  the SRK_REVOKE_LOCK sticky bit. This is required for key
> +	  revocation. Don't enable this if you are unsure.

I think for added safety we should have an extra option that prompts
for the key to be revoked and an initcall that is activated depending
on it, e.g.:

config HABV4_CSF_SRK_REVOKE_INDEX
        int "SRK to revoke"
        range 0 3
        default 0
        depends on HABV4_CSF_SRK_REVOKE_UNLOCK
        help
          Which of the first three SRKs to revoke. The SRK indices are
          1-based. Saying 0 here will just print the SRK Revocation
          register without modification. SRK #4 is immutable.
                                                                       
          Proceed with caution, revoking a SRK is irreversible and
          manual manipulation of this code can brick the board!
                                                                       
if HABV4_CSF_SRK_REVOKE_INDEX = HABV4_SRK_INDEX
comment "Can't revoke same SRK used for signing"
comment "Attempts to build a signed barebox image will fail"
endif

and then some code that checks the same above condition during final
assembly of the signed image.

What do you think?

> +
>  config HAB_CERTS_ENV
>  	depends on HAB
>  	bool "Specify certificates in environment"
> diff --git a/include/mach/imx/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
> index 5f92ceceab00..56d9ef2de92f 100644
> --- a/include/mach/imx/habv4-imx8-gencsf.h
> +++ b/include/mach/imx/habv4-imx8-gencsf.h
> @@ -36,6 +36,12 @@ hab [Unlock]
>  hab Engine = CAAM
>  hab Features = RNG, MID
>  
> +#if defined(CONFIG_HABV4_CSF_UNLOCK_SRK_REVOKE)
> +hab [Unlock]
> +hab Engine = OCOTP
> +hab Features = SRK REVOKE
> +#endif
> +
>  hab [Install Key]
>  /* verification key index in key store (0, 2...4) */
>  hab Verification index = 0
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



