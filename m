Delivery-date: Thu, 15 Feb 2024 12:08:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raZbT-007KfS-22
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 12:08:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raZbT-0004HU-0J
	for lore@pengutronix.de; Thu, 15 Feb 2024 12:08:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=62NskPsal2/BAfDJhgL7M96TDJ1Jp6gKyXzZ9gR1cWk=; b=GzAQx/spi0jTcoBtnBaEXX8GJe
	UgkguIIje8FZ7iciO0ax+RZfqbr2d5LPolNAZWyb+Gmw1wtEWyYCAihNrWtyYFNl0+RRh9g0EbZ0v
	g0lU/iRktuRDExZzv35xD/sQyA1XVz4akm+qU8UuQNIj/BtUEf7iljNUOeX6gKijn5R/SQ32hxamB
	W7UPPTak4EL/RGBRKCtXdJShCK1eo6ANPNu8i1pTSo8KRCkFAkxgByR/hX3Z8XWx+cza+IQ+HR/xt
	YcGtWkb+he7CX/9c+/5uZ0Cr3W3+UHKdXm5u+KxoL9VF5x33hJqR5hS6yXEoXUYQH6OBKHJw/6nAU
	TR7rXEcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZaw-0000000FxL8-1riF;
	Thu, 15 Feb 2024 11:07:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZat-0000000FxKK-2etj
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 11:07:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1raZaq-0004Be-P9; Thu, 15 Feb 2024 12:07:52 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1raZaq-000sBA-Cc; Thu, 15 Feb 2024 12:07:52 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1raZaq-00A0xj-0z;
	Thu, 15 Feb 2024 12:07:52 +0100
Date: Thu, 15 Feb 2024 12:07:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240215110752.qjhfdytbb3hap5qk@pengutronix.de>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
 <20240215074757.960200-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240215074757.960200-4-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_030755_691867_8ACB75F9 
X-CRM114-Status: GOOD (  20.73  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/7] partition: allow to reparse a partition table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-02-15, Sascha Hauer wrote:
> The partition table of a block device may change when it is written to.
> Allow to reparse the partition table when this happens.
> This is easy when none of the partitions is opened, in that case just
> remove the old partitions and call parse_partition_table() again.
> When a partition is opened (including mounted) we can't remove it. In
> that case continue with the old partition table and print a warning.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Just two nits, to make cdev access more opaque.

> ---
>  common/partitions.c | 20 ++++++++++++++++++++
>  include/disks.h     |  1 +
>  2 files changed, 21 insertions(+)
> 
> diff --git a/common/partitions.c b/common/partitions.c
> index 78b68276c3..cfcd0e080b 100644
> --- a/common/partitions.c
> +++ b/common/partitions.c
> @@ -154,6 +154,26 @@ int parse_partition_table(struct block_device *blk)
>  	return rc;
>  }
>  
> +int reparse_partition_table(struct block_device *blk)
> +{
> +	struct cdev *cdev = &blk->cdev;
> +	struct cdev *c, *tmp;
> +
> +	list_for_each_entry(c, &cdev->partitions, partition_entry) {
> +		if (c->open) {

		if (cdev_is_open(c))

> +			pr_warn("%s is busy, will continue to use old partition table\n", c->name);
> +			return -EBUSY;
> +		}
> +	}
> +
> +	list_for_each_entry_safe(c, tmp, &cdev->partitions, partition_entry) {
> +		if (c->flags & DEVFS_PARTITION_FROM_TABLE)

		if (cdev_flag_set(c, DEVFS_PARTITION_FROM_TABLE))

> +			cdevfs_del_partition(c);
> +	}
> +
> +	return parse_partition_table(blk);
> +}
> +
>  int partition_parser_register(struct partition_parser *p)
>  {
>  	list_add_tail(&p->list, &partition_parser_list);
> diff --git a/include/disks.h b/include/disks.h
> index 1ca7063c54..ccb50d3ce9 100644
> --- a/include/disks.h
> +++ b/include/disks.h
> @@ -24,5 +24,6 @@ struct partition_entry {
>  } __attribute__ ((packed));
>  
>  extern int parse_partition_table(struct block_device*);
> +int reparse_partition_table(struct block_device *blk);
>  
>  #endif /* DISKS_H */
> -- 
> 2.39.2
> 
> 
> 


