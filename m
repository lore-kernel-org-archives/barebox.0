Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuQOS-0003FT-Tj
 for barebox@lists.infradead.org; Wed, 03 Jul 2013 16:59:02 +0000
Date: Wed, 3 Jul 2013 18:58:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130703165835.GP516@pengutronix.de>
References: <51B0B2D6.3030407@knowtrek.com>
 <51D44181.6090503@knowtrek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51D44181.6090503@knowtrek.com>
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
Subject: Re: set root variable for uImage?
To: Adam Furmanczuk <afurmanczuk@knowtrek.com>
Cc: barebox@lists.infradead.org

Hi Adam,

On Wed, Jul 03, 2013 at 05:21:37PM +0200, Adam Furmanczuk wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> Hi,
> 
> I restate this question from my previous thread "how to flash and set
> root variable". Thanks very much to Sascha and Alexander for
> introducing into barebox building and flashing.
> 
> I have a basic scenario. Want to boot uImage and then hand over to the
> root partition. With u-Boot this was very easy:
> 
> setenv bootargs "console=tty0 console=ttymxc0,115200n8
> root=/dev/mmcblk0p3 rootfstype=ext4 rootwait ro"
> 
> With barebox however, when I boot the uImage, it complains about not
> setting correct "root=".:
> 
> [ 1.718527] VFS: Cannot open root device "(null)" or
> unknown-block(0,0): error -6
> [ 1.726226] Please append a correct "root=" boot option; here are the
> available partitions:
> 
> Now what i do in Barbox is the following;
> 
> (hint enter to go into console)
> barebox@myhost:/ mkdir /media2
> barebox@myhost:/ mount /dev/disk0.1 fat /media2
> barebox@myhost:/ bootm /media2/uImage root=/dev/mmcblk0p3 rootfstype=ext4

the bootm command evaluates the 'bootargs' environment variable, so
before executing bootm do a:

export bootargs="root=/dev/mmcblk0p3 rootfstype=ext4"

(sidenote: This is not documented with 'help bootm', shame on us. Try
the 'magicvar' command instead which lists all variables with special
meanings)

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
