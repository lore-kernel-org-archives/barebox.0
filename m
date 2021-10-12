Delivery-date: Tue, 12 Oct 2021 09:48:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCWp-0002bS-Jf
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 09:48:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCWo-0007Q4-Ia
	for lore@pengutronix.de; Tue, 12 Oct 2021 09:48:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pUUk7/TqjvW0C2JUy9hmJgYUiP+PL69rrOJPHvd5feI=; b=D9aWKrv8Rqsqc0YjUB9eTPxXEu
	LTcvD+81wLOkQDBS4zmfsVZ8duYfMGfOma8+iLEzQ8KePu1ehthSy1CAu0RTYP017IGjejZiGDzGZ
	LOtDb7CmRR4USd84ug4wfT2zEXPh8pdgJSiJmp/cRwWRSH+o3h6EfGTLaPjO3ixNgFNOwgETS0JLq
	150Yjsm/8VP+zFAQ0bTYxL2WpEFqHgOxsGgYqwY9qyzt0sgdUpbmNMcVSWA10Ru4lBrLvQn+glHAb
	WbtqFb/bKlVOzE/o6McD0na48IIJbdIOt7XwXoTv3UrGSY6FMfgOiWXelOewmOCzCNhDNV4szhRWr
	xLkUiMZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maCVe-00BqQn-Fl; Tue, 12 Oct 2021 07:47:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maCVZ-00BqPq-Pz
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 07:47:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCVY-0007FI-JF; Tue, 12 Oct 2021 09:47:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCVY-0000wC-9y; Tue, 12 Oct 2021 09:47:32 +0200
Date: Tue, 12 Oct 2021 09:47:32 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211012074732.GL28453@pengutronix.de>
References: <20211011191933.857941-1-trent.piepho@igorinstitute.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211011191933.857941-1-trent.piepho@igorinstitute.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:47:24 up 236 days, 11:11, 140 users,  load average: 0.15, 0.14,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_004733_877109_C04BD67A 
X-CRM114-Status: GOOD (  29.05  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: partitions: Skip fixup for devices with no partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 11, 2021 at 12:19:33PM -0700, Trent Piepho wrote:
> If the device has no partitions, e.g. most EEPROM or OTP memory,
> of_partition_fixup() can exit early, before trying to find the kernel dt
> node and calling of_fixup_partitions().
> 
> This avoids spurious error messages when the kernel dt node doesn't
> exist.  E.g., for an EEPROM in the Barebox dtb but not in the kernel
> dtb, Barebox will display an error about being unable to fixup the
> kernel dt node, however, if it had found the node it would just return
> without doing anything since the partition list is empty, so really
> there is no error.
> 
> Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
> ---
>  drivers/of/partition.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
> index 10081363d..18b138f00 100644
> --- a/drivers/of/partition.c
> +++ b/drivers/of/partition.c
> @@ -256,6 +256,9 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
>  	if (!cdev->device_node)
>  		return -EINVAL;
>  
> +	if (list_empty(&cdev->partitions))
> +		return 0;
> +
>  	name = of_get_reproducible_name(cdev->device_node);
>  	np = of_find_node_by_reproducible_name(root, name);
>  	free(name);
> -- 
> 2.31.1
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

