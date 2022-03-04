Delivery-date: Fri, 04 Mar 2022 15:02:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ8Vh-0000hx-FU
	for lore@lore.pengutronix.de; Fri, 04 Mar 2022 15:02:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ8Vf-0004KF-Vn
	for lore@pengutronix.de; Fri, 04 Mar 2022 15:02:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKe20+nSoUVmNikTylQ7cy+Sp1YSGkSWzoYuDCaKXvU=; b=G3TqD5AiDnWNeN
	z15d5GVWPsWCoW9c4jJQTmTR40dMNr3ZmDm8W7zn3mn++gHH+UCZiYYVuG/ObAwrwF1BU8RRyPy01
	zdG3u5t3PTnJBE+M+8D0Ea2n7qeSOeIBVySamsrTO+3b9zBKab810ANAws7mFz8TY4NRBh2Rkll5+
	HFnL56Qbt/y5vlgTp3QQbjTZuZ0NOV74pakDxEjiofxpGVosD5INtH2puiDcAUPOWsfunOo1MGDhF
	Ot1IW06fGSmr+wQVrHhfFHLvHHNXx6cD3nlTfzkmEohV1aEuvDP7PzV4IW6pJ1PjXnEQPhTurMXkL
	AOl2bZAHoCbf20ApBUyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ8U2-00ANlB-UX; Fri, 04 Mar 2022 14:00:39 +0000
Received: from mxout.security-mail.net ([85.31.212.46]
 helo=fx303.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ8Tw-00ANhq-5o
 for barebox@lists.infradead.org; Fri, 04 Mar 2022 14:00:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx303.security-mail.net (Postfix) with ESMTP id ABAE03237F2
 for <barebox@lists.infradead.org>; Fri,  4 Mar 2022 15:00:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1646402425;
 bh=ZXwzZlC1rxvAdsMIA4fwfrcH66uCkXbSjQbk/HCWc+A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=Ki6R+D+YijYi+nCyj3+fBbeuulUcGVpqSOoG26om8umv5oA89wG1HqZ3YgW0a56EO
 1GnXAbnbE9dJ5bVbcDfmuWh6JHoHBF7VQ9gvZEo0T2zN6/RX6GGlrEZrMN2dHIJjG4
 Ki1RRz6MDgv+bnp+D3cyKbTR1CVnffNptJze/KZ8=
Received: from fx303 (localhost [127.0.0.1]) by fx303.security-mail.net
 (Postfix) with ESMTP id 3215E3237FE; Fri,  4 Mar 2022 15:00:25 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx303.security-mail.net (Postfix) with ESMTPS id C29F63237EE; Fri,  4 Mar
 2022 15:00:24 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 4990A27E041A; Fri,  4 Mar 2022
 15:00:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 32CD427E041C; Fri,  4 Mar 2022 15:00:24 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 xJ9p4-8WQLEX; Fri,  4 Mar 2022 15:00:24 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 2177027E041A; Fri,  4 Mar 2022
 15:00:24 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <c316.62221b78.77e58.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 32CD427E041C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1646402424;
 bh=JhSxdOqha6YJypiquW43jpS+werTRz1deoHCiWWYy+U=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=M+rPCpy2vMTWA1ks16iPlU+YJS5b9r5Q7EEyjWOxB4iNzx6tFtu8Eipvb528TUMfV
 UnwQBPOnoLHjbHBdmKewMN04aiVbhSeMANOuxwfGdnErSLWuxddFcK6a9ARpqEBOQ2
 C+NGKs7fwmqZjFhY954vo4gSjAizVDY/VIi8F4nA=
Date: Fri, 4 Mar 2022 15:00:23 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Christian Melki <christian.melki@t2data.com>
Message-ID: <20220304140022.GB18417@tellis.lin.mbt.kalray.eu>
References: <20220304092805.1213879-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220304092805.1213879-1-ahmad@a3f.at>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_060032_403701_783BFDF1 
X-CRM114-Status: GOOD (  21.69  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
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

Tested-by: Jules Maselbas <jmaselbas@kalray.eu>

> ---
>  commands/memtester/memtester.c | 2 +-
>  common/block.c                 | 8 ++++++++
>  fs/devfs.c                     | 7 ++++++-
>  fs/legacy.c                    | 1 +
>  include/block.h                | 2 ++
>  5 files changed, 18 insertions(+), 2 deletions(-)
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
> 
> To declare a filtering error, please use the following link : https://www.security-mail.net/reporter.php?mid=10200.6221dbab.9d886.0&r=jmaselbas%40kalray.eu&s=ahmad%40a3f.at&o=%5BPATCH%5D+block%3A+set+S_IFBLK+for+block+devices+instead+of+S_IFCHR&verdict=C&c=87f89e12ce86b52361dd00e3bf70cf47f37c754f
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

