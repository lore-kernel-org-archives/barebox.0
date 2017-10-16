Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e3zrH-0001PG-Qn
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 07:30:45 +0000
Date: Mon, 16 Oct 2017 09:30:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016073021.4fh6buyg3apngzub@pengutronix.de>
References: <20171011132042.3564-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171011132042.3564-1-ejo@pengutronix.de>
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
Subject: Re: [PATCH] efi: add missing Kconfig selects
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 11, 2017 at 03:20:42PM +0200, Enrico Jorns wrote:
> Building EFI code without block device and partition support enabled
> will fail with:
> 
> | drivers/built-in.o: In function `efi_bio_probe':
> | (.text+0x125d): undefined reference to `blockdevice_register'
> | drivers/built-in.o: In function `efi_bio_probe':
> | (.text+0x126c): undefined reference to `parse_partition_table'
> | Makefile:766: recipe for target 'barebox' failed
> 
> Thus always select BLOCK and PARTITION_DISK when enabling EFI_BOOTUP.
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  drivers/efi/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/efi/Kconfig b/drivers/efi/Kconfig
> index 2cd9dd504f..cca1a2e1d6 100644
> --- a/drivers/efi/Kconfig
> +++ b/drivers/efi/Kconfig
> @@ -1,2 +1,4 @@
>  config EFI_BOOTUP
>  	bool
> +	select BLOCK
> +	select PARTITION_DISK
> -- 
> 2.11.0
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
