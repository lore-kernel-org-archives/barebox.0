Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kd9TV-0000lu-Cn
 for barebox@lists.infradead.org; Thu, 12 Nov 2020 10:05:06 +0000
Message-ID: <d4f6c8d4ffc0f6b6e08eb23fa33795cbab3720f5.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 12 Nov 2020 11:05:00 +0100
In-Reply-To: <20201112100042.1853449-1-robin@protonic.nl>
References: <20201112100042.1853449-1-robin@protonic.nl>
MIME-Version: 1.0
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
To: Robin van der Gracht <robin@protonic.nl>, barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

On Thu, 2020-11-12 at 11:00 +0100, Robin van der Gracht wrote:
> The imx6q_ocotp_data struct is incomplete resulting in a crash when
> trying
> to read/blow fuses.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  drivers/nvmem/ocotp.c | 2 ++
>  1 file changed, 2 insertions(+)
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

Fixes: 17cba91885d9 ("nvmem: ocotp: read/write i.MX7 support")

Reviewed-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Thanks for the fix,
Rouven


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
