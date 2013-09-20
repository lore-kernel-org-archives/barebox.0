Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMulv-0000qz-JF
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 07:05:00 +0000
Date: Fri, 20 Sep 2013 09:04:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130920070436.GD30088@pengutronix.de>
References: <20130920054640.GD1137@ns203013.ovh.net>
 <1379656065-23690-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379656065-23690-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] introduce helper to generate mac address with OUI
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 20, 2013 at 07:47:43AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> use random mac address with fixed OUI provided
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/local_mac_address.h | 40 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 include/local_mac_address.h
> 
> diff --git a/include/local_mac_address.h b/include/local_mac_address.h
> new file mode 100644
> index 0000000..3920334
> --- /dev/null
> +++ b/include/local_mac_address.h
> @@ -0,0 +1,40 @@
> +/*
> + * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * Under GPLv2 only
> + */
> +
> +#ifndef __LOCAL_MAC_ADDRESS_H__
> +#define __LOCAL_MAC_ADDRESS_H__
> +
> +/**
> + * local_mac_address_register - use random number with fix
> + * OUI provided device to provide an Ethernet address
> + * @ethid: ethernet device id
> + * @oui: Ethernet OUI (3 bytes)
> + *
> + * Generate a local Ethernet address (MAC) that is not multicast using a 1-wire id.
> + */
> +static inline int local_mac_address_register(int ethid, char * oui)
> +{
> +	char addr[6];
> +	int nb_oui = 3;
> +	int i;
> +
> +	if (!oui)
> +		return -EINVAL;
> +
> +	random_ether_addr(addr);
> +
> +	for (i = 0; i < nb_oui; i++)
> +		addr[i] = oui[i];

Shouldn't you rather use bytes 1-3 instead of 0-2?

> +
> +	addr[0] &= 0xfe;	/* clear multicast bit */
> +	addr[0] |= 0x02;	/* set local assignment bit (IEEE802) */

Otherwise the 'smf' you pass in becomes 'qmf' here.

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
