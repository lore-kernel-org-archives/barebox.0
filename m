Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dD5GC-0007oE-1a
 for barebox@lists.infradead.org; Tue, 23 May 2017 08:33:46 +0000
Date: Tue, 23 May 2017 10:33:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170523083321.owwdw7vpirjpstup@pengutronix.de>
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-2-andrew.smirnov@gmail.com>
 <b2e10c3a-cf7d-e3ff-4707-447d56f2e45f@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2e10c3a-cf7d-e3ff-4707-447d56f2e45f@cogentembedded.com>
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
Subject: Re: [PATCH 2/4] gpiolib: Add code to support "active low" GPIOs
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, cphealy@gmail.com

On Tue, May 23, 2017 at 09:30:27AM +0300, Nikita Yushchenko wrote:
> > So far this particular aspect of various DT-bindings has been handled
> > on a per-driver basis. With this change, hopefully, we'll have a
> > single place to handle necessary logic inversions and eventually
> > would be able to migrate existing users as well as avoiding adding
> > redundant code to new drivers.
> 
> Do we have at least single case when same pin of the same chip is active
> high in one use and active low in other use?
> 
> I'd say that "logic values" of gpiolib is a major source of confusion,
> at least in it's current form. The fact that
>   gpio_set_value(..., 1)
> does not set gpio value to 1 but instead sets gpio value to what is
> configured as active, is non-intuitive at least. Maybe with different
> API names (e.g. gpio_activate() / gpio_deactivate()) it could be better.

Plain gpio_set_value() in Linux does not honour any ACTIVE_LOW flags,
only gpiod_set_value() does. But anyway, you are right, it *is*
confusing. I agree that we should have a different set of functions
which honour the ACTIVE_LOW flag. Besides of being more consistent
in the end I think it's the only way to not break any existing gpio
setups in barebox. With a different API set we can review each driver
change for unwanted side effects.

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
