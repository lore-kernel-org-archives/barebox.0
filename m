Delivery-date: Fri, 28 Nov 2025 11:04:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvLV-005kHj-1f
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 11:04:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvLU-00048H-TU
	for lore@pengutronix.de; Fri, 28 Nov 2025 11:04:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y6FF7zAaxdLJdSU+sUkG12tNsuOn1F+0Vdwy7WUbqeo=; b=jXqnbHyYrBER5UlxnNVaEgq8tS
	dtnxYgxxJlD3I3MgB/aA2oXvEYpI01x/sX2c4coAQuZjReIslWRyxneLGmMSA9J2/E6Fdp7S2x31v
	7K7XU0eG+DeoHwzSG8QOR4JrhuaV7NuPd7Nf78b94xGTNhGo/c2QoNMm2GBG7ufT56y4vbK47dftk
	YnCkFFPSdVW8zLnqtcjRe7O4/Z4Whc1VTH8dkG7N4rIu4XjjBWCDHhFDVvxbJ7jRXDowArycBQmdU
	sih/x4MIw340BYAt+Agd1mgTFXtuJ5XSZjuWPvqHpVU8j//qemvH23o1h1q6L65F5H5koLfUFosnn
	uyEPsY4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvKy-00000000G2H-1GAd;
	Fri, 28 Nov 2025 10:04:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvKv-00000000G1m-1Ed8
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 10:04:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvKt-00040v-QS; Fri, 28 Nov 2025 11:04:19 +0100
Message-ID: <914c4cb3-70ad-4cb7-974d-eba21d266476@pengutronix.de>
Date: Fri, 28 Nov 2025 11:04:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20251127105824.3560951-1-f.pflug@pengutronix.de>
 <20251127143052.3114915-1-f.pflug@pengutronix.de>
 <20251127143052.3114915-4-f.pflug@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251127143052.3114915-4-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_020421_362286_36D3FEF3 
X-CRM114-Status: GOOD (  22.08  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 3/4] bootm: use new api to get kernel command line
 params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/27/25 3:25 PM, Fabian Pflug wrote:
> Getting root device adn root kernel options seperatily any combining
> them in this function instead of getting the full string from the helper
> functions. This is in preperation for replacing the root= string in the
> kernel commandline with something defined during runtime.

See typo fix suggestions on v1.

> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Looks good otherwise.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/bootm.c | 28 ++++++++++++++++++----------
>  1 file changed, 18 insertions(+), 10 deletions(-)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 17792b2a1d..8efe3426fe 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -1,9 +1,11 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
>  
>  #include <common.h>
> +#include <bootargs.h>
>  #include <bootm.h>
>  #include <bootm-overrides.h>
>  #include <fs.h>
> +#include <fcntl.h>
>  #include <malloc.h>
>  #include <memory.h>
>  #include <block.h>
> @@ -841,33 +843,39 @@ int bootm_boot(struct bootm_data *bootm_data)
>  	}
>  
>  	if (bootm_data->appendroot) {
> -		char *rootarg;
> +		char *root = NULL;
> +		char *rootopts = NULL;
>  
>  		if (bootm_data->root_dev) {
>  			const char *root_dev_name = devpath_to_name(bootm_data->root_dev);
>  			struct cdev *root_cdev = cdev_open_by_name(root_dev_name, O_RDONLY);
>  
> -			rootarg = cdev_get_linux_rootarg(root_cdev);
> -			if (!rootarg) {
> -				rootarg = ERR_PTR(-EINVAL);
> +			ret = cdev_get_linux_root_and_opts(root_cdev, &root, &rootopts);
>  
> +			if (ret) {
>  				if (!root_cdev)
> -					pr_err("no cdev found for %s, cannot set root= option\n",
> -						root_dev_name);
> +					pr_err("no cdev found for %s, cannot set root= option\n", root_dev_name);
>  				else if (!root_cdev->partuuid[0])
> -					pr_err("%s doesn't have a PARTUUID, cannot set root= option\n",
> -						root_dev_name);
> +					pr_err("%s doesn't have a PARTUUID, cannot set root= option\n", root_dev_name);
> +				else
> +					pr_err("could not determine root= from %s\n", root_dev_name);
>  			}
>  
>  			if (root_cdev)
>  				cdev_close(root_cdev);
>  		} else {
> -			rootarg = path_get_linux_rootarg(data->os_file);
> +			struct fs_device *fsdev = get_fsdevice_by_path(AT_FDCWD, data->os_file);
> +			if (fsdev)
> +				fsdev_get_linux_root_options(fsdev, &root, &rootopts);
> +			else
> +				pr_err("no fsdevice under path: %s\n", data->os_file);
>  		}
>  
> -		if (IS_ERR(rootarg)) {
> +		if (!root) {
>  			pr_err("Failed to append kernel cmdline parameter 'root='\n");
>  		} else {
> +			char *rootarg;
> +			rootarg = format_root_bootarg("root", root, rootopts);
>  			pr_info("Adding \"%s\" to Kernel commandline\n", rootarg);
>  			globalvar_add_simple("linux.bootargs.bootm.appendroot",
>  					     rootarg);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



