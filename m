Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJTWD-0001Nz-Ff
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 17:45:46 +0000
Date: Sun, 15 Apr 2012 19:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120415174538.GO3852@pengutronix.de>
References: <1334506961-31245-1-git-send-email-s.hauer@pengutronix.de>
 <1334506961-31245-2-git-send-email-s.hauer@pengutronix.de>
 <20120415165709.GQ30672@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120415165709.GQ30672@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/2] add 2nd generation default env
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Apr 15, 2012 at 06:57:09PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 18:22 Sun 15 Apr     , Sascha Hauer wrote:
> > The current default environment grows in complexity and still is
> > quite unflexible. The basic mistake we (or better I) made is that
> > we had a boot script and tried to control its behaviour with
> > variables passed to this script. This had the consequence that
> > with every new feature we had to pass another variable to this
> > script and add another if/else to the script. This environment
> > set inverts this behaviour. It introduces a set of helper functions
> > which /env/config can use to do its job.
> > 
> > The helpers are:
> > 
> > /env/bin/ifup
> > 
> > bring up networking. Uses /env/network/$interface to configure the
> > interface. If something has to be done to discover the interface (for
> > USB devices), the code can be put into /env/network/${interface}-discover
> > 
> > /env/bin/bootargs-root-*
> > 
> > Add fields to $bootargs relevant for the kernel to find its rootfs. We
> > currently have helpers for ubi, nfs, initrd and jffs2
> > 
> > /env/bin/bootargs-ip-*
> > 
> > Add fields to $bootargs relevant for the kernel to configure networking.
> > Currently we have helpers for dhcp, static or ip=none
> > 
> > /env/bin/mtdparts-init
> > /env/bin/mtdparts-add
> > 
> > Add barebox partitions to mtd like devices and construct the mtdparts
> > Kernel option.
> > 
> > Additionally the automount feature is used to transparently mount
> > filesystems. With this only the device/file which contains the kernel
> > has to be specified in /env/config.
> 
> can you give us few days to try before apply it

Sure, no problem. In fact I would be glad to get some feedback on this.
Changing the defaultenv can be quite painful later when the board files
are changed.
I am sure though that something like that is needed, the current
defaultenv doesn't bring us much further.

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
