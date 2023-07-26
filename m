Delivery-date: Wed, 26 Jul 2023 15:40:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOel5-00AuUf-26
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 15:40:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOel2-0005Ks-PN
	for lore@pengutronix.de; Wed, 26 Jul 2023 15:40:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oeU6MeypT+6P81zhmI6Et3Y3CmOYOjMFf/vzeP+N4Cw=; b=g+5hGNMYfLSJZBWLP89C+wGpNv
	IEBu7ECP5RSMZOU7Iwte0j/BKhEMpTrR0CwmEajZhvvb6bpUGwg9gjilk278SuAkq4yl3tfusVthp
	1Vead+RqwT22SK6EPk6YikgpBtX9/YK7yeSkdMnIO+/Zhj4i4gKBAOiI3oTxPsbZBBkMyqh1H98x+
	CTmm+ZebS5ITfopzyqsTkPgxetHSCqRP6Wpb8K2EErMqrDWH1dZ33puLAcAsEJIM87u6O0ln/Fvub
	Df1O+PjUD+0yqVOKFONLqyQyMkzF2O3qinjt6rwHimZjOEdXDZHxNJGcg1X7qt2my6reev9l2HQtD
	y8HEOJag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOek4-00AZVr-0i;
	Wed, 26 Jul 2023 13:39:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOek1-00AZVH-1A
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 13:39:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOek0-00054R-3V; Wed, 26 Jul 2023 15:39:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOejz-00010J-S5; Wed, 26 Jul 2023 15:39:47 +0200
Date: Wed, 26 Jul 2023 15:39:47 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230726133947.GX18491@pengutronix.de>
References: <20230705190352.1448472-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230705190352.1448472-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_063949_397658_F34CD22F 
X-CRM114-Status: GOOD (  23.40  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: imx-esdhc-pbl: fix image load in DDR mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 05, 2023 at 09:03:52PM +0200, Marco Felsch wrote:
> The __esdhc_send_cmd checks the sdhci.timing setting and configures it
> accordingly. If the BootROM configured the device to operare in DDR mode
> we need to honor that else the PBL can't load the binary correctly from
> the eMMC. Therefore readback the sdhci mixctrl setting and set the
> sdhci.timing to DDR52. At the moment DDR52 is the fastest/highest
> transferrate the BootROM supports, so we don't need to handle HS200/400
> yet.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/mci/imx-esdhc-pbl.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
> index 7c5febb7a8..f789f43b69 100644
> --- a/drivers/mci/imx-esdhc-pbl.c
> +++ b/drivers/mci/imx-esdhc-pbl.c
> @@ -120,6 +120,8 @@ esdhc_load_image(struct fsl_esdhc_host *host, ptrdiff_t address,
>  static void imx_esdhc_init(struct fsl_esdhc_host *host,
>  			   struct esdhc_soc_data *data)
>  {
> +	u32 mixctrl;
> +
>  	data->flags = ESDHC_FLAG_USDHC;
>  	host->socdata = data;
>  	esdhc_populate_sdhci(host);
> @@ -129,6 +131,10 @@ static void imx_esdhc_init(struct fsl_esdhc_host *host,
>  		      FIELD_PREP(WML_WR_WML_MASK, SECTOR_WML) |
>  		      FIELD_PREP(WML_RD_BRST_LEN, 16)         |
>  		      FIELD_PREP(WML_RD_WML_MASK, SECTOR_WML));
> +
> +	mixctrl = sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL);
> +	if (mixctrl & MIX_CTRL_DDREN)
> +		host->sdhci.timing = MMC_TIMING_MMC_DDR52;
>  }
>  
>  static int imx8m_esdhc_init(struct fsl_esdhc_host *host,
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


