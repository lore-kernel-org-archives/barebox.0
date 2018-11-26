Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRDVs-0004RM-6T
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 09:49:09 +0000
Date: Mon, 26 Nov 2018 10:48:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181126094856.7nlcoikiolt7eqpy@pengutronix.de>
References: <1542744481.4097.40.camel@erwinrol.com>
 <20181121081813.biacokuvrvpx7ktd@pengutronix.de>
 <1543058064.5085.4.camel@erwinrol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1543058064.5085.4.camel@erwinrol.com>
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
Subject: Re: powerfail safe env save
To: Erwin Rol <mailinglists@erwinrol.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Nov 24, 2018 at 12:14:24PM +0100, Erwin Rol wrote:
> Hallo Sascha,
> 
> On Wed, 2018-11-21 at 09:18 +0100, Sascha Hauer wrote:
> > Hi Erwin,
> > 
> > On Tue, Nov 20, 2018 at 09:08:01PM +0100, Erwin Rol wrote:
> > > Hallo,
> > > 
> > > as long time u-boot user I have several projects where we have a dual
> > > dataflash "sector" in wich we store our env variables. And dual so we
> > > always have or the correct old version or the correct new version even
> > > if there is a power fail during saveenv.
> > > 
> > > Is powerfail robust env writing also available in barebox. Or what
> > > would be the barebox equifelant of a number of config variables?
> > 
> > We do not have redundant environment right now.
> > 
> > There have been attempts in the past, but they fell short in flexibility
> > and/or robustness. Nowadays we normally do not use environment in
> > products anymore, so this isn't much of an issue.
> 
> So what do you use? Some sort of configuration (mac addresses, serial
> numbers, etc.) will still be needed, or ?
> 
> > 
> > If you have flash I would consider using UBI for the environment. With
> > atomic LEB change a robust environment could be implemented fairly
> > easily.
> 
> It is a phycore imx6 module with NAND, so that should be possible. But
> I rather stay as close by "mainline" as possible, so I would rather use
> what ever feature Barebox hhas to offer out of the box.
> 
> What I have in U-boot is that we have 2 kernels (and rootfs) and after
> an update I write in the uboot env which kernel/rootfs is active. This
> is something that happens in the field and so the writing to the uboot
> env must be so robuste that the system will not be bricked.
> 
> What would be the equivalent of such a setup in Barebox ?

We use the state frameowork and bootchooser for this task, see:

https://barebox.org/doc/latest/user/state.html
https://www.barebox.org/doc/latest/devicetree/bindings/barebox/barebox,state.html
https://barebox.org/doc/latest/user/bootchooser.html?highlight=bootchooser

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
