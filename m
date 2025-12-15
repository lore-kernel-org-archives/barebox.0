Delivery-date: Mon, 15 Dec 2025 12:23:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6fs-00Bj0a-2k
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 12:23:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6fs-0005An-9M
	for lore@pengutronix.de; Mon, 15 Dec 2025 12:23:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Lu7DXTUnrrqixFwloWcpmTXiFyUkAStim+2IaJ1EsI=; b=Dm2J2UEvoqkRJpK94guMTKnzHv
	d8W52LtxKXf7kMAPYdpEZk6dnyOP+oluGCuxKixuJSP3VwCX4NgbqBmz2bpauDeSwA63J36hJnEJw
	5hhk3CtUWWDaGhmq23YaHYgkEaDRyPfyRcGaUIcWc1f5LKCBStmjBnzEeocFZ9dD/16C9gwRKQE0i
	3oEi7LDMJvtYNN8812iwsi0lEwpQGYCOldw55uf4I1Rc6KZ+C+HTwgw8z8Vul+sFitnekQKAy9ovr
	uwQFUj2PMB59Grr35EcHn5VDjWyGagqObfH/D5rHEp/pjcH9v9hNwnCQEPSUZy7Az2qL+TkWrPC20
	EKm1GZ/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6fO-00000003W4y-1e8n;
	Mon, 15 Dec 2025 11:23:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6fJ-00000003W4M-3bZf
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 11:23:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV6fI-000541-Ai; Mon, 15 Dec 2025 12:22:56 +0100
Message-ID: <d68a7c36-df8f-4646-ab33-718bcb14cd50@pengutronix.de>
Date: Mon, 15 Dec 2025 12:22:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
 <20251209-devfs-v2-6-62ae16698cff@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-6-62ae16698cff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_032259_187270_99D9BF99 
X-CRM114-Status: GOOD (  18.14  )
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
Subject: Re: [PATCH v2 06/13] cdev: add cdev_size() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/9/25 1:51 PM, Sascha Hauer wrote:
> We'll need the size of a cdev later, add a helper for retrieving the
> size.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/devfs-core.c  | 6 ++++++
>  fs/devfs.c       | 3 +--
>  include/driver.h | 1 +
>  3 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 91082265d1aaa965160de5e414364e3fb14824d1..467aa51c858a8bde6ab4e17cc4c838b989606486 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -435,6 +435,12 @@ int cdev_truncate(struct cdev *cdev, size_t size)
>  	return -EPERM;
>  }
>  
> +loff_t cdev_size(struct cdev *cdev)
> +{
> +	return cdev->flags & DEVFS_IS_CHARACTER_DEV ?
> +		FILE_SIZE_STREAM : cdev->size;
> +}
> +
>  static struct cdev *cdev_alloc(const char *name)
>  {
>  	struct cdev *new;
> diff --git a/fs/devfs.c b/fs/devfs.c
> index be3272be49e66eb843823b3ff664a1565f326790..a48c6452697b47cbd3ffc6f993230e7993e565fe 100644
> --- a/fs/devfs.c
> +++ b/fs/devfs.c
> @@ -109,8 +109,7 @@ static int devfs_open(struct inode *inode, struct file *f)
>  			return -ENOENT;
>  	}
>  
> -	f->f_size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
> -			FILE_SIZE_STREAM : cdev->size;
> +	f->f_size = cdev_size(cdev);
>  	f->private_data = cdev;
>  
>  	return cdev_open(cdev, f->f_flags);
> diff --git a/include/driver.h b/include/driver.h
> index e0fddecd085c991db4f1fe34c56405d28b6f53ad..0c7a75b3d5632fdbde65ac52667e3bdee325dcf2 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -526,6 +526,7 @@ int cdev_protect(struct cdev*, size_t count, loff_t offset, int prot);
>  int cdev_discard_range(struct cdev*, loff_t count, loff_t offset);
>  int cdev_memmap(struct cdev*, void **map, int flags);
>  int cdev_truncate(struct cdev*, size_t size);
> +loff_t cdev_size(struct cdev *cdev);
>  loff_t cdev_unallocated_space(struct cdev *cdev);
>  static inline bool cdev_is_partition(const struct cdev *cdev)
>  {
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



