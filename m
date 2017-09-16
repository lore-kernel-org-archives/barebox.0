Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dtDI6-0003Or-GS
 for barebox@lists.infradead.org; Sat, 16 Sep 2017 13:37:52 +0000
Date: Sat, 16 Sep 2017 15:37:26 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170916133726.GB6457@ravnborg.org>
References: <20170915083922.25134-1-l.stach@pengutronix.de>
 <20170915083922.25134-6-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170915083922.25134-6-l.stach@pengutronix.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 05/12] mci: mmci: add DT support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Lucas.

On Fri, Sep 15, 2017 at 10:39:15AM +0200, Lucas Stach wrote:
> Just adds the minimal implementation to fill platform_data from
> the DT properties with Linux binding.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---


> @@ -625,7 +658,7 @@ static int mmci_probe(struct amba_device *dev, const struct amba_id *id)
>  	host->mci.max_req_size = (1 << variant->datalength_bits) - 1;
>  
>  	host->mci.host_caps = plat->capabilities;
> -	host->mci.voltages = plat->ocr_mask;
> +	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34 | plat->ocr_mask;

This change is not justified in the changelog?!?


	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
