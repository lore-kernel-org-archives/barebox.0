Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo6.mail-out.ovh.net ([46.105.76.65]
 helo=mo6.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYctZ-0004S0-4H
 for barebox@lists.infradead.org; Tue, 22 Oct 2013 14:25:18 +0000
Received: from mail630.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id D64C2FFA41A
 for <barebox@lists.infradead.org>; Tue, 22 Oct 2013 16:25:10 +0200 (CEST)
Date: Tue, 22 Oct 2013 16:26:33 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131022142633.GA26639@ns203013.ovh.net>
References: <1382438777-15920-1-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382438777-15920-1-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH] net: phy: Add micrel KSZ8031
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:46 Tue 22 Oct     , Markus Pargmann wrote:
> KSZ8031 is similar to KSZ8021. It can use the same functions.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  drivers/net/phy/micrel.c   | 9 +++++++++
>  include/linux/micrel_phy.h | 1 +
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
> index c0bcdd1..3cba2c4 100644
> --- a/drivers/net/phy/micrel.c
> +++ b/drivers/net/phy/micrel.c
> @@ -122,6 +122,15 @@ static struct phy_driver ksphy_driver[] = {
>  	.config_aneg	= genphy_config_aneg,
>  	.read_status	= genphy_read_status,
>  }, {
> +	.phy_id		= PHY_ID_KSZ8031,
> +	.phy_id_mask	= 0x00ffffff,
> +	.drv.name	= "Micrel KSZ8031",
> +	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause |
> +			   SUPPORTED_Asym_Pause),
> +	.config_init	= ksz8021_config_init,
> +	.config_aneg	= genphy_config_aneg,
> +	.read_status	= genphy_read_status,
> +}, {
>  	.phy_id		= PHY_ID_KSZ8041,
>  	.phy_id_mask	= 0x00fffff0,
>  	.drv.name	= "Micrel KSZ8041",
> diff --git a/include/linux/micrel_phy.h b/include/linux/micrel_phy.h
> index 9dbb41a..8752dbb 100644
> --- a/include/linux/micrel_phy.h
> +++ b/include/linux/micrel_phy.h
> @@ -19,6 +19,7 @@
>  #define PHY_ID_KSZ9021		0x00221610
>  #define PHY_ID_KS8737		0x00221720
>  #define PHY_ID_KSZ8021		0x00221555
> +#define PHY_ID_KSZ8031		0x00221556
you really need this?

because if you use a phy_id_mask of 0x00fffff0 you can use the entry as 
PHY_ID_KSZ8021

Best Regards,
J.
>  #define PHY_ID_KSZ8041		0x00221510
>  #define PHY_ID_KSZ8051		0x00221550
>  /* same id: ks8001 Rev. A/B, and ks8721 Rev 3. */
> -- 
> 1.8.4.rc3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
