Delivery-date: Mon, 15 Dec 2025 12:24:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6h3-00Bj1l-23
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 12:24:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6h3-0005KI-3H
	for lore@pengutronix.de; Mon, 15 Dec 2025 12:24:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+4+iRV9swUCcdmkL5qaVG1rGk60aDtHwtuRCMqtDHlI=; b=v7dSVgNMEvz6MrVHu7R1qCFXtO
	wk+GaQhg6buwVuJnTD0GlIJKqhkAT0kt2mF1FouLYUVReQSdao3skW3o2LKZUd7/m2HZwdRA3MdXO
	Gcvqv+OutpxYdhYBngdd3iQmSfIoCujVenfYqoqOZ56Yew2zeEhV/tOrYYNQIO6tGzi3GwEMJWqwQ
	oPHuAtKSvxKQHWYHcdbHIXzvWHtZvq1wX9RzUScXBIYLGTagAl/yBdAImQLnvzvMwv5ilrD5Ies+h
	dGPiCx/9gWRI9JtTeUxpRyhss8lqFzR01Lm9i6pNPCpL0NrSPdeWrZBK0PvS3tWJHe7whWMyebTMv
	ptJtzNXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6gd-00000003WBS-1iJT;
	Mon, 15 Dec 2025 11:24:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6gb-00000003WB6-13dX
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 11:24:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV6gZ-0005Ff-JI; Mon, 15 Dec 2025 12:24:15 +0100
Message-ID: <df2a3f92-b607-49e0-8c18-2170f7615387@pengutronix.de>
Date: Mon, 15 Dec 2025 12:24:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
 <20251209-devfs-v2-7-62ae16698cff@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-7-62ae16698cff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_032417_315063_8678B25C 
X-CRM114-Status: GOOD (  19.10  )
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
Subject: Re: [PATCH v2 07/13] fs: fix st_size for device files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 12/9/25 1:51 PM, Sascha Hauer wrote:
> In Linux device special files have zero size, but in barebox the
> device files traditionally have the size of the underlying device.
> Initialize struct stat::s_size with the cdev size.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Single nitpick below:

> ---
>  fs/fs.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 45bf89653c7c2e4e9546f1d41f79a6389e0b796d..9e2c95c6352cc63400f997bb8de53af44f4741cf 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1100,11 +1100,23 @@ EXPORT_SYMBOL(readdir);
>  
>  static void stat_inode(struct inode *inode, struct stat *s)
>  {
> +	if (inode->cdevname) {
> +		struct cdev *cdev;
> +
> +		cdev = cdev_by_name(inode->cdevname);
> +		if (cdev) {
> +			s->st_size = cdev_size(cdev);
> +		} else {
> +			s->st_size = 0;
> +		}

s->st_size = cdev ? cdev_size(cdev) : 0;

> +	} else {
> +		s->st_size = inode->i_size;
> +	}
> +
>  	s->st_ino = inode->i_ino;
>  	s->st_mode = inode->i_mode;
>  	s->st_uid = inode->i_uid;
>  	s->st_gid = inode->i_gid;
> -	s->st_size = inode->i_size;
>  }
>  
>  int fstat(int fd, struct stat *s)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



