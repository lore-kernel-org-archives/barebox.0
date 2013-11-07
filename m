Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo6.mail-out.ovh.net ([178.32.124.17]
 helo=mo6.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeS2d-0003X6-35
 for barebox@lists.infradead.org; Thu, 07 Nov 2013 16:02:43 +0000
Received: from mail615.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 450C5FFA077
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2013 17:03:11 +0100 (CET)
Date: Thu, 7 Nov 2013 17:04:24 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131107160424.GL26639@ns203013.ovh.net>
References: <1383821462-29348-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383821462-29348-1-git-send-email-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mci: mxs: support overwriting the device name via
 platform data
To: Uwe Kleine-K??nig <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:51 Thu 07 Nov     , Uwe Kleine-K??nig wrote:
> The current implementation of the bootloader specification depends on the
> hardware name and the name of the device in /dev to match. As the default
> hardware name is mciX and the device name is diskY the bootloader spec
> cannot be used as is.
> =

> This patch implements a way to overwrite the device name similar to what =
is
> possible for the imx-esdhc driver.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-mxs/include/mach/mci.h | 1 +
>  drivers/mci/mxs.c                    | 3 +++
>  include/mci.h                        | 2 +-
>  3 files changed, 5 insertions(+), 1 deletion(-)
> =

> diff --git a/arch/arm/mach-mxs/include/mach/mci.h b/arch/arm/mach-mxs/inc=
lude/mach/mci.h
> index 4faab37..c47c24c 100644
> --- a/arch/arm/mach-mxs/include/mach/mci.h
> +++ b/arch/arm/mach-mxs/include/mach/mci.h
> @@ -15,6 +15,7 @@
>  #define __MACH_MMC_H
>  =

>  struct mxs_mci_platform_data {
> +	const char *devname;
>  	unsigned caps;	/**< supported operating modes (MMC_MODE_*) */
>  	unsigned voltages; /**< supported voltage range (MMC_VDD_*) */
>  	unsigned f_min;	/**< min operating frequency in Hz (0 -> no limit) */
> diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
> index 1b935f7..52d0656 100644
> --- a/drivers/mci/mxs.c
> +++ b/drivers/mci/mxs.c
> @@ -571,6 +571,9 @@ static int mxs_mci_probe(struct device_d *hw_dev)
>  	host->voltages =3D pd->voltages;
>  	host->host_caps =3D pd->caps;
>  =

> +	if (pd->devname)
> +		host->devname =3D pd->devname;

why bother to test it?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
