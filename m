Delivery-date: Thu, 31 Jul 2025 11:09:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhPHl-005YTc-2u
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 11:09:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhPHl-0002EM-BG
	for lore@pengutronix.de; Thu, 31 Jul 2025 11:09:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sNcyBQB6eNWdiAOL3SwqFb/iy0sXCQE0CDUdqjiVNGg=; b=cMU5I9KBzr9KmV+gkVkV2U7cBl
	UN7fchcil/0qSHUW1R05FiNhYQ7yoogd4X4tl/LU0gFikyixTbZkIR2Q+NsK6xUQZQCSAyrQZdXeZ
	S1xXWTdyBo7puDPEv9K0rlUHBWUPVZkD5yGn6kNWHrC54EBvbCx6CGVPVzp8bv6a6k/lRazoMj7Qw
	3nCXDdeMsFD06HjIcEKsCO2ggjTQtQDeD+M7pVECqCS3dvr+/ua0nenWZbCz3t7tMaQmKZdkxij7P
	Mc/FMjvD9AmflBS8KlcD7XcGZwyVNWqh3lIGNhsIXOjelUWO4Nz6Ggmbbd81lSWEGvxFSulpMZoBZ
	IWg/hNtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhPHN-00000003Exd-1iHY;
	Thu, 31 Jul 2025 09:08:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhPFd-00000003EoE-0c3D
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 09:07:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uhPFc-0001j3-0E; Thu, 31 Jul 2025 11:07:00 +0200
Message-ID: <790e2646-4d3e-4681-9203-b6931e916c7e@pengutronix.de>
Date: Thu, 31 Jul 2025 11:06:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250711064232.403961-1-u.oelmann@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250711064232.403961-1-u.oelmann@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_020701_186558_E6906B76 
X-CRM114-Status: GOOD (  16.20  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Kconfig: fix typos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 7/11/25 08:42, Ulrich Ölmann wrote:
> Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-imx/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 02b9fb4dac9f..b81ebbb1efe3 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -846,9 +846,9 @@ config HAB_CERTS_ENV
>  	depends on HAB
>  	bool "Specify certificates in environment"
>  	help
> -	  If this option is enabled the pathes to the HAB certificates are
> +	  If this option is enabled the paths to the HAB certificates are
>  	  taken from environment variables which allows for better integration
> -	  with build systems. With this option disabled the pathes can be
> +	  with build systems. With this option disabled the paths can be
>  	  specified below.
>  
>  	  The environment variables have the same name as the corresponding

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



