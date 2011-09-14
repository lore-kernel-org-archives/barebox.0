Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3kye-0007DH-Rn
	for barebox@lists.infradead.org; Wed, 14 Sep 2011 08:37:53 +0000
Date: Wed, 14 Sep 2011 10:37:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110914083747.GA31404@pengutronix.de>
References: <1315918376-23732-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1315918376-23732-1-git-send-email-w.sang@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mci: mxs: fix 'use resources' conversion
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 13, 2011 at 02:52:56PM +0200, Wolfram Sang wrote:
> Commit 4c542622 used the wrong variable name and caused a build failure.

Applied to master.

Sascha

> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/mci/mxs.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
> index 825ae4d..a84cd67 100644
> --- a/drivers/mci/mxs.c
> +++ b/drivers/mci/mxs.c
> @@ -703,7 +703,7 @@ static int mxs_mci_probe(struct device_d *hw_dev)
>  	host->send_cmd = mxs_mci_request;
>  	host->set_ios = mxs_mci_set_ios;
>  	host->init = mxs_mci_initialize;
> -	mxs_mci->regs = dev_request_mem_region(dev, 0);
> +	mxs_mci->regs = dev_request_mem_region(hw_dev, 0);
>  
>  	/* feed forward the platform specific values */
>  	host->voltages = pd->voltages;
> -- 
> 1.7.5.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
