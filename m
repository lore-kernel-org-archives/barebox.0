Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAIlm-0003bY-PN
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 19:36:28 +0000
Date: Fri, 6 Mar 2020 20:36:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200306193625.GA3335@pengutronix.de>
References: <20200228204823.28415-1-dg@emlix.com>
 <20200228204823.28415-3-dg@emlix.com>
 <20200305075002.GO3335@pengutronix.de>
 <ca2405ef-b084-c12f-ec4c-806ecd7fd144@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ca2405ef-b084-c12f-ec4c-806ecd7fd144@emlix.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] fastboot net: implement fastboot over UDP
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: barebox@lists.infradead.org, Edmund Henniges <eh@emlix.com>

On Thu, Mar 05, 2020 at 09:15:57PM +0100, Daniel Gl=F6ckner wrote:
> Am 03/05/20 um 08:50 schrieb Sascha Hauer:
> >> +		const char *fastboot_files =3D getenv("nv.fastboot.files");
> > =

> > Please don't use nv variables directly, always use the corresponding
> > global variable.
> > =

> > For USB fastboot we have a variable global.usbgadget.fastboot_function
> > for the same purpose. We should probably use the same variable for both
> > fastboot variants and maybe also for DFU. How about moving the variable
> > name out of that usbgadget namespace and use something like
> > global.update_partitions? There might be better names...
> =

> Since there is also the question what to do with global.usbgadget
> .fastboot_max_download_size, we could introduce a new namespace for
> fastboot and call the variables global.fastboot.update_partitions
> and global.fastboot.max_download_size. Although I would prefer
> "partitions" to "update_partitions".
> =

> > Interestingly this only became a problem with my change, I tested your
> > fastboot net patches as-is and it works fluently.
> =

> Maybe it works with the fastboot code because the poller is registered
> in a very late initcall. Or did it cause problems for you after all
> initcalls had run?
> =

> > My
> > favourite solution would be to move net_poll() inside a poller indeed,
> > but I currently have no good idea how to fix this mdio read problem.
> =

> How about wrapping the body of mdiobus_read, mdiobus_write, eth_send,
> eth_rx, eth_check_open, and maybe even mdiobus_register, eth_register,
> and eth_unregister in
> =

> net_entered++;
> ...
> net_entered--;
> =

> and then immediately returning from net_poll if net_entered !=3D 0 on
> entry? That's similar to how poller_call prevents reentrance.

Yes, something like that. I created a series which implements such a
scheme, but a little more generic so that hopefully it will help with
the same problem in other areas as well.

Regards
 Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
