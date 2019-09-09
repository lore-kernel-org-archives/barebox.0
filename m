Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7E1N-0002rI-6Z
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 07:23:34 +0000
Date: Mon, 9 Sep 2019 09:23:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190909072331.4xmc6nvjgfdxged3@pengutronix.de>
References: <20190906140127.17396-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906140127.17396-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] gpio: add driver for SN74273 output expander
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 06, 2019 at 04:01:27PM +0200, Ahmad Fatoum wrote:
> The SN74273 is an octal D-Type Flip-Flop. When used as an output expander,
> N existing output signals can be turned into (N-8)*8 outputs using
> N-8 chips. Add driver to facilitate this.

The reason I haven't mainlined this driver when writing it was that
Linux also has a driver for the 74273, but in a completely different
setup. In the Linux driver the 74273 is assumed to have its inputs on
the data bus together with a separate address decoder.
The chip in this driver here instead is connected via GPIO pins. For
Using flipflops as GPIO expanders there a myriads of different ways to
implement, so I have my doubts how useful it is to even try to put them
in a generic driver.

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
