Delivery-date: Mon, 22 May 2023 10:25:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q10qs-009RpM-9p
	for lore@lore.pengutronix.de; Mon, 22 May 2023 10:25:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q10qp-0001Nb-EM
	for lore@pengutronix.de; Mon, 22 May 2023 10:25:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xc0kp1XBk9IWCF4gcArf80B4P5zcVsXdQe+yIRxmeY0=; b=zDP5fUaWJtyz+JXxoBeW3Rxxq3
	cPN6c6TpPmsEHCE6Em5o2JAr3M7f6YborH5L6wGWQme75w1wCiyK2/REn4fz1nJfiSluuEAFjL9Av
	HmYPshD+1x8SLkS3jrNlPak1w4iOK7A7+mmxOGNwEM0UhiWiOSIJ4kaLENxYRfwuvLHRQ9zlWaWFZ
	WFRRk0LKc3tWvDnNsBZcuEnazfMuirpqgsJeEHjPloAjJYEQkd7OQUjUkcN7uuR1/woocWXMji88n
	yE9aW26jQmyHtwuDnqsraOzFYFW+26sfA0G7oBZt2EKtF/ZnxHxTbyY8mlsQ763Ac5aVgItDsh6wb
	sgq9tBNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q10pl-005k2E-0W;
	Mon, 22 May 2023 08:24:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q10pi-005k1N-0o
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 08:23:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q10pg-0001DO-Ts; Mon, 22 May 2023 10:23:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q10pg-00038U-0m; Mon, 22 May 2023 10:23:56 +0200
Date: Mon, 22 May 2023 10:23:56 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230522082355.GL29365@pengutronix.de>
References: <20230522053725.1043129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230522053725.1043129-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_012358_287538_D8B58646 
X-CRM114-Status: GOOD (  20.23  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] efi: don't skip default efi devinfo for old EFI
 block revisions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 22, 2023 at 07:37:25AM +0200, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <ahmad@a3f.at>
> 
> We early exit to skip info that doesn't apply to older EFI block
> protocol revisions. This also means we skip the default efi devinfo
> callback, which may not want. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/block/efi-block-io.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
> index a4365ac7c32b..eb4981e86298 100644
> --- a/drivers/block/efi-block-io.c
> +++ b/drivers/block/efi-block-io.c
> @@ -121,7 +121,7 @@ static void efi_bio_print_info(struct device *dev)
>  	printf("  last_block: 0x%016llx\n", media->last_block);
>  
>  	if (revision < EFI_BLOCK_IO_PROTOCOL_REVISION2)
> -		return;
> +		goto out;
>  
>  	printf("  lowest_aligned_lba: 0x%08llx\n",
>  			media->lowest_aligned_lba);
> @@ -129,11 +129,12 @@ static void efi_bio_print_info(struct device *dev)
>  			media->logical_blocks_per_physical_block);
>  
>  	if (revision < EFI_BLOCK_IO_PROTOCOL_REVISION3)
> -		return;
> +		goto out;
>  
>  	printf("  optimal_transfer_length_granularity: 0x%08x\n",
>  			media->optimal_transfer_length_granularity);
>  
> +out:
>  	if (priv->efi_info)
>  		priv->efi_info(dev);
>  }
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


