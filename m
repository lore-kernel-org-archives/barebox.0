Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P0rPE-0000oF-ID
	for barebox@lists.infradead.org; Wed, 29 Sep 2010 07:48:49 +0000
Date: Wed, 29 Sep 2010 09:48:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100929074846.GE23406@pengutronix.de>
References: <AANLkTi=k3qTJtQeuOMoBDJMrrR3DQbF7GunjT10FRDSW@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTi=k3qTJtQeuOMoBDJMrrR3DQbF7GunjT10FRDSW@mail.gmail.com>
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
Subject: Re: Failing to load Barebox Environment
To: Gaurav Singh <gausinghnsit@gmail.com>
Cc: barebox@lists.infradead.org

Hi Gaurav,

On Wed, Sep 29, 2010 at 12:20:20PM +0530, Gaurav Singh wrote:
> Hi all,
> Currently I'm trying to load a barebox environment image from NAND
> storage but can't load it correctly.
> 
> I have given the path of my environment in the config :
> 
> CONFIG_CONSOLE_FULL=y
> CONFIG_CONSOLE_ACTIVATE_FIRST=y
> # CONFIG_OF_FLAT_TREE is not set
> CONFIG_PARTITION=y
> CONFIG_DEFAULT_ENVIRONMENT=y
> CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/cartesio-evb2065/env/bin"
> 
> After registering the NAND device I prepared a couple of Bad Block
> aware partitions :
> 
> devfs_add_partition("nand0", 0x00000, 0x200000, PARTITION_FIXED, "self_raw");
> dev_add_bb_dev("self_raw", "self0");
> devfs_add_partition("nand0", 0x200000, 0x200000, PARTITION_FIXED, "env_raw");
> dev_add_bb_dev("env_raw", "env0");
> 
> On compilation I get a barebox environment image - barebox_default_env.
> Flashed this image to the env0 partition via DFU -
> dfu -V 1 -P 24 /dev/env0

Have you tried doing a cp /dev/env0 /somefile at this point?
Have you erased /dev/env0 before doing the dfu command?

> 
> From host sent the barebox_default_env (the default_env file is page
> alinged) via DFU to the NAND.
> 
> The flashing worked fine.
> 
> But now when I re-boot the system :
> 
> barebox 2010.09.0-00003-ge5727b1-dirty (Sep 27 2010 - 17:18:50)
> 
> Board: STMicroelectronics EVB2065 with Cartesio Plus
> NAND device: Manufacturer ID: 0x2c, Chip ID: 0x48 (Micron NAND 2GiB 3,3V 8-bit)
> Scanning device for bad blocks
> Malloc space: 0x00860000 -> 0x00e60000 (size  6 MB)
> Stack space : 0x00850000 -> 0x00858000 (size 32 kB)
> 
> 
> This system is stuck at this point. Investigating further - I see that
> we are stuck at
> in the common/environment.c
> int envfs_load(char *filename, char *dir)
> {
> ...
> buf = xmalloc(size);
> buf_free = buf;
> ret = read(envfd, buf, size); - Stuck here
> 
> I'm wondering why this read is failing. Could the developers shed some
> light on this ?

Can you confirm that the read ends in your nand driver? Does your nand
driver work properly?

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
