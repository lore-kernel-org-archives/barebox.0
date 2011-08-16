Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QtM2Y-0006rV-Ga
	for barebox@lists.infradead.org; Tue, 16 Aug 2011 15:58:55 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 72898FF9A36
	for <barebox@lists.infradead.org>;
	Tue, 16 Aug 2011 17:59:15 +0200 (CEST)
Date: Tue, 16 Aug 2011 17:39:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110816153939.GE28201@game.jcrosoft.org>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
	<1313397992-3065-6-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1313397992-3065-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 5/7] mci: parent fixups
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:46 Mon 15 Aug     , Sascha Hauer wrote:
> Make the mci host a child of the hardware device and the disk
> a child of the mci host.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/atmel_mci.c  |    1 +
>  drivers/mci/imx-esdhc.c  |    1 +
>  drivers/mci/imx.c        |    1 +
>  drivers/mci/mci-core.c   |    5 ++++-
>  drivers/mci/omap_hsmmc.c |    1 +
>  5 files changed, 8 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
> index b4489dd..47e3924 100644
> --- a/drivers/mci/atmel_mci.c
> +++ b/drivers/mci/atmel_mci.c
> @@ -449,6 +449,7 @@ static int mci_probe(struct device_d *hw_dev)
>  	host->mci.send_cmd = mci_request;
>  	host->mci.set_ios = mci_set_ios;
>  	host->mci.init = mci_reset;
> +	host->mci.hw_dev = dev;
it's hw_dev here

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
