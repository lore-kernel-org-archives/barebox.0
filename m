Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y1rQx-00045i-8n
 for barebox@lists.infradead.org; Fri, 19 Dec 2014 06:53:08 +0000
Date: Fri, 19 Dec 2014 07:52:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141219065245.GA30369@pengutronix.de>
References: <1418832597-3932-1-git-send-email-victorien.vedrine@ophrys.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1418832597-3932-1-git-send-email-victorien.vedrine@ophrys.net>
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
Subject: Re: [PATCH] partitions: dos: Fix support of extended partition type
 0x05
To: victorien <victorien.vedrine@ophrys.net>
Cc: barebox@lists.infradead.org

Hi victorien,

This patch needs a:

Signed-off-by: Victorien Vedrine <victorien.vedrine@ophrys.net>

Line. Otherwise I can't take it.


Sascha

On Wed, Dec 17, 2014 at 05:09:57PM +0100, victorien wrote:
> ---
>  common/partitions/dos.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> index 37addfd..8a3c5c3 100644
> --- a/common/partitions/dos.c
> +++ b/common/partitions/dos.c
> @@ -209,7 +209,7 @@ static void dos_partition(void *buf, struct block_device *blk,
>  			 * here as this is the easiest to parse and common
>  			 * enough.
>  			 */
> -			if (pentry.dos_partition_type == 0x0f) {
> +			if ((pentry.dos_partition_type == 0x0f)||(pentry.dos_partition_type == 0x05)) {
>  				if (!extended_partition)
>  					extended_partition = &pd->parts[n];
>  				else
> -- 
> 1.9.1
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
