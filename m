Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYzgu-0004S9-0x
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 13:41:13 +0000
Date: Thu, 15 Nov 2012 14:41:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121115134110.GF10369@pengutronix.de>
References: <1352983558-29740-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352983558-29740-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] mci-core: fix debug Capacity cast
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 15, 2012 at 01:45:58PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we print the correct size
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/mci/mci-core.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index b01b7ec..b6f9076 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -753,7 +753,7 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
>  
>  	mci->capacity = (csize + 1) << (cmult + 2);
>  	mci->capacity *= mci->read_bl_len;
> -	dev_dbg(mci->mci_dev, "Capacity: %u MiB\n", (unsigned)mci->capacity >> 20);
> +	dev_dbg(mci->mci_dev, "Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
>  }
>  
>  static int mmc_compare_ext_csds(struct mci *mci, unsigned bus_width)
> -- 
> 1.7.10.4
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
