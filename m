Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gQVtZ-0002Il-O6
 for barebox@lists.infradead.org; Sat, 24 Nov 2018 11:14:44 +0000
Message-ID: <1543058064.5085.4.camel@erwinrol.com>
From: Erwin Rol <mailinglists@erwinrol.com>
Date: Sat, 24 Nov 2018 12:14:24 +0100
In-Reply-To: <20181121081813.biacokuvrvpx7ktd@pengutronix.de>
References: <1542744481.4097.40.camel@erwinrol.com>
 <20181121081813.biacokuvrvpx7ktd@pengutronix.de>
Mime-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hallo Sascha,

On Wed, 2018-11-21 at 09:18 +0100, Sascha Hauer wrote:
> Hi Erwin,
> 
> On Tue, Nov 20, 2018 at 09:08:01PM +0100, Erwin Rol wrote:
> > Hallo,
> > 
> > as long time u-boot user I have several projects where we have a dual
> > dataflash "sector" in wich we store our env variables. And dual so we
> > always have or the correct old version or the correct new version even
> > if there is a power fail during saveenv.
> > 
> > Is powerfail robust env writing also available in barebox. Or what
> > would be the barebox equifelant of a number of config variables?
> 
> We do not have redundant environment right now.
> 
> There have been attempts in the past, but they fell short in flexibility
> and/or robustness. Nowadays we normally do not use environment in
> products anymore, so this isn't much of an issue.

So what do you use? Some sort of configuration (mac addresses, serial
numbers, etc.) will still be needed, or ?

> 
> If you have flash I would consider using UBI for the environment. With
> atomic LEB change a robust environment could be implemented fairly
> easily.

It is a phycore imx6 module with NAND, so that should be possible. But
I rather stay as close by "mainline" as possible, so I would rather use
what ever feature Barebox hhas to offer out of the box.

What I have in U-boot is that we have 2 kernels (and rootfs) and after
an update I write in the uboot env which kernel/rootfs is active. This
is something that happens in the field and so the writing to the uboot
env must be so robuste that the system will not be bricked.

What would be the equivalent of such a setup in Barebox ?

- Erwin



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
