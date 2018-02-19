Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns1.lah-a2.de ([84.19.186.99] helo=lah-a2.de)
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1enjLj-0007W5-A2
 for barebox@lists.infradead.org; Mon, 19 Feb 2018 11:11:13 +0000
MIME-Version: 1.0
Date: Mon, 19 Feb 2018 12:08:34 +0100
From: list@schmidt-andreas.de
In-Reply-To: <20180219065402.dbiv3vke2kqwhfdj@pengutronix.de>
References: <20180216073946.1120-1-s.hauer@pengutronix.de>
 <075169cf-a231-eb73-427a-65c37b8d5465@schmidt-andreas.de>
 <20180219065402.dbiv3vke2kqwhfdj@pengutronix.de>
Message-ID: <b7c837eb63fe7d64236a54b5da612904@schmidt-andreas.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net: cpsw: remove unnecessary mdiobus_scan()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 2018-02-19 07:54, Sascha Hauer wrote:
> On Sat, Feb 17, 2018 at 10:18:16AM +0100, Andreas Schmidt wrote:
[...]
>> On 16.02.2018 08:39, Sascha Hauer wrote:
>> > No need to call mdiobus_scan() manually. it is called from
>> > phy_device_connect() already in cpsw_open() which does all
>> > the magic to connect a network device with its phy.
>> You added call of mdiobus_scan to check if the slave has valid phy, I 
>> guess.
>> Or I misunderstood your commit: 
>> b2568de82d62c18fd5dc8affb0e4dc050403c498
>> net: cpsw: ignore error on slave setup ?
>> 
>> I guess it should work in follow:
>> If slave has a valid phy (determined by mdiobus_scan), slave will be
>> continue to register (call eth_register),
>> if not, cpsw_clave_setup function will exit with an error and next 
>> slave
>> will be try to register.
> 
> You're right. I have overlooked the case that we do not want to 
> register
> ethernet devices for slaves which do not have a valid phy.
> 
> In this case, how about the following variant?
Yes, it's better. I tested it with fixed-link and with real phy and it 
works.
Except a little bug, see comments below.

Thanks!
> 
> 
> Sascha
> 
> -----------------------------8<------------------------------------
> 
> From 44e7a94624f920188f55ca3fb45e9b74ba10e0c9 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Mon, 19 Feb 2018 07:50:56 +0100
> Subject: [PATCH] net: cpsw: Call phy_device_connect() earlier
> 
> We only want to register a slave when a valid phy is available.
> Instead of manually calling mdiobus_scan() and phy_register_device()
> we can let this do from phy_device_connect() which also works for
> fixed phys.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/cpsw.c | 18 +++---------------
>  1 file changed, 3 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index d11ca33f70..70e2721dd0 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -761,11 +761,6 @@ static int cpsw_open(struct eth_device *edev)
> 
>  	dev_dbg(&slave->dev, "* %s\n", __func__);
> 
> -	ret = phy_device_connect(edev, &priv->miibus, slave->phy_id,
> -				 cpsw_adjust_link, 0, slave->phy_if);
> -	if (ret)
> -		return ret;
> -
>  	/* soft reset the controller and initialize priv */
>  	soft_reset(priv, &priv->regs->soft_reset);
> 
> @@ -913,16 +908,9 @@ static int cpsw_slave_setup(struct cpsw_slave
> *slave, int slave_num,
>  	struct eth_device	*edev = &slave->edev;
>  	struct device_d		*dev = &slave->dev;
>  	int ret;
> -	struct phy_device *phy;
> 
> -	phy = mdiobus_scan(&priv->miibus, priv->slaves[slave_num].phy_id);
> -	if (IS_ERR(phy)) {
> -		ret = PTR_ERR(phy);
> -		goto err_out;
> -	}
> -
> -	phy->dev.device_node = priv->slaves[slave_num].dev.device_node;
> -	ret = phy_register_device(phy);

Add "edev->parent = dev;" before calling phy_device_connect.
It needed to find device_node (see phy.c line about 333 in 
of_mdio_find_phy function).

(Remove instruction "edev->parent = dev;" below in cpsw_slave_setup to 
avoid
  to has it twice in the function).

> +	ret = phy_device_connect(edev, &priv->miibus, slave->phy_id,
> +				 cpsw_adjust_link, 0, slave->phy_if);
>  	if (ret)
>  		goto err_out;
> 
> @@ -957,7 +945,7 @@ static int cpsw_slave_setup(struct cpsw_slave
> *slave, int slave_num,
>  	return 0;
> 
>  err_register_dev:
> -	phy_unregister_device(phy);
> +	phy_unregister_device(edev->phydev);
>  err_register_edev:
>  	unregister_device(dev);
>  err_out:
> --
> 2.15.1

Regards,
Andreas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
