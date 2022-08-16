Delivery-date: Tue, 16 Aug 2022 10:28:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNrvu-000Tu8-1o
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 10:28:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNrvq-00024T-So
	for lore@pengutronix.de; Tue, 16 Aug 2022 10:28:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R/gbup5uMiCWXKv8ijrc5aUb+xZDHgHNi1ssZVr9gVY=; b=u0LibIEDfKmCm/UXFNPXGyadgY
	XEJTeooZmosPuBnJ8agTRfj8+ApqpUql7kiGXRngbUS5lVR7f3WyBJIxLYS1iDh6mi6f2wIHMgPCP
	n4b1Kb+ASH1Mgz2dO3Jp9SVXj3KPjXgIQC+LfCD6B3Woft+cGqAl13NsN8RQDUfVyFAzuVYMGhDzi
	lbOUuEU9p17sHRQG95HPDP8Qj78g0zbqdqBkkMJZZu1CGACICyoYN85Kyx5ye2ZPyqX2CPFhBePHI
	aJmHOJm9PCe5voUfwTjl6AOzvuhpQgZMqqUBt5Acwz5kRiaLsjTxsLAdGgq7gxRXIdEgXAU9nN9C2
	PnMLUsSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNruU-00GbdS-Ls; Tue, 16 Aug 2022 08:26:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNruP-00GbWk-1A
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 08:26:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNruN-0001oR-6C; Tue, 16 Aug 2022 10:26:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNruM-0006hL-KJ; Tue, 16 Aug 2022 10:26:42 +0200
Date: Tue, 16 Aug 2022 10:26:42 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220816082642.GJ17485@pengutronix.de>
References: <20220815114835.2277946-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220815114835.2277946-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_012645_171049_5D8B4D72 
X-CRM114-Status: GOOD (  29.84  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fs: export cdev_get_linux_rootarg() for reuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 15, 2022 at 01:48:34PM +0200, Ahmad Fatoum wrote:
> We've the root=PARTUUID=%s generation at two places: Once to populate
> fsdev->linux_rootarg and once to handle struct bootm_data::root_dev.
> 
> In preparation for dropping the duplicate out-of-sync code in the bootm
> code, export the originl fs/fs.c code as cdev_get_linux_rootarg().
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/fs.c      | 50 +++++++++++++++++++++++++++++++++++---------------
>  include/fs.h |  1 +
>  2 files changed, 36 insertions(+), 15 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/fs.c b/fs/fs.c
> index bd6f144742ac..620cd6597a63 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -2876,12 +2876,23 @@ int popd(char *oldcwd)
>  	return ret;
>  }
>  
> -static char *get_linux_mmcblkdev(struct fs_device_d *fsdev)
> +static bool cdev_partname_equal(const struct cdev *a,
> +				const struct cdev *b)
>  {
> -	struct cdev *cdevm, *cdev;
> +	return a->partname && b->partname &&
> +		!strcmp(a->partname, b->partname);
> +}
> +
> +static char *get_linux_mmcblkdev(const struct cdev *root_cdev)
> +{
> +	struct cdev *cdevm = root_cdev->master, *cdev;
>  	int id, partnum;
>  
> -	cdevm = fsdev->cdev->master;
> +	if (!IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG))
> +		return NULL;
> +	if (!cdevm || !cdev_is_mci_main_part_dev(cdevm))
> +		return NULL;
> +
>  	id = of_alias_get_id(cdevm->device_node, "mmc");
>  	if (id < 0)
>  		return NULL;
> @@ -2894,8 +2905,7 @@ static char *get_linux_mmcblkdev(struct fs_device_d *fsdev)
>  		 * in the partitions list so we need to count it instead of
>  		 * skipping it.
>  		 */
> -		if (cdev->partname &&
> -		    !strcmp(cdev->partname, fsdev->cdev->partname))
> +		if (cdev_partname_equal(root_cdev, cdev))
>  			return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
>  		partnum++;
>  	}
> @@ -2903,6 +2913,23 @@ static char *get_linux_mmcblkdev(struct fs_device_d *fsdev)
>  	return NULL;
>  }
>  
> +char *cdev_get_linux_rootarg(const struct cdev *cdev)
> +{
> +	char *str;
> +
> +	if (!cdev)
> +		return NULL;
> +
> +	str = get_linux_mmcblkdev(cdev);
> +	if (str)
> +		return str;
> +
> +	if (cdev->uuid[0] != 0)
> +		return basprintf("root=PARTUUID=%s", cdev->uuid);
> +
> +	return NULL;
> +}
> +
>  /*
>   * Mount a device to a directory.
>   * We do this by registering a new device on which the filesystem
> @@ -2991,17 +3018,10 @@ int mount(const char *device, const char *fsname, const char *pathname,
>  
>  	fsdev->vfsmount.mnt_root = fsdev->sb.s_root;
>  
> -	if (!fsdev->linux_rootarg && fsdev->cdev) {
> -		char *str = NULL;
> -
> -		if (IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG) &&
> -		    fsdev->cdev->master &&
> -		    cdev_is_mci_main_part_dev(fsdev->cdev->master))
> -			str = get_linux_mmcblkdev(fsdev);
> -
> -		if (!str && fsdev->cdev->uuid[0] != 0)
> -			str = basprintf("root=PARTUUID=%s", fsdev->cdev->uuid);
> +	if (!fsdev->linux_rootarg) {
> +		char *str;
>  
> +		str = cdev_get_linux_rootarg(fsdev->cdev);
>  		if (str)
>  			fsdev_set_linux_rootarg(fsdev, str);
>  	}
> diff --git a/include/fs.h b/include/fs.h
> index cd5eb571e08e..894cae3e4c2f 100644
> --- a/include/fs.h
> +++ b/include/fs.h
> @@ -168,6 +168,7 @@ void mount_all(void);
>  
>  void fsdev_set_linux_rootarg(struct fs_device_d *fsdev, const char *str);
>  char *path_get_linux_rootarg(const char *path);
> +char *cdev_get_linux_rootarg(const struct cdev *cdev);
>  
>  static inline const char *devpath_to_name(const char *devpath)
>  {
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


