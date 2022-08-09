Delivery-date: Tue, 09 Aug 2022 07:15:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLHaY-00GvKr-4U
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 07:15:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLHaY-000733-Ap
	for lore@pengutronix.de; Tue, 09 Aug 2022 07:15:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aLq5sOYC/HRafJQMBO79LZnKVoxtDVevtdmlP6L9XMw=; b=n/IFPwTOIMXXeWIDTBj6JZvFa1
	uwa9fK3d+IpDYpqfp55zJCiSb1K4uJT5gIdAiYadNUnC2GGZfRIg5x6Mjk8D1bZyt+Mvnp3P3Ydo1
	HqjkXLiJbnJlq2B9dfCenDApuSBtVLVzc0WgEnxDx033K5qD4Gh3dRD+7gh7hwJsAGhZyeGGiixiZ
	LxoEU4ndcgq1Zw4Z8t6SACVQ67SBw4dyIVlDwTIcznQccr+oVDkNG/EI2+18rTQ1NdsAim8Zdg3Jf
	Tw2pz7wT1PhzBfxsUv3HeiA497JdkzFlixqjdFkvy6vZBUiJoa5j99ck5CI3X60FuklKQXOr9uuso
	6vMZFuiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLHZE-001S4S-Su; Tue, 09 Aug 2022 05:14:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLHZ5-001RxQ-5f
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 05:14:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLHYz-0006nu-G5; Tue, 09 Aug 2022 07:13:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLHYy-0004C3-QM; Tue, 09 Aug 2022 07:13:56 +0200
Date: Tue, 9 Aug 2022 07:13:56 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220809051356.GA31528@pengutronix.de>
References: <20220724184807.2123459-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220724184807.2123459-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_221403_250240_84A89978 
X-CRM114-Status: GOOD (  27.82  )
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
Subject: Re: [PATCH 1/3] blspec: refactor to prepare for booting by file path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Jul 24, 2022 at 08:48:05PM +0200, Ahmad Fatoum wrote:
> The blspec boot entry provider currently feeds the path into
> blspec_scan_directory, which will fail to collect an boot entry when
> given a regular file. In preparation for allowing to boot a specific
> blspec file by path, refactor the code pertaining to a single file into
> a blspec_scan_file function and move parse_nfs_url which applies equally
> to files and directories into the callsite. There is one other callsite
> of blspec_scan_directory in blspec_scan_cdev, but that one will never
> handle NFS paths, so it's fine to skip calling parse_nfs_url there.
> 
> No functional change intended.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/blspec.c  | 112 ++++++++++++++++++++++++-----------------------
>  include/blspec.h |   2 +
>  2 files changed, 60 insertions(+), 54 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/blspec.c b/common/blspec.c
> index 158fd1e9a28c..d798f6f38a4b 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -513,6 +513,54 @@ static bool entry_is_match_machine_id(struct blspec_entry *entry)
>  	return ret;
>  }
>  
> +int blspec_scan_file(struct bootentries *bootentries, const char *root,
> +		     const char *configname)
> +{
> +	char *devname = NULL, *hwdevname = NULL;
> +	struct blspec_entry *entry;
> +
> +	if (blspec_have_entry(bootentries, configname))
> +		return -EEXIST;
> +
> +	entry = blspec_entry_open(bootentries, configname);
> +	if (IS_ERR(entry))
> +		return PTR_ERR(entry);
> +
> +	entry->rootpath = xstrdup(root);
> +	entry->configpath = xstrdup(configname);
> +	entry->cdev = get_cdev_by_mountpath(root);
> +
> +	if (!entry_is_of_compatible(entry)) {
> +		blspec_entry_free(&entry->entry);
> +		return -ENODEV;
> +	}
> +
> +	if (!entry_is_match_machine_id(entry)) {
> +		blspec_entry_free(&entry->entry);
> +		return -ENODEV;
> +	}
> +
> +	if (entry->cdev && entry->cdev->dev) {
> +		devname = xstrdup(dev_name(entry->cdev->dev));
> +		if (entry->cdev->dev->parent)
> +			hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
> +	}
> +
> +	entry->entry.title = xasprintf("%s (%s)", blspec_entry_var_get(entry, "title"),
> +				       configname);
> +	entry->entry.description = basprintf("blspec entry, device: %s hwdevice: %s",
> +					    devname ? devname : "none",
> +					    hwdevname ? hwdevname : "none");
> +	free(devname);
> +	free(hwdevname);
> +
> +	entry->entry.me.type = MENU_ENTRY_NORMAL;
> +	entry->entry.release = blspec_entry_free;
> +
> +	bootentries_add_entry(bootentries, &entry->entry);
> +	return 1;
> +}
> +
>  /*
>   * blspec_scan_directory - scan over a directory
>   *
> @@ -522,17 +570,11 @@ static bool entry_is_match_machine_id(struct blspec_entry *entry)
>   */
>  int blspec_scan_directory(struct bootentries *bootentries, const char *root)
>  {
> -	struct blspec_entry *entry;
>  	DIR *dir;
>  	struct dirent *d;
>  	char *abspath;
>  	int ret, found = 0;
>  	const char *dirname = "loader/entries";
> -	char *nfspath = NULL;
> -
> -	nfspath = parse_nfs_url(root);
> -	if (!IS_ERR(nfspath))
> -		root = nfspath;
>  
>  	pr_debug("%s: %s %s\n", __func__, root, dirname);
>  
> @@ -549,7 +591,6 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
>  		char *configname;
>  		struct stat s;
>  		char *dot;
> -		char *devname = NULL, *hwdevname = NULL;
>  
>  		if (*d->d_name == '.')
>  			continue;
> @@ -578,59 +619,15 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
>  			continue;
>  		}
>  
> -		if (blspec_have_entry(bootentries, configname)) {
> -			free(configname);
> -			continue;
> -		}
> -
> -		entry = blspec_entry_open(bootentries, configname);
> -		if (IS_ERR(entry)) {
> -			free(configname);
> -			continue;
> -		}
> -
> -		entry->rootpath = xstrdup(root);
> -		entry->configpath = configname;
> -		entry->cdev = get_cdev_by_mountpath(root);
> -
> -		if (!entry_is_of_compatible(entry)) {
> -			blspec_entry_free(&entry->entry);
> -			continue;
> -		}
> -
> -		if (!entry_is_match_machine_id(entry)) {
> -			blspec_entry_free(&entry->entry);
> -			continue;
> -		}
> -
> -		found++;
> -
> -		if (entry->cdev && entry->cdev->dev) {
> -			devname = xstrdup(dev_name(entry->cdev->dev));
> -			if (entry->cdev->dev->parent)
> -				hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
> -		}
> -
> -		entry->entry.title = xasprintf("%s (%s)", blspec_entry_var_get(entry, "title"),
> -					       configname);
> -		entry->entry.description = basprintf("blspec entry, device: %s hwdevice: %s",
> -						    devname ? devname : "none",
> -						    hwdevname ? hwdevname : "none");
> -		free(devname);
> -		free(hwdevname);
> -
> -		entry->entry.me.type = MENU_ENTRY_NORMAL;
> -		entry->entry.release = blspec_entry_free;
> -
> -		bootentries_add_entry(bootentries, &entry->entry);
> +		ret = blspec_scan_file(bootentries, root, configname);
> +		if (ret == 1)
> +			found++;
>  	}
>  
>  	ret = found;
>  
>  	closedir(dir);
>  err_out:
> -	if (!IS_ERR(nfspath))
> -		free(nfspath);
>  	free(abspath);
>  
>  	return ret;
> @@ -846,9 +843,16 @@ static int blspec_bootentry_provider(struct bootentries *bootentries,
>  		found += ret;
>  
>  	if (*name == '/' || !strncmp(name, "nfs://", 6)) {
> +		char *nfspath = parse_nfs_url(name);
> +		if (!IS_ERR(nfspath))
> +			name = nfspath;
> +
>  		ret = blspec_scan_directory(bootentries, name);
>  		if (ret > 0)
>  			found += ret;
> +
> +		if (!IS_ERR(nfspath))
> +			free(nfspath);
>  	}
>  
>  	return found;
> diff --git a/include/blspec.h b/include/blspec.h
> index 37076cd47c97..8f2556f6620e 100644
> --- a/include/blspec.h
> +++ b/include/blspec.h
> @@ -23,5 +23,7 @@ int blspec_scan_devices(struct bootentries *bootentries);
>  int blspec_scan_device(struct bootentries *bootentries, struct device_d *dev);
>  int blspec_scan_devicename(struct bootentries *bootentries, const char *devname);
>  int blspec_scan_directory(struct bootentries *bootentries, const char *root);
> +int blspec_scan_file(struct bootentries *bootentries, const char *root,
> +		     const char *configname);
>  
>  #endif /* __LOADER_H__ */
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


