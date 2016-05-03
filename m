Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axUZH-0007j1-MA
 for barebox@lists.infradead.org; Tue, 03 May 2016 07:16:28 +0000
Date: Tue, 3 May 2016 09:16:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160503071605.GK19714@pengutronix.de>
References: <1462178646-873-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1462178646-873-1-git-send-email-s.christ@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] fixup! PCI: imx6: Move PHY reset into
 imx6_pcie_establish_link()
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, May 02, 2016 at 10:44:06AM +0200, Stefan Christ wrote:
> ---
> Hi Sascha,
> =

> small whitespace fixup for a commit in branch "for-next/pci".
> =

> Mit freundlichen Gr=FC=DFen / Kind regards,
>         Stefan Christ
> =

> ---
>  drivers/pci/pci-imx6.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Squashed into the original commit, thanks

Sascha

> =

> diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
> index e25a956..affc705 100644
> --- a/drivers/pci/pci-imx6.c
> +++ b/drivers/pci/pci-imx6.c
> @@ -484,7 +484,7 @@ static int imx6_pcie_establish_link(struct pcie_port =
*pp)
>  =

>  	tmp =3D readl(pp->dbi_base + PCIE_RC_LCSR);
>  	dev_dbg(pp->dev, "Link up, Gen=3D%i\n", (tmp >> 16) & 0xf);
> -	=

> +
>  	return 0;
>  =

>  err_reset_phy:
> -- =

> 1.9.1
> =

> =


> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
