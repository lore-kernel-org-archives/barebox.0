Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4kV5-0000f0-7c
 for barebox@lists.infradead.org; Wed, 09 Jul 2014 05:33:03 +0000
Date: Wed, 9 Jul 2014 07:32:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140709053241.GA23235@pengutronix.de>
References: <1404850991-28028-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404850991-28028-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] pci: pci_alloc_bus(): use xzalloc() instead of kzalloc()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 09, 2014 at 12:23:11AM +0400, Antony Pavlov wrote:
> Also drop redundant xzalloc() result check
> as xzalloc() does not return in case of memory allocation error.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/pci/pci.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index ad9350f..3d88b0f 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -16,14 +16,14 @@ static struct pci_bus *pci_alloc_bus(void)
>  {
>  	struct pci_bus *b;
>  
> -	b = kzalloc(sizeof(*b), GFP_KERNEL);
> -	if (b) {
> -		INIT_LIST_HEAD(&b->node);
> -		INIT_LIST_HEAD(&b->children);
> -		INIT_LIST_HEAD(&b->devices);
> -		INIT_LIST_HEAD(&b->slots);
> -		INIT_LIST_HEAD(&b->resources);
> -	}
> +	b = xzalloc(sizeof(*b));
> +
> +	INIT_LIST_HEAD(&b->node);
> +	INIT_LIST_HEAD(&b->children);
> +	INIT_LIST_HEAD(&b->devices);
> +	INIT_LIST_HEAD(&b->slots);
> +	INIT_LIST_HEAD(&b->resources);
> +
>  	return b;
>  }
>  
> -- 
> 2.0.1
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
