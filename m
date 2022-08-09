Delivery-date: Tue, 09 Aug 2022 13:43:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLNdk-00HKH4-RM
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 13:43:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLNdk-0006Mk-Rp
	for lore@pengutronix.de; Tue, 09 Aug 2022 13:43:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NkVMvr/VAmYg/LH+ga5cY4v5b1BWi2R9NkQ0NQLzK8g=; b=ym9cRs2Vb4x/zeYbxwRmpz+qii
	wWk20Hq3tv8phCVQOFjqysX2CUiTy/6XFezHLRlFoBAVRomE35WGykr9IFVPvuhJ/H4GKTO5IagOY
	ruL/CK2wzH74O+xDwWlGLgHqbpbefQlUXSi8tjX2FY/Egh5PYqbc5hDuDCtxCTyCI6XxbjXZUKP1z
	x1/tl0siLvX/93l9JUp2qoeqBkRQK4Np6Uj2o+mk4qMSIpUsHQ1Bcrd0eS2TILZy1MI8kQBtGaXtt
	T2oyrcQJZTyYpN2MZqV6DpL1+U8/jZJRIBoFUPu83rGJ9jXEeK1NNPFtfsuyKOXKuLO4QhIewszpw
	tzIZ0CJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLNc8-003cmp-Hl; Tue, 09 Aug 2022 11:41:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLNVK-003aMQ-FY
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 11:34:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLNVJ-0004qi-0W; Tue, 09 Aug 2022 13:34:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLNVI-0006zH-MG; Tue, 09 Aug 2022 13:34:32 +0200
Date: Tue, 9 Aug 2022 13:34:32 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220809113432.GT31528@pengutronix.de>
References: <20220809062938.1750369-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220809062938.1750369-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_043434_568227_162A8F45 
X-CRM114-Status: GOOD (  24.98  )
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
Subject: Re: [PATCH 1/4] power: reset: reboot-mode: refactor to allow other
 mode- prefixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 09, 2022 at 08:29:35AM +0200, Ahmad Fatoum wrote:
> We will add support for one more mode- prefix in the follow-up commit,
> so rewrite the code to make this addition seamless.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/power/reset/reboot-mode.c | 33 +++++++++++++++++++------------
>  1 file changed, 20 insertions(+), 13 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
> index d9b51dfea677..ab23c32a4370 100644
> --- a/drivers/power/reset/reboot-mode.c
> +++ b/drivers/power/reset/reboot-mode.c
> @@ -12,8 +12,6 @@
>  #include <globalvar.h>
>  #include <magicvar.h>
>  
> -#define PREFIX "mode-"
> -
>  static int __priority;
>  static struct reboot_mode_driver *__boot_mode;
>  
> @@ -111,6 +109,17 @@ static void reboot_mode_print(struct reboot_mode_driver *reboot,
>  	__pr_printk(7, "\n");
>  }
>  
> +static const char *get_mode_name(const struct property *prop)
> +{
> +	unsigned prefix_len;
> +
> +	prefix_len = str_has_prefix(prop->name, "mode-");
> +	if (!prefix_len)
> +		return NULL;
> +
> +	return prop->name + prefix_len;
> +}
> +
>  /**
>   * reboot_mode_register - register a reboot mode driver
>   * @reboot: reboot mode driver
> @@ -123,7 +132,6 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
>  {
>  	struct property *prop;
>  	struct device_node *np = reboot->dev->device_node;
> -	size_t len = strlen(PREFIX);
>  	const char *alias;
>  	size_t nmodes = 0;
>  	int i = 0;
> @@ -132,7 +140,7 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
>  	for_each_property_of_node(np, prop) {
>  		u32 magic;
>  
> -		if (strncmp(prop->name, PREFIX, len))
> +		if (!get_mode_name(prop))
>  			continue;
>  		if (of_property_read_u32(np, prop->name, &magic))
>  			continue;
> @@ -154,16 +162,9 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
>  		magic = &reboot->magics[i * nelems];
>  		mode = &reboot->modes[i];
>  
> -		if (strncmp(prop->name, PREFIX, len))
> -			continue;
> -
> -		if (of_property_read_u32_array(np, prop->name, magic, nelems)) {
> -			dev_err(reboot->dev, "reboot mode %s without magic number\n",
> -				*mode);
> +		*mode = get_mode_name(prop);
> +		if (!*mode)
>  			continue;
> -		}
> -
> -		*mode = prop->name + len;
>  		if (*mode[0] == '\0') {
>  			ret = -EINVAL;
>  			dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
> @@ -171,6 +172,12 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
>  			goto error;
>  		}
>  
> +		if (of_property_read_u32_array(np, prop->name, magic, nelems)) {
> +			dev_err(reboot->dev, "reboot mode %s without magic number\n",
> +				*mode);
> +			continue;
> +		}
> +
>  		reboot_mode_print(reboot, *mode, magic);
>  
>  		i++;
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


