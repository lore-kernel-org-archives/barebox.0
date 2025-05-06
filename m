Delivery-date: Tue, 06 May 2025 08:36:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBuh-002i1L-1X
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:36:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBuf-00014d-R3
	for lore@pengutronix.de; Tue, 06 May 2025 08:36:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CyyfdnxRA/CmTUUJDTTAftQLf877Tys46kmWM8vfMog=; b=IJW9K+zKPa2SlO2FUydENraHPV
	CQc01ygVXPFVsyzuJhTLwCyeLG9BMsFmcx3FpPZWjDflGoHA4ho8sAViiLsVmLJ/3zal5s1RFknz/
	v668VnyF3XtlgHAcKas06HAoDVfMgnyUZGTUtIpL9qkjZurRI52rO1Z7VfyfbSL1f6M2DuC5UDiWR
	S+FED9+0eFWJwirqclMqPhMaVwvIEQcbJ8osVWuUkGqwsDm57Je4GjwXgfvg8hVc55cZB43iLqQpq
	hZWnefEBNhiHoJmxIDzx/XpaDhbXSVJ4vrJgg/vGfwCQV33f2zvMIoDgS0pd5RpdHqDl6W7N1EZBc
	KHflim+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBuF-0000000AieB-44wW;
	Tue, 06 May 2025 06:35:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBkZ-0000000AfbV-2EGS
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:25:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uCBkY-0006r8-5Z; Tue, 06 May 2025 08:25:54 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uCBkX-001Ljo-3A;
	Tue, 06 May 2025 08:25:53 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uCBkX-006RlD-2q;
	Tue, 06 May 2025 08:25:53 +0200
Date: Tue, 6 May 2025 08:25:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aBmrcf7bM9MPNlOw@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
 <20250505120633.3717186-14-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250505120633.3717186-14-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_232555_565918_309F66ED 
X-CRM114-Status: GOOD (  21.08  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 13/30] mci: imx-esdhc: implement esdhc_poll using
 sdhci_read32_poll_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, May 05, 2025 at 02:06:16PM +0200, Ahmad Fatoum wrote:
> esdhc_match32 is not flexible enough for use in the upcoming HS200
> tuning code, so reimplement it in terms of sdhci_read32_poll_timeout
> to allow custom conditions.
> 
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/imx-esdhc-common.c | 65 +++++++++++-----------------------
>  drivers/mci/imx-esdhc.c        | 15 ++++----
>  drivers/mci/imx-esdhc.h        | 29 +++++++++++++--
>  3 files changed, 53 insertions(+), 56 deletions(-)
> 
> diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
> index 7673220fe8d4..dae88bb977c6 100644
> --- a/drivers/mci/imx-esdhc-common.c
> +++ b/drivers/mci/imx-esdhc-common.c
> @@ -78,49 +78,24 @@ static int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
>  	return 0;
>  }
>  
> -static bool esdhc_match32(struct fsl_esdhc_host *host, unsigned int off,
> -			  unsigned int mask, unsigned int val)
> +static u64 esdhc_compute_timeout(struct mci_cmd *cmd,
> +				 struct mci_data *data,
> +				 u64 default_value)
>  {
> -	const unsigned int reg = sdhci_read32(&host->sdhci, off) & mask;
> +	if (data && data->timeout_ns != 0)
> +		return data->timeout_ns;
>  
> -	return reg == val;
> -}
> +	if (cmd && cmd->busy_timeout != 0)
> +		return cmd->busy_timeout * NSEC_PER_MSEC;

You have the same code in "mci: sdhci: add support for struct mci_data::timeout_ns"
already. Can this be made a generic helper?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


