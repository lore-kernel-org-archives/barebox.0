Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWeex-0003qi-Ch
 for barebox@lists.infradead.org; Thu, 26 Jan 2017 07:39:57 +0000
Date: Thu, 26 Jan 2017 08:39:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170126073933.sl5da36773g3misf@pengutronix.de>
References: <CACmkAZEckFyAA1zgS=j53RTMzqtxmwpiaNcHZ4=2jhA5uSKXJA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACmkAZEckFyAA1zgS=j53RTMzqtxmwpiaNcHZ4=2jhA5uSKXJA@mail.gmail.com>
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
Subject: Re: How to configure Imx6ul watchdog from barebox
To: Haris Papadopoulos <haris@amberbox.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 25, 2017 at 07:27:01PM +0000, Haris Papadopoulos wrote:
> Hi,
> 
> I am using barebox on a board from phytec phyBOARD-Segin that uses an
> imx6ul processor  (phyCORE-i.MX 6UL).
> 
> Any idea how to configure the watchdog to automatically start in the
> bootloader and then be kicked from linux? In which file do I have to
> do the following configs?

You can pass the -w option to the boot command, or, create a
nv.boot.watchdog_timeout variable (using nv boot.watchdog_timeout=10 for
example). This would enable the watchdog each time just before booting.
To enable/test the watchdog once you can use the 'wd' command. Use
'wd 3' to enable the watchdog with a timeout of three seconds and do
a 'wd 3' again before it runs out.

> 
> CONFIG_WATCHDOG=y
> CONFIG_WATCHDOG_IMX=y
> 
> Where can I setup the relevant flags?
> 
> Also, does barebox have the bootcount feature?

I'm Not exactly sure where you aiming at. There is the bootchooser
framework which allows you to create different redundant boot scenarios
in which you can boot different systems based on successful/failed
booting combined with configurable watchdog timeouts. See
http://barebox.org/doc/latest/user/bootchooser.html

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
