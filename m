Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdolY-0006P7-JM
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 18:52:59 +0000
Date: Fri, 14 Jan 2011 19:52:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110114185243.GM24373@pengutronix.de>
References: <AANLkTimz8ffNYpkHYdKVwv4=khBn=JKMwjsRQB5DEK63@mail.gmail.com>
	<20110114132644.GL24373@pengutronix.de>
	<20110114152538.GA27519@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110114152538.GA27519@game.jcrosoft.org>
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
Subject: Re: /dev/env0 not found
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Jan 14, 2011 at 04:25:38PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 14:26 Fri 14 Jan     , Sascha Hauer wrote:
> > Hi Nataraj,
> > 
> > On Fri, Jan 14, 2011 at 12:01:25PM +0000, Nataraj S Narayan wrote:
> > > Hi
> > > 
> > > How I come I don't have /dev/env0? I am on at91sam9263ek.
> > > 
> > > 9263-EK:/ saveenv
> > > saving environment
> > > could not open /dev/env0: Read-only file system
> > > 
> > > 9263-EK:/ ls -l /dev/env0
> > > ls: /dev/env0: No such file or directory
> > > 
> > > 9263-EK:/ ls -l /dev/
> > > cr-------- 4294967295 zero
> > > crw-------       3785 defaultenv
> > > crw------- 4294967295 mem
> > > crw-------   67108864 ram0
> > > crw-------  268435456 nand0
> > > cr--------    8388608 nand_oob0
> > > crw-------         32 phy0
> > > crw------- 3851423744 nor-352321538
> >                            ^^^^^^^^^^
> > 
> > This should normally be nor0. The name comes from
> > info->cdev.name = asprintf("nor%d", dev->id);
> > in cfi_probe. dev->id is normally initialized to -1 in
> > arch/arm/boards/at91sam9263ek/init.c, then changed to 0 in
> > register_device:
> > 
> > 	if (new_device->id < 0) {
> > 		new_device->id = get_free_deviceid(new_device->name);
> > 	}
> > ...
> > 
> > I have no idea why this does not work in your case, so it's maybe best
> > to add some printfs in the path I just described to see where dev->id is
> > actually changed to such a bogus value.
> > 
> > Note that on the at91sam9263ek the environment partition is added as
> > follows:
> > 
> > #if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
> > 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
> > 	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
> > #elif defined(CONFIG_NAND_ATMEL)
> > 	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
> > 	dev_add_bb_dev("self_raw", "self0");
> > 	devfs_add_partition("nand0", 0x40000, 0x40000, PARTITION_FIXED, "env_raw");
> > 	dev_add_bb_dev("env_raw", "env0");
> > #endif
> > 
> > This means that when both nand and nor flash is compiled in the
> > environment which be in nor flash. On i.MX we have a way to figure out
> > if barebox is started from nor or from nand and locate the environment
> > in the same device as barebox is started from. I don't know if that's
> > possible on the Atmel processors though.
> unfortunatly no

Maybe we should add a kconfig option for this. The current behaviour
seems rather random.

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
