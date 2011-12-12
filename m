Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra5Ki-0003a4-Fv
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 12:50:17 +0000
Date: Mon, 12 Dec 2011 13:50:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111212125003.GU27267@pengutronix.de>
References: <1323187817-28668-1-git-send-email-m.grzeschik@pengutronix.de>
 <20111209112831.GE8203@pengutronix.de>
 <20111209145601.GO23884@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111209145601.GO23884@game.jcrosoft.org>
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
Subject: Re: *** PROBABLY SPAM *** [PATCH 4/7] at91sam9260_devices: add flag
 to change ETX{2,3} pincfg on add_device_eth
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 09, 2011 at 03:56:01PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 12:28 Fri 09 Dec     , Michael Grzeschik wrote:
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > ---
> >  arch/arm/mach-at91/at91sam9260_devices.c |    9 +++++++--
> please update all soc
> >  1 files changed, 7 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
> > index 177f770..be1fdd9 100644
> > --- a/arch/arm/mach-at91/at91sam9260_devices.c
> > +++ b/arch/arm/mach-at91/at91sam9260_devices.c
> > @@ -63,8 +63,13 @@ void at91_add_device_eth(struct at91_ether_platform_data *data)
> >  		at91_set_B_periph(AT91_PIN_PA25, 0);	/* ERX2 */
> >  		at91_set_B_periph(AT91_PIN_PA26, 0);	/* ERX3 */
> >  		at91_set_B_periph(AT91_PIN_PA27, 0);	/* ERXCK */
> > -		at91_set_B_periph(AT91_PIN_PA23, 0);	/* ETX2 */
> > -		at91_set_B_periph(AT91_PIN_PA24, 0);	/* ETX3 */
> > +		if (data->flags & AT91SAM_ETX2_ETX3_ALTERNATIVE) {
> I really don't like the idea to propagate pin configuration to the drivers
> this show stay at board or soc config level

The same is already done with RMII:

	if (!(data->flags & AT91SAM_ETHER_RMII)) {
		at91_set_B_periph(AT91_PIN_PA28, 0);	/* ECRS */
		at91_set_B_periph(AT91_PIN_PA29, 0);	/* ECOL */
		at91_set_B_periph(AT91_PIN_PA25, 0);	/* ERX2 */
		...


> 
> I prefer to add a new parameter than use a flag use by the driver

-ENOPARSE

A new parameter to what? at91_add_device_eth?
The driver itself does not use this flag.

> please make this more generic alt_config1 as this will what is going to be use
> by the pinctrl on at91

Sorry, don't know what you mean.

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
