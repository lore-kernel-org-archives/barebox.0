Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huako-00016Y-SJ
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 11:02:16 +0000
Date: Mon, 5 Aug 2019 13:02:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190805110213.pfqdnyeecyc3rhmq@pengutronix.de>
References: <1563436921-362991-1-git-send-email-m.otto@phytec.de>
 <1563436921-362991-4-git-send-email-m.otto@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563436921-362991-4-git-send-email-m.otto@phytec.de>
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
Subject: Re: [PATCH v3 4/4] Makefile: add creation of signed/encrypted images
 for imx6, imx7, imx8
To: Maik Otto <m.otto@phytec.de>
Cc: barebox@lists.infradead.org

Hi Maik,

On Thu, Jul 18, 2019 at 10:02:01AM +0200, Maik Otto wrote:
> add in the images/Makefile.imx the support of building for signed, usb
> signed and encrypted/signed images for NXP i.MX HABV4
> support for NXP i.mx6, i.mx7 and i.mx8
> 
> Signed-off-by: Maik Otto <m.otto@phytec.de>
> ---
> Changes in v3:
>     - nothing
> Changes in v2:
>     - was Patch 2/4 in v1
>     - no dynamic variable, parallel building of different image types now
> ---
>  images/Makefile.imx | 322 +++++++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 321 insertions(+), 1 deletion(-)
> 
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 9a7187a..9c70703 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -147,216 +147,388 @@ pblb-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
>  CFG_start_imx6_realq7.pblb.imximg = $(board)/datamodul-edm-qmx6/flash-header.imxcfg
>  FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblb.imximg
>  image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6.img
> +FILE_barebox-datamodul-edm-qmx6-s.img = start_imx6_realq7.pblb.simximg
> +FILE_barebox-datamodul-edm-qmx6-us.img = start_imx6_realq7.pblb.usimximg
> +FILE_barebox-datamodul-edm-qmx6-es.img = start_imx6_realq7.pblb.esimximg
> +habv4image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6

This file contains way to much boilerplate already for my taste. Adding four
more lines for every board is not something I like to do.

Can we add even more magic to get rid of these additional lines?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
