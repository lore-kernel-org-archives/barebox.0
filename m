Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z9RS6-00088Y-3v
 for barebox@lists.infradead.org; Mon, 29 Jun 2015 05:17:54 +0000
Date: Mon, 29 Jun 2015 07:17:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150629051731.GP18611@pengutronix.de>
References: <1435345163-16565-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1435345163-16565-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/4] mtd: m25p80: explicitly cast name pointer
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 26, 2015 at 08:59:20PM +0200, Lucas Stach wrote:
> Fixes:
> drivers/mtd/devices/m25p80.c: In function 'm25p_probe':
> drivers/mtd/devices/m25p80.c:271:14: warning:
> assignment discards 'const' qualifier from pointer target type [enabled by default]
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/mtd/devices/m25p80.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
> index c941767..c2e481e 100644
> --- a/drivers/mtd/devices/m25p80.c
> +++ b/drivers/mtd/devices/m25p80.c
> @@ -268,7 +268,7 @@ static int m25p_probe(struct device_d *dev)
>  	else if (data && data->name)
>  		flash_name = data->name;
>  	else if (dev->id_entry)
> -		flash_name = dev->id_entry->name;
> +		flash_name = (char *)dev->id_entry->name;

Rather than patching the warning away we should make the add_mtd_device
devname argument const, see the patch I just sent.

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
