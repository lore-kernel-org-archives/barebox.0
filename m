Delivery-date: Wed, 15 Apr 2026 15:21:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wD0BY-00CQcZ-0L
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 15:21:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wD0BX-0001bP-Hn
	for lore@pengutronix.de; Wed, 15 Apr 2026 15:21:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j762jeGkixYNDYgnOE65Uapj0dzvmebA2eYnrArxdh0=; b=P0jKacNmmpwifWVGD6Q9Fnlyy8
	Kmk06dr0vKfuAuTzRqFXIqGQ9wKNplhZI+qYTcANefcFAuB94LPBdhi555FD8AbL0AHleNuLbQpap
	ZQYeJ2dOuU4xG1UpmTdSPZqYyQR+21LvuMBe0mLoH/yZ887JP+X+/TSf2l+2/gXhGiM0MIjGs6oY9
	/BYeInceDCp9zVlHb2CaaGMJYf2/Yq6C4/ON1Yzdd4XmvWUF2jMeh3yS0a16mAWgk+X7m5OsDKr6t
	HYgZyeFj9FXtoKvlkTRkKNjWE8BOwQEqciRXfAj/tse0wzxYCaUxvPAH/66ur0VfrxmnPtwnAXDHy
	3mf76egw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD0B6-00000001BOt-1mv5;
	Wed, 15 Apr 2026 13:21:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD0B3-00000001BNW-12oH
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 13:21:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wD0B1-0001UY-Jt; Wed, 15 Apr 2026 15:21:07 +0200
Message-ID: <e914ba82-4747-479b-b5b0-671c9ad5daf9@pengutronix.de>
Date: Wed, 15 Apr 2026 15:21:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260415130854.3826102-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260415130854.3826102-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_062109_315312_2BB771BD 
X-CRM114-Status: GOOD (  19.51  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: Do not mntput() the root device parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/15/26 3:08 PM, Sascha Hauer wrote:
> The vfs rootfs ("/") parent points to itself, so do not call mntput() on
> the parent when it's the root device as the reference counter would
> become negative.
> 
> This doesn't happen in normal configurations as we normally have a ramfs
> mounted at / and we leave fs_remove() early in that case. Some xload
> configurations have a FAT from SD/eMMC mounted at / though which leads
> to a "refcount for mount \"%s\" becomes negative\n" warning.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/fs.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index f1f69a501f..a562fe0fc6 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -874,7 +874,8 @@ static void fs_remove(struct device *dev)
>  	list_for_each_entry_safe(inode, tmp, &sb->s_inodes, i_sb_list)
>  		destroy_inode(inode);
>  
> -	mntput(fsdev->vfsmount.parent);
> +	if (&fsdev->vfsmount != fsdev->vfsmount.parent)

Nitpick: having the rvalue at the left-hand side is a bit unusual for
barebox, e.g. if (1 == x)..

> +		mntput(fsdev->vfsmount.parent);
>  
>  	free(fsdev->backingstore);
>  }

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



