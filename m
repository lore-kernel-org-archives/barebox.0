Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9ZQC-000688-58
	for barebox@lists.infradead.org; Tue, 12 Apr 2011 08:58:05 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 12 Apr 2011 10:57:11 +0200
References: <1302596272-21635-1-git-send-email-s.hauer@pengutronix.de>
	<1302596272-21635-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302596272-21635-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201104121057.11443.jbe@pengutronix.de>
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
Subject: Re: [PATCH 2/3] mci: turn several pr_* statements into debug
To: barebox@lists.infradead.org

Mostly ACK, but ...

Sascha Hauer wrote:
> These are mostly useful for developers, so turn them off by default.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/mci-core.c |   26 +++++++++++++-------------
>  1 files changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index a51c44b..c4c5c2f 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
>
> [...]
>
> @@ -1182,7 +1182,7 @@ static int mci_card_probe(struct device_d *mci_dev)
>  	/* start with a host interface reset */
>  	rc = (host->init)(host, mci_dev);
>  	if (rc) {
> -		pr_err("Cannot reset the SD/MMC interface\n");
> +		pr_debug("Cannot reset the SD/MMC interface\n");
>  		return rc;
>  	}

This is not only useful for the developer. Also for the regular user when
something is broken at runtime.

> @@ -1192,7 +1192,7 @@ static int mci_card_probe(struct device_d *mci_dev)
>  	/* reset the card */
>  	rc = mci_go_idle(mci_dev);
>  	if (rc) {
> -		pr_warning("Cannot reset the SD/MMC card\n");
> +		pr_debug("Cannot reset the SD/MMC card\n");
>  		goto on_error;
>  	}

Also useful for the regular user, that tries his shiny new and fresh SD card
and something went wrong at runtime.

>
> [...]
>

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
