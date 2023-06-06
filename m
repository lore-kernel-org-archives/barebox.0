Delivery-date: Tue, 06 Jun 2023 11:42:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6TCn-00Cssd-C8
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 11:42:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6TCk-0000ck-R7
	for lore@pengutronix.de; Tue, 06 Jun 2023 11:42:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T97CtLDBJ2Obd4fY6NCSAsvAjP9XaCzKAXcF5P2Ns/Y=; b=QrTAuWHXmKr68qtSv4wijrMw1i
	g/FqJm1e3XI1RfnhwFGnm4euadSgZ9CyoZTEYxCfF0HD1aiNNnM1v+XmJxaNKSLfFEveJE3Pb9/JD
	78h7CqgrWznNg+dwoXbdNHZUaTpSZEOPGSH44tFkNw1m2hGq+tIlSim+uwII1zFXBfXB0qqS2n8yN
	MchWGZKweQkirrxpqaZzqk4+3XcWQOglLYWpbtJd42DPyWCJkL8BogiaC35/jN6r08GmsK4k9Jx/f
	DF2jU2EHmWke2QzSoApLgN6uA78ajosmWGzQZNjTtWnTcKhBE1njIY1DeSsKx2cgc/wJjn2mq+9sf
	B3wdRBlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6TBg-00137X-1n;
	Tue, 06 Jun 2023 09:41:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6TBc-00135o-1w
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 09:41:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6TBb-0000RW-C7; Tue, 06 Jun 2023 11:41:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6TBb-00044F-5I; Tue, 06 Jun 2023 11:41:07 +0200
Date: Tue, 6 Jun 2023 11:41:07 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230606094107.GY18491@pengutronix.de>
References: <20230605063755.1438127-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230605063755.1438127-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_024108_641547_7963926F 
X-CRM114-Status: GOOD (  27.85  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] common: add CONFIG_WERROR option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 05, 2023 at 08:37:55AM +0200, Ahmad Fatoum wrote:
> For development, it may be useful to enforce warning-free builds.
> Add a Kconfig option for this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> This can be enabled for CI, once my other series with warning
> fixes is merged.
> ---
>  Makefile       |  4 ++++
>  common/Kconfig | 14 ++++++++++++++
>  2 files changed, 18 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Makefile b/Makefile
> index 4fdb8f1b41af..af5c1448b378 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -648,6 +648,8 @@ endif
>  # Force gcc to behave correct even for buggy distributions
>  KBUILD_CFLAGS          += $(call cc-option, -fno-stack-protector)
>  
> +KBUILD_CFLAGS-$(CONFIG_WERROR) += -Werror
> +
>  # This warning generated too much noise in a regular build.
>  # Use make W=1 to enable this warning (see scripts/Makefile.build)
>  KBUILD_CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
> @@ -692,6 +694,8 @@ KBUILD_CFLAGS += $(call cc-option,-Wno-pointer-sign,)
>  # change __FILE__ to the relative path from the srctree
>  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
>  
> +KBUILD_CFLAGS += $(KBUILD_CFLAGS-y)
> +
>  include-y +=scripts/Makefile.ubsan
>  include-$(CONFIG_KASAN)         += scripts/Makefile.kasan
>  
> diff --git a/common/Kconfig b/common/Kconfig
> index 11aabbb509df..5cfe717aa70d 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1701,6 +1701,20 @@ config COMPILE_TEST
>  	  say Y here. If you are a user, say N here to avoid being prompted for
>  	  inclusion of unrelated drivers.
>  
> +config WERROR
> +	bool "Compile barebox with warnings as errors"
> +	default COMPILE_TEST
> +	help
> +	  A barebox build should not cause any compiler warnings, and this
> +	  enables the '-Werror' flags to enforce that rule by default.
> +
> +	  However, if you have a new (or very old) compiler with odd and
> +	  unusual warnings, or you have some architecture with problems,
> +	  you may need to disable this config option in order to
> +	  successfully build barebox.
> +
> +	  If in doubt, say Y.
> +
>  endmenu
>  
>  source "common/efi/Kconfig"
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


