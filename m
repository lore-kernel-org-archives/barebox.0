Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y85gi-0003og-HA
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 11:19:09 +0000
Date: Mon, 5 Jan 2015 12:18:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150105111845.GQ30369@pengutronix.de>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
 <1419358918-25569-6-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1419358918-25569-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 6/9] console: factorize kfifo input support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Dec 23, 2014 at 07:21:55PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> handle input fifo at console framework level instead of driver
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/Kconfig                 |  3 ++
>  common/console.c               |  8 +++++
>  common/console_common.c        | 71 ++++++++++++++++++++++++++++++++++++++++++
>  common/console_simple.c        |  4 +++
>  drivers/input/Kconfig          |  4 +++
>  drivers/input/gpio_keys.c      | 43 ++++---------------------
>  drivers/input/imx_keypad.c     | 29 ++---------------
>  drivers/input/qt1070.c         | 28 ++---------------
>  drivers/input/twl6030_pwrbtn.c | 32 ++-----------------
>  include/console.h              | 22 +++++++++++++
>  include/gpio_keys.h            |  1 -
>  11 files changed, 124 insertions(+), 121 deletions(-)

Instead of integrating this into the core code can we make this a helper
function? Something like:

struct console_poller {
	struct poller poller;
	struct kfifo fifo;
	struct console_device *cdev;
	int (*tstc)(struct console_device *cdev)
	int (*getc)(struct console_device *cdev)
};

int console_init_input_fifo(struct console_poller *copo)
{
	if (!copo->cdev || !copo->getc || !copo->tstc)
		return -EINVAL;

	copo->cdev->tstc = console_fifo_tstc;
	copo->cdev->getc = console_fifo_getc;

	/* init kfifo / poller */

	return 0;
}

...

struct gpio_keys {
	...
	struct console_poller copo;
	...
};

static int __init gpio_keys_probe(struct device_d *dev)
{
	...

	gk->copo.getc = gpio_keys_getc;
	gk->copo.tstc = gpio_keys_tstc;

	console_init_input_fifo(&gk->copo);
}

That would make the Kconfig option unnecessary and the core wouldn't get
more complicated.

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
