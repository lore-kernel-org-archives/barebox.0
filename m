Delivery-date: Mon, 15 Dec 2025 12:20:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6cf-00Biwe-1Z
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 12:20:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6ce-0004jH-4b
	for lore@pengutronix.de; Mon, 15 Dec 2025 12:20:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y+0AYiRKeaw0mZw2eoT1PrthlSC2razbuVQ3vu/c+KM=; b=qapUuDg09CBOnyHhv9znKh0gcZ
	+O4oQSH7lJsDYvG42ZY+lcQaaGSYV0Rn0EQHMYBo31zR1AzN+VoqoHFkv3aCjMulfRTkN90CD/uYa
	t1l13w+j5nGWzH/PKylPT6vEGw2Z+KylPK1BqZGz0jK67NdblJlDtYw5sdQcCzTx/zNXXqjSwSj1g
	00XFCM/tFJZdSiok3Nxis/lNt0Zd/t7gieX/HoW7TMjffgbRWwHSion8r0Zg4K1i12L74+HOI7IKT
	4glAtwiG8RfIbiNnyqxHKW9xstLo7Kxi1+iTY4cRq/n8MpI19M6dA2hLHQ0yX8G7uXhxdCry5PwrH
	m+fYD38Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6cB-00000003VqJ-3Fje;
	Mon, 15 Dec 2025 11:19:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6c9-00000003Vpw-1RAf
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 11:19:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV6c7-0004eG-Og; Mon, 15 Dec 2025 12:19:39 +0100
Message-ID: <aeb89a86-309e-415d-8fb9-dc3993f7e7c4@pengutronix.de>
Date: Mon, 15 Dec 2025 12:19:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
 <20251209-devfs-v2-3-62ae16698cff@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251209-devfs-v2-3-62ae16698cff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_031941_390655_9C35056A 
X-CRM114-Status: GOOD (  21.57  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 03/13] fs: implement mknod
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/9/25 1:51 PM, Sascha Hauer wrote:
> This implements mknod for the barebox VFS. Use the cdevname for
> connecting a device special node with a cdev. In Linux this is done with
> major/minor numbers which shouldn't be necessary for barebox as we do
> not intend to mount filesystems which contain device special nodes, but
> instead create them in ramfs. If a mounted filesystem contains special
> nodes then these won't work with barebox.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

With two minor points below addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/devfs.c         | 13 +++++++++++++
>  fs/fs.c            | 35 +++++++++++++++++++++++++++++++++++
>  include/fcntl.h    |  6 ++++++
>  include/linux/fs.h | 13 +++++++++++++
>  4 files changed, 67 insertions(+)
> 
> diff --git a/fs/devfs.c b/fs/devfs.c
> index 15c7a63d3949a5fa7c5ec15f58bc9f4c53b7852b..be3272be49e66eb843823b3ff664a1565f326790 100644
> --- a/fs/devfs.c
> +++ b/fs/devfs.c
> @@ -103,6 +103,12 @@ static int devfs_open(struct inode *inode, struct file *f)
>  	struct devfs_inode *node = container_of(inode, struct devfs_inode, inode);
>  	struct cdev *cdev = node->cdev;
>  
> +	if (inode->cdevname) {
> +		cdev = cdev_by_name(inode->cdevname);
> +		if (!cdev)
> +			return -ENOENT;
> +	}
> +
>  	f->f_size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
>  			FILE_SIZE_STREAM : cdev->size;
>  	f->private_data = cdev;
> @@ -188,6 +194,13 @@ static const struct file_operations devfs_file_operations = {
>  	.memmap = devfs_memmap,
>  };
>  
> +void init_special_inode(struct inode *inode, umode_t mode, const char *cdevname)
> +{
> +	inode->i_mode = mode;
> +	inode->i_fop = &devfs_file_operations;
> +	inode->cdevname = strdup(cdevname);

xstrdup_const? or return an error?

> +}
> +
>  static int devfs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
>  {
>  	struct devfs_inode *dinode;
> diff --git a/fs/fs.c b/fs/fs.c
> index d884726187dd526213f8b51a68a2e0db1bb50e58..45bf89653c7c2e4e9546f1d41f79a6389e0b796d 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -826,6 +826,8 @@ static int dentry_delete_subtree(struct super_block *sb, struct dentry *parent)
>  
>  static void destroy_inode(struct inode *inode)
>  {
> +	free(inode->cdevname);

free_const?

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



