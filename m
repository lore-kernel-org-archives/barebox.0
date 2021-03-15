Delivery-date: Mon, 15 Mar 2021 09:08:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiGu-0000Ya-Sp
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:08:16 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiGu-0007q8-2I
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:08:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9RaKLQXS1rTum56VtilM7gtU1LwMY10sj5E1Ri9f76Y=; b=OnrawDycDuW4BHfG8RlnpnvXf
	zbt1ixP/k0eYSDrBYhKIVkN7YbIy9PvcztOBBtXmHFpPBQYPbOd4zKf0HD1im11l+alnGQVorj1+z
	WUduuI7JDqk6zecWAIpAMfWOeG5lglxNldcZy38Ls9jHMzfHcm6WB2qw9DCXuIvcZ8SkTVwwNwKgV
	DYNx9C6GZ4UoTHVeAgpuUtgMLj2V6boT7OUh2tM9SBZ3MBeYd39sF/8ZYzCB3PsnJHW5g+wm1UQXj
	eG40T7mPJ43Z9kYqv9Kz7YOKarZ5rKxkmP3t6CZt2uLW+859UewHSIL/6RJQhwkPBGKq1V0Q/dQHa
	1IDyij66A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLiFa-00FC6e-Nc; Mon, 15 Mar 2021 08:06:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLiFQ-00FC5e-VN
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:06:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLiFQ-0007eG-Hb; Mon, 15 Mar 2021 09:06:44 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLiFQ-000561-8E; Mon, 15 Mar 2021 09:06:44 +0100
Date: Mon, 15 Mar 2021 09:06:44 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210315080644.GI23724@pengutronix.de>
References: <20210312114027.22734-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312114027.22734-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:06:33 up 25 days, 11:30, 71 users,  load average: 0.17, 0.37, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_080645_110775_45FEF21F 
X-CRM114-Status: GOOD (  23.16  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: delete unused members in <linux/stat.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 12, 2021 at 12:40:27PM +0100, Ahmad Fatoum wrote:
> Most of the struct is stuff we don't use and likely won't any
> time soon. Drop them.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/fs.c              |  1 -
>  include/linux/stat.h | 12 ------------
>  2 files changed, 13 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 3db24b7b6822..a5dbc3aac478 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -909,7 +909,6 @@ EXPORT_SYMBOL(readdir);
>  
>  static void stat_inode(struct inode *inode, struct stat *s)
>  {
> -	s->st_dev = 0;
>  	s->st_ino = inode->i_ino;
>  	s->st_mode = inode->i_mode;
>  	s->st_uid = inode->i_uid;
> diff --git a/include/linux/stat.h b/include/linux/stat.h
> index 87fe06839671..f5043d8bcea7 100644
> --- a/include/linux/stat.h
> +++ b/include/linux/stat.h
> @@ -45,8 +45,6 @@ extern "C" {
>  #define S_IRWXUGO	(S_IRWXU|S_IRWXG|S_IRWXO)
>  
>  struct stat {
> -	unsigned short st_dev;
> -	unsigned short __pad1;
>  	unsigned long st_ino;
>  	unsigned short st_mode;
>  	unsigned short st_nlink;
> @@ -55,16 +53,6 @@ struct stat {
>  	unsigned short st_rdev;
>  	unsigned short __pad2;
>  	loff_t  st_size;
> -	unsigned long  st_blksize;
> -	unsigned long  st_blocks;
> -	unsigned long  st_atime;
> -	unsigned long  __unused1;
> -	unsigned long  st_mtime;
> -	unsigned long  __unused2;
> -	unsigned long  st_ctime;
> -	unsigned long  __unused3;
> -	unsigned long  __unused4;
> -	unsigned long  __unused5;
>  };
>  
>  #ifdef __cplusplus
> -- 
> 2.29.2
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

