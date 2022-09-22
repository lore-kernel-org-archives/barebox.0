Delivery-date: Thu, 22 Sep 2022 10:37:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obHiH-00C2IK-TU
	for lore@lore.pengutronix.de; Thu, 22 Sep 2022 10:37:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obHiF-0005Em-RX
	for lore@pengutronix.de; Thu, 22 Sep 2022 10:37:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x6qrVGAXN+mRSREmUsp88aqecwYVhSY5OPUvCt/2MJQ=; b=0VSqqZju7U1N+4k6BaJqUBxyMY
	a03bA42C8zdcrn/FfgrA4tOhkcGyqjuSZeH6Q3xMybwPSRDhWQ/yG5Q6fzdQsc8Kk7cHFg0XQFFRB
	KeauyqjZL6gv04LIMeTtqpnkAwyOuUoZxtxkEvX0DSWuw12SddW9MGmYOeIcyf2TxrhFeBdvxhwOo
	grgPuIWc0kqzb38ksPVmbUG4HA7ygt5mDmofEGh3uSYNx8wBlUdBjqh5/NnOiBXisPjzfMttmxwfK
	8cybraqKj/TGWWS3pXWhPiwdcvTH4MaGrOGV2gpgYgPIwJ8ed7UPW2tQ9Kmjyoi/m+YdwKFqBy2fS
	oPwDm2uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obHgb-00EBx7-0j; Thu, 22 Sep 2022 08:35:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obHgR-00EBuJ-Cz
	for barebox@lists.infradead.org; Thu, 22 Sep 2022 08:35:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1obHgN-0004yN-N6; Thu, 22 Sep 2022 10:35:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1obHgN-0001ai-CU; Thu, 22 Sep 2022 10:35:43 +0200
Date: Thu, 22 Sep 2022 10:35:43 +0200
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220922083543.GI986@pengutronix.de>
References: <20220922072723.1559333-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220922072723.1559333-1-j.zink@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_013547_491328_D9AE2BF8 
X-CRM114-Status: GOOD (  31.14  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] USB: gadget: fastboot: introduce optional flag for
 fastboot partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Sep 22, 2022 at 09:27:23AM +0200, Johannes Zink wrote:
> On some boards, some partitions exposed to fastboot may become
> unavailable under certain circumstances, e.g. if an SD-Card exposed to
> fastboot is removed.
> 
> Previously, this lead to an error and the fastboot gadget did not
> initialize the remaining partitions exposed via fastboot, e.g. an
> eMMC which usually is permanently soldered on the board.
> 
> This patch allows to append an optional flag 'o' to the description of a
> fastboot partition. If this partition is unavailable at the
> initialization of the fastboot gadget, said partition is skipped, while
> the remaining available partitions are still exposed.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  Documentation/user/usb.rst | 1 +
>  common/fastboot.c          | 6 +++++-
>  common/file-list.c         | 3 +++
>  include/file-list.h        | 1 +
>  4 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index 2479efe9d6..f2f57ead98 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -65,6 +65,7 @@ Several **flags** are supported, each denoted by a single character:
>  * ``r`` Readback. The partition is allowed to be read back (DFU specific)
>  * ``c`` The file shall be created if it doesn't exist. Needed when a regular file is exported.
>  * ``u`` The partition is a MTD device and shall be flashed with a UBI image.
> +* ``o`` The partition is optional, i.e. if it is not available at initialization time, it is skipped instead of aborting the initialization
>  
>  Example:
>  
> diff --git a/common/fastboot.c b/common/fastboot.c
> index 330a06f5a3..6bd1191325 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -177,7 +177,11 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
>  	file_list_for_each_entry(fb->files, fentry) {
>  		ret = fastboot_add_partition_variables(fb, fentry);
>  		if (ret)
> -			return ret;
> +			if((fentry->flags & FILE_LIST_FLAG_OPTIONAL))
> +				pr_info("failed to add optional partition %s to fastboot gadget\n",
> +					fentry->filename);
> +			else
> +				return ret;

I would prefer to check the FILE_LIST_FLAG_OPTIONAL flag in
fastboot_add_partition_variables(). That gives us the possibility to
explicitly check for the right conditions rather than generalising
all possible errors from fastboot_add_partition_variables().

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


