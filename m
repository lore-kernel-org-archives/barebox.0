Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCj8n-0001jW-DE
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 05:43:02 +0000
Date: Thu, 31 Jul 2014 07:42:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140731054237.GP23235@pengutronix.de>
References: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1406666701-15356-6-git-send-email-ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406666701-15356-6-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: Re: [PATCH 5/6] net: Add driver for Armada 370/XP 10/100/1000 Mbps
 network controller
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Willy Tarreau <w@1wt.eu>

Hi Ezequiel,

Looks mostly fine, only one small comment from me.

On Tue, Jul 29, 2014 at 05:45:00PM -0300, Ezequiel Garcia wrote:
> +
> +static int mvneta_probe(struct device_d *dev)
> +{
> +	struct mvneta_port *priv;
> +	int ret;
> +
> +	priv = xzalloc(sizeof(*priv));
> +
> +	priv->reg = dev_get_mem_region(dev, 0);

Any special reason to use dev_get_mem_region() here? Normally you should
use dev_request_mem_region() which allocates the resource for exclusive
use. dev_get_mem_region() should only be used in very special cases.

Please check the return value.

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
