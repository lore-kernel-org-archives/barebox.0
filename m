Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNKRJ-0001cD-FG
 for barebox@lists.infradead.org; Mon, 28 May 2018 15:52:07 +0000
Date: Mon, 28 May 2018 17:51:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180528155153.6w32khhr3wjdktlo@pengutronix.de>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
 <20180526204451.16530-48-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180526204451.16530-48-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 47/48] ARM: i.MX8: Add i.MX8mq EVK support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, May 26, 2018 at 01:44:50PM -0700, Andrey Smirnov wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
> index 196513520..9ceb68bef 100644
> --- a/Documentation/boards/imx.rst
> +++ b/Documentation/boards/imx.rst
> @@ -38,12 +38,19 @@ SD card::
>    # otherwise:
>    cat barebox-flash-image > /dev/sdd
>  
> +NOTE: Commands above will not work on i.MX8
> +
>  The above will overwrite the MBR (and consequently the partition table)
>  on the destination SD card. To preserve the MBR while writing the rest
>  of the image to the card, use::
>  
>    dd if=images/barebox-freescale-imx51-babbage.img of=/dev/sdd bs=1024 skip=1 seek=1
>  
> +NOTE: MaskROM on i.MX8 expects image to start at +33KiB mark, so the
> +following command has to be used instead:
> +
> +  dd if=images/barebox-nxp-imx8mq-evk.img of=/dev/sdd bs=1024 skip=1 seek=33

Why don't you use my version of imx-image which already adds the
necessary offset to the image?

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
