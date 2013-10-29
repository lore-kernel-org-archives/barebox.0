Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo6.mail-out.ovh.net ([46.105.56.136]
 helo=mo6.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vb9Eb-00066M-Hz
 for barebox@lists.infradead.org; Tue, 29 Oct 2013 13:21:27 +0000
Received: from mail239.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id EDBD2FF9A8A
 for <barebox@lists.infradead.org>; Tue, 29 Oct 2013 14:14:20 +0100 (CET)
Date: Tue, 29 Oct 2013 14:15:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131029131538.GF26639@ns203013.ovh.net>
References: <1383045874-7641-1-git-send-email-renaud.barbier@ge.com>
 <1383045874-7641-4-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383045874-7641-4-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 3/6] drivers: gianfar: MAC address
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On 11:24 Tue 29 Oct     , Renaud Barbier wrote:
> A framework is added to pass the board MAC address to the
> gianfar driver.
> This is in preparation for the introduction of the GEIP DA923RC
> board support.
> 


so use eth_register_ethaddr for this insteawd


> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/mach-mpc85xx/include/mach/gianfar.h |  2 ++
>  drivers/net/gianfar.c                        | 10 +++++++++-
>  drivers/net/gianfar.h                        |  2 ++
>  3 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/ppc/mach-mpc85xx/include/mach/gianfar.h b/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
> index 6a7b9e9..c405dd5 100644
> --- a/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
> +++ b/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
> @@ -30,6 +30,8 @@ struct gfar_info_struct {
>  	unsigned int tbiana;
>  	unsigned int tbicr;
>  	unsigned int mdiobus_tbi;
> +	int mac_idx;
> +	int (*get_mac)(int mac_idx, unsigned char *);
>  };
>  
>  int fsl_eth_init(int num, struct gfar_info_struct *gf);
> diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
> index f944c6c..eaf2847 100644
> --- a/drivers/net/gianfar.c
> +++ b/drivers/net/gianfar.c
> @@ -229,7 +229,13 @@ static int gfar_open(struct eth_device *edev)
>  
>  static int gfar_get_ethaddr(struct eth_device *edev, unsigned char *mac)
>  {
> -	return -ENODEV;
> +	struct gfar_private *priv = edev->priv;
> +	int (*get_mac)(int, unsigned char *) = priv->get_mac;
> +
> +	if (get_mac)
> +		return get_mac(priv->mac_idx, mac);
> +	else
> +		return -ENODEV;
>  }
>  
>  static int gfar_set_ethaddr(struct eth_device *edev, unsigned char *mac)
> @@ -493,6 +499,8 @@ static int gfar_probe(struct device_d *dev)
>  	priv->phyaddr = gfar_info->phyaddr;
>  	priv->tbicr = gfar_info->tbicr;
>  	priv->tbiana = gfar_info->tbiana;
> +	priv->get_mac = gfar_info->get_mac;
> +	priv->mac_idx = gfar_info->mac_idx;
>  
>  	mdev = get_device_by_name("gfar-mdio0");
>  	if (mdev == NULL) {
> diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
> index 1aac479..b011445 100644
> --- a/drivers/net/gianfar.h
> +++ b/drivers/net/gianfar.h
> @@ -277,6 +277,8 @@ struct gfar_private {
>  	struct phy_info *phyinfo;
>  	volatile struct txbd8 *txbd;
>  	volatile struct rxbd8 *rxbd;
> +	int (*get_mac)(int idx, unsigned char *);
> +	int mac_idx;
>  	uint txidx;
>  	uint rxidx;
>  	uint phyaddr;
> -- 
> 1.8.3.4
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
