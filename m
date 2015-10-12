Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlWOc-00059I-OA
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 06:15:43 +0000
Date: Mon, 12 Oct 2015 08:15:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151012061523.GL7858@pengutronix.de>
References: <1444339211-17596-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444339211-17596-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH] net: mvneta: add Armada XP compatible
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On Thu, Oct 08, 2015 at 11:20:11PM +0200, Sebastian Hesselbarth wrote:
> Marvell NETA Network Engine found in Armada 370 and XP SoCs
> also has a different compatible for Armada XP. Add the compatible
> to the of_device_id list.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> Cc: barebox@lists.infradead.org
> ---
>  drivers/net/mvneta.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
> index aab52c45deec..1690f3b576c7 100644
> --- a/drivers/net/mvneta.c
> +++ b/drivers/net/mvneta.c
> @@ -761,6 +761,7 @@ static int mvneta_probe(struct device_d *dev)
>  
>  static struct of_device_id mvneta_dt_ids[] = {
>  	{ .compatible = "marvell,armada-370-neta", },
> +	{ .compatible = "marvell,armada-xp-neta" },

Applied, thanks

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
