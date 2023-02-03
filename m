Delivery-date: Fri, 03 Feb 2023 08:57:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNqxA-00CPPZ-2L
	for lore@lore.pengutronix.de; Fri, 03 Feb 2023 08:57:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNqx7-00026O-3W
	for lore@pengutronix.de; Fri, 03 Feb 2023 08:57:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ld6Bxu81LOR9oF6YlFzbzp8JtmX2h926zrw5H2Wyr70=; b=dUERZvIi2icffjRfVAzQSvqOzi
	B5jisd3X8raRXoNn063QTsZ/0PELhU9aiiGkk6IcCQ58nM0YuK4TLJlruOH9cYTAjehfva4ivGJom
	ty358X0DQFv/hcd+5VpYJ+SI8jktrtfyIp3KeEF+aYw2dxTYSyTe0vO0oIqvHjhkUaXLO8wBogdVE
	Jc5finV7r4+MvnXsQNfz90/DsVjXsEEGo0t9/MrCR0HJS6qCoLbzj2u4g3MjXKyGu3XqYLsIPHk5h
	MXNgjp1oLwj9Hck5npDW7uCRrQqhbkxvJZokXB9VV096933G60PWLKczNWFxQznFQdZVlsCb8AZCK
	MforG0CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNqvz-000svO-40; Fri, 03 Feb 2023 07:56:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNqvu-000suS-PO
	for barebox@lists.infradead.org; Fri, 03 Feb 2023 07:56:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNqvt-0001pz-Ii; Fri, 03 Feb 2023 08:56:29 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNqvs-0004x4-7Z; Fri, 03 Feb 2023 08:56:28 +0100
Date: Fri, 3 Feb 2023 08:56:28 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230203075628.GO13319@pengutronix.de>
References: <20230202142512.3551195-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202142512.3551195-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_235630_840259_3E0C2B17 
X-CRM114-Status: GOOD (  19.64  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: remove unused members of struct stat
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 02, 2023 at 03:25:12PM +0100, Ahmad Fatoum wrote:
> Some members in struct stat are never written, so drop them.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  fs/fs.c              | 4 ++--
>  include/linux/stat.h | 3 ---
>  2 files changed, 2 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/fs.c b/fs/fs.c
> index c463466e1be0..4837c4b701bc 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -160,9 +160,9 @@ void stat_print(const char *filename, const struct stat *st)
>  
>  	fdev = get_fsdevice_by_path(filename);
>  
> -	printf("\nDevice: %s\tInode: %lu\tLinks: %u\n",
> +	printf("\nDevice: %s\tInode: %lu\n",
>  	       fdev ? dev_name(&fdev->dev) : "<unknown>",
> -	       st->st_ino, st->st_nlink);
> +	       st->st_ino);
>  	printf("Access: (%04o/%s)\tUid: (%u)\tGid: (%u)\n",
>  	       st->st_mode & 07777, modestr, st->st_uid, st->st_gid);
>  
> diff --git a/include/linux/stat.h b/include/linux/stat.h
> index 2bdf3ec9c96c..fc3dd222a673 100644
> --- a/include/linux/stat.h
> +++ b/include/linux/stat.h
> @@ -49,11 +49,8 @@ extern "C" {
>  struct stat {
>  	unsigned long st_ino;
>  	unsigned short st_mode;
> -	unsigned short st_nlink;
>  	unsigned short st_uid;
>  	unsigned short st_gid;
> -	unsigned short st_rdev;
> -	unsigned short __pad2;
>  	loff_t  st_size;
>  };
>  
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


