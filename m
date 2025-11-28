Delivery-date: Fri, 28 Nov 2025 11:02:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvJJ-005kFy-2M
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 11:02:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvJJ-0003l0-26
	for lore@pengutronix.de; Fri, 28 Nov 2025 11:02:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VMUmWlD9wEu7TuFtQ0+kl+B4Q2ea1FEIAFIHUoDaesk=; b=Yt5Cyr1hfgtN+kyXiEPjI5dtKD
	rOTVBGtsjOIDFsQdqKkqiuw2U9LoTG1AoisTyzhhN1K2Qn+xYG+mAA9Tq4vY6MM/NeMlmh8dbtcZl
	5jiZ8sD1MIlts5i0rf9FmGQHhD4mVBZUGAKWFShQGZpnHwnc8ypar5+IFUA87puBQ2zdXWKux6oG0
	dWEe/bOl3qKrKefdKgU1AIQAA2HaTHBux0OrcAiQ9p3CJa0SuG4dBEsSwOj2AzXQZyOwab3iuyaQ+
	hxBd5TjXdYTmSFO+wpeLm7yXPz4EocaGo9VNyTqBAtXBV/0Z6ewS0amhnrY+Qw9xk6HfwtysPkDl9
	J78vl2gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvIX-00000000Fv7-3NFs;
	Fri, 28 Nov 2025 10:01:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvIV-00000000Fui-1b1y
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 10:01:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvIS-0003bP-Pk; Fri, 28 Nov 2025 11:01:48 +0100
Message-ID: <d0d39130-aa0e-4822-ac87-31fe96a1653e@pengutronix.de>
Date: Fri, 28 Nov 2025 11:01:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20251127105824.3560951-1-f.pflug@pengutronix.de>
 <20251127143052.3114915-1-f.pflug@pengutronix.de>
 <20251127143052.3114915-3-f.pflug@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251127143052.3114915-3-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_020151_451572_A2F35C0E 
X-CRM114-Status: GOOD (  30.24  )
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
Subject: Re: [PATCH v3 2/4] fs: split rootargs into root and options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/27/25 3:25 PM, Fabian Pflug wrote:
> The rootargs argument (root=/dev/etc rootwait) can be split into the
> root and options parts, which makes it easier to manipulate them both
> independently. This changes tries to be as backward compatible as
> possible and does not change the behaviour of the get functions, but
> introduces new ones to get both items seperatly.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

with below syntax error fixed. Pointed out some nitpicks while at it.

> ---
>  .../migration-guides/migration-master.rst     | 15 +++++
>  common/block.c                                | 44 ++++++++------
>  fs/9p/vfs_super.c                             |  6 +-
>  fs/fs.c                                       | 58 ++++++++++++++-----
>  fs/nfs.c                                      |  4 +-
>  fs/squashfs/squashfs.c                        | 13 +++--
>  fs/ubifs/ubifs.c                              | 12 ++--
>  include/block.h                               |  5 ++
>  include/bootargs.h                            |  2 +
>  include/fs.h                                  |  6 +-
>  10 files changed, 117 insertions(+), 48 deletions(-)
>  create mode 100644 Documentation/migration-guides/migration-master.rst
> 
> diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
> new file mode 100644
> index 0000000000..0d6cfcad57
> --- /dev/null
> +++ b/Documentation/migration-guides/migration-master.rst
> @@ -0,0 +1,15 @@
> +Filesystems
> +-----------
> +
> +{linux.bootargs} is replaced with "root={linux.bootargs.root} {linux.bootargs.rootopts}"
> +
> +The variable linux.bootargs has been replaced by the two variables
> +linux.bootargs.root and linux.bootargs.rootopts, splitting the previous bootargs
> +into three parts. A nonexistent fixed "root=", then the root filesystem and then
> +additional optional params for this particular filesystem.
> +
> +for example the previous
> +    linux.bootargs="root=/dev/nfs nfsroot=192.168.1.1:/rootfs"
> +becomes
> +    linux.bootargs.root="/dev/nfs"
> +    linux.bootargs.rootopts="nfsroot=192.168.1.1:/rootfs"

That will look odd rendered to HTML without extra ReST formatting.
For inline literal code (e.g., ``{linux.booargs}``) and for the code
blocks, use ::, e.g.:

for example the previous::

    linux.bootargs="root=/dev/nfs nfsroot=192.168.1.1:/rootfs"


> +char *cdev_get_linux_rootarg(const struct cdev *partcdev)
> +{
> +	int err;
> +	char* root = NULL;
> +	char* rootopts = NULL;

Asterisks next to identifier.

> +char *format_root_bootarg(const char *root_arg, char *root, char *rootopts) {

Newline before brace.

> -	str = dev_get_param(&fsdev->dev, "linux.bootargs");
> -	if (!str)
> -		return ERR_PTR(-ENOSYS);
> +	fsdev_get_linux_root_options(fsdev, &root, &rootopts);
>  
> -	return xstrdup(str);
> +	if (!root)
> +		return ERR_PTR(-EINVAL);

-ENOSYS would have been the better return type here, which is also what
we had before.

> -		str = cdev_get_linux_rootarg(fsdev->cdev);
> -		if (str)
> -			fsdev_set_linux_rootarg(fsdev, str);
> +		cdev_get_linux_root_and_opts(fsdev->cdev, &root, &rootopts);
> +		if (root) {
> +			fsdev_set_linux_root_options(fsdev, root, rootopts);
> +			free(root);
> +			if(rootopts)
> +				free(rootopts);

Coding style is spaces after if, but you can drop the check anyway, as
mentioned previously.

> +		}
>  	}

>  static int ubifs_probe(struct device *dev)
> diff --git a/include/block.h b/include/block.h
> index b277f590e4..ff18dcded0 100644
> --- a/include/block.h
> +++ b/include/block.h
> @@ -85,6 +85,7 @@ static inline int block_flush(struct block_device *blk)
>  #ifdef CONFIG_BLOCK
>  unsigned file_list_add_blockdevs(struct file_list *files);
>  char *cdev_get_linux_rootarg(const struct cdev *partcdev);
> +int cdev_get_linux_root_and_opts(const struct cdev *partcdev, char** root, char** rootopts);
>  #else
>  static inline unsigned file_list_add_blockdevs(struct file_list *files)
>  {
> @@ -94,6 +95,10 @@ static inline char *cdev_get_linux_rootarg(const struct cdev *partcdev)
>  {
>  	return NULL;
>  }
> +static inline void cdev_get_linux_root_and_opts(const struct cdev *partcdev, char** root, char** rootopts)
> +{
> +	return -ENOSYS;
> +}

Here's the actual issue: a void function can't return a value. Would
break in CI for platforms without CONFIG_BLOCK.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



