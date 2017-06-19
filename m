Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMpyU-00063A-Ct
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 06:16:18 +0000
Date: Mon, 19 Jun 2017 08:15:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170619061522.gcnal44nqd4riyht@pengutronix.de>
References: <20170613175805.24686-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170613175805.24686-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] pci: mvebu: terminate error message with a newline
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 13, 2017 at 07:58:05PM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/pci/pci-mvebu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
> index 907bda0f9646..91e8ca870b7f 100644
> --- a/drivers/pci/pci-mvebu.c
> +++ b/drivers/pci/pci-mvebu.c
> @@ -342,7 +342,7 @@ static struct mvebu_pcie *mvebu_pcie_port_probe(struc=
t device_d *dev,
>  	if (mvebu_mbus_add_window_remap_by_id(mem_target, mem_attr,
>  			      (resource_size_t)pcie->membase, resource_size(&pcie->mem),
>  			      (u32)pcie->mem.start)) {
> -		dev_err(dev, "PCIe%d.%d unable to add mbus window for mem at %08x+%08x=
",
> +		dev_err(dev, "PCIe%d.%d unable to add mbus window for mem at %08x+%08x=
\n",
>  			port, lane, (u32)pcie->mem.start, resource_size(&pcie->mem));
>  =

>  		free(pcie);
> -- =

> 2.11.0
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
