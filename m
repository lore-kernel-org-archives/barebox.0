Delivery-date: Wed, 26 Nov 2025 11:13:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOCWz-0052cw-2d
	for lore@lore.pengutronix.de;
	Wed, 26 Nov 2025 11:13:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOCWy-0000Ch-NS
	for lore@pengutronix.de; Wed, 26 Nov 2025 11:13:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sHsSFnlLSBYyOsnRpBPYmoFn6ja3A5MzO96qgk/2+kI=; b=eCdMqiV3ochEcKmsoJ/MMTHcQ8
	2qByh1NH0vXMHcqSF5lVBbWKDt7kQBHR7mHdf2CqJNxdOSKmio/T1VuejRsFFYQ2Ac0SU+hx1SxvE
	zSaAxxCZMxy4rFoHxMP/zdL40IMQkJ9mYE2FP1Al6phyHrtz7ioFVwZYLOKsUpyvkJ0XoCFICRioi
	CipL/kjpyvJqIoLDmWKVjxRGNRo8UbMsmgvbdLGO41lL3jnVUgd5jLlrKnOqphuPNTObfaMJaC6ck
	GZODEo3hA7g3aMn1B+YbGxKZXedhhf89eoh1/vqzoSfSRatqNFGj5qQud3Z1NwngFTEZbIvt2zIHh
	93DKK+4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOCWM-0000000ElTT-1mBr;
	Wed, 26 Nov 2025 10:13:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOCWI-0000000ElT4-0syl
	for barebox@lists.infradead.org;
	Wed, 26 Nov 2025 10:13:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOCWG-00005s-Im; Wed, 26 Nov 2025 11:13:04 +0100
Message-ID: <1b6aeda5-6582-422b-a8bd-3cc8c43b0f7c@pengutronix.de>
Date: Wed, 26 Nov 2025 11:13:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <29c84edc-9619-4524-a698-1edd3a60ac89@pengutronix.de>
 <20251126064710.3721039-1-f.pflug@pengutronix.de>
 <20251126064710.3721039-3-f.pflug@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251126064710.3721039-3-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_021306_609649_0AE0C6A2 
X-CRM114-Status: GOOD (  32.61  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] fs: split rootargs into root and options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Fabian,

On 11/26/25 7:42 AM, Fabian Pflug wrote:
> The rootargs argument (root=/dev/etc rootwait) can be split into the
> root and options parts, which makes it easier to manipulate them both
> independently. This changes tries to be as backward compatible as
> possible and does not change the behaviour of the get functions, but
> introduces new ones to get both items seperatly.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Just some code style nitpicks below,

> ---
>  common/block.c         | 42 ++++++++++++++++++-------------
>  fs/9p/vfs_super.c      |  6 ++---
>  fs/fs.c                | 57 +++++++++++++++++++++++++++++++-----------
>  fs/nfs.c               |  4 +--
>  fs/squashfs/squashfs.c | 13 ++++++----
>  fs/ubifs/ubifs.c       | 12 +++++----
>  include/block.h        |  6 +++++
>  include/fs.h           |  6 +++--
>  8 files changed, 98 insertions(+), 48 deletions(-)
> 
> diff --git a/common/block.c b/common/block.c
> index ce3aee49b4..35e90dc4a6 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -584,34 +584,42 @@ const char *blk_type_str(enum blk_type type)
>  	}
>  }
>  
> -char *cdev_get_linux_rootarg(const struct cdev *partcdev)
> -{
> +void cdev_get_linux_root_and_opts(const struct cdev *partcdev, char** root, char** rootopts) {

space before the **

> +
>  	const struct cdev *cdevm;
>  	struct block_device *blk;
> -	char *rootarg = NULL;
> -	char* root = NULL;
> +
> +	*root = NULL;
> +	*rootopts = NULL;

Convention elsewhere in the codebase is to set output parameters only on
success. This allows users to specify default values and they will not
be overridden on error. Please drop these and maybe return an error code
instead from the function (or one of the arguments ;).

>  
>  	if (!partcdev)
> -		return NULL;
> +		return;
>  
>  	cdevm = partcdev->master ?: partcdev;
>  	blk = cdev_get_block_device(cdevm);
>  	if (!blk)
> -		return NULL;
> +		return;
>  
> -	if (blk->ops->get_root) {
> -		root = blk->ops->get_root(blk, partcdev);
> -		if(root) {
> -			rootarg = basprintf("root=%s", root);
> -			free(root);
> -		}
> -	}
> -	if (!rootarg && partcdev->partuuid[0] != 0)
> -		rootarg = basprintf("root=PARTUUID=%s", partcdev->partuuid);
> +	if (blk->ops->get_root)
> +		*root = blk->ops->get_root(blk, partcdev);
> +	if (!*root && partcdev->partuuid[0] != 0)
> +		*root = basprintf("PARTUUID=%s", partcdev->partuuid);

Please assign to local variable and only set on success.

>  
>  	if (IS_ENABLED(CONFIG_ROOTWAIT_BOOTARG) && blk->rootwait)
> -		rootarg = linux_bootargs_append_rootwait(rootarg);
> +		*rootopts = xasprintf("rootwait=%d", linux_rootwait_secs);

xasprintf and basprintf are aliases nowadays. I prefer xasprintf as it
makes it clearer that the function panics on OOM. I wouldn't mix both in
the same function.

>  
> -	return rootarg;
> +	return;
>  }
>  
> +char *cdev_get_linux_rootarg(const struct cdev *partcdev)
> +{
> +	char* root;
> +	char* rootopts;
> +
> +	cdev_get_linux_root_and_opts(partcdev, &root, &rootopts);
> +	if(!root)
> +		return NULL;
> +	if(rootopts)
> +		return xasprintf("root=%s %s", root, rootopts);
> +	return xasprintf("root=%s", root);
> +}
> diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
> index 6a451d9ef5..efc9a9193d 100644
> --- a/fs/9p/vfs_super.c
> +++ b/fs/9p/vfs_super.c
> @@ -70,11 +70,11 @@ static void v9fs_set_rootarg(struct v9fs_session_info *v9ses,
>  	trans = v9ses->clnt->trans_mod->name;
>  	path = v9ses->aname;
>  
> -	str = basprintf("root=%s rootfstype=9p rootflags=trans=%s,msize=%d,"
> +	str = basprintf("rootfstype=9p rootflags=trans=%s,msize=%d,"
>  			"cache=loose,uname=%s,dfltuid=0,dfltgid=0,aname=%s",
> -			tag, trans, v9ses->clnt->msize, tag, path);
> +			trans, v9ses->clnt->msize, tag, path);
>  
> -	fsdev_set_linux_rootarg(fsdev, str);
> +	fsdev_set_linux_root_options(fsdev, tag, str);
>  
>  	free(str);
>  }
> diff --git a/fs/fs.c b/fs/fs.c
> index 528299e039..c4f805d308 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1226,12 +1226,26 @@ void mount_all(void)
>  	}
>  }
>  
> -void fsdev_set_linux_rootarg(struct fs_device *fsdev, const char *str)
> +void fsdev_set_linux_root_options(struct fs_device *fsdev, const char *root, const char *rootopts)
>  {
> -	fsdev->linux_rootarg = xstrdup(str);
> +	fsdev->linux_root = xstrdup(root);
> +	fsdev->linux_rootopts = xstrdup(rootopts);
>  
> -	dev_add_param_fixed(&fsdev->dev, "linux.bootargs",
> -			    "%s", fsdev->linux_rootarg);
> +	dev_add_param_fixed(&fsdev->dev, "linux.bootargs.root",
> +			    "%s", fsdev->linux_root);
> +	dev_add_param_fixed(&fsdev->dev, "linux.bootargs.rootopts",
> +			    "%s", fsdev->linux_rootopts);
> +}
> +
> +void fsdev_get_linux_root_options(struct fs_device *fsdev, char **root, char **rootopts)
> +{
> +	if(fsdev) {

space missing

> +		*root = dev_get_param(&fsdev->dev, "linux.bootargs.root");
> +		*rootopts = dev_get_param(&fsdev->dev, "linux.bootargs.rootopts");
> +	} else {
> +		*root = NULL;
> +		*rootopts = NULL;

As mentioned above, this is not how other functions do it in barebox
(and the kernel for that matter).

> +	}
>  }
>  
>  /**
> @@ -1245,17 +1259,27 @@ void fsdev_set_linux_rootarg(struct fs_device *fsdev, const char *str)
>  char *path_get_linux_rootarg(const char *path)
>  {
>  	struct fs_device *fsdev;
> -	const char *str;
> +	char *root;
> +	char *rootopts;
> +	char *rootarg;
>  
>  	fsdev = get_fsdevice_by_path(AT_FDCWD, path);
>  	if (!fsdev)
>  		return ERR_PTR(-EINVAL);
>  
> -	str = dev_get_param(&fsdev->dev, "linux.bootargs");
> -	if (!str)
> -		return ERR_PTR(-ENOSYS);
> +	fsdev_get_linux_root_options(fsdev, &root, &rootopts);
>  
> -	return xstrdup(str);
> +	if(!root)
> +		return ERR_PTR(-EINVAL);
> +
> +	if(rootopts) {

space

> +		rootarg = xasprintf("root=%s %s", root, rootopts);
> +		free(rootopts);

move this to the end (free checks for NULL already) and then you can
just have

if(rootopts)
	rootarg = xasprintf("root=%s %s", root, rootopts);
else
	rootarg = xasprintf("root=%s", root);

makes code slightly easier to read IMO.

> +	} else {
> +		rootarg = xasprintf("root=%s", root);
> +	}
> +	free(root);
> +	return rootarg;
>  }
>  
>  /**
> @@ -3249,12 +3273,17 @@ int mount(const char *device, const char *fsname, const char *pathname,
>  
>  	fsdev->vfsmount.mnt_root = fsdev->sb.s_root;
>  
> -	if (!fsdev->linux_rootarg) {
> -		char *str;
> +	if (!fsdev->linux_root) {
> +		char *root;
> +		char *rootopts;
>  
> -		str = cdev_get_linux_rootarg(fsdev->cdev);
> -		if (str)
> -			fsdev_set_linux_rootarg(fsdev, str);
> +		cdev_get_linux_root_and_opts(fsdev->cdev, &root, &rootopts);
> +		if (root) {
> +			fsdev_set_linux_root_options(fsdev, root, rootopts);
> +			free(root);
> +			if(rootopts)
> +				free(rootopts);

if not needed.

> +		}
>  	}
>  
>  	path_put(&path);
> diff --git a/fs/nfs.c b/fs/nfs.c
> index 5c2476cd88..0b40c56ff3 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -1558,7 +1558,7 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device *fsdev)
>  	char *str, *tmp;
>  	const char *bootargs;
>  
> -	str = basprintf("root=/dev/nfs nfsroot=%pI4:%s%s%s", &npriv->server, npriv->path,
> +	str = basprintf("nfsroot=%pI4:%s%s%s", &npriv->server, npriv->path,
>  			  rootnfsopts[0] ? "," : "", rootnfsopts);
>  
>  	/* forward specific mount options on demand */
> @@ -1584,7 +1584,7 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device *fsdev)
>  	if (IS_ENABLED(CONFIG_ROOTWAIT_BOOTARG))
>  		str = linux_bootargs_append_rootwait(str);
>  
> -	fsdev_set_linux_rootarg(fsdev, str);
> +	fsdev_set_linux_root_options(fsdev, "/dev/nfs", str);
>  
>  	free(str);
>  }
> diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
> index e30372627a..365aa1f219 100644
> --- a/fs/squashfs/squashfs.c
> +++ b/fs/squashfs/squashfs.c
> @@ -46,7 +46,8 @@ static void squashfs_set_rootarg(struct fs_device *fsdev)
>  	struct ubi_volume_info vi = {};
>  	struct ubi_device_info di = {};
>  	struct mtd_info *mtd;
> -	char *str;
> +	char *root;
> +	char *rootopts;
>  
>  	if (!IS_ENABLED(CONFIG_MTD_UBI))
>  		return;
> @@ -60,12 +61,14 @@ static void squashfs_set_rootarg(struct fs_device *fsdev)
>  	ubi_get_device_info(vi.ubi_num, &di);
>  	mtd = di.mtd;
>  
> -	str = basprintf("root=/dev/ubiblock%d_%d ubi.mtd=%s ubi.block=%d,%d rootfstype=squashfs",
> -			vi.ubi_num, vi.vol_id, mtd->cdev.partname, vi.ubi_num, vi.vol_id);
> +	root = basprintf("/dev/ubiblock%d_%d", vi.ubi_num, vi.vol_id);
> +	rootopts = basprintf("ubi.mtd=%s ubi.block=%d,%d rootfstype=squashfs",
> +			mtd->cdev.partname, vi.ubi_num, vi.vol_id);
>  
> -	fsdev_set_linux_rootarg(fsdev, str);
> +	fsdev_set_linux_root_options(fsdev, root, rootopts);
>  
> -	free(str);
> +	free(root);
> +	free(rootopts);
>  }
>  
>  static struct inode *squashfs_alloc_inode(struct super_block *sb)
> diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
> index 37986acbb2..9cc35fa273 100644
> --- a/fs/ubifs/ubifs.c
> +++ b/fs/ubifs/ubifs.c
> @@ -435,19 +435,21 @@ static void ubifs_set_rootarg(struct ubifs_priv *priv,
>  	struct ubi_volume_info vi = {};
>  	struct ubi_device_info di = {};
>  	struct mtd_info *mtd;
> -	char *str;
> +	char *root;
> +	char *rootopts;
>  
>  	ubi_get_volume_info(priv->ubi, &vi);
>  	ubi_get_device_info(vi.ubi_num, &di);
>  
>  	mtd = di.mtd;
>  
> -	str = basprintf("root=ubi0:%s ubi.mtd=%s rootfstype=ubifs",
> -			  vi.name, mtd->cdev.partname);
> +	root = basprintf("ubi0:%s", vi.name);
> +	rootopts = basprintf("ubi.mtd=%s rootfstype=ubifs", mtd->cdev.partname);
>  
> -	fsdev_set_linux_rootarg(fsdev, str);
> +	fsdev_set_linux_root_options(fsdev, root, rootopts);
>  
> -	free(str);
> +	free(root);
> +	free(rootopts);
>  }
>  
>  static int ubifs_probe(struct device *dev)
> diff --git a/include/block.h b/include/block.h
> index b277f590e4..ddab8bfe60 100644
> --- a/include/block.h
> +++ b/include/block.h
> @@ -85,6 +85,7 @@ static inline int block_flush(struct block_device *blk)
>  #ifdef CONFIG_BLOCK
>  unsigned file_list_add_blockdevs(struct file_list *files);
>  char *cdev_get_linux_rootarg(const struct cdev *partcdev);
> +void cdev_get_linux_root_and_opts(const struct cdev *partcdev, char** root, char** rootopts);
>  #else
>  static inline unsigned file_list_add_blockdevs(struct file_list *files)
>  {
> @@ -94,6 +95,11 @@ static inline char *cdev_get_linux_rootarg(const struct cdev *partcdev)
>  {
>  	return NULL;
>  }
> +static inline void cdev_get_linux_root_and_opts(const struct cdev *partcdev, char** root, char** rootopts)
> +{
> +	root = NULL;
> +	rootopts = NULL;

drop

> +}
>  #endif
>  
>  static inline bool cdev_is_block_device(const struct cdev *cdev)
> diff --git a/include/fs.h b/include/fs.h
> index 98c482bbf2..c50437d609 100644
> --- a/include/fs.h
> +++ b/include/fs.h
> @@ -90,7 +90,8 @@ struct fs_device {
>  	char *path;
>  	struct list_head list;
>  	char *options;
> -	char *linux_rootarg;
> +	char *linux_root;
> +	char *linux_rootopts;
>  
>  	struct super_block sb;
>  
> @@ -159,7 +160,8 @@ const char *cdev_mount_default(struct cdev *cdev, const char *fsoptions);
>  const char *cdev_mount(struct cdev *cdev);
>  void mount_all(void);
>  
> -void fsdev_set_linux_rootarg(struct fs_device *fsdev, const char *str);
> +void fsdev_set_linux_root_options(struct fs_device *fsdev, const char *root, const char* rootopts);
> +void fsdev_get_linux_root_options(struct fs_device *fsdev, char **root, char **rootopts);
>  char *path_get_linux_rootarg(const char *path);
>  
>  static inline const char *devpath_to_name(const char *devpath)

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



