Delivery-date: Tue, 31 Jan 2023 09:19:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMlrS-008cRc-NN
	for lore@lore.pengutronix.de; Tue, 31 Jan 2023 09:19:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMlrQ-0007Ae-8h
	for lore@pengutronix.de; Tue, 31 Jan 2023 09:19:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EH7e+2nAhIC50ed17r1LkP2rkrcSFJbBPivGYDCWISw=; b=k7Dz/e2Q/NTSeqQgcrmZGhy2rf
	hWzYsP4dmE527mShRVwmKDYb9Gi0I65wCncUt1K/amgYp0Y0RBXqIs5VNf0usnRclJSw9UE2dL8wg
	ATOIipHF+Sb/fwb5Mg/T9zjYKIYBxNbBx4SE0UuSRgCb7yHjGHpwltAjvXYBN14h9An18biEPwOWA
	ywsmRVOE9uGOSqW3tZbiUBNPcaznmV9EFpOmQ/dX2tghPzwilQnVTR6w03QdXfsEDScmKfCBw1DFm
	0zvOM/2r8oCsRBtYCWHPTsdzPI2DQw33zbDs32/vfiBgG7UPeowUfDQMJKvUidhReD3So2nz1bfWI
	d/94glgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMlpz-006fPE-QY; Tue, 31 Jan 2023 08:17:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMlpv-006fOW-6O
	for barebox@lists.infradead.org; Tue, 31 Jan 2023 08:17:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMlpt-00072g-Hg; Tue, 31 Jan 2023 09:17:49 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMlpt-0006st-AT; Tue, 31 Jan 2023 09:17:49 +0100
Date: Tue, 31 Jan 2023 09:17:49 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230131081749.GX13319@pengutronix.de>
References: <20230130234501.1122060-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130234501.1122060-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_001751_254981_DEF7C3FB 
X-CRM114-Status: GOOD (  21.46  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] net: ks8851_mll: drop platform_device usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 31, 2023 at 12:45:00AM +0100, Marco Felsch wrote:
> The pdev member is unused neither do have barebox support for 'struct
> platform_device' so remove the usage.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/net/ks8851_mll.c | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
> index 7609623ad1..6d74a16ac9 100644
> --- a/drivers/net/ks8851_mll.c
> +++ b/drivers/net/ks8851_mll.c
> @@ -353,7 +353,6 @@
>   * struct ks_net - KS8851 driver private data
>   * @hw_addr	: start address of data register.
>   * @hw_addr_cmd	: start address of command register.
> - * @pdev	: Pointer to platform device.
>   * @bus_width	: i/o bus width.
>   * @extra_byte	: number of extra byte prepended rx pkt.
>   *
> @@ -364,7 +363,6 @@ struct ks_net {
>  	struct mii_bus	miibus;
>  	void __iomem		*hw_addr;
>  	void __iomem		*hw_addr_cmd;
> -	struct platform_device	*pdev;
>  	int			bus_width;
>  	void			*rx_buf;
>  };
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


