Delivery-date: Mon, 07 Mar 2022 08:55:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nR8Dd-003Ccr-6W
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 08:55:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nR8Db-0004jP-Sd
	for lore@pengutronix.de; Mon, 07 Mar 2022 08:55:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nRJSTTiq/ORPF+shkNG976taB+VYyfl9BGuwgOnI8wo=; b=GPw2U3riPgMzYDru3yhypZIBto
	Zu19QlAT15cdpJYN9bvk4FhjlDuy7eKY0JqCOIrEqHMarqCLOQLnyyD6Crz4y5PDRsGeTfUhR/NdM
	tmKa+ZzSiGUOq0b0Mjv0LYnlbSPcr6Rp9m66nBL1rOLu1/AfR/+jSlD1xYTquqDvgeR7ir3fIbxv4
	k+fYoijAntEI5FuaUvAX0vXuVihuL5Ze666LCkkwqCHqhToZi6wDJfGTAnZXnfXt66lwphuUzGXDa
	YIMdgAozTXdZB7VZylpMl58dW2lVeDqhnC21rtJOtQrOdfW3o/ZjsnfMro0UkQHFOQfsEjjdEOs6N
	y+orxlhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nR8C8-00GLNT-JT; Mon, 07 Mar 2022 07:54:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nR8C3-00GLLe-2g
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 07:54:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nR8Bz-0004LB-Iw; Mon, 07 Mar 2022 08:54:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nR8By-0006ib-Gw; Mon, 07 Mar 2022 08:54:06 +0100
Date: Mon, 7 Mar 2022 08:54:06 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Christian Melki <christian.melki@t2data.com>,
 Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20220307075406.GB405@pengutronix.de>
References: <20220304092805.1213879-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220304092805.1213879-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:51:19 up 86 days, 16:36, 72 users,  load average: 0.24, 0.24, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_235411_147063_00D0DE72 
X-CRM114-Status: GOOD (  31.73  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] block: set S_IFBLK for block devices instead of S_IFCHR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 04, 2022 at 10:28:05AM +0100, Ahmad Fatoum wrote:
> In barebox, block devices are a special case of character devices.
> Nevertheless, differentiation can be useful to allow scripts iterating
> over all block devices without accounting for naming, e.g.
> 
>   for dev in /dev/*; do
> 	test -b $dev && echo $dev: blockdevice
>   done
> 
> Add the necessary support. This will break scripts that assume
> test -c blockdevice to be true, but that's a quite improbable check.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  commands/memtester/memtester.c | 2 +-
>  common/block.c                 | 8 ++++++++
>  fs/devfs.c                     | 7 ++++++-
>  fs/legacy.c                    | 1 +
>  include/block.h                | 2 ++
>  5 files changed, 18 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/memtester/memtester.c b/commands/memtester/memtester.c
> index 130dc97c8334..f4adbfc855cb 100644
> --- a/commands/memtester/memtester.c
> +++ b/commands/memtester/memtester.c
> @@ -113,7 +113,7 @@ static int do_memtester(int argc, char **argv) {
>                              strerror(errno));
>                      return COMMAND_ERROR_USAGE;
>                  } else {
> -                    if (!S_ISCHR(statbuf.st_mode)) {
> +                    if (!S_ISCHR(statbuf.st_mode) && !S_ISBLK(statbuf.st_mode)) {
>                          printf("can not mmap non-char device %s\n",
>                                  optarg);
>                          return COMMAND_ERROR_USAGE;
> diff --git a/common/block.c b/common/block.c
> index 1d386edcfd49..a48016d8dcbd 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -361,6 +361,14 @@ static struct cdev_operations block_ops = {
>  	.discard_range = block_op_discard_range,
>  };
>  
> +struct block_device *cdev_get_block_device(struct cdev *cdev)
> +{
> +	if (cdev->ops != &block_ops)
> +		return NULL;
> +
> +	return container_of(cdev, struct block_device, cdev);
> +}
> +
>  int blockdevice_register(struct block_device *blk)
>  {
>  	loff_t size = (loff_t)blk->num_blocks * BLOCKSIZE(blk);
> diff --git a/fs/devfs.c b/fs/devfs.c
> index deb244feeab6..49cd48f6d84e 100644
> --- a/fs/devfs.c
> +++ b/fs/devfs.c
> @@ -29,6 +29,7 @@
>  #include <linux/mtd/mtd.h>
>  #include <linux/mtd/mtd-abi.h>
>  #include <partition.h>
> +#include <block.h>
>  
>  struct devfs_inode {
>  	struct inode inode;
> @@ -231,6 +232,7 @@ static struct inode *devfs_get_inode(struct super_block *sb, const struct inode
>  	default:
>  		return NULL;
>  	case S_IFCHR:
> +	case S_IFBLK:
>  		inode->i_op = &devfs_file_inode_operations;
>  		inode->i_fop = &devfs_file_operations;
>  		break;
> @@ -250,12 +252,15 @@ static struct dentry *devfs_lookup(struct inode *dir, struct dentry *dentry,
>  	struct devfs_inode *dinode;
>  	struct inode *inode;
>  	struct cdev *cdev;
> +	umode_t mode;
>  
>  	cdev = cdev_by_name(dentry->name);
>  	if (!cdev)
>  		return ERR_PTR(-ENOENT);
>  
> -	inode = devfs_get_inode(dir->i_sb, dir, S_IFCHR);
> +	mode = cdev_get_block_device(cdev) ? S_IFBLK : S_IFCHR;
> +
> +	inode = devfs_get_inode(dir->i_sb, dir, mode);
>  	if (!inode)
>  		return ERR_PTR(-ENOMEM);
>  
> diff --git a/fs/legacy.c b/fs/legacy.c
> index fc6a18f408ed..779f54629440 100644
> --- a/fs/legacy.c
> +++ b/fs/legacy.c
> @@ -288,6 +288,7 @@ static struct inode *legacy_get_inode(struct super_block *sb, const struct inode
>  		return NULL;
>  	case S_IFREG:
>  	case S_IFCHR:
> +	case S_IFBLK:
>  		inode->i_op = &legacy_file_inode_operations;
>  		break;
>  	case S_IFDIR:
> diff --git a/include/block.h b/include/block.h
> index d3a154bf73c0..06c15a71b58a 100644
> --- a/include/block.h
> +++ b/include/block.h
> @@ -49,4 +49,6 @@ static inline int block_flush(struct block_device *blk)
>  	return cdev_flush(&blk->cdev);
>  }
>  
> +struct block_device *cdev_get_block_device(struct cdev *cdev);
> +
>  #endif /* __BLOCK_H */
> -- 
> 2.34.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

