Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TSkmZ-0001Ut-14
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 08:33:16 +0000
Date: Mon, 29 Oct 2012 09:33:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121029083312.GM1641@pengutronix.de>
References: <20121028002134.GD28904@game.jcrosoft.org>
 <1351383852-8488-1-git-send-email-plagnioj@jcrosoft.com>
 <1351383852-8488-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351383852-8488-2-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/8] w1: introduce helper to generate mac address from
 1-wire id
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 28, 2012 at 02:24:06AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/w1_mac_address.h |   64 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
>  create mode 100644 include/w1_mac_address.h
> 
> diff --git a/include/w1_mac_address.h b/include/w1_mac_address.h
> new file mode 100644
> index 0000000..ed93e0e
> --- /dev/null
> +++ b/include/w1_mac_address.h
> @@ -0,0 +1,64 @@
> +/*
> + * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * Under GPLv2 only
> + */
> +
> +#ifndef __W1_MAC_ADDRESS_H__
> +#define __W1_MAC_ADDRESS_H__
> +
> +static inline int w1_mac_address_register(int eth_num, bool local,
> +					 char * oui, char *w1_dev)

This function really deserves a comment what it does. From the name I
assume that it turns something w1 related into a MAC address, but I have
no clue what.

Also I think the 'local' parameter should not exist and be unconditional
true. I don't think any vendor with a real ieee registered oui will
match their mac addresses with ids from a w1 eeprom.

> +{
> +	char buf[6];
> +	const char *val;
> +	u64 id;
> +	int nb_oui = 0;
> +	int i, shift;
> +	char *tmp = NULL;
> +	int ret = 0;
> +
> +	if (!local && !oui)
> +		return -EINVAL;
> +
> +	if (oui) {
> +		nb_oui = strlen(oui);

A oui always has three bytes. You can't use strlen here as for example
Freescale has the oui 00-04-9f

> +		if (!local && nb_oui != 3)
> +			return -EINVAL;
> +
> +		nb_oui = min(nb_oui, 3);
> +
> +		for (i = 0; i < nb_oui; i++)
> +			buf[i] = oui[i];
> +	}
> +
> +	tmp = asprintf("%s.id", w1_dev);
> +	if (!tmp)
> +		return -ENOMEM;
> +
> +	val = getenv("w1-1-0.id");

tmp is never used. I assume it should be used here, right?

> +	if (!val) {
> +		ret = -EINVAL;
> +		goto err;
> +	}
> +
> +	id = simple_strtoull(val, NULL, 16);
> +	if (!id) {
> +		ret = -EINVAL;
> +		goto err;
> +	}
> +
> +	for (i = nb_oui, shift = 40; i < 6; i++, shift -= 8)
> +		buf[i] = (id >> shift) & 0xff;
> +
> +	if (local)
> +		buf[0] |= 0x2;
> +
> +	eth_register_ethaddr(eth_num, buf);
> +
> +err:
> +	free(tmp);
> +	return ret;
> +}
> +
> +#endif /* __W1_MAC_ADDRESS_H__ */
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
