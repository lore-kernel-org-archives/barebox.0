Delivery-date: Thu, 21 May 2026 18:25:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ6DB-002IKi-0F
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 18:25:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ6DA-0003bz-Fz
	for lore@pengutronix.de; Thu, 21 May 2026 18:25:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=mB4ghcywTs38LKVINKA5YDgKj58GRHzMNZ8Q1CysUrg=; b=Yurk2Rs2azPv4I
	42VoxlUQ3NmDsw1WMYKJ4EvScAAi3QxhlNy35usjR+g/pqiI8V4zk+UtqG7+UpaYmDxMMZk/JLBbM
	eBstTYuUq+IC+ivLzIfKBMPVJ9ufLQ91Ox172XFgS5klxch5lPXwl61CPAds78n7U6W+jPRYm71tQ
	6yl7wWC99RvLanIq6Hu8bk4pny0XMG8mfOpdb7TCZJgwgkNNCTggUCv4WmqtjalioD1ByEUMFmG68
	nheqoKZhrY0t8PXRJssWoiD0EKR9lXuW9+2J3ia4DrMWfo7entqybCCWH+w9pyBVlol2DMlSBSJgS
	Gsh99cki66AfgCfSm8bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ6Bk-00000008TP5-2g73;
	Thu, 21 May 2026 16:24:00 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ6Bi-00000008TO6-075Q
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 16:23:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with UTF8SMTP id 396E743886;
	Thu, 21 May 2026 16:23:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id DF1CB1F000E9;
	Thu, 21 May 2026 16:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779380637;
	bh=mB4ghcywTs38LKVINKA5YDgKj58GRHzMNZ8Q1CysUrg=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=jQYJrnCHqC3YWk3wm612s2e7IEIhZe5KFtCWmdqJuoZPix04sPZKMQJC58TTF6b3Y
	 4tHFlpV+bz4W8UqeqY/+TYpgbpAuRZF4zz8J4iZY3GtTUuReukJ16GfvBM4tIUxuz9
	 Kp8NtcvLiOCyfkRQ8RMJPmeVof1scWxnG1x8IcnKk0HpDY6TuvdG3O7IyxA7CKtxd4
	 t5l7JSshSsKL1WxbBHgUpUebF8355Lnunn2UnE3D3TgkAfB/9VyfteQn7KdSSBmuvf
	 Lh3eISOv8TcBoOl6wv5FPJ6c8QhuY8v2vef8cwHdzLvIdeFco6REjMz5pF6l7Gdh/F
	 FhoHtInHmwwpA==
Date: Thu, 21 May 2026 11:23:55 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20260521162355.GA168776@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260521-pci-of-dynamic-v1-3-951f1878e378@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_092358_084303_DE274DD7 
X-CRM114-Status: GOOD (  19.83  )
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
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=ham autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/4] pci: add pci_is_bridge() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, May 21, 2026 at 10:36:57AM +0200, Sascha Hauer wrote:
> Mirror the Linux helper of the same name so callers don't have to
> open-code the header-type compare.
> 
> Replace the open-coded site in pci_ea_init().
> 
> Assisted-by: Claude Opus 4.7
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/pci/pci.c   |  2 +-
>  include/linux/pci.h | 14 ++++++++++++++
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index 8d18889109..fc00ec2249 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -334,7 +334,7 @@ static void pci_ea_init(struct pci_dev *dev)
>  	offset = ea + PCI_EA_FIRST_ENT;
>  
>  	/* Skip DWORD 2 for type 1 functions */
> -	if (dev->hdr_type == PCI_HEADER_TYPE_BRIDGE)
> +	if (pci_is_bridge(dev))
>  		offset += 4;
>  
>  	/* parse each EA entry */
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index f6511e0095..a2dbaf6ec2 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -123,6 +123,20 @@ struct pci_dev {
>  };
>  #define	to_pci_dev(d) container_of(d, struct pci_dev, dev)
>  
> +/**
> + * pci_is_bridge - check if the PCI device is a bridge
> + * @dev: PCI device
> + *
> + * Return true if the PCI device is a bridge of PCI-to-PCI type. Masks the
> + * multi-function flag so a multi-function bridge is still recognised.
> + */
> +static inline bool pci_is_bridge(struct pci_dev *dev)
> +{
> +	u8 type = dev->hdr_type & PCI_HEADER_TYPE_MASK;
> +
> +	return type == PCI_HEADER_TYPE_BRIDGE;
> +}

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/pci.h?id=v7.0#n755

Am I missing something?

>  #define pci_resource_start(dev, bar)	((dev)->resource[(bar)].start)
>  #define pci_resource_end(dev, bar)	((dev)->resource[(bar)].end)
>  #define pci_resource_flags(dev, bar)	((dev)->resource[(bar)].flags)
> 
> -- 
> 2.47.3
> 
> 
> 


