Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TSxkn-00077z-VF
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 22:24:18 +0000
Date: Mon, 29 Oct 2012 23:24:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121029222416.GD1641@pengutronix.de>
References: <20121029134033.GH28904@game.jcrosoft.org>
 <1351518424-29523-1-git-send-email-plagnioj@jcrosoft.com>
 <1351518424-29523-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351518424-29523-2-git-send-email-plagnioj@jcrosoft.com>
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

On Mon, Oct 29, 2012 at 02:46:58PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> use the first 3 byte of the id of a 1-wire
> or 6 if no OUI provided device to provide an Ethernet address
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/w1_mac_address.h |   72 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 include/w1_mac_address.h
> + *
> + * Generate a Ethernet address (MAC) that is not multicast using a 1-wire id.
> + */
> +static inline int w1_mac_address_register(int ethid, bool local,
> +					 char * oui, char *w1_dev)

Please drop the local parameter. I believe that it may have a valid
use, but really until someone proves he has such a usecase I do not
want to have this in the tree. This only increases the risk that some
users slip through the review which do not make valid use of this flag.

> +{
> +	char addr[6];
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
> +		nb_oui = 3;
> +
> +		for (i = 0; i < nb_oui; i++)
> +			addr[i] = oui[i];
> +	}
> +
> +	tmp = asprintf("%s.id", w1_dev);
> +	if (!tmp)
> +		return -ENOMEM;
> +
> +	val = getenv(tmp);
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
> +		addr[i] = (id >> shift) & 0xff;
> +
> +	if (local) {
> +		addr[0] &= 0xfe;	/* clear multicast bit */

Shouldn't this bit always be cleared?

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
