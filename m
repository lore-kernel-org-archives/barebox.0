Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwQB2-00053v-7F
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 07:50:45 +0000
Date: Wed, 11 Nov 2015 08:50:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151111075020.GN8526@pengutronix.de>
References: <1447194444.4553.88.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447194444.4553.88.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] firmware: socfpga: Add parameter "programmed" to fpgamgr
 driver
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Tue, Nov 10, 2015 at 10:27:23PM +0000, Trent Piepho wrote:
> This boolean parameter tells you if the FPGA is programmed or not.  It
> can be accessed from the shell as "$fpga.programmed".  One could use
> this to not program the FPGA if it's already programmed.
> 
> There is an annoying limitation of the way barebox puts parameters
> into the shell env: it requires they have no periods in the device
> name.  It uses the first period to divide the variable name into a
> device and parameter name, which doesn't work correctly if the device
> name has a period in it.

Yeah, that's really annoying, and so far I haven't found a good way to
work around this issue.

> 
> Since the names of any devices created from the OF device tree have a
> period in them, this is a problem.

They not only have a period in them, they can also begin with a number
which makes the string invalid as a variable name.

> 
> So what I did here was create a new device.

Yes, that's what I did in this case sometimes aswell.


> Its parent will be the OF
> device for the fpgamgr and it will in turn be the parent of the
> firmware cdev.  Previously the cdev's parent was the OF device.  This
> device won't have period in the name and the parameter is attached to
> it.  Even without the period limitation, doing this gives a nicer name
> "fpga.programmed" instead of "ff706000.fpgamgr.programmed".
> 
> The fpgamgr code had a pointer to the OF device in its private state.
> I changed this to be a struct for the new "fpga" device, which is then
> used in all the places the former pointer was (nothing but dev_dbg,
> etc. calls).
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>

Patch looks good, applied.

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
