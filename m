Delivery-date: Mon, 15 Dec 2025 12:23:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6fP-00Bizq-1H
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 12:23:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6fO-00054p-1a
	for lore@pengutronix.de; Mon, 15 Dec 2025 12:23:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6zztaETGYOqPdN92MpXTDvAsZ1Us9aA2I+8DS6H2ME4=; b=LxwiytRmL/j3LWMPS3qsihpxMp
	O9m/UBbTLVUnNfqQg7vmYFmToxpObcJ5J2HQjDklZ9euh+R+cbJZKahdsa6Z+Z/SAu4f6GrrKclxl
	PkMMR8vF0PjB1nlewpLiXTnx0Aol1/lUz2AxxjBnFif7PVYiRJOaKG641cLGYIdIgt1jGYFSnAZo1
	Ipre5JcwPRj1DqVsT3Z9uVmijuTeP+E/kNYGax1yusPWu+ntjO7D2KwFWMS5IyJVRYTja9QlSy6tb
	JiX/bjwPMY0ZUfDeXNeVf8dkh9DBCA1IBN5bdaov7Cvhu2/IduOvSfPvxHE0rqwSZKWPHYgTKg1yN
	3BgfDOng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6et-00000003W2K-3BeB;
	Mon, 15 Dec 2025 11:22:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6ep-00000003W1u-1JKq
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 11:22:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV6en-0004zd-M8; Mon, 15 Dec 2025 12:22:25 +0100
Message-ID: <cf1ff0d4-8a80-4fb7-b8a6-b77bafe23be5@pengutronix.de>
Date: Mon, 15 Dec 2025 12:22:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
 <20251209-devfs-v2-5-62ae16698cff@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-5-62ae16698cff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_032227_379555_CA0F06A3 
X-CRM114-Status: GOOD (  18.84  )
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
Subject: Re: [PATCH v2 05/13] fs: ramfs: add device file support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/9/25 1:51 PM, Sascha Hauer wrote:
> Implement the mknod hook in ramfs for creating device special files.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/ramfs.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/fs/ramfs.c b/fs/ramfs.c
> index 1caace0183a58e8a07001eb6ce9df8ea1895ac0b..d86bf6144e8485269c589ba0024377f9852a8eaa 100644
> --- a/fs/ramfs.c
> +++ b/fs/ramfs.c
> @@ -89,6 +89,9 @@ static struct inode *ramfs_get_inode(struct super_block *sb, const struct inode
>  	case S_IFLNK:
>  		inode->i_op = &ramfs_symlink_inode_operations;
>  		break;
> +	case S_IFBLK:
> +	case S_IFCHR:
> +		break;
>  	}
>  
>  	return inode;
> @@ -149,6 +152,20 @@ static int ramfs_create(struct inode *dir, struct dentry *dentry, umode_t mode)
>  	return ramfs_mknod(dir, dentry, mode | S_IFREG);
>  }
>  
> +static int __ramfs_mknod(struct inode *dir,struct dentry *dentry, umode_t mode,
> +			 const char *cdevname)
> +{
> +	int ret;
> +
> +	ret = ramfs_mknod(dir, dentry, mode);
> +	if (ret)
> +		return ret;
> +
> +	init_special_inode(dentry->d_inode, mode, cdevname);
> +
> +	return 0;
> +}
> +
>  static int ramfs_symlink(struct inode *dir, struct dentry *dentry,
>  			 const char *symname)
>  {
> @@ -196,6 +213,7 @@ static const struct inode_operations ramfs_dir_inode_operations =
>  	.unlink = simple_unlink,
>  	.create = ramfs_create,
>  	.tmpfile = ramfs_tmpfile,
> +	.mknod = __ramfs_mknod,
>  };
>  
>  static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node,
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



