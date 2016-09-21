Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmcy5-0002xr-Ve
 for barebox@lists.infradead.org; Wed, 21 Sep 2016 08:33:27 +0000
Date: Wed, 21 Sep 2016 10:33:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160921083302.sdou3awemfrrdnln@pengutronix.de>
References: <1474301029-22877-1-git-send-email-ejo@pengutronix.de>
 <1474301029-22877-2-git-send-email-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1474301029-22877-2-git-send-email-ejo@pengutronix.de>
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
Subject: Re: [PATCH 1/2] net: add linux.bootarg parameter from ifup call
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Olbrich <m.olbrich@pengutronix.de>, Gavin Schenk <g.schenk@eckelmann.de>, u.kleine-koenig@pengutronix.de

On Mon, Sep 19, 2016 at 06:03:48PM +0200, Enrico Jorns wrote:
> This sets a `ip=dhcp` or
> `ip=<clientip>:<serverip>:<gatewayip>:<netmaskip>::<iface>:` bootarg for
> the network device upon execution of 'ifup'. This is the only point
> where we can distinguish between a static ip and a dhcp-based network
> setup and thus set a valid bootarg options as it will be required for
> nfs boot, for example.
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>

Applied both with two little adjustments

> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -384,6 +384,7 @@ int eth_register(struct eth_device *edev)
>  	dev_add_param_ip(dev, "netmask", NULL, NULL, &edev->netmask, edev);
>  	dev_add_param_mac(dev, "ethaddr", eth_param_set_ethaddr, NULL,
>  			edev->ethaddr, edev);
> +	dev_add_param_string(dev, "linux.bootargs", NULL, NULL, &edev->bootarg, NULL);

Added a edev->bootarg = xstrdup(""); here to not have a <NULL> string in
the variable when not initialized.

>  
>  	if (edev->init)
>  		edev->init(edev);
> diff --git a/net/ifup.c b/net/ifup.c
> index 30ac3f5..618eb8a 100644
> --- a/net/ifup.c
> +++ b/net/ifup.c
> @@ -106,12 +106,22 @@ int ifup(const char *name, unsigned flags)
>  		ret = eth_set_param(dev, "serverip");
>  		if (ret)
>  			goto out;
> +		dev_set_param(dev, "linux.bootargs", "ip=dhcp");
>  	} else if (!strcmp(ip, "static")) {
> +		char *bootarg;
>  		for (i = 0; i < ARRAY_SIZE(vars); i++) {
>  			ret = eth_set_param(dev, vars[i]);
>  			if (ret)
>  				goto out;
>  		}
> +		bootarg = basprintf("ip=%pI4:%pI4:%pI4:%pI4::%s:",
> +				&edev->ipaddr,
> +				&edev->serverip,
> +				&edev->gateway,
> +				&edev->netmask,
> +				edev->devname);

I dropped setting the devname here since we do not know if it's the same
under Linux. If there are multiple interfaces in Linux we can only hope
that the right one is used anyway.

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
