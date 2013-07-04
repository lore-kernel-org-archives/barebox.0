Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lvps83-169-36-49.dedicated.hosteurope.de ([83.169.36.49]
 helo=knowtrek.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuhG5-0004jW-2D
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 10:59:29 +0000
Received: from [192.168.10.59] (p4FC1B07C.dip0.t-ipconnect.de [79.193.176.124])
 by knowtrek.com (Postfix) with ESMTPSA id 851A12EF831C
 for <barebox@lists.infradead.org>; Thu,  4 Jul 2013 12:59:03 +0200 (CEST)
Message-ID: <51D55576.3060900@knowtrek.com>
Date: Thu, 04 Jul 2013 12:59:02 +0200
From: Adam Furmanczuk <afurmanczuk@knowtrek.com>
MIME-Version: 1.0
References: <51B0B2D6.3030407@knowtrek.com> <51D44181.6090503@knowtrek.com>
 <20130703165835.GP516@pengutronix.de> <51D46DB2.90002@knowtrek.com>
 <20130703202635.GR516@pengutronix.de> <51D54EB7.2060702@knowtrek.com>
 <20130704103919.GC516@pengutronix.de>
In-Reply-To: <20130704103919.GC516@pengutronix.de>
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
Subject: Re: set root variable for uImage? - SOLVED
To: barebox@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 04.07.2013 12:39, Sascha Hauer wrote:
> On Thu, Jul 04, 2013 at 12:30:15PM +0200, Adam Furmanczuk wrote:
>> -----BEGIN PGP SIGNED MESSAGE----- Hi Sascha, hi Alexander,
>> 
>> rootwait parameter in bootargs did not helped. I compiled barebox
>> and kernel Image from busybox. I added in busybox extra
>> defconfig parameter for the imx53 board for barebox. No extra
>> pachtes. Have sdma module in root partion in /lib directory, but
>> it never change-roots to that partition anyway.
>> 
>> With u-Boot the same bootargs are OK. My new project requires to
>> use barebox.
>> 
>> Output of devinfo global [1] and bootlog [2]
> 
> Please send these inline next time so that people digging through
> the archives can see what we are talking about.

OK, I was afraid making my message less readable. Will do that next time.

> 
>> 
>> Greetings,
>> 
>> Adam
>> 
>> 
>> [1] http://pastebin.com/yyQjtpbT
> 
>> barebox@Freescale i.MX53 LOCO:/ devinfo global resources: driver:
>> none bus: none
>> 
>> Parameters: system.reset = POR bootm.image = bootm.oftree = 
>> bootm.initrd = dhcp.rootpath = dhcp.tftp_server_name = 
>> dhcp.bootfile = dhcp.oftree_file = dhcp.vendor_id = 
>> dhcp.client_id = dhcp.user_class = dhcp.client_uuid = hostname =
>> loco user = none autoboot_timeout = 3 boot.default = net 
>> allow_color = true linux.bootargs.base = console=ttymxc0,115200 
>> linux.bootargs.dyn.ip = linux.bootargs.dyn.root =
> 
> Ok, that's the information I was looking for.
> 
> The bootm command either uses the 'bootargs' variable or if exists,
> all variables beginning with "linux.bootargs.".
> 
> So to change your bootargs do:
> 
> linux.bootargs.base="console=ttymxc0,115200 ignore_loglevel
> whatever"
> 
> You can also add new variables:
> 
> global linux.bootargs.debug="earlyprintk"
> 
> And what you are currently looking for:
> 
> global linux.bootargs.root="root=/dev/mmcblk0p3 rootwait"

Yeah! I really was looking for that. Now my environment is 100%
barebox compatible;).

As a sidenote: on other device (not MX53 QSB but Icnova SO-dimm),
flashing new barebox is not an option. I already lost one device and
try to recover by learning more openocd.

The barebox version there is September 2012. It does not have "go"
command for running newer barebox.bin and does not have "global" for
setting parameters. I should maybe restate that sidenote as a new thread?

> 
>> [2] http://pastebin.com/4PxUnm0Q
> 
>> barebox@Freescale i.MX53 LOCO:/mkdir /mnt/disk1 barebox@Freescale
>> i.MX53 LOCO:/ bootargs="root=/dev/mmcblk0p3 rootwait 
>> rootfstype=ext4" barebox@Freescale i.MX53 LOCO:/ mount
>> /dev/disk0.1 fat /mnt/disk1 barebox@Freescale i.MX53 LOCO:/ bootm
>> /mnt/disk1/uImage Image Name:   Linux-2.6.35.3 Created:
>> 2013-06-13  14:17:14 UTC OS:           Linux Architecture: ARM 
>> Type:         Kernel Image Compression:  uncompressed Data Size:
>> 2945628 Bytes = 2.8 MiB Load Address: 70008000 Entry Point:
>> 70008000
>> 
>> Loading OS U-Boot uImage '/mnt/disk1/uImage' commandline:
>> console=ttymxc0,115200 arch_number: 3273 Linux version 2.6.35.3
>> (testserver@Server6) (gcc version 4.7.3
> 
> Quite an old Kernel for a new project...

Yes, indeed. That is still default in latest buildroot defconfig.
There are of course newer kernels [3]. I even managed last year to
compile vanilla kernel 3.8.something with the provived defconfigs. Had
some USB-issues, and SDMA-module needed extra firmaware binary. USB
support was not important for our case.

I have not that much experience to embedded linux, but I learn fast ;).


>> (Buildroot 2013.05) ) #1 PREEMPT Thu Jun 13 16:17:07 CEST 2013 
>> CPU: ARMv7 Processor [412fc085] revision 5 (ARMv7), cr=10c53c7f 
>> CPU: VIPT nonaliasing data cache, VIPT nonaliasing instruction
>> cache Machine: Freescale MX53 LOCO Board Memory policy: ECC
>> disabled, Data cache writeback Built 1 zonelists in Zone order,
>> mobility grouping on.  Total pages: 250880 Kernel command line:
>> console=ttymxc0,115200

Spotted that too, and was confused :)

Thanks you very much again for solving my issue.

Greetings,

Adam

[3] https://wiki.linaro.org/Cycles/1306/Release
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlHVVXYACgkQefEEI87R1DfjXQCeIYED1WvovKVdcqzFRLpRkW8N
KosAoLzjfApPSttEx4PC0nPnmSjWH54W
=FWch
-----END PGP SIGNATURE-----

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
