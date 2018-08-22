Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsNwM-0001tf-5Z
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 07:52:31 +0000
Date: Wed, 22 Aug 2018 09:52:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180822075216.pufg72jwyxhfvxiw@pengutronix.de>
References: <20180821152001.5747-1-aleksander@aleksander.es>
 <20180821152001.5747-4-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180821152001.5747-4-aleksander@aleksander.es>
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
Subject: Re: [PATCH 3/4] ratp: implement support for GPIO commands
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Tue, Aug 21, 2018 at 05:20:00PM +0200, Aleksander Morgado wrote:
> Introduce three new RATP commands that allow getting and setting GPIO
> values as well as configuring the direction of the GPIO pins.
>

Same here as with the i2c bus/address thing. Being to able to use names for
the GPIOs would be a good thing.


> +#include <common.h>
> +#include <ratp_bb.h>
> +#include <malloc.h>
> +#include <environment.h>
> +#include <gpio.h>
> +#include <errno.h>
> +
> +struct ratp_bb_gpio_get_value_request {
> +	struct ratp_bb header;
> +	uint32_t       gpio;
> +} __attribute__((packed));

Nitpick: I prefer not to align the variable names in struct definitions.
If the next element with a longer type is added then you can only give
up the alignment or patch unrelated lines (which is bad because 'git
blame' gives no useful output for the changed lines)

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
