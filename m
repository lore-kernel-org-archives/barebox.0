Delivery-date: Mon, 13 Apr 2026 15:00:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGti-00BipZ-2l
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 15:00:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGti-0004Cn-6M
	for lore@pengutronix.de; Mon, 13 Apr 2026 15:00:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qnhM9M6N1eaGJ6KTbFe3I4jZ854cupy9prDE0DAcRAU=; b=FyvSdwhKLledjYiZ3sOOIFLCW9
	3I8qs2UbvxOhfLqKboqiBLissyA4G412sJJvK/tqocahPCir5PJzUgCuKuo78GfOMStA64laRIbfv
	KwWlplt4WSOhoOGCi2ZT48w6aXC72sp04sVGx4vgGVXAfeSBYxcw/iw3fEBspV+a/IiH6HWFgPkgv
	HNnFd/GjLTPp2z96bYqCQP1S5uGObhQAhnnIE6n5ZlQgNjmbIORAzI8cH+xb0DaAjGyHoUBTzBloG
	9AbqvLZP4Sja7bxkfXsIsYnot39Ga6/AmcQtv+zvkXAGAo9d9pC8pqO2fWACY1SolREgbpoO1n+jc
	j/vEjjmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGtF-0000000FhBZ-1dJ0;
	Mon, 13 Apr 2026 12:59:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGtD-0000000FhB0-0FwZ
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 12:59:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1wCGtA-000473-3p; Mon, 13 Apr 2026 14:59:40 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wCGt9-005Ark-31;
	Mon, 13 Apr 2026 14:59:39 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wCGt9-00000007Uk9-3WQd;
	Mon, 13 Apr 2026 14:59:39 +0200
Date: Mon, 13 Apr 2026 14:59:39 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <gbnshsxi4aafyos5edll7jlyyf74j637zdwixs3h4oaopheoen@epcerzdhkwwr>
References: <20260413102026.1469330-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260413102026.1469330-1-a.fatoum@barebox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_055943_102956_C8A15113 
X-CRM114-Status: GOOD (  24.95  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] environment: support DT-compatible-specific overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 26-04-13, Ahmad Fatoum wrote:
> Board-specific environments are registered from board code via
> defaultenv_append_directory(), but this isn't possible when using
> CONFIG_DEFAULT_ENVIRONMENT_PATH with an external environment.
> 
> Add support for a match.of_compatible/ directory convention within
> the default environment. Subdirectories named after DT root compatible
> strings are overlaid onto /env from most generic to most specific
> after the default environment is loaded. The match.of_compatible/
> directory is removed afterwards to keep /env clean.

That's a nice feature!

> Example layout in CONFIG_DEFAULT_ENVIRONMENT_PATH:
> 
>   barebox-defaultenv/
>     nv/boot.default
>     match.of_compatible/
>       fsl,imx8mm/
>         nv/boot.default
>       fsl,imx8mq-evk/
		^
        fsl,imx8mm-evk/ ?

>         nv/boot.default
> 
> For compatible = "fsl,imx8mm-evk", "fsl,imx8mm":
>   1. fsl,imx8mm/     overlay applied first  (most generic)
>   2. fsl,imx8mm-evk/ overlay applied second (most specific)
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  common/startup.c | 47 +++++++++++++++++++++++++++++++++++++++++++++++

Can we have a Documentation update for this mechanism please incl. the
search order? :)

Regards,
  Marco


>  1 file changed, 47 insertions(+)
> 
> diff --git a/common/startup.c b/common/startup.c
> index 2e2b5f820fe9..e630033e3505 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -46,6 +46,7 @@
>  #include <pbl/handoff-data.h>
>  #include <libfile.h>
>  #include <fuzz.h>
> +#include <of.h>
>  
>  extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
>  		  __barebox_initcalls_end[];
> @@ -95,6 +96,50 @@ void autoload_external_env(bool endis)
>  }
>  #endif
>  
> +static void env_merge_of_compat_overlays(const char *dir)
> +{
> +	struct device_node *root;
> +	const char *compat;
> +	struct stat s;
> +	char *ofdir, *src;
> +	int count;
> +
> +	root = of_get_root_node();
> +	if (!root)
> +		return;
> +
> +	ofdir = xasprintf("%s/match.of_compatible", dir);
> +
> +	if (stat(ofdir, &s) || !S_ISDIR(s.st_mode))
> +		goto out;
> +
> +	count = of_property_count_strings(root, "compatible");
> +
> +	/*
> +	 * Apply overlays from most generic to most specific, so that
> +	 * more specific entries take precedence.
> +	 */
> +	for (int i = count - 1; i >= 0; i--) {
> +		if (of_property_read_string_index(root, "compatible",
> +						  i, &compat))
> +			continue;
> +
> +		src = xasprintf("%s/%s", ofdir, compat);
> +
> +		if (stat(src, &s) == 0 && S_ISDIR(s.st_mode)) {
> +			pr_debug("Applying '%s'-compatible environment overlay\n",
> +				 compat);
> +			copy_recursive(src, dir, 0);
> +		}
> +
> +		free(src);
> +	}
> +
> +	unlink_recursive(ofdir, NULL);
> +out:
> +	free(ofdir);
> +}
> +
>  static int load_environment(void)
>  {
>  	const char *default_environment_path;
> @@ -115,6 +160,8 @@ static int load_environment(void)
>  		pr_info("external environment support %s. Using default environment\n",
>  			IS_ENABLED(CONFIG_ENV_HANDLING) ? "disallowed" : "disabled");
>  
> +	env_merge_of_compat_overlays("/env");
> +
>  	nvvar_load();
>  
>  	return 0;
> -- 
> 2.47.3
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


