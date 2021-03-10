Delivery-date: Wed, 10 Mar 2021 15:35:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJzw1-0001aH-QE
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 15:35:39 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJzw0-0003pK-Sy
	for lore@pengutronix.de; Wed, 10 Mar 2021 15:35:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KCUk+5UvOHdo7xCywTNzIkgtI62ZpTVNcA3/hwukE/Q=; b=GstaUnaEWfLWGTH29g8d3mqfh
	/zL5FVYsesNBjOp789YDhZ7hch8Y8AMR+fxr0sxoBefrIKh7+iaivHaIyKuoaYxyTCyaeW1Fyw+59
	M87dC1SEuM+9n9WIuvPcYLx/hAJqFmhI+rtVqggZT3ZNSIdzW+lB5vYJtpuaXp1iCeCfDNIw96P5X
	liFWs11EuV3Of23iqRGOT3LtiVX38zoii0/WOwQZWyK3xVxVra52aY109LCRLhPB6f0t5EAyYzayk
	OHBRPD23+ZJY27qlbnGlZ4J9mPRIjyx4xtDnIBESuqFiY+tGETpjho55jG4L/4b3SdvZPw841ZLPT
	asaiUn3wQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJzv5-0072EV-3F; Wed, 10 Mar 2021 14:34:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJzuz-0072E2-GB
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 14:34:35 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lJzuy-0003kJ-SS; Wed, 10 Mar 2021 15:34:32 +0100
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
 <20210310132829.7662-10-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <19c8c34a-1454-b0d7-2f6a-7ec2526bb0db@pengutronix.de>
Date: Wed, 10 Mar 2021 15:34:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210310132829.7662-10-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_143433_699693_E0903387 
X-CRM114-Status: GOOD (  25.76  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/17] overlay: only apply compatible trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 10.03.21 14:28, Sascha Hauer wrote:
> This adds support for a global.of_overlay_compatible variable which is a
> space separated list of compatible strings. Device tree overlays not
> matching any won't be applied (unless the overlay doesn't have a
> compatible property at all).
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/of/overlay.c | 43 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index 8f4ee3f0a2..7a89cbe948 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -11,6 +11,9 @@
>  #include <common.h>
>  #include <of.h>
>  #include <errno.h>
> +#include <globalvar.h>
> +#include <magicvar.h>
> +#include <string.h>
>  
>  static struct device_node *find_target(struct device_node *root,
>  				       struct device_node *fragment)
> @@ -160,6 +163,33 @@ static int of_overlay_apply_fragment(struct device_node *root,
>  	return of_overlay_apply(target, overlay);
>  }
>  
> +static char *of_overlay_compatible;
> +
> +static bool of_overlay_is_compatible(struct device_node *ovl)
> +{
> +	char *p, *n, *compatibles;
> +	bool res = false;
> +
> +	if (!of_overlay_compatible || !*of_overlay_compatible)
> +		return true;
> +	if (!of_find_property(ovl, "compatible", NULL))
> +		return true;
> +
> +	p = compatibles = xstrdup(of_overlay_compatible);
> +
> +	while ((n = strsep_unescaped(&p, " "))) {

This returns an empty string when two delimiters are in a row and it seems
of_device_is_compatible will return true when comparing with the empty
string. Probably not what you want here.

> +		if (of_device_is_compatible(ovl, n)) {
> +			res = true;
> +			break;
> +		}
> +	}
> +
> +	free(compatibles);
> +
> +	return res;
> +}
> +
> +
>  /**
>   * Apply the overlay on the passed devicetree root
>   * @root: the devicetree onto which the overlay will be applied
> @@ -172,6 +202,9 @@ int of_overlay_apply_tree(struct device_node *root,
>  	struct device_node *fragment;
>  	int err = 0;
>  
> +	if (!of_overlay_is_compatible(overlay))
> +		return -ENODEV;
> +
>  	resolved = of_resolve_phandles(root, overlay);
>  	if (!resolved)
>  		return -EINVAL;
> @@ -250,3 +283,13 @@ int of_register_overlay(struct device_node *overlay)
>  {
>  	return of_register_fixup(of_overlay_fixup, overlay);
>  }
> +
> +static int of_overlay_init(void)
> +{
> +	globalvar_add_simple_string("of_overlay_compatible", &of_overlay_compatible);
> +
> +	return 0;
> +}
> +device_initcall(of_overlay_init);
> +
> +BAREBOX_MAGICVAR(global.of_overlay_compatible, "space separated list of compatibles an overlay must match");
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

