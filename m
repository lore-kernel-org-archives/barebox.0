Delivery-date: Fri, 14 Nov 2025 11:11:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJqmT-000rtm-36
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 11:11:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJqmT-0002uj-B2
	for lore@pengutronix.de; Fri, 14 Nov 2025 11:11:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TUaOdhMweMc3FomONqJ34kKK2+jQ6bSxSwCew+3cYoY=; b=3xBDa7h2DVYeYpHhCtPTxctutS
	eR4ab4nUZS+3XO2HXJrIH7vu1q5ClRQ0+VPciQJvReGoZYqipHu7noUjqEysb+7wObdA7xN7GrVcO
	TsNMQnTWkXqA9o0gB4bM0E1YwRz68Ynij/5hvTGflYOyYjxGLWMryJXNoVT4C2bVD2rBob4Txy5rN
	v/W7XGHj0/4G+c1Fd4w3+35nQN49XLX7boisdFLJuPtoDiMxT3tDWNyADOQDHK5O8EkrGxZiJmS9s
	TIKI4dmTuukYeX+E3zYXgYO9Lt4/Hbe3HFSxkgKixqBwOpaUXzA8H6OVNKj0nZYxFaoA6m+nlww56
	hxXMY+oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJqlm-0000000Byxi-0m4u;
	Fri, 14 Nov 2025 10:11:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJqlk-0000000Bytc-07OL
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 10:11:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vJqlh-0002hD-13; Fri, 14 Nov 2025 11:11:01 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vJqlg-000P7g-2K;
	Fri, 14 Nov 2025 11:11:00 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vJqlg-002fqy-21;
	Fri, 14 Nov 2025 11:11:00 +0100
Date: Fri, 14 Nov 2025 11:11:00 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: chalianis1@gmail.com
Message-ID: <20251114101100.4dpxj3vztsdmezqg@pengutronix.de>
References: <20251114050034.186683-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114050034.186683-1-chalianis1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_021104_071224_8C40C3B3 
X-CRM114-Status: GOOD (  25.73  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,WEIRD_QUOTING
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] blspec: derive root prefix from blspec config path
 instead of mountpoint
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

thanks for your patch.

On 25-11-14, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Add get_prefix_path() to compute the filesystem prefix of a BLSpec
> entry by locating the deepest /loader/entries/ component in the

What exactly do you mean by "deepest"? The specification says that the
entries should be under /loader/entries of $BOOT or $EFI partition [1].

There is also a note:
"""""""""
In all cases the /loader/entries/ directory should be located directly
in the root of the ESP or XBOOTLDR filesystem. Specifically, the
/loader/entries/ directory should not be located under the /EFI/
subdirectory on the ESP.
"""""""""

So searching in subdirs seems not to be spec compatible. May I ask why
your loader entries are within some subdir in the first place?

Regards,
  Marco

[1] https://uapi-group.org/specifications/specs/boot_loader_specification/#type-1-boot-loader-specification-entries

> configuration path. This ensures correct rootpath extraction for
> nested loader directories, mixed path layouts, duplicate segments,
> and paths without valid loader entries. If no prefix is found,
> fall back to get_mounted_path().
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  common/blspec.c | 25 ++++++++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/common/blspec.c b/common/blspec.c
> index 80ebe256ceaf..ad94d4d6be64 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -391,6 +391,29 @@ static bool entry_is_match_machine_id(struct blspec_entry *entry)
>  	return ret;
>  }
>  
> +/*
> + * Return the path prefix before the deepest "/loader/entries/" component
> + * in @configname. Falls back to the mounted path if none is found.
> + */
> +static char *get_blspec_prefix_path(char *configname)
> +{
> +	char *p;
> +	char *scfg = configname;
> +	char *save = NULL;
> +
> +	while ((p = strstr(scfg, "/loader/entries/")) != NULL) {
> +		if (p - configname > 0)
> +			save = p;
> +
> +		scfg = p + 1;
> +	}
> +
> +	if (save && save - configname > 0)
> +		return xstrndup(configname, save - configname);
> +
> +	return get_mounted_path(configname);
> +}
> +
>  static int __blspec_scan_file(struct bootentries *bootentries, const char *root,
>  			      const char *configname)
>  {
> @@ -404,7 +427,7 @@ static int __blspec_scan_file(struct bootentries *bootentries, const char *root,
>  	if (IS_ERR(entry))
>  		return PTR_ERR(entry);
>  
> -	root = root ?: get_mounted_path(configname);
> +	root = root ?: get_blspec_prefix_path(configname);
>  	entry->rootpath = xstrdup_const(root);
>  	entry->configpath = xstrdup_const(configname);
>  	entry->cdev = get_cdev_by_mountpath(root);
> -- 
> 2.49.0
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


