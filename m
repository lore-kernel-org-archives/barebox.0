Delivery-date: Wed, 20 Aug 2025 09:41:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uodRi-002Xl8-3B
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 09:41:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uodRh-0003YI-P9
	for lore@pengutronix.de; Wed, 20 Aug 2025 09:41:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+XACjuwY7KxsuaRxM2kiaDOU2nYdSnGEb+aDXImDHfs=; b=W3/ZQoEZF3+rQ1w7Qpcu6X4+x+
	fBCW0CayWNZcwKxQkJ9R1lNseR+X56Lux8RsyeNyeialW7PK0ocyCHXLhEgiZpkaKLhV6zzYv8W/5
	c/RG9kMpz/WO4F9+OOo6SlbkHCug/8OIpRkgYY6YQBAFgQMLkeS3/WDMDrNa2PLv2nSer0NxpLsT0
	w1as7NL0laPap8vhLot72GBZ0N8daM1szZBWyq0HEG5lFETKBMnBL8clpGNbDkPPMmpiGCZuc2HIF
	q71HZGIVa+teudmoxY/Cxjc4K+1OZ+zy6r8qsfAFmIzVJDetyBK8/jp4C2bNYdCnttGndMuRyFza8
	BFt5ojgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uodR3-0000000Cclf-0YQF;
	Wed, 20 Aug 2025 07:40:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uodKQ-0000000CcCw-2nC8
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 07:33:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uodKP-0002XZ-Gk; Wed, 20 Aug 2025 09:33:49 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uodKP-001Cvo-15;
	Wed, 20 Aug 2025 09:33:49 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uodKP-005rFa-0n;
	Wed, 20 Aug 2025 09:33:49 +0200
Date: Wed, 20 Aug 2025 09:33:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aKV6XQDJIzUcZNAR@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
 <20250818-v2025-06-0-topic-nvmem-v2-6-b6d677f6c519@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-6-b6d677f6c519@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_003350_704655_7BA5CC23 
X-CRM114-Status: GOOD (  24.58  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 06/15] nvmem: core: expose nvmem cells as cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Aug 18, 2025 at 07:44:40PM +0200, Marco Felsch wrote:
> Linux has added the support to expose nvmem-cells via the sysfs by
> commit 0331c611949f ("nvmem: core: Expose cells through sysfs"). This
> commit adds an equivalent mechanism by exposing the nvmem-cells via
> cdevs. The name scheme is: <nvmem-dev-name>.<cell-name>.
> 
> With this in place it is possible for board code and/or shell to query
> the nvmem-cell values without specifying the consumer API within DT. At
> the moment the access is RO like Linux does since write support requires
> more corner case handling.
> 
> The naming scheme for nvmem_populate_sysfs_cells() was kept to reduce the
> Linux diff.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/nvmem/core.c | 93 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 93 insertions(+)
> 
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index c252f17ef0b24e8199e199db086aeec8d09fdf94..4dbeb1e116ae398f1f2748238d97468c1096262a 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -45,6 +45,8 @@ struct nvmem_cell_entry {
>  	struct device_node	*np;
>  	struct nvmem_device	*nvmem;
>  	struct list_head	node;
> +
> +	struct cdev		cdev;
>  };
>  
>  struct nvmem_cell {
> @@ -167,6 +169,71 @@ static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
>  	return NULL;
>  }
>  
> +static struct nvmem_cell *nvmem_create_cell(struct nvmem_cell_entry *entry,
> +					    const char *id, int index);

This causes intermediate breakage. The prototype at this point is still:

static struct nvmem_cell *nvmem_create_cell(struct nvmem_cell_entry *entry,
					    const char *id);

The index parameter is only added later in this series.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


