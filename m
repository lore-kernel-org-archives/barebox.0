Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Eme-0004gs-Da
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 10:55:53 +0000
Date: Mon, 11 Apr 2011 12:55:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110411105550.GH7285@pengutronix.de>
References: <20110408133713.GC13978@game.jcrosoft.org>
	<20110411101601.GG7285@pengutronix.de>
	<20110411101752.GC18925@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110411101752.GC18925@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/4] defaultenv boot updates
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

On Mon, Apr 11, 2011 at 12:17:52PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 12:16 Mon 11 Apr     , Sascha Hauer wrote:
> > Hi,
> > 
> > On Fri, Apr 08, 2011 at 03:37:13PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > HI,
> > > 
> > > 	this following patch series make boot script more configurable
> > > 
> > > 
> > 
> > I'm getting the impression that we stretch the capabilities of our shell
> > way beyond its limits. We started with booting from nand/nor/net and
> > added mmc cards later. Still this is not flexible enough to handle
> > images for example on a fat filesystem, not to mention different kernels
> > on one medium.
> > 
> > I was thinking about this topic a bit, and my idea currently is
> > to add a command with which we can build a list of images. An image can
> > be a kernel or a filesystem image. Each image can be associated with
> > a bootarg snippet and a command to execute to access this image.
> > 
> I like the idea
> 
> as we can be multiple user of the same harware so it will simplify it
> 
> > Altogether this could look like this:
> > 
> > linux [OPTIONS]
> > 
> >  -a <name>    add a new image
> >  -f <file>    path to image
> >  -b <bootarg> kernel bootargs to append for this image
> >  -z           This is a zImage
> >  -u           This is a uImage
> >  -r <adr>     This is a raw kernel image to be started at address <adr>
> >  -l           The image is lzo compressed
> -C <compression>
> >  -i           Show currently registered images
> -l for list
> >  -d           delete all registered images
> -d too delete all :(
> 
> I think -d should delete only one
> -D for all

Ok.

> > 
> > 
> > example:
> > 
> > barebox@Phytec phyCORE pcm049:/ linux -a kernel.nand -f /dev/nand0.kernel.bb -z
> > barebox@Phytec phyCORE pcm049:/ linux -a kernel.mmc -f /dev/disk0.1 -c "mci0.probe=1" -r 0x80008000 -l
> what is this -c ?

-c specifies a command to be executed when this file is to be accessed.
If you have network on a USB ethernet dongle for example, you want to
delay the probing until it is really used. So you could provide a script
here which calls "usb; dhcp" or something like that.
For a fat filesystem on a mmc card it could be

"mci0.probe=1; mkdir /fat; mount /dev/disk0.1 fat /fat"

> I like the idea
> 
> but we should use the menu to manage it?

I think it should always work without the menu, but of course it's nice
to integrate it into the menu also.

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
