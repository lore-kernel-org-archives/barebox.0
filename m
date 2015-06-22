Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6yQK-0007Xq-Ug
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 09:53:53 +0000
Date: Mon, 22 Jun 2015 11:53:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150622095327.GG6325@pengutronix.de>
References: <1434962920-5868-1-git-send-email-s.hauer@pengutronix.de>
 <20150622123307.9b3137c2a1ff0608d0c7d655@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150622123307.9b3137c2a1ff0608d0c7d655@gmail.com>
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
Subject: Re: [PATCH] serial: ns16550: Fix reading clock-frequency property
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 22, 2015 at 12:33:07PM +0300, Antony Pavlov wrote:
> On Mon, 22 Jun 2015 10:48:40 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > The clock-frequency property is never read because the driver
> 
> hmmm, but how qemu-malta works?

Probably qemu-malta has clk support disabled, so:

static inline struct clk *clk_get(struct device_d *dev, const char *id)
{
	return NULL;
}

Which is a valid clk and the driver is happy. clk_get_rate(priv->clk)
returns 0 and the drivers continues with:

        if (priv->plat.clock == 0 && IS_ENABLED(CONFIG_OFDEVICE)) {
                struct device_node *np = dev->device_node;

                of_property_read_u32(np, "clock-frequency", &priv->plat.clock);
        }

Which will read the correct clock-frequency from the device tree.

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
