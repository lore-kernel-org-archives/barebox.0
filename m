Delivery-date: Mon, 07 Feb 2022 11:45:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH1We-008BDd-0Z
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 11:45:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH1Wc-00037W-Ig
	for lore@pengutronix.de; Mon, 07 Feb 2022 11:45:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZpiJWMpmK0o44VGvOhFRFG7KjB0r7tAXGQoyX2iSds=; b=qcgpzqf6uoUh/j
	72GcZC8+SRa8tZaetjrwiOIXwsuTkPEdAzWx4gprNe3RL7iT8Nz1XEBi8RWcSJENe617FLHP/PGVo
	uOiilzrVHJvziYH/XjHf1N+CNOoMfVfUFsA0HZvkmoP69rgAV6XvkF5YHFM04/7wRKUCkR6jatwkF
	LP7YwJVIT2hnofs3AjTI3R6dToBHl/plmO9ydyeA12XXk7CBNlllm6NwOErQfXeqeITKTSchPm9R8
	6jAIaNCe1BkLi4InjzSOMgfDOR4LH7iR4GSqZ50Wf6OOQlyeMR5v86QkDsW8IlMMh6ndyJSp4vhxp
	ZLW2TiT9WaAN1CA9KLcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH1V8-009rbO-2r; Mon, 07 Feb 2022 10:44:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH1V3-009raR-3w
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 10:44:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nH1V1-0002oq-IO; Mon, 07 Feb 2022 11:43:59 +0100
Message-ID: <ea3c5d85-d751-d09f-41a1-192782b34afb@pengutronix.de>
Date: Mon, 7 Feb 2022 11:43:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Michael Olbrich <mol@pengutronix.de>
References: <20220207094953.949868-1-s.hauer@pengutronix.de>
 <20220207094953.949868-3-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220207094953.949868-3-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_024401_198088_FC1BAD4E 
X-CRM114-Status: GOOD (  23.17  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/8] rename cdev_open() -> cdev_open_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.02.22 10:49, Sascha Hauer wrote:
> The cdev_* functions normally take a struct cdev * argument, with the
> exception of cdev_open(). Rename cdev_open() to cdev_open_name() to
> be able to implement cdev_open() with the expected semantics in the next
> step.

Nitpick: cdev_open_by_name would align it more with the naming style
elsewhere in barebox.

Otherwise,

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-mxs/ocotp.c  | 2 +-
>  arch/arm/mach-omap/xload.c | 4 ++--
>  common/filetype.c          | 2 +-
>  fs/devfs-core.c            | 2 +-
>  fs/fs.c                    | 4 ++--
>  include/driver.h           | 2 +-
>  lib/bootstrap/devfs.c      | 4 ++--
>  7 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
> index 5f78d9d773..466f8886cd 100644
> --- a/arch/arm/mach-mxs/ocotp.c
> +++ b/arch/arm/mach-mxs/ocotp.c
> @@ -229,7 +229,7 @@ int mxs_ocotp_read(void *buf, int count, int offset)
>  	struct cdev *cdev;
>  	int ret;
>  
> -	cdev = cdev_open(DRIVERNAME, O_RDONLY);
> +	cdev = cdev_open_name(DRIVERNAME, O_RDONLY);
>  	if (!cdev)
>  		return -ENODEV;
>  
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index 0fe78883d1..edb094f36f 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -38,7 +38,7 @@ static void *read_image_head(const char *name)
>  	struct cdev *cdev;
>  	int ret;
>  
> -	cdev = cdev_open(name, O_RDONLY);
> +	cdev = cdev_open_name(name, O_RDONLY);
>  	if (!cdev) {
>  		printf("failed to open %s\n", name);
>  		return NULL;
> @@ -86,7 +86,7 @@ static void *read_mtd_barebox(const char *partition)
>  
>  	to = xmalloc(size);
>  
> -	cdev = cdev_open(partition, O_RDONLY);
> +	cdev = cdev_open_name(partition, O_RDONLY);
>  	if (!cdev) {
>  		printf("failed to open partition\n");
>  		return NULL;
> diff --git a/common/filetype.c b/common/filetype.c
> index 8ffcd6adcd..a955d88bc3 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -438,7 +438,7 @@ enum filetype cdev_detect_type(const char *name)
>  	struct cdev *cdev;
>  	void *buf;
>  
> -	cdev = cdev_open(name, O_RDONLY);
> +	cdev = cdev_open_name(name, O_RDONLY);
>  	if (!cdev)
>  		return type;
>  
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 2475ab959a..6350c3fa8b 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -169,7 +169,7 @@ int cdev_find_free_index(const char *basename)
>  	return -EBUSY;	/* all indexes are used */
>  }
>  
> -struct cdev *cdev_open(const char *name, unsigned long flags)
> +struct cdev *cdev_open_name(const char *name, unsigned long flags)
>  {
>  	struct cdev *cdev;
>  	int ret;
> diff --git a/fs/fs.c b/fs/fs.c
> index 968e77b808..20362c3889 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -800,7 +800,7 @@ int fsdev_open_cdev(struct fs_device_d *fsdev)
>  
>  		fsdev->cdev = cdev_create_loop(fsdev->backingstore, O_RDWR, offset);
>  	} else {
> -		fsdev->cdev = cdev_open(fsdev->backingstore, O_RDWR);
> +		fsdev->cdev = cdev_open_name(fsdev->backingstore, O_RDWR);
>  	}
>  	if (!fsdev->cdev) {
>  		path_put(&path);
> @@ -3048,7 +3048,7 @@ int umount(const char *pathname)
>  	path_put(&path);
>  
>  	if (!fsdev) {
> -		struct cdev *cdev = cdev_open(pathname, O_RDWR);
> +		struct cdev *cdev = cdev_open_name(pathname, O_RDWR);
>  
>  		if (cdev) {
>  			cdev_close(cdev);
> diff --git a/include/driver.h b/include/driver.h
> index 3ef8bfb8a3..b4fae477a6 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -489,7 +489,7 @@ struct cdev *cdev_readlink(struct cdev *cdev);
>  struct cdev *cdev_by_device_node(struct device_node *node);
>  struct cdev *cdev_by_partuuid(const char *partuuid);
>  struct cdev *cdev_by_diskuuid(const char *partuuid);
> -struct cdev *cdev_open(const char *name, unsigned long flags);
> +struct cdev *cdev_open_name(const char *name, unsigned long flags);
>  struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset);
>  void cdev_remove_loop(struct cdev *cdev);
>  int cdev_do_open(struct cdev *, unsigned long flags);
> diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
> index 6d28b1cb4d..e26a3d831d 100644
> --- a/lib/bootstrap/devfs.c
> +++ b/lib/bootstrap/devfs.c
> @@ -32,7 +32,7 @@ static void *read_image_head(const char *name)
>  	struct cdev *cdev;
>  	int ret;
>  
> -	cdev = cdev_open(name, O_RDONLY);
> +	cdev = cdev_open_name(name, O_RDONLY);
>  	if (!cdev) {
>  		bootstrap_err("failed to open partition\n");
>  		goto free_header;
> @@ -124,7 +124,7 @@ void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
>  
>  	to = xmalloc(size);
>  
> -	cdev = cdev_open(partname, O_RDONLY);
> +	cdev = cdev_open_name(partname, O_RDONLY);
>  	if (!cdev) {
>  		bootstrap_err("%s: failed to open %s\n", devname, partname);
>  		goto free_memory;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

