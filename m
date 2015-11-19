Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzJqY-000309-C2
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 07:41:34 +0000
Date: Thu, 19 Nov 2015 08:41:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151119074112.GA11966@pengutronix.de>
References: <1447851604-18072-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447851604-18072-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 0/2] add multiplexed I2C bus support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 18, 2015 at 04:00:02PM +0300, Antony Pavlov wrote:
> This patchseries adds multiplexed I2C bus support to barebox
> and a driver for pca954x bus multiplexer.
> 
> This series has the "RFC" status mostly because of these
> adapter numbering hack in drivers/i2c/i2c-mux.c:
> 
>     /* FIXME */
> //  priv->adap.nr = mux_dev->id;
>     priv->adap.nr = -1;
>     ret = i2c_add_numbered_adapter(&priv->adap);

What's wrong with -1 as adapter nr? Why do consider this a hack?

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
