Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5U2i-0006KT-7s
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 06:10:49 +0000
Date: Fri, 11 Jul 2014 08:10:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140711061026.GM23235@pengutronix.de>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
 <20140711053738.GJ23235@pengutronix.de>
 <20140711101236.5c332b13de1fe7c297237fc5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140711101236.5c332b13de1fe7c297237fc5@gmail.com>
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
Subject: Re: [RFC 0/5] add rtc support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 11, 2014 at 10:12:36AM +0400, Antony Pavlov wrote:
> On Fri, 11 Jul 2014 07:37:38 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Thu, Jul 10, 2014 at 12:33:14PM +0400, Antony Pavlov wrote:
> > > This patchseries imports RTC support from linux-3.15.
> > > 
> > > User can use 'hwclock' command to see realtime clock readout.
> > > 
> > > Tested with DS1307.
> > > 
> > > TODOs:
> > > 
> > >  * rtc_set_time() is not realized;
> > >  * ds1307_set_time() is not tested;
> > >  * bcd lib is compiled in even if rtc support is disabled (as linux does);
> > >    we can make it optional;
> > 
> > It's probably not worth it. The linker will throw it away anyway if
> > unused.
> 
> Hmm, I have missed this.
> 
> In this case can we drop I2C_SMBUS Kconfig stuff
> 
> +config I2C_SMBUS
> +	bool
> +
> 
> +obj-$(CONFIG_I2C_SMBUS) += i2c-smbus.o
> 
> from 'add driver for PCA95[357]x, ...' series?
> 
> Anyway CONFIG_I2C_SMBUS has another meaning in linux.
> 
> > 
> > >  * adjust include/linux/rtc.h and include/rtc.h;
> > >  * rtc_unregister() is not realized.
> > 
> > Maybe an environment variable which holds the seconds since epoch would
> > be useful. This way scripts could make use of the current RTC time.
> 
> So you propose to add an option to hwclock command to store RTC readout into variable,
> isn't it?

Yes. This would allow scripts to compare times or to store the current
time in some boot log.

> 
> I have an idea to put epoch offset (number of years into AD to which a zero year value
> in the Hardware Clock refers) into "global.epoch" variable and add corresponding
> Kconfig option for default epoch value.

Does Linux support such a mechanism aswell? How can we make sure Linux
uses the same epoch offset?

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
