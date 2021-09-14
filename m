Delivery-date: Tue, 14 Sep 2021 18:03:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQAuQ-0006SL-Nz
	for lore@lore.pengutronix.de; Tue, 14 Sep 2021 18:03:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQAuP-0001YX-7o
	for lore@pengutronix.de; Tue, 14 Sep 2021 18:03:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cQxHc6EbkfDywoRvThtXLX0oGmW22z43tScJm6Ucd4=; b=aMz70qiOXgGshq
	zjzRIf7ZDMZDsUloQKQoDRdKKpjKQ8DZGUaUZRyvVSLzYFEVL74RE2tw8UNSX/npEvcpczNsal2vn
	QE7XyEsDMycsjZueGjwHvyxmZqodwVR6v7zfYasDE7StBDYIcNKQ44LPWrTz/ov2PPQdIyZ7zXMM+
	fldKYl9tC0EQApPiSOM4vh8MySWtAKjxpcdv1MEXTk4WklHFebNww96fKgLViyeOrFj6l1PlFHkic
	6kyj7GH0WPSqpU1cmhBry7MYl5XE8We8aVggkeF1YZbWJUCF3jkwURVFKcytligHnd7Mhcj/5nQyM
	RuSAIFQH1yNMN5FlNjAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQAsX-006MFU-Hg; Tue, 14 Sep 2021 16:01:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQArB-006Lg5-TO
 for barebox@lists.infradead.org; Tue, 14 Sep 2021 16:00:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mQArA-000157-08; Tue, 14 Sep 2021 18:00:24 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mQAr9-0001qC-Ch; Tue, 14 Sep 2021 18:00:23 +0200
Date: Tue, 14 Sep 2021 18:00:23 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ejo@pengutronix.de, uol@pengutronix.de,
 renaud.barbier@abaco.com
Message-ID: <20210914160023.ngxk6mlzyvlvgyly@pengutronix.de>
References: <20210914132016.22572-1-a.fatoum@pengutronix.de>
 <20210914132016.22572-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210914132016.22572-2-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_090026_007018_4221634B 
X-CRM114-Status: GOOD (  24.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] common: add new menu for target tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 14, 2021 at 03:20:14PM +0200, Ahmad Fatoum wrote:
> We have four target tools and will add 3 more in a follow up commit.
> Add a new menu to collect them.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Looks very useful to me.

Acked-by: Roland Hieber <rhi@pengutronix.de>

> ---
>  common/Kconfig  | 26 --------------------------
>  scripts/Kconfig | 30 ++++++++++++++++++++++++++++++
>  2 files changed, 30 insertions(+), 26 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 222a438ee545..9dab7532e15e 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -734,18 +734,6 @@ config IMD
>  	select CRC32
>  	bool "barebox metadata support"
>  
> -config IMD_TARGET
> -	bool "build bareboximd target tool"
> -	depends on IMD
> -
> -config KERNEL_INSTALL_TARGET
> -	bool
> -	prompt "Build kernel-install utility for the target"
> -	help
> -	  Enable this to compile the kernel-install script using the cross
> -	  compiler. The utility for the target will be under
> -	  scripts/kernel-install-target
> -
>  choice
>  	prompt "console support"
>  	default CONSOLE_FULL
> @@ -980,20 +968,6 @@ config DEFAULT_ENVIRONMENT_PATH
>  	  be taken. Relative paths will be relative to the barebox top-level
>  	  directory, but absolute paths are fine as well.
>  
> -config BAREBOXENV_TARGET
> -	bool
> -	prompt "build bareboxenv tool for target"
> -	help
> -	  'bareboxenv' is a tool to access the barebox environment from a running Linux
> -	  system. Say yes here to build it for the target.
> -
> -config BAREBOXCRC32_TARGET
> -	bool
> -	prompt "build bareboxcrc32 tool for target"
> -	help
> -	  'bareboxcrc32' is a userspacetool to generate the crc32 checksums the same way
> -	  barebox does. Say yes here to build it for the target.
> -
>  config HAS_SCHED
>  	bool
>  
> diff --git a/scripts/Kconfig b/scripts/Kconfig
> index b903486ecd8f..f7ed775fbc66 100644
> --- a/scripts/Kconfig
> +++ b/scripts/Kconfig
> @@ -40,3 +40,33 @@ config OMAP4_HOSTTOOL_USBBOOT
>  	  You need libusb-1.0 to compile this tool.
>  
>  endmenu
> +
> +menu "Target Tools"
> +
> +config IMD_TARGET
> +	bool "build bareboximd target tool"
> +	depends on IMD
> +
> +config KERNEL_INSTALL_TARGET
> +	bool
> +	prompt "Build kernel-install utility for the target"
> +	help
> +	  Enable this to compile the kernel-install script using the cross
> +	  compiler. The utility for the target will be under
> +	  scripts/kernel-install-target
> +
> +config BAREBOXENV_TARGET
> +	bool
> +	prompt "build bareboxenv tool for target"
> +	help
> +	  'bareboxenv' is a tool to access the barebox environment from a running Linux
> +	  system. Say yes here to build it for the target.
> +
> +config BAREBOXCRC32_TARGET
> +	bool
> +	prompt "build bareboxcrc32 tool for target"
> +	help
> +	  'bareboxcrc32' is a userspacetool to generate the crc32 checksums the same way
> +	  barebox does. Say yes here to build it for the target.
> +
> +endmenu
> -- 
> 2.30.2
> 
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

