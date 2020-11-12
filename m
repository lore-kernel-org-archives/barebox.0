Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdAWf-0002Pq-UN
 for barebox@lists.infradead.org; Thu, 12 Nov 2020 11:12:26 +0000
Date: Thu, 12 Nov 2020 12:12:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201112111224.GJ29830@pengutronix.de>
References: <20201112100042.1853449-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201112100042.1853449-1-robin@protonic.nl>
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
Subject: Re: [PATCH] nvmem: ocotp: fix fusing on fsl,imx6q-ocotp compatible
 boards
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org, Rouven Czerwinski <r.czerwinski@pengutronix.de>, Oleksij Rempel <o.rempel@pengutronix.de>

On Thu, Nov 12, 2020 at 11:00:42AM +0100, Robin van der Gracht wrote:
> The imx6q_ocotp_data struct is incomplete resulting in a crash when trying
> to read/blow fuses.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  drivers/nvmem/ocotp.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
> index 356e9bf11..cee50955e 100644
> --- a/drivers/nvmem/ocotp.c
> +++ b/drivers/nvmem/ocotp.c
> @@ -833,6 +833,8 @@ static struct imx_ocotp_data imx6q_ocotp_data = {
>  	.mac_offsets = { MAC_OFFSET_0 },
>  	.format_mac = imx_ocotp_format_mac,
>  	.set_timing = imx6_ocotp_set_timing,
> +	.fuse_blow = imx6_fuse_blow_addr,
> +	.fuse_read = imx6_fuse_read_addr,
>  };
>  
>  static struct imx_ocotp_data imx6sl_ocotp_data = {
> -- 
> 2.25.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
