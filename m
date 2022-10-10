Delivery-date: Mon, 10 Oct 2022 09:16:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohn1R-0036Q6-44
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 09:16:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohn1P-0001oK-2E
	for lore@pengutronix.de; Mon, 10 Oct 2022 09:16:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nQfXSpK5j0uPV5+Rqvv/qi4PGYnQj9nfmdAhFmACJcg=; b=fD4Pl38hUVO6jk3rmTfD9G2Vzy
	6iGwlOrQHhd2qn3fT/mMzxcacLEW/skQVSMXoiTHXXXx+HfSGLdVIT5Xkeh3PisyQqWlrfLq/VvoK
	f6O4514eJxCxRZuINThdS80tpwRwlQoiaehILFTkEPI3yBx8imj7BUVxZ/ZijrqXCKfOfZRZ0vtrv
	08JuvI16GWITYC5NEV3ndP/CJN3jZNRm+WAsQxlnskPepLOSbpP8szOpIFgHQxqPQaTXUtILQonj7
	jM1VZN9D6QofjyAUpMi6FVqWb77rc7RgsX+FD7Nw5Y/Lk/6U9XCddGoR7ByQ102c8eXiAy10tG8zd
	huKRQaXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohn0E-00HMHM-GI; Mon, 10 Oct 2022 07:15:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohn07-00HMFW-OH
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 07:15:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ohn06-0001Nc-76; Mon, 10 Oct 2022 09:14:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ohn05-0006VH-V7; Mon, 10 Oct 2022 09:14:57 +0200
Date: Mon, 10 Oct 2022 09:14:57 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221010071457.GF986@pengutronix.de>
References: <20221010063834.2110400-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221010063834.2110400-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_001459_805483_3F837D63 
X-CRM114-Status: GOOD (  20.82  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] block: fix calling cdev_get_block_device with
 partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 10, 2022 at 08:38:34AM +0200, Ahmad Fatoum wrote:
> For partitions, cdev->priv references the parent block device.
> Doing the pointer arithmetic in container_of will result in an
> out-of-bounds access. Do what the rest of the code does
> and access cdev->priv instead.
> 
> Fixes: 84173bf3d0cc ("block: set S_IFBLK for block devices instead of S_IFCHR")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/block.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/block.c b/common/block.c
> index 19bb81df2c3d..a4cfd6e22771 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -366,7 +366,7 @@ struct block_device *cdev_get_block_device(struct cdev *cdev)
>  	if (!cdev || cdev->ops != &block_ops)
>  		return NULL;
>  
> -	return container_of(cdev, struct block_device, cdev);
> +	return cdev->priv;
>  }
>  
>  int blockdevice_register(struct block_device *blk)
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


