Delivery-date: Thu, 12 Oct 2023 13:54:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qquGO-005k3F-Te
	for lore@lore.pengutronix.de; Thu, 12 Oct 2023 13:54:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qquGN-0000mn-ON
	for lore@pengutronix.de; Thu, 12 Oct 2023 13:54:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-reply-to:Date:Subject:Cc:To:From:References:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4RUKKONd2v1R+CEflwEFYKR/yP0Bt81rwb0YFiqI85Q=; b=xXUfckSHBfY3iwwg+Iy/zR5KZi
	uP1zoN0gAlUtAKUUvTpm7BNoHSV51OcMahvZVYHCfIZpsiXHjaQ/8yUWu7Rr0blYi+CtTOtl0UHbi
	0AlRR7RHtgd3oNHCjNjtbV0c1rxGYOh3LKBFYHPdUcfDALRqrnwLK9w/PZ/CNzyVNf18+xSEuWCPm
	khQEDZEn5gCDLycWiSPbc9c0S1uSv3x5D/9W2LPtaiWXFMs8JOYbXvSmdH1IPvrf2SNwFzbHISx9g
	mV6dmJYKGxZcns2X7TrmA5rgGXNK02SHKr8LT6bHX8H9LUSRABAJB+wLWPZo7XXVt5ufGQFxXYQ6y
	yUEBXYVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qquF8-000tRJ-0B;
	Thu, 12 Oct 2023 11:52:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qquCe-000qvR-0T
	for barebox@lists.infradead.org;
	Thu, 12 Oct 2023 11:50:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1qquCb-0007p9-42; Thu, 12 Oct 2023 13:50:05 +0200
References: <20231012111044.406987-1-s.hauer@pengutronix.de>
 <20231012111044.406987-2-s.hauer@pengutronix.de>
User-agent: mu4e 1.10.7; emacs 29.1
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Date: Thu, 12 Oct 2023 13:47:40 +0200
In-reply-to: <20231012111044.406987-2-s.hauer@pengutronix.de>
Message-ID: <87lec8ys9f.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_045008_307532_A84AD46A 
X-CRM114-Status: GOOD (  15.89  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] bootstrap: Fix partition creation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On 2023-10-12 at 13:10 +02, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> bootstrap_read_devfs() registers a partition with DEVFS_PARTITION_FIXED.
> The purpose of this flag is that the partition can't be removed later.
> Removing the partition is exactly what bootstrap_read_devfs() does when
> finished, so remove the DEVFS_PARTITION_FIXED flag which doesn't make
> sense here.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  lib/bootstrap/devfs.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
> index 603e6744f2..3d5b1278fb 100644
> --- a/lib/bootstrap/devfs.c
> +++ b/lib/bootstrap/devfs.c
> @@ -88,8 +88,7 @@ void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
>  	struct cdev *cdev, *partition;
>  	char *partname = "x";
>
> -	partition = devfs_add_partition(devname, offset, max_size,
> -					DEVFS_PARTITION_FIXED, partname);
> +	partition = devfs_add_partition(devname, offset, max_size, partname);

This accidentally dropped the flags parameter alltogether, which is still needed by the devfs_add_partition declaration, isn't it?


Best regards,
Steffen

--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |


