Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2XhE-0002tm-EG
 for barebox@lists.infradead.org; Wed, 10 Jun 2015 04:33:01 +0000
Date: Wed, 10 Jun 2015 06:32:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150610043237.GT6325@pengutronix.de>
References: <1433833465-6569-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1433833465-6569-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH] net: Set the actual ethaddr in
 register_preset_mac_address()
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

Hi Wadim,

On Tue, Jun 09, 2015 at 09:04:25AM +0200, Wadim Egorov wrote:
> Set the ethaddr for the current edev.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  net/eth.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/net/eth.c b/net/eth.c
> index 89bddba..03e0a2e 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -49,6 +49,7 @@ static void register_preset_mac_address(struct eth_device *edev, const char *eth
>  	ethaddr_to_string(ethaddr, ethaddr_str);
>  
>  	if (is_valid_ether_addr(ethaddr)) {
> +		memcpy(edev->ethaddr, ethaddr, 6);
>  		dev_info(&edev->dev, "got preset MAC address: %s\n", ethaddr_str);
>  		dev_set_param(&edev->dev, "ethaddr", ethaddr_str);
>  	}

In which case is this necessary? Normally a dev_set_param on "ethaddr"
should already set edev->ethaddr, there should be no need to copy this
manually.

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
