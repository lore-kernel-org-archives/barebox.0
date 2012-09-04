Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8oEB-0007cV-Fr
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 08:11:20 +0000
Date: Tue, 4 Sep 2012 10:11:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120904081117.GN26594@pengutronix.de>
References: <1346670227-1840-1-git-send-email-s.trumtrar@pengutronix.de>
 <1346670227-1840-2-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346670227-1840-2-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] mfd: add stmpe-i2c driver
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2012 at 01:03:46PM +0200, Steffen Trumtrar wrote:
> The stmpe mfds can be connected via i2c and spi. This driver provides the basic
> infrastructure for the i2c kind. It can be added as a normal i2c-device in the
> board code. To enable functions a platform_data struct has to be provided, that
> describes what parts of the chip are to be used.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> +
> +struct stmpe *stmpe_get(void)
> +{
> +	if (!stmpe_dev)
> +		return NULL;
> +
> +	return stmpe_dev;
> +}
> +EXPORT_SYMBOL(stmpe_get);

For the pmic devices the assumption that there is only one in the system
is not nice, but reasonable. For this driver it is an unnecessary
limitation.

How about this:

add a 'static struct stmpe stmpe_dev' just like you did, but instead
of returning -EBUSY for the second one, do

	if (!stmpe_dev)
		stmpe_dev = newdev;

This way the at least the gpio support works for multiple instances.

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
