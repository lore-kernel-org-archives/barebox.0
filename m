Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wkv4Z-00036L-SF
 for barebox@lists.infradead.org; Thu, 15 May 2014 12:47:44 +0000
Date: Thu, 15 May 2014 14:47:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140515124722.GK5858@pengutronix.de>
References: <1400156804-10073-1-git-send-email-list-09_barebox@tqsc.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400156804-10073-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: Re: [PATCH] barebox: select host-lzop
To: Markus Niebel <list-09_barebox@tqsc.de>
Cc: barebox@lists.infradead.org, Markus Niebel <Markus.Niebel@tq-group.com>

Hi Markus,

On Thu, May 15, 2014 at 02:26:44PM +0200, Markus Niebel wrote:
> From: Markus Niebel <Markus.Niebel@tq-group.com>
> 
>     creation of barebox.z requires lzop. As this may be not installed,
>     let's handle this inside of our build logic.
> 
> Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>

Please send this to the ptxdist list, the patch applies better there ;)

Sascha

> ---
>  platforms/barebox.in |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/platforms/barebox.in b/platforms/barebox.in
> index 6e65f83..6f66d1f 100644
> --- a/platforms/barebox.in
> +++ b/platforms/barebox.in
> @@ -10,6 +10,7 @@ config BAREBOX_ARCH_STRING
>  menuconfig BAREBOX
>  	select BOOTLOADER
>  	select HOST_LIBUSB if BAREBOX_NEEDS_HOST_LIBUSB
> +	select HOST_LZOP
>  	prompt "barebox                       "
>  	bool
>  	help
> -- 
> 1.7.9.5
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
