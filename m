Delivery-date: Wed, 20 Jul 2022 11:31:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE63L-00FRqJ-BH
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 11:31:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE63J-0005q2-Ag
	for lore@pengutronix.de; Wed, 20 Jul 2022 11:31:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jt77FHubQ5y2xSgQ6YAqP77INgfvy1pjY4KwdXeuMjA=; b=Puj7PMbnb8krl9x04PBqJm+dzn
	9XtFTg0tluBHBwdL1c/yvO13Dc29UfAYYCw0mxUYac+15/PMEfPumFfyD8ByAgGwnVIh5DCUZSAAf
	9cvQHGOkbtCGOh+iTS8ghTrDAW+vY625KLSY+Q29iJs9eWtnCHUgflIddzJmMTzUUGACMQpB1hFun
	VCZhFEM8EdvYiqrUNRov8meYTyhdhsoakWI4Flah1xuPMsaxCxJNNq4SuEbLCcwA29CwEnFLnPy2Z
	GisGYJbN7jY5i6PzsDTG5Fa/zWhjZaHD1Qsn2enc7iSNcYRlyo++QFrIDYZm/RtdDeJqxwn8aFmLI
	jky7ZLpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE61j-003I9b-5s; Wed, 20 Jul 2022 09:29:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE61e-003I23-Ha
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 09:29:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=irc.pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1oE61Z-0005Fe-6F
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 11:29:45 +0200
Message-ID: <d7a4d566f85e550ea71c879154160fa433824e2c.camel@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 20 Jul 2022 11:29:39 +0200
In-Reply-To: <20220720083215.1245844-1-j.zink@pengutronix.de>
References: <20220720055042.3510276-3-a.fatoum@pengutronix.de>
	 <20220720083215.1245844-1-j.zink@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_022950_607741_C8EFCF02 
X-CRM114-Status: GOOD (  18.95  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! bootsource: allow DT aliases and bootrom
 numbering to differ
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 2022-07-20 at 10:32 +0200, Johannes Zink wrote:
> bootsource was used when src should have been instead. While at it,
> rename bs to src for alignment with other functions.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  common/bootsource.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/common/bootsource.c b/common/bootsource.c
> index d74c5e5cb..70bac945d 100644
> --- a/common/bootsource.c
> +++ b/common/bootsource.c
> @@ -33,9 +33,9 @@ static enum bootsource bootsource =
> BOOTSOURCE_UNKNOWN;
>  static int bootsource_instance = BOOTSOURCE_INSTANCE_UNKNOWN;
>  const char *bootsource_alias_name = NULL;
>  
> -const char *bootsource_get_alias_stem(enum bootsource bs)
> +const char *bootsource_get_alias_stem(enum bootsource src)
>  {
> -       switch (bs) {
> +       switch (src) {
>                 /*
>                  * For I2C and SPI EEPROMs we set the stem to be
> 'i2c'
>                  * and 'spi' correspondingly. The resulting alias
> will
> @@ -55,7 +55,7 @@ const char *bootsource_get_alias_stem(enum
> bootsource bs)
>         case BOOTSOURCE_MMC:    /* FALLTHROUGH */
>         case BOOTSOURCE_SPI:    /* FALLTHROUGH */
>         case BOOTSOURCE_CAN:
> -               return bootsource_str[bootsource];
> +               return bootsource_str[src];
>         default:
>                 return NULL;
>         }
> @@ -127,7 +127,7 @@ void bootsource_set_raw_instance(int instance)
>                 pr_setenv("bootsource_instance", "%d", instance);
>  }
>  
> -int bootsource_of_alias_xlate(enum bootsource bs, int instance)
> +int bootsource_of_alias_xlate(enum bootsource src, int instance)
>  {
>         char alias[sizeof("barebox,bootsource-harddisk4294967295")];
>         const char *bootsource_stem;
> @@ -137,11 +137,11 @@ int bootsource_of_alias_xlate(enum bootsource
> bs, int instance)
>         if (!IS_ENABLED(CONFIG_OFDEVICE))
>                 return BOOTSOURCE_INSTANCE_UNKNOWN;
>  
> -       if (bs == BOOTSOURCE_UNKNOWN ||
> +       if (src == BOOTSOURCE_UNKNOWN ||
>             instance == BOOTSOURCE_INSTANCE_UNKNOWN)
>                 return BOOTSOURCE_INSTANCE_UNKNOWN;
>  
> -       bootsource_stem = bootsource_get_alias_stem(bs);
> +       bootsource_stem = bootsource_get_alias_stem(src);
>         if (!bootsource_stem)
>                 return BOOTSOURCE_INSTANCE_UNKNOWN;
>  
> @@ -159,15 +159,15 @@ int bootsource_of_alias_xlate(enum bootsource
> bs, int instance)
>         return alias_id;
>  }
>  
> -int bootsource_set(enum bootsource bs, int instance)
> +int bootsource_set(enum bootsource src, int instance)
>  {
>         int alias_id;
>  
> -       alias_id = bootsource_of_alias_xlate(bs, instance);
> +       alias_id = bootsource_of_alias_xlate(src, instance);
>         if (alias_id == BOOTSOURCE_INSTANCE_UNKNOWN)
>                 alias_id = instance;
>  
> -       bootsource_set_raw(bs, alias_id);
> +       bootsource_set_raw(src, alias_id);
>  
>         return alias_id;
>  }

Tested-by: Johannes Zink <j.zink@pengutronix.de> # Radxa Rockpi3A
(RK3568)

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



