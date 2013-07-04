Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uugww-0004Rh-UX
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 10:39:44 +0000
Date: Thu, 4 Jul 2013 12:39:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130704103919.GC516@pengutronix.de>
References: <51B0B2D6.3030407@knowtrek.com> <51D44181.6090503@knowtrek.com>
 <20130703165835.GP516@pengutronix.de> <51D46DB2.90002@knowtrek.com>
 <20130703202635.GR516@pengutronix.de>
 <51D54EB7.2060702@knowtrek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51D54EB7.2060702@knowtrek.com>
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

On Thu, Jul 04, 2013 at 12:30:15PM +0200, Adam Furmanczuk wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hi Sascha, hi Alexander,
> 
> rootwait parameter in bootargs did not helped. I compiled barebox and
> kernel Image from busybox. I added in busybox extra defconfig
> parameter for the imx53 board for barebox. No extra pachtes. Have sdma
> module in root partion in /lib directory, but it never change-roots to
> that partition anyway.
> 
> With u-Boot the same bootargs are OK. My new project requires to use
> barebox.
> 
> Output of devinfo global [1] and bootlog [2]

Please send these inline next time so that people digging through the
archives can see what we are talking about.

> 
> Greetings,
> 
> Adam
> 
> 
> [1] http://pastebin.com/yyQjtpbT

> barebox@Freescale i.MX53 LOCO:/ devinfo global 
> resources:
> driver: none
> bus: none
> 
> Parameters:
>     system.reset = POR
>      bootm.image = 
>     bootm.oftree = 
>     bootm.initrd = 
>    dhcp.rootpath = 
> dhcp.tftp_server_name = 
>    dhcp.bootfile = 
> dhcp.oftree_file = 
>   dhcp.vendor_id = 
>   dhcp.client_id = 
>  dhcp.user_class = 
> dhcp.client_uuid = 
>         hostname = loco
>             user = none
> autoboot_timeout = 3
>     boot.default = net
>      allow_color = true
> linux.bootargs.base = console=ttymxc0,115200
> linux.bootargs.dyn.ip = 
> linux.bootargs.dyn.root =

Ok, that's the information I was looking for.

The bootm command either uses the 'bootargs' variable or if exists, all
variables beginning with "linux.bootargs.".

So to change your bootargs do:

linux.bootargs.base="console=ttymxc0,115200 ignore_loglevel whatever"

You can also add new variables:

global linux.bootargs.debug="earlyprintk"

And what you are currently looking for:

global linux.bootargs.root="root=/dev/mmcblk0p3 rootwait"

> [2] http://pastebin.com/4PxUnm0Q

> barebox@Freescale i.MX53 LOCO:/mkdir /mnt/disk1
> barebox@Freescale i.MX53 LOCO:/ bootargs="root=/dev/mmcblk0p3 rootwait
> rootfstype=ext4"
> barebox@Freescale i.MX53 LOCO:/ mount /dev/disk0.1 fat /mnt/disk1
> barebox@Freescale i.MX53 LOCO:/ bootm /mnt/disk1/uImage
>    Image Name:   Linux-2.6.35.3
>    Created:      2013-06-13  14:17:14 UTC
>    OS:           Linux
>    Architecture: ARM
>    Type:         Kernel Image
>    Compression:  uncompressed
>    Data Size:    2945628 Bytes = 2.8 MiB
>    Load Address: 70008000
>    Entry Point:  70008000
>  
> Loading OS U-Boot uImage '/mnt/disk1/uImage'
> commandline: console=ttymxc0,115200  
> arch_number: 3273
> Linux version 2.6.35.3 (testserver@Server6) (gcc version 4.7.3

Quite an old Kernel for a new project...

> (Buildroot 2013.05) ) #1 PREEMPT Thu Jun 13 16:17:07 CEST 2013
> CPU: ARMv7 Processor [412fc085] revision 5 (ARMv7), cr=10c53c7f
> CPU: VIPT nonaliasing data cache, VIPT nonaliasing instruction cache
> Machine: Freescale MX53 LOCO Board
> Memory policy: ECC disabled, Data cache writeback
> Built 1 zonelists in Zone order, mobility grouping on.  Total pages:
> 250880
> Kernel command line: console=ttymxc0,115200

Here you see the command line.

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
