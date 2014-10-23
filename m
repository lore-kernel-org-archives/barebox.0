Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XhB0p-0004o7-Kj
 for barebox@lists.infradead.org; Thu, 23 Oct 2014 05:32:41 +0000
Date: Thu, 23 Oct 2014 07:32:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141023053215.GC14443@pengutronix.de>
References: <1413974872-23330-1-git-send-email-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1413974872-23330-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH] EFI: report correct block device size
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 22, 2014 at 12:47:52PM +0200, Michael Olbrich wrote:
> last_block is a zero-based block number, so the total number of blocks is
> last_block + 1
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/efi/efi/efi-block-io.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/efi/efi/efi-block-io.c b/arch/efi/efi/efi-block-io.c
> index 00115317fc9b..85603d913d5b 100644
> --- a/arch/efi/efi/efi-block-io.c
> +++ b/arch/efi/efi/efi-block-io.c
> @@ -149,7 +149,7 @@ int efi_bio_probe(struct efi_device *efidev)
>  
>  	priv->blk.cdev.name = asprintf("disk%d", cdev_find_free_index("disk"));
>  	priv->blk.blockbits = ffs(media->block_size) - 1;
> -	priv->blk.num_blocks = media->last_block;
> +	priv->blk.num_blocks = media->last_block + 1;
>  	priv->blk.ops = &efi_bio_ops;
>  	priv->blk.dev = &efidev->dev;
>  
> -- 
> 2.1.1
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
