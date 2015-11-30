Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3Ii5-0007uI-MI
 for barebox@lists.infradead.org; Mon, 30 Nov 2015 07:17:18 +0000
Date: Mon, 30 Nov 2015 08:16:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151130071651.GR11966@pengutronix.de>
References: <1448609386-25753-1-git-send-email-antonynpavlov@gmail.com>
 <9f78f663546849718c1a3bb80d0cbaad@srred1mail01.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9f78f663546849718c1a3bb80d0cbaad@srred1mail01.kymeta.local>
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
Subject: Re: [RFC] at24: get devfs name from dt aliase
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Nov 27, 2015 at 08:37:02AM +0000, Trent Piepho wrote:
> > -----Original Message-----
> > From: Antony Pavlov [mailto:antonynpavlov@gmail.com]
> > 
> > At the moment barebox can't work correctly with more that one at24
> > eeprom because drivers/eeprom/at24.c tries to register all eeproms as
> > /dev/eeprom0.
> 
> I had this same problem with my system.  It is because different types of EEPROMs have different names and the IDs are assigned sequentially for each different name.  So if you have two 24c02 and one 24c1025, they would have the ids 0, 1, and 0.  The code that produces the IDs for the i2c devices (24c020, 24c021, 2401250) does not know that the eeprom driver will try to make cdevs with the same name pattern from all of them.
> 
> I did a different solution, see below, but didn't send it out as I'm not happy with it.  I thought also of an alias like this, but feel like there are also problems with that approach.
> 
> 1. It seems like it should not be necessary to add aliases to get the system to work at all.

Antonys patch falls back to dynamic numbering if no alias is found.

> 2. My system also has <64 kB xloader which does not use OF to save
> space.  So alias will not work.  I don't know of an alternative to the
> alias system when using i2c_register_board_info().

We also have the approach of putting the name into platform_data, this
is done with some MMC controllers. However, with an xloader wouldn't it
be possible to just register the device which you need? You don't need
all EEPROMs in the xloader, right?

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
